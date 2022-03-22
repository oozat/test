package test;

import java.util.ArrayList;
import java.util.List;

import model.ProductBeans;
import model.ProductLogic;

public class test {

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ
		
		ProductLogic pL=new ProductLogic();
		List<ProductBeans> li=new ArrayList<>();
		li=pL.getProductList();
		
		for(ProductBeans product: li) {
			product.viewProductBeans();
		}
		
		
		
	
	}

}
