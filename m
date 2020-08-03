Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A66E623AF67
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 23:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF14E6E33C;
	Mon,  3 Aug 2020 21:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0A6D76E33C;
 Mon,  3 Aug 2020 21:02:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04632A011A;
 Mon,  3 Aug 2020 21:02:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chrisanthus, Anitha" <anitha.chrisanthus@intel.com>
Date: Mon, 03 Aug 2020 21:02:50 -0000
Message-ID: <159648857001.19294.12979959030553415374@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1596488183-9030-1-git-send-email-anitha.chrisanthus@intel.com>
In-Reply-To: <1596488183-9030-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/kmb=3A_Add_support_for_KeemBay_Display_=28rev3=29?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/kmb: Add support for KeemBay Display (rev3)
URL   : https://patchwork.freedesktop.org/series/79615/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e5e28d2e25e4 drm/kmb: Add support for KeemBay Display
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

-:146: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#146: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:58:
+	kmb_clr_bitmask_lcd(kmb, LCD_INT_ENABLE,
+			LCD_INT_VERT_COMP);

-:173: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#173: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:85:
+	drm_info(dev,
+		"vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d\n",

-:194: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#194: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:106:
+	drm_dbg(dev, "%s : %dactive height= %d vbp=%d vfp=%d vsync-w=%d h-active=%d h-bp=%d h-fp=%d hysnc-l=%d",
+			__func__, __LINE__,

-:199: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#199: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:111:
+	kmb_write_lcd(kmb, LCD_V_ACTIVEHEIGHT,
+			m->crtc_vdisplay - 1);

-:204: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#204: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:116:
+	kmb_write_lcd(kmb, LCD_H_ACTIVEWIDTH,
+			m->crtc_hdisplay - 1);

-:217: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#217: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:129:
+		kmb_write_lcd(kmb,
+				LCD_V_BACKPORCH_EVEN, vm.vback_porch);

-:219: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#219: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:131:
+		kmb_write_lcd(kmb,
+				LCD_V_FRONTPORCH_EVEN, vm.vfront_porch);

-:413: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#413: FILE: drivers/gpu/drm/kmb/kmb_drv.c:60:
+		drm_err(&kmb->drm,
+				"Failed to enable MIPI_ECFG clock: %d\n", ret);

-:420: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#420: FILE: drivers/gpu/drm/kmb/kmb_drv.c:67:
+		drm_err(&kmb->drm,
+				"Failed to enable MIPI_CFG clock: %d\n", ret);

-:427: CHECK:LINE_SPACING: Please don't use multiple blank lines
#427: FILE: drivers/gpu/drm/kmb/kmb_drv.c:74:
+
+

-:463: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#463: FILE: drivers/gpu/drm/kmb/kmb_drv.c:110:
+	kmb->sys_clk_mhz = clk_get_rate(kmb_clk.clk_pll0)/1000000;
 	                                                 ^

-:470: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#470: FILE: drivers/gpu/drm/kmb/kmb_drv.c:117:
+		drm_err(&kmb->drm, "failed to set to clk_lcd to %d\n",
+			  KMB_LCD_DEFAULT_CLK);

-:479: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#479: FILE: drivers/gpu/drm/kmb/kmb_drv.c:126:
+		drm_err(&kmb->drm, "failed to set to clk_mipi to %d\n",
+			  KMB_MIPI_DEFAULT_CLK);

-:506: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#506: FILE: drivers/gpu/drm/kmb/kmb_drv.c:153:
+			drm_err(&kmb->drm,
+					"failed to set clk_mipi_cfg to %d\n",

-:511: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#511: FILE: drivers/gpu/drm/kmb/kmb_drv.c:158:
+		drm_info(&kmb->drm,
+				"Get clk_mipi_cfg after set = %ld\n", clk);

-:561: CHECK:LINE_SPACING: Please don't use multiple blank lines
#561: FILE: drivers/gpu/drm/kmb/kmb_drv.c:208:
+
+

-:688: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#688: FILE: drivers/gpu/drm/kmb/kmb_drv.c:335:
+	if (status & LCD_INT_EOF) {
+

-:701: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_CFG>
#701: FILE: drivers/gpu/drm/kmb/kmb_drv.c:348:
+						    LCD_LAYERn_DMA_CFG

-:706: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#706: FILE: drivers/gpu/drm/kmb/kmb_drv.c:353:
+				kmb_clr_bitmask_lcd(kmb, LCD_CONTROL,
+					    plane_status[plane_id].ctrl);

-:733: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#733: FILE: drivers/gpu/drm/kmb/kmb_drv.c:380:
+
+	}

-:774: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#774: FILE: drivers/gpu/drm/kmb/kmb_drv.c:421:
+			drm_info(&kmb->drm,
+			    "!LAYER0:VL0 DMA UNDERFLOW val = 0x%lx,under_flow=%d",

-:787: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#787: FILE: drivers/gpu/drm/kmb/kmb_drv.c:434:
+			kmb_clr_bitmask_lcd(kmb, LCD_LAYERn_DMA_CFG(0),
+				    LCD_DMA_LAYER_CONT_PING_PONG_UPDATE);

-:793: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#793: FILE: drivers/gpu/drm/kmb/kmb_drv.c:440:
+			drm_info(&kmb->drm,
+				"LAYER0:VL0 DMA OVERFLOW val = 0x%lx", val);

-:796: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#796: FILE: drivers/gpu/drm/kmb/kmb_drv.c:443:
+			drm_info(&kmb->drm,
+				"LAYER0:VL0 DMA CB OVERFLOW val = 0x%lx", val);

-:799: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#799: FILE: drivers/gpu/drm/kmb/kmb_drv.c:446:
+			drm_info(&kmb->drm,
+				"LAYER0:VL0 DMA CR OVERFLOW val = 0x%lx", val);

-:807: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#807: FILE: drivers/gpu/drm/kmb/kmb_drv.c:454:
+			drm_info(&kmb->drm,
+			    "!LAYER1:VL1 DMA UNDERFLOW val = 0x%lx, under_flow=%d",

-:820: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#820: FILE: drivers/gpu/drm/kmb/kmb_drv.c:467:
+			kmb_clr_bitmask_lcd(kmb, LCD_LAYERn_DMA_CFG(1),
+				    LCD_DMA_LAYER_CONT_PING_PONG_UPDATE);

-:827: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#827: FILE: drivers/gpu/drm/kmb/kmb_drv.c:474:
+			drm_info(&kmb->drm,
+				"LAYER1:VL1 DMA OVERFLOW val = 0x%lx", val);

-:830: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#830: FILE: drivers/gpu/drm/kmb/kmb_drv.c:477:
+			drm_info(&kmb->drm,
+				"LAYER1:VL1 DMA CB OVERFLOW val = 0x%lx", val);

-:833: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#833: FILE: drivers/gpu/drm/kmb/kmb_drv.c:480:
+			drm_info(&kmb->drm,
+				"LAYER1:VL1 DMA CR OVERFLOW val = 0x%lx", val);

-:838: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#838: FILE: drivers/gpu/drm/kmb/kmb_drv.c:485:
+			drm_info(&kmb->drm,
+				"LAYER2:GL0 DMA UNDERFLOW val = 0x%lx", val);

-:841: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#841: FILE: drivers/gpu/drm/kmb/kmb_drv.c:488:
+			drm_info(&kmb->drm,
+				"LAYER2:GL0 DMA OVERFLOW val = 0x%lx", val);

-:846: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#846: FILE: drivers/gpu/drm/kmb/kmb_drv.c:493:
+			drm_info(&kmb->drm,
+				"LAYER3:GL1 DMA UNDERFLOW val = 0x%lx", val);

-:849: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#849: FILE: drivers/gpu/drm/kmb/kmb_drv.c:496:
+			drm_info(&kmb->drm,
+				"LAYER3:GL1 DMA OVERFLOW val = 0x%lx", val);

-:957: CHECK:BRACES: braces {} should be used on all arms of this statement
#957: FILE: drivers/gpu/drm/kmb/kmb_drv.c:604:
+	if (adv_bridge == ERR_PTR(-EPROBE_DEFER))
[...]
+	else if (IS_ERR(adv_bridge)) {
[...]

-:966: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#966: FILE: drivers/gpu/drm/kmb/kmb_drv.c:613:
+	kmb = devm_drm_dev_alloc(dev, &kmb_driver,
+			struct kmb_drm_private, drm);

-:980: CHECK:BRACES: braces {} should be used on all arms of this statement
#980: FILE: drivers/gpu/drm/kmb/kmb_drv.c:627:
+	if (ret == -EPROBE_DEFER) {
[...]
+	} else if (ret)
[...]

-:990: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#990: FILE: drivers/gpu/drm/kmb/kmb_drv.c:637:
+	drm_info(&kmb->drm, "mode_config.num_crtc=%d\n",
+			kmb->drm.mode_config.num_crtc);

-:1026: WARNING:UNDOCUMENTED_DT_STRING: DT compatible string "intel,kmb_display" appears un-documented -- check ./Documentation/devicetree/bindings/
#1026: FILE: drivers/gpu/drm/kmb/kmb_drv.c:673:
+	{.compatible = "intel,kmb_display"},

-:1122: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#1122: FILE: drivers/gpu/drm/kmb/kmb_drv.h:35:
+	spinlock_t			irq_lock;

-:1360: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#1360: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:95:
+	uint16_t default_bit_rate_mbps;

-:1361: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1361: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:96:
+	uint8_t hsfreqrange_code;

-:1462: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1462: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:197:
+	if (mode->hdisplay < mode_config->min_width ||
+			mode->hdisplay > mode_config->max_width)

-:1466: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1466: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:201:
+	if (mode->vdisplay < mode_config->min_height ||
+			mode->vdisplay > mode_config->max_height)

-:1477: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1477: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:212:
+	num_modes = drm_add_modes_noedid(connector,
+			 connector->dev->mode_config.max_width,

-:1772: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1772: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:507:
+	drm_dbg(&kmb->drm,
+		 "ctrl=%d frame_id=%d section=%d cfg=%x packed=%d\n",

-:1775: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECTo_PH>
#1775: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:510:
+		       (MIPI_TXm_HS_FGn_SECTo_PH(ctrl_no, frame_id, section)),

-:1787: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0>
#1787: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:522:
+	    MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(ctrl_no,

-:1792: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1792: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:527:
+	drm_dbg(&kmb->drm,
+		 "unpacked_bytes = %d, wordcount = %d\n", unpacked_bytes,

-:1796: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECTo_LINE_CFG>
#1796: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:531:
+	reg_adr = MIPI_TXm_HS_FGn_SECTo_LINE_CFG(ctrl_no, frame_id, section);

-:1828: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1828: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:563:
+	unpacked_bytes = compute_unpacked_bytes(*wc,
+					data_type_parameters.bits_per_pclk);

-:1869: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1869: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:604:
+	drm_dbg(&kmb->drm, "bpp=%d sysclk=%d lane-rate=%d active-lanes=%d\n",
+		 fg_cfg->bpp, sysclk, fg_cfg->lane_rate_mbps,

-:1873: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_NUM_LINES>
#1873: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:608:
+	reg_adr = MIPI_TXm_HS_FGn_NUM_LINES(ctrl_no, frame_gen);

-:1883: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_VSYNC_WIDTHn>
#1883: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:618:
+	reg_adr = MIPI_TXm_HS_VSYNC_WIDTHn(ctrl_no, frame_gen / 2);

-:1887: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_V_BACKPORCHESn>
#1887: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:622:
+	reg_adr = MIPI_TXm_HS_V_BACKPORCHESn(ctrl_no, frame_gen / 2);

-:1891: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_V_FRONTPORCHESn>
#1891: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:626:
+	reg_adr = MIPI_TXm_HS_V_FRONTPORCHESn(ctrl_no, frame_gen / 2);

-:1895: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_V_ACTIVEn>
#1895: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:630:
+	reg_adr = MIPI_TXm_HS_V_ACTIVEn(ctrl_no, frame_gen / 2);

-:1899: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_HSYNC_WIDTHn>
#1899: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:634:
+	reg_adr = MIPI_TXm_HS_HSYNC_WIDTHn(ctrl_no, frame_gen);

-:1904: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_H_BACKPORCHn>
#1904: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:639:
+	reg_adr = MIPI_TXm_HS_H_BACKPORCHn(ctrl_no, frame_gen);

-:1909: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_H_FRONTPORCHn>
#1909: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:644:
+	reg_adr = MIPI_TXm_HS_H_FRONTPORCHn(ctrl_no, frame_gen);

-:1914: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_H_ACTIVEn>
#1914: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:649:
+	reg_adr = MIPI_TXm_HS_H_ACTIVEn(ctrl_no, frame_gen);

-:1923: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_LLP_HSYNC_WIDTHn>
#1923: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:658:
+	reg_adr = MIPI_TXm_HS_LLP_HSYNC_WIDTHn(ctrl_no, frame_gen);

-:1927: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_LLP_H_BACKPORCHn>
#1927: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:662:
+	reg_adr = MIPI_TXm_HS_LLP_H_BACKPORCHn(ctrl_no, frame_gen);

-:1931: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_LLP_H_FRONTPORCHn>
#1931: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:666:
+	reg_adr = MIPI_TXm_HS_LLP_H_FRONTPORCHn(ctrl_no, frame_gen);

-:1947: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "fg_cfg->sections[i]"
#1947: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:682:
+		if (fg_cfg->sections[i] != NULL)

-:1995: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_MC_FIFO_CTRL_EN>
#1995: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:730:
+	kmb_set_bit_mipi(kmb, MIPI_TXm_HS_MC_FIFO_CTRL_EN(ctrl_no),

-:2052: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_SYNC_CFG>
#2052: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:787:
+	kmb_write_mipi(kmb, MIPI_TXm_HS_SYNC_CFG(ctrl_no), sync_cfg);

-:2053: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_CTRL>
#2053: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:788:
+	kmb_write_mipi(kmb, MIPI_TXm_HS_CTRL(ctrl_no), ctrl);

-:2064: CHECK:CAMELCASE: Avoid CamelCase: <TP_SEL_VCm>
#2064: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:799:
+	val = TP_SEL_VCm(vc, tp_sel);

-:2067: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_TEST_PAT_COLOR0>
#2067: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:802:
+	kmb_write_mipi(kmb, MIPI_TXm_HS_TEST_PAT_COLOR0(ctrl_no), color0);

-:2068: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_TEST_PAT_COLOR1>
#2068: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:803:
+	kmb_write_mipi(kmb, MIPI_TXm_HS_TEST_PAT_COLOR1(ctrl_no), color1);

-:2071: CHECK:CAMELCASE: Avoid CamelCase: <TP_EN_VCm>
#2071: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:806:
+	val |= TP_EN_VCm(vc);

-:2072: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_TEST_PAT_CTRL>
#2072: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:807:
+	kmb_write_mipi(kmb, MIPI_TXm_HS_TEST_PAT_CTRL(ctrl_no), val);

-:2074: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2074: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:809:
+
+}

-:2099: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!frame"
#2099: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:834:
+		if (frame == NULL)

-:2107: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!frame->sections[sect]"
#2107: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:842:
+			if (frame->sections[sect] == NULL)

-:2117: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2117: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:852:
+
+		}

-:2146: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2146: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:881:
+	drm_dbg(&kmb->drm, "IRQ_STATUS = 0x%x\n",
+		  GET_MIPI_TX_HS_IRQ_STATUS(kmb, MIPI_CTRL6));

-:2338: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#2338: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1073:
+							      *kmb,
 							      ^

-:2351: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#2351: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1086:
+							     *kmb,
 							     ^

-:2518: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2518: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1253:
+	drm_dbg(&kmb->drm, "dphy %d fsm_state = 0%x\n", dphy_no,
+		 kmb_read_mipi(kmb, DPHY_TEST_DOUT4_7));

-:2530: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2530: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1265:
+	drm_info(&kmb->drm,
+		"dphy=%d mode=%d active_lanes=%d\n", dphy_no, mode,

-:2533: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2533: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1268:
+	drm_dbg(&kmb->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(kmb, MIPI_DPHY_STAT4_7));

-:2557: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2557: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1292:
+	drm_dbg(&kmb->drm, "DPHY_TEST_CTRL0=0x%x\n",
+		  kmb_read_mipi(kmb, DPHY_TEST_CTRL0));

-:2658: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2658: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1393:
+
+	}

-:2665: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2665: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1400:
+	drm_dbg(&kmb->drm, "DPHY_FREQ = 0x%x\n",
+		 kmb_read_mipi(kmb, DPHY_FREQ_CTRL0_3 + 4));

-:2667: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2667: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1402:
+	drm_dbg(&kmb->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(kmb, MIPI_DPHY_STAT4_7));

-:2673: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2673: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1408:
+	drm_dbg(&kmb->drm, "DPHY_CFG_CLK_EN = 0x%x\n",
+		 kmb_read_mipi(kmb, DPHY_CFG_CLK_EN));

-:2694: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2694: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1429:
+		drm_dbg(&kmb->drm, "DPHY_INIT_CTRL1 = 0x%x\n",
+			 kmb_read_mipi(kmb, DPHY_INIT_CTRL1));

-:2698: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2698: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1433:
+	drm_dbg(&kmb->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(kmb, MIPI_DPHY_STAT4_7));

-:2739: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2739: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1474:
+	drm_dbg(&kmb->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(kmb, MIPI_DPHY_STAT4_7));

-:2751: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2751: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1486:
+	drm_dbg(&kmb->drm, "DPHY_INIT_CTRL2 = 0x%x\n",
+		 kmb_read_mipi(kmb, DPHY_INIT_CTRL2));

-:2764: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2764: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1499:
+	drm_dbg(&kmb->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		 kmb_read_mipi(kmb, MIPI_DPHY_STAT4_7));

-:2771: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2771: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1506:
+	drm_dbg(&kmb->drm, "DPHY_INIT_CTRL0 = 0x%x\n",
+		 kmb_read_mipi(kmb, DPHY_INIT_CTRL0));

-:2806: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2806: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1541:
+	drm_dbg(&kmb->drm, "dphy=%d active_lanes=%d data_lanes=%d\n", dphy_no,
+		 active_lanes, data_lanes);

-:2819: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2819: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1554:
+			drm_info(&kmb->drm,
+				"! WAIT_INIT_DONE: TIMING OUT!(err_stat=%d)",

-:2878: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2878: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1613:
+	drm_info(&kmb->drm,
+		"active_lanes=%d lane_rate=%d\n", cfg->active_lanes,

-:2945: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "mode"
#2945: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1680:
+	if (mode != NULL) {

-:2964: CHECK:SPACING: No space is necessary after a cast
#2964: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1699:
+		data_rate = ((((u32) mode->crtc_vtotal *

-:2965: CHECK:SPACING: No space is necessary after a cast
#2965: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1700:
+				(u32) mode->crtc_htotal) *

-:2974: CHECK:SPACING: No space is necessary after a cast
#2974: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1709:
+			 (u32) data_rate, mipi_tx_init_cfg.active_lanes);

-:2986: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2986: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1721:
+		drm_info(&kmb->drm,
+			"lane rate=%d\n", mipi_tx_init_cfg.lane_rate_mbps);

-:2988: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2988: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1723:
+		drm_dbg(&kmb->drm,
+		     "vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d lane-rate=%d",

-:2997: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2997: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1732:
+
+	}

-:3013: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3013: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1748:
+	drm_dbg(&kmb->drm, "IRQ_STATUS = 0x%x\n",
+		 GET_MIPI_TX_HS_IRQ_STATUS(kmb, MIPI_CTRL6));

-:3022: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3022: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1757:
+	drm_dbg(&kmb->drm, "IRQ_STATUS = 0x%x\n",
+		 GET_MIPI_TX_HS_IRQ_STATUS(kmb, MIPI_CTRL6));

-:3028: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3028: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1763:
+	drm_dbg(&kmb->drm, "MIPI_TXm_HS_CTRL = 0x%x\n",
+		 kmb_read_mipi(kmb, MIPI_TXm_HS_CTRL(6)));

-:3030: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3030: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1765:
+	drm_dbg(&kmb->drm, "MIPI LOOP BACK = %x\n",
+		 kmb_read_mipi(kmb, MIPI_CTRL_DIG_LOOPBACK));

-:3362: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3362: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:257:
+	uint8_t size_constraint_pixels;

-:3363: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3363: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:258:
+	uint8_t size_constraint_bytes;

-:3364: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3364: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:259:
+	uint8_t pixels_per_pclk;

-:3365: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3365: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:260:
+	uint8_t bits_per_pclk;

-:3369: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3369: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:264:
+	uint8_t hfp_blank_en;	/*horizontal front porch blanking enable */

-:3370: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3370: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:265:
+	uint8_t eotp_en;	/*End of transmission packet enable */

-:3372: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3372: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:267:
+	uint8_t lpm_last_vfp_line;

-:3374: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3374: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:269:
+	uint8_t lpm_first_vsa_line;

-:3375: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3375: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:270:
+	uint8_t sync_pulse_eventn;	/*sync type */

-:3376: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3376: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:271:
+	uint8_t hfp_blanking;	/*horizontal front porch blanking mode */

-:3377: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3377: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:272:
+	uint8_t hbp_blanking;	/*horizontal back porch blanking mode */

-:3378: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3378: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:273:
+	uint8_t hsa_blanking;	/*horizontal sync active blanking mode */

-:3379: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3379: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:274:
+	uint8_t v_blanking;	/*vertical timing blanking mode */

-:3383: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3383: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:278:
+	uint32_t dma_v_stride;

-:3384: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3384: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:279:
+	uint16_t dma_v_scale_cfg;

-:3385: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3385: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:280:
+	uint16_t width_pixels;

-:3386: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3386: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:281:
+	uint16_t height_lines;

-:3387: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3387: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:282:
+	uint8_t dma_packed;

-:3388: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3388: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:283:
+	uint8_t bpp;

-:3389: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3389: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:284:
+	uint8_t bpp_unpacked;

-:3390: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3390: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:285:
+	uint8_t dma_h_stride;

-:3391: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3391: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:286:
+	uint8_t data_type;

-:3392: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3392: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:287:
+	uint8_t data_mode;

-:3393: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3393: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:288:
+	uint8_t dma_flip_rotate_sel;

-:3397: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3397: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:292:
+	uint32_t bpp;

-:3398: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3398: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:293:
+	uint32_t lane_rate_mbps;

-:3399: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3399: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:294:
+	uint32_t hsync_width;

-:3400: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3400: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:295:
+	uint32_t h_backporch;

-:3401: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3401: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:296:
+	uint32_t h_frontporch;

-:3402: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3402: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:297:
+	uint32_t h_active;

-:3403: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3403: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:298:
+	uint16_t vsync_width;

-:3404: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3404: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:299:
+	uint16_t v_backporch;

-:3405: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3405: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:300:
+	uint16_t v_frontporch;

-:3406: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3406: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:301:
+	uint16_t v_active;

-:3407: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3407: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:302:
+	uint8_t active_lanes;

-:3411: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3411: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:306:
+	uint32_t wc;

-:3414: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3414: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:309:
+	uint8_t vchannel;

-:3415: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3415: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:310:
+	uint8_t dma_packed;

-:3420: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3420: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:315:
+	uint32_t hsync_width;	/*in pixels */

-:3421: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3421: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:316:
+	uint32_t h_backporch;	/*in pixels */

-:3422: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3422: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:317:
+	uint32_t h_frontporch;	/*in pixels */

-:3423: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3423: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:318:
+	uint16_t vsync_width;	/*in lines */

-:3424: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3424: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:319:
+	uint16_t v_backporch;	/*in lines */

-:3425: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3425: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:320:
+	uint16_t v_frontporch;	/*in lines */

-:3431: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3431: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:326:
+	uint8_t line_sync_pkt_en;

-:3432: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3432: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:327:
+	uint8_t line_counter_active;

-:3433: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3433: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:328:
+	uint8_t frame_counter_active;

-:3434: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3434: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:329:
+	uint8_t tx_hsclkkidle_cnt;

-:3435: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3435: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:330:
+	uint8_t tx_hsexit_cnt;

-:3436: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3436: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:331:
+	uint8_t tx_crc_en;

-:3437: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3437: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:332:
+	uint8_t tx_hact_wait_stop;

-:3438: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3438: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:333:
+	uint8_t tx_always_use_hact;

-:3439: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3439: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:334:
+	uint8_t tx_wait_trig;

-:3440: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3440: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:335:
+	uint8_t tx_wait_all_sect;

-:3446: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3446: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:341:
+	uint8_t index;

-:3447: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3447: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:342:
+	uint8_t type;		/* controller type : MIPI_DSI */

-:3448: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3448: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:343:
+	uint8_t dir;		/* controller direction : MIPI_TX */

-:3449: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3449: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:344:
+	uint8_t active_lanes;	/* # active lanes per controller 2/4 */

-:3450: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'ui


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
