package com.kh.am.pay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pay/*")
public class PayController {
	
	// 급여관리
	
	// 급여설정 페이지 전환
	@RequestMapping("payList")
	public String payListView() {
		return "pay/payList";
	}
	
	// 급여 명세서 페이지 전환
	@RequestMapping("payStubList")
	public String payStubListView() {
		return "pay/payStubList";
	}
	
	// 급여 정정 페이지 전환
	@RequestMapping("updatePayStub")
	public String updatePayStubView() {
		return "pay/updatePayStub";
	}
	
	
}