package{
	import flash.display.*;
	import flash.text.*;
	import flash.system.fscommand;
	import flash.media.SoundMixer;
	public class core extends MovieClip{
		public var mainMenuPage:Function=function():void{
			var buttonInstanceMainMenu:Array=[bg_nav,nameTag,btn_posRank,btn_rank,btn_feedback,btn_off,btn_stat,btn_nav_exit,btn_navSetting,btn_navDw];  
			var buttonInstanceMainMenuBool=[false,false,false,false,false,false,false,false,false,false];
			var indexButtonMainMenu:Number=0;
			while(indexButtonMainMenu<buttonInstanceMainMenu.length){
				buttonInstanceMainMenu[indexButtonMainMenu].visible=buttonInstanceMainMenuBool[indexButtonMainMenu];
				indexButtonMainMenu++;}
			btn_nav.addEventListener(MouseEvent.MOUSE_DOWN,fl_btnNavDown);
			btn_nav_exit.addEventListener(MouseEvent.MOUSE_DOWN, fl_btnNavUp);
			function fl_btnNavDown(e:MouseEvent):void{
				var buttonInstanceNavDown:Array=[btn_nav,bg_nav,nameTag,btn_posRank,btn_rank,btn_feedback,btn_off,btn_stat,btn_nav_exit,btn_navSetting,btn_navDw]; 
				var buttonInstanceNavDownBool:Array=[false,true,true,true,true
												 ,true,true,true,true,true,true
												 ]; 
				for(var indexInstanceNavDownBool:Number=0;indexInstanceNavDownBool<buttonInstanceNavDown.length;indexInstanceNavDownBool++){
					buttonInstanceNavDown[indexInstanceNavDownBool].visible=buttonInstanceNavDownBool[indexInstanceNavDownBool];
				}
			}
			function fl_btnNavUp(e:MouseEvent):void{
				var buttonInstanceNavUp:Array=[btn_nav,
											 bg_nav,
											 nameTag,
											 btn_posRank,
											 btn_rank,
											 btn_feedback,
											 btn_off,
											 btn_stat,
											 btn_nav_exit,
											 btn_navSetting,
											 btn_navDw
											 ]; 
				var buttonInstanceNavUpBool:Array=[true,false,false,false,false
												 ,false,false,false,false,false,false
												 ]; 
				for(var indexInstanceNavUpBool:Number=0;indexInstanceNavUpBool<buttonInstanceNavUp.length;indexInstanceNavUpBool++){
					
					buttonInstanceNavUp[indexInstanceNavUpBool].visible=buttonInstanceNavUpBool[indexInstanceNavUpBool];
				}
			}
			btn_navSetting.addEventListener(MouseEvent.MOUSE_DOWN,fl_btnSetting);
			function fl_btnSetting(e:MouseEvent):void{
				gotoAndStop("nav_settingPage");	
			}
			btn_posRank.addEventListener(MouseEvent.MOUSE_DOWN,fl_btnPosRank);
			function fl_btnPosRank(e:MouseEvent):void{
				gotoAndStop("notAvailable_page");
			}
			btn_stat.addEventListener(MouseEvent.MOUSE_DOWN, fl_btnStat);
			function fl_btnStat(e:MouseEvent):void{
				gotoAndStop("notAvailable_page");
			}
			btn_feedback.addEventListener(MouseEvent.MOUSE_DOWN,fl_btnFeedback);
			function fl_btnFeedback(e:MouseEvent):void{
				gotoAndStop("notAvailable_page");
			}
			btn_rank.addEventListener(MouseEvent.MOUSE_DOWN,fl_btnRank);
			function fl_btnRank(e:MouseEvent):void{
				gotoAndStop("notAvailable_page");
			}
			btn_off.addEventListener(MouseEvent.MOUSE_DOWN,fl_btnOff);
			function fl_btnOff(e:MouseEvent):void{
				gotoAndStop("exitPage");
			}
			//////////////////// cources ///////////////
			
			//////////////////// basic cource //////////////
			bs_cource.addEventListener(MouseEvent.CLICK, fl_bsCource);
			function fl_bsCource(e:MouseEvent):void{
				gotoAndStop("openingCource");
			}
			wb_cource.addEventListener(MouseEvent.CLICK, fl_wbCource);
			function fl_wbCource(e:MouseEvent):void{
				gotoAndStop("openingCource");
			}
			fr_cource.addEventListener(MouseEvent.CLICK, fl_frCource);
			function fl_frCource(e:MouseEvent):void{
				gotoAndStop("openingCource");
			}
			fk_cource.addEventListener(MouseEvent.CLICK, fl_fkCource);
			function fl_fkCource(e:MouseEvent):void{
				gotoAndStop("openingCource");
			}
			ds_cource.addEventListener(MouseEvent.CLICK, fl_dsCource);
			function fl_dsCource(e:MouseEvent):void{
				gotoAndStop("openingCource");
			}
		}
		public var notFoundPage:Function=function():void{
			btn_naBack.addEventListener(MouseEvent.CLICK, fl_btnNaBack);
			function fl_btnNaBack(e:MouseEvent):void{
				gotoAndStop("indexPage");
			}
		}
		public function sfxNbgm():void{
			sfx_on.visible=false;
			sfx_off.visible=true;
			sfx_on.addEventListener(MouseEvent.MOUSE_DOWN,fl_sfxOn);
			sfx_off.addEventListener(MouseEvent.MOUSE_DOWN,fl_sfxOff);
						
			function fl_sfxOn(e:MouseEvent):void{
				sfx_on.visible=false;
				sfx_off.visible=true;	
							
			}
						
			function fl_sfxOff(e:MouseEvent):void{
				sfx_on.visible=true;
				sfx_off.visible=false;
			}
			//////////////////// bgm //////////////////////////
			bgm_on.visible=false;
			bgm_off.visible=true;
						
			bgm_on.addEventListener(MouseEvent.MOUSE_DOWN,fl_bgmOn);
			bgm_off.addEventListener(MouseEvent.MOUSE_DOWN,fl_bgmOff);
						
			function fl_bgmOn(e:MouseEvent):void{
				bgm_on.visible=false;
				bgm_off.visible=true;
			}
			function fl_bgmOff(e:MouseEvent):void{
				bgm_on.visible=true;
				bgm_off.visible=false;
			}
			///////////////////// btn back ///////////////
			btn_backSet.addEventListener(MouseEvent.CLICK,fl_btnBackSet);
			function fl_btnBackSet(e:MouseEvent):void{
				gotoAndStop("indexPage");
			}			
		}
		private function appExit():void{
			
			false2exit.addEventListener(MouseEvent.MOUSE_DOWN,fl_f2x);
			function fl_f2x(e:MouseEvent):void{
				gotoAndStop("indexPage");
			}
			
			true2exit.addEventListener(MouseEvent.MOUSE_DOWN,fl_t2e);
			function fl_t2e(e:MouseEvent):void{
				fscommand("quit");
			}
			
		}
		public var pageExitNav:Function=function():void{
			appExit();
		}
		public var hasil:Number=0;
		public var kuis:Function=function():void{
			if(hasil==1){
				hasil=1;
			}
			opsiA_result.visible=false;
			opsiB_result.visible=false;
			opsiC_result.visible=false;
			opsiD_result.visible=false;
			opsiA.addEventListener(MouseEvent.CLICK, fl_opsiA);
			function fl_opsiA(e:MouseEvent):void{
				opsiA_result.visible=true;
				opsiB.visible=false;
				opsiC.visible=false;
				opsiD.visible=false;}
			opsiB.addEventListener(MouseEvent.CLICK, fl_opsiB);
			function fl_opsiB(e:MouseEvent):void{
				opsiB_result.visible=true;
				opsiA.visible=false;
				opsiC.visible=false;
				opsiD.visible=false;}
			opsiC.addEventListener(MouseEvent.CLICK, fl_opsiC);
			function fl_opsiC(e:MouseEvent):void{
				opsiC_result.visible=true;
				opsiB.visible=false;
				opsiA.visible=false;
				opsiD.visible=false;
				hasil=+1}
			opsiD.addEventListener(MouseEvent.CLICK, fl_opsiD);
			function fl_opsiD(e:MouseEvent):void{
				opsiD_result.visible=true;
				opsiB.visible=false;
				opsiC.visible=false;
				opsiA.visible=false;}
			lanjutKuis.addEventListener(MouseEvent.CLICK,fl_lanjutKuis);
			function fl_lanjutKuis(e:MouseEvent):void{
				gotoAndStop("result_kuis");
			}
		}
		public var hasilkuis:Function=function():void{
			resultKuis.text=String(hasil*10*10);
			gotoMainMenu.addEventListener(MouseEvent.CLICK, fl_gotoMainMenu);
			function fl_gotoMainMenu(e:MouseEvent):void{
				gotoAndStop("indexPage");hasil=0;}
			kerjakanLagi.addEventListener(MouseEvent.CLICK, fl_kerjakanLagi);
			function fl_kerjakanLagi(e:MouseEvent):void{
				gotoAndStop("soal1");hasil=0;}
			kembaliMenu.addEventListener(MouseEvent.CLICK, fl_kembaliMenu);
			function fl_kembaliMenu(e:MouseEvent):void{
				gotoAndStop("openingCource");hasil=0;}
		}
		public function Main(){
			
			//kosong
		}
		
	}
	
}