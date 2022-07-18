package Trillion.Palet.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Trillion.Palet.DTO.CartListDTO;
import Trillion.Palet.DTO.DeliveryDTO;
import Trillion.Palet.DTO.TotalCartDTO;
import Trillion.Palet.DTO.goodsOrderDTO;
import Trillion.Palet.service.CartService;
import Trillion.Palet.service.DeliveryService;



@Controller
@RequestMapping("/cart/")
public class CartController {
	
	@Autowired 
	private CartService cServ;
	@Autowired
	private HttpSession session;
	@Autowired
	private DeliveryService dServ;
	
	@ResponseBody
	@RequestMapping("/isGoodsExist")
	public String isGoodsExist(int[] g_seq, int[] cartstock) {
			System.out.println(g_seq[0]);
			System.out.println(cartstock[0]);
			String email = (String)session.getAttribute("loginEmail");
			System.out.println(email);
			for(int i=0; i<g_seq.length;i++) {
			boolean isGoodsExist = cServ.isGoodsExist(g_seq[i],email);
			boolean isGoodsStocksame=cServ.isGoodsStocksame(g_seq[i],cartstock[i],email);
			//옵션,수량 같을 때 멈춤
			if(isGoodsExist && isGoodsStocksame) {
				continue;
				
			}else if(isGoodsExist || isGoodsStocksame){ //옵션은 있는데 수량이 다를 때 변경
				cServ.selectModiOne(g_seq[i],cartstock[i],email);
			}else {//둘 다 없을 때 insert
				cServ.insertCart(g_seq[i],cartstock[i],email);
			}
			}
			return "false"; 
	}
	
	
	@RequestMapping("cartlist")
	public String cartList(Model model,HttpServletResponse response) throws Exception {
		String email = (String)session.getAttribute("loginEmail");
		
		//장바구니 list
		List<CartListDTO> list = cServ.selectAll(email);
		for(CartListDTO dto : list) {
			System.out.println(dto.getG_price());
		}
		//총 수량, 가격
		TotalCartDTO totalList = cServ.total(email);
		//옵션
		String realpath = "/cart/cartList/";
		
		
		
		model.addAttribute("list",list);
		model.addAttribute("totalList",totalList);
		return"cart/cart-exist";
	}
	
	
	@RequestMapping("cartDel")
	public String cartDel(int g_seq) {

		cServ.delete(g_seq);
		return"redirect:cartlist";
	}
	
	@ResponseBody
	@RequestMapping("cartModi")
	public String cartModi(int g_seq,int cartstock) {
		String email = (String)session.getAttribute("loginEmail");
		cServ.selectModiOne(g_seq,cartstock,email);
		return "success";
	}
	
	@RequestMapping("purchase")
	public String purchase(int[] buy,Model model) {
		String email = (String)session.getAttribute("loginEmail");

		String realpath = "/cart/cartList/";

		model.addAttribute("realpath",realpath);
		List<CartListDTO> purchaselist = cServ.purchase(buy,email);
		model.addAttribute("purchaselist", purchaselist);
		return "cart/purchase";
	}
	
	@RequestMapping("choosedel")
	public String choosedel(int[] g_seq) {
		for(int i=0; i<g_seq.length;i++) {
			cServ.delete(g_seq[i]);	
		}
		
		return "redirect:cartlist";
	}
	
	@RequestMapping("order")
	public String order(int[] cart_seq, Model model) {
		for(int i=0; i<cart_seq.length;i++) {
			cServ.insertSelect_Cart(cart_seq[i]);
		}
		//default주소 가져오기
		String email = (String)session.getAttribute("loginEmail");
		//배송지 등록 안해논 사람 null 포인터 에러나니까 고치기
		
		DeliveryDTO dto = dServ.selectDefaultAddress(email);
		System.out.println(dto);
		
		//배송지 없어서 나는 에러 방지
		if(dto==null) {
			dto = new DeliveryDTO();
			dto.setReceiver("");
			dto.setPhone("");
			dto.setPostcode("");
			dto.setAddress1("");
			dto.setAddress2("");
		}
		
		System.out.println("receiver"+dto.getReceiver());
		
		System.out.println(dto.getEmail());
		System.out.println(dto.getReceiver());
		System.out.println(dto.getAddress1());
		model.addAttribute("dto",dto);
		return "/cart/order";
	}
	//주소 선택 창으로 가기
	@RequestMapping("choosedeliverybtn")
	public String choosedeliverybtn(Model model) {
		String email = (String)session.getAttribute("loginEmail");
		List<DeliveryDTO> list = dServ.selectAllAddress(email);
		model.addAttribute("list",list);
		return "/cart/delivery";
	}
	
	@ResponseBody
	@RequestMapping("beforeunload")
	public int beforeunload() {
		String email = (String)session.getAttribute("loginEmail");
		return cServ.beforeunload(email);
	}
	
	@ResponseBody
	@RequestMapping("select_cart")
	public List<goodsOrderDTO> select_cart(){
		String email = (String)session.getAttribute("loginEmail");
		List<goodsOrderDTO> list = cServ.select_cart(email);
		return list;
	}
	
}

