Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4AA233A42
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 23:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C7D6E133;
	Thu, 30 Jul 2020 21:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 225C06E133;
 Thu, 30 Jul 2020 21:04:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B6C6A00C7;
 Thu, 30 Jul 2020 21:04:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anitha Chrisanthus" <anitha.chrisanthus@intel.com>
Date: Thu, 30 Jul 2020 21:04:39 -0000
Message-ID: <159614307907.11112.12775121543880267195@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1596141884-29868-1-git-send-email-anitha.chrisanthus@intel.com>
In-Reply-To: <1596141884-29868-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/kmb=3A_Add_support_for_KeemBay_Display_=28rev2=29?=
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

Series: drm/kmb: Add support for KeemBay Display (rev2)
URL   : https://patchwork.freedesktop.org/series/79615/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
984b2ce8e7ed drm/kmb: Add support for KeemBay Display
-:55: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#55: 
new file mode 100644

-:144: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#144: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:58:
+	kmb_clr_bitmask_lcd(kmb, LCD_INT_ENABLE,
+			LCD_INT_VERT_COMP);

-:171: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#171: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:85:
+	drm_info(dev,
+		"vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d\n",

-:192: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#192: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:106:
+	drm_dbg(dev, "%s : %dactive height= %d vbp=%d vfp=%d vsync-w=%d h-active=%d h-bp=%d h-fp=%d hysnc-l=%d",
+			__func__, __LINE__,

-:197: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#197: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:111:
+	kmb_write_lcd(kmb, LCD_V_ACTIVEHEIGHT,
+			m->crtc_vdisplay - 1);

-:202: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#202: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:116:
+	kmb_write_lcd(kmb, LCD_H_ACTIVEWIDTH,
+			m->crtc_hdisplay - 1);

-:215: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#215: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:129:
+		kmb_write_lcd(kmb,
+				LCD_V_BACKPORCH_EVEN, vm.vback_porch);

-:217: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#217: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:131:
+		kmb_write_lcd(kmb,
+				LCD_V_FRONTPORCH_EVEN, vm.vfront_porch);

-:411: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#411: FILE: drivers/gpu/drm/kmb/kmb_drv.c:60:
+		drm_err(&kmb->drm,
+				"Failed to enable MIPI_ECFG clock: %d\n", ret);

-:418: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#418: FILE: drivers/gpu/drm/kmb/kmb_drv.c:67:
+		drm_err(&kmb->drm,
+				"Failed to enable MIPI_CFG clock: %d\n", ret);

-:425: CHECK:LINE_SPACING: Please don't use multiple blank lines
#425: FILE: drivers/gpu/drm/kmb/kmb_drv.c:74:
+
+

-:461: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#461: FILE: drivers/gpu/drm/kmb/kmb_drv.c:110:
+	kmb->sys_clk_mhz = clk_get_rate(kmb_clk.clk_pll0)/1000000;
 	                                                 ^

-:468: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#468: FILE: drivers/gpu/drm/kmb/kmb_drv.c:117:
+		drm_err(&kmb->drm, "failed to set to clk_lcd to %d\n",
+			  KMB_LCD_DEFAULT_CLK);

-:477: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#477: FILE: drivers/gpu/drm/kmb/kmb_drv.c:126:
+		drm_err(&kmb->drm, "failed to set to clk_mipi to %d\n",
+			  KMB_MIPI_DEFAULT_CLK);

-:504: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#504: FILE: drivers/gpu/drm/kmb/kmb_drv.c:153:
+			drm_err(&kmb->drm,
+					"failed to set clk_mipi_cfg to %d\n",

-:509: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#509: FILE: drivers/gpu/drm/kmb/kmb_drv.c:158:
+		drm_info(&kmb->drm,
+				"Get clk_mipi_cfg after set = %ld\n", clk);

-:559: CHECK:LINE_SPACING: Please don't use multiple blank lines
#559: FILE: drivers/gpu/drm/kmb/kmb_drv.c:208:
+
+

-:686: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#686: FILE: drivers/gpu/drm/kmb/kmb_drv.c:335:
+	if (status & LCD_INT_EOF) {
+

-:699: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_CFG>
#699: FILE: drivers/gpu/drm/kmb/kmb_drv.c:348:
+						    LCD_LAYERn_DMA_CFG

-:704: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#704: FILE: drivers/gpu/drm/kmb/kmb_drv.c:353:
+				kmb_clr_bitmask_lcd(kmb, LCD_CONTROL,
+					    plane_status[plane_id].ctrl);

-:731: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#731: FILE: drivers/gpu/drm/kmb/kmb_drv.c:380:
+
+	}

-:772: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#772: FILE: drivers/gpu/drm/kmb/kmb_drv.c:421:
+			drm_info(&kmb->drm,
+			    "!LAYER0:VL0 DMA UNDERFLOW val = 0x%lx,under_flow=%d",

-:785: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#785: FILE: drivers/gpu/drm/kmb/kmb_drv.c:434:
+			kmb_clr_bitmask_lcd(kmb, LCD_LAYERn_DMA_CFG(0),
+				    LCD_DMA_LAYER_CONT_PING_PONG_UPDATE);

-:791: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#791: FILE: drivers/gpu/drm/kmb/kmb_drv.c:440:
+			drm_info(&kmb->drm,
+				"LAYER0:VL0 DMA OVERFLOW val = 0x%lx", val);

-:794: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#794: FILE: drivers/gpu/drm/kmb/kmb_drv.c:443:
+			drm_info(&kmb->drm,
+				"LAYER0:VL0 DMA CB OVERFLOW val = 0x%lx", val);

-:797: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#797: FILE: drivers/gpu/drm/kmb/kmb_drv.c:446:
+			drm_info(&kmb->drm,
+				"LAYER0:VL0 DMA CR OVERFLOW val = 0x%lx", val);

-:805: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#805: FILE: drivers/gpu/drm/kmb/kmb_drv.c:454:
+			drm_info(&kmb->drm,
+			    "!LAYER1:VL1 DMA UNDERFLOW val = 0x%lx, under_flow=%d",

-:818: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#818: FILE: drivers/gpu/drm/kmb/kmb_drv.c:467:
+			kmb_clr_bitmask_lcd(kmb, LCD_LAYERn_DMA_CFG(1),
+				    LCD_DMA_LAYER_CONT_PING_PONG_UPDATE);

-:825: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#825: FILE: drivers/gpu/drm/kmb/kmb_drv.c:474:
+			drm_info(&kmb->drm,
+				"LAYER1:VL1 DMA OVERFLOW val = 0x%lx", val);

-:828: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#828: FILE: drivers/gpu/drm/kmb/kmb_drv.c:477:
+			drm_info(&kmb->drm,
+				"LAYER1:VL1 DMA CB OVERFLOW val = 0x%lx", val);

-:831: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#831: FILE: drivers/gpu/drm/kmb/kmb_drv.c:480:
+			drm_info(&kmb->drm,
+				"LAYER1:VL1 DMA CR OVERFLOW val = 0x%lx", val);

-:836: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#836: FILE: drivers/gpu/drm/kmb/kmb_drv.c:485:
+			drm_info(&kmb->drm,
+				"LAYER2:GL0 DMA UNDERFLOW val = 0x%lx", val);

-:839: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#839: FILE: drivers/gpu/drm/kmb/kmb_drv.c:488:
+			drm_info(&kmb->drm,
+				"LAYER2:GL0 DMA OVERFLOW val = 0x%lx", val);

-:844: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#844: FILE: drivers/gpu/drm/kmb/kmb_drv.c:493:
+			drm_info(&kmb->drm,
+				"LAYER3:GL1 DMA UNDERFLOW val = 0x%lx", val);

-:847: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#847: FILE: drivers/gpu/drm/kmb/kmb_drv.c:496:
+			drm_info(&kmb->drm,
+				"LAYER3:GL1 DMA OVERFLOW val = 0x%lx", val);

-:955: CHECK:BRACES: braces {} should be used on all arms of this statement
#955: FILE: drivers/gpu/drm/kmb/kmb_drv.c:604:
+	if (adv_bridge == ERR_PTR(-EPROBE_DEFER))
[...]
+	else if (IS_ERR(adv_bridge)) {
[...]

-:964: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#964: FILE: drivers/gpu/drm/kmb/kmb_drv.c:613:
+	kmb = devm_drm_dev_alloc(dev, &kmb_driver,
+			struct kmb_drm_private, drm);

-:978: CHECK:BRACES: braces {} should be used on all arms of this statement
#978: FILE: drivers/gpu/drm/kmb/kmb_drv.c:627:
+	if (ret == -EPROBE_DEFER) {
[...]
+	} else if (ret)
[...]

-:988: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#988: FILE: drivers/gpu/drm/kmb/kmb_drv.c:637:
+	drm_info(&kmb->drm, "mode_config.num_crtc=%d\n",
+			kmb->drm.mode_config.num_crtc);

-:1024: WARNING:UNDOCUMENTED_DT_STRING: DT compatible string "intel,kmb_display" appears un-documented -- check ./Documentation/devicetree/bindings/
#1024: FILE: drivers/gpu/drm/kmb/kmb_drv.c:673:
+	{.compatible = "intel,kmb_display"},

-:1120: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#1120: FILE: drivers/gpu/drm/kmb/kmb_drv.h:35:
+	spinlock_t			irq_lock;

-:1358: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#1358: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:95:
+	uint16_t default_bit_rate_mbps;

-:1359: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1359: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:96:
+	uint8_t hsfreqrange_code;

-:1460: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1460: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:197:
+	if (mode->hdisplay < mode_config->min_width ||
+			mode->hdisplay > mode_config->max_width)

-:1464: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1464: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:201:
+	if (mode->vdisplay < mode_config->min_height ||
+			mode->vdisplay > mode_config->max_height)

-:1475: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1475: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:212:
+	num_modes = drm_add_modes_noedid(connector,
+			 connector->dev->mode_config.max_width,

-:1770: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1770: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:507:
+	drm_dbg(&kmb->drm,
+		 "ctrl=%d frame_id=%d section=%d cfg=%x packed=%d\n",

-:1773: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECTo_PH>
#1773: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:510:
+		       (MIPI_TXm_HS_FGn_SECTo_PH(ctrl_no, frame_id, section)),

-:1785: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0>
#1785: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:522:
+	    MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(ctrl_no,

-:1790: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1790: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:527:
+	drm_dbg(&kmb->drm,
+		 "unpacked_bytes = %d, wordcount = %d\n", unpacked_bytes,

-:1794: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECTo_LINE_CFG>
#1794: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:531:
+	reg_adr = MIPI_TXm_HS_FGn_SECTo_LINE_CFG(ctrl_no, frame_id, section);

-:1826: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1826: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:563:
+	unpacked_bytes = compute_unpacked_bytes(*wc,
+					data_type_parameters.bits_per_pclk);

-:1867: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1867: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:604:
+	drm_dbg(&kmb->drm, "bpp=%d sysclk=%d lane-rate=%d activ-lanes=%d\n",
+		 fg_cfg->bpp, sysclk, fg_cfg->lane_rate_mbps,

-:1871: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_NUM_LINES>
#1871: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:608:
+	reg_adr = MIPI_TXm_HS_FGn_NUM_LINES(ctrl_no, frame_gen);

-:1881: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_VSYNC_WIDTHn>
#1881: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:618:
+	reg_adr = MIPI_TXm_HS_VSYNC_WIDTHn(ctrl_no, frame_gen / 2);

-:1885: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_V_BACKPORCHESn>
#1885: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:622:
+	reg_adr = MIPI_TXm_HS_V_BACKPORCHESn(ctrl_no, frame_gen / 2);

-:1889: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_V_FRONTPORCHESn>
#1889: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:626:
+	reg_adr = MIPI_TXm_HS_V_FRONTPORCHESn(ctrl_no, frame_gen / 2);

-:1893: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_V_ACTIVEn>
#1893: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:630:
+	reg_adr = MIPI_TXm_HS_V_ACTIVEn(ctrl_no, frame_gen / 2);

-:1897: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_HSYNC_WIDTHn>
#1897: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:634:
+	reg_adr = MIPI_TXm_HS_HSYNC_WIDTHn(ctrl_no, frame_gen);

-:1902: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_H_BACKPORCHn>
#1902: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:639:
+	reg_adr = MIPI_TXm_HS_H_BACKPORCHn(ctrl_no, frame_gen);

-:1907: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_H_FRONTPORCHn>
#1907: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:644:
+	reg_adr = MIPI_TXm_HS_H_FRONTPORCHn(ctrl_no, frame_gen);

-:1912: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_H_ACTIVEn>
#1912: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:649:
+	reg_adr = MIPI_TXm_HS_H_ACTIVEn(ctrl_no, frame_gen);

-:1921: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_LLP_HSYNC_WIDTHn>
#1921: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:658:
+	reg_adr = MIPI_TXm_HS_LLP_HSYNC_WIDTHn(ctrl_no, frame_gen);

-:1925: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_LLP_H_BACKPORCHn>
#1925: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:662:
+	reg_adr = MIPI_TXm_HS_LLP_H_BACKPORCHn(ctrl_no, frame_gen);

-:1929: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_LLP_H_FRONTPORCHn>
#1929: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:666:
+	reg_adr = MIPI_TXm_HS_LLP_H_FRONTPORCHn(ctrl_no, frame_gen);

-:1945: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "fg_cfg->sections[i]"
#1945: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:682:
+		if (fg_cfg->sections[i] != NULL)

-:1993: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_MC_FIFO_CTRL_EN>
#1993: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:730:
+	kmb_set_bit_mipi(kmb, MIPI_TXm_HS_MC_FIFO_CTRL_EN(ctrl_no),

-:2050: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_SYNC_CFG>
#2050: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:787:
+	kmb_write_mipi(kmb, MIPI_TXm_HS_SYNC_CFG(ctrl_no), sync_cfg);

-:2051: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_CTRL>
#2051: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:788:
+	kmb_write_mipi(kmb, MIPI_TXm_HS_CTRL(ctrl_no), ctrl);

-:2062: CHECK:CAMELCASE: Avoid CamelCase: <TP_SEL_VCm>
#2062: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:799:
+	val = TP_SEL_VCm(vc, tp_sel);

-:2065: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_TEST_PAT_COLOR0>
#2065: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:802:
+	kmb_write_mipi(kmb, MIPI_TXm_HS_TEST_PAT_COLOR0(ctrl_no), color0);

-:2066: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_TEST_PAT_COLOR1>
#2066: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:803:
+	kmb_write_mipi(kmb, MIPI_TXm_HS_TEST_PAT_COLOR1(ctrl_no), color1);

-:2069: CHECK:CAMELCASE: Avoid CamelCase: <TP_EN_VCm>
#2069: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:806:
+	val |= TP_EN_VCm(vc);

-:2070: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_TEST_PAT_CTRL>
#2070: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:807:
+	kmb_write_mipi(kmb, MIPI_TXm_HS_TEST_PAT_CTRL(ctrl_no), val);

-:2072: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2072: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:809:
+
+}

-:2097: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!frame"
#2097: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:834:
+		if (frame == NULL)

-:2105: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!frame->sections[sect]"
#2105: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:842:
+			if (frame->sections[sect] == NULL)

-:2115: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2115: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:852:
+
+		}

-:2144: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2144: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:881:
+	drm_dbg(&kmb->drm, "IRQ_STATUS = 0x%x\n",
+		  GET_MIPI_TX_HS_IRQ_STATUS(kmb, MIPI_CTRL6));

-:2336: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#2336: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1073:
+							      *kmb,
 							      ^

-:2349: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#2349: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1086:
+							     *kmb,
 							     ^

-:2516: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2516: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1253:
+	drm_dbg(&kmb->drm, "dphy %d fsm_state = 0%x\n", dphy_no,
+		 kmb_read_mipi(kmb, DPHY_TEST_DOUT4_7));

-:2528: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2528: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1265:
+	drm_info(&kmb->drm,
+		"dphy=%d mode=%d active_lanes=%d\n", dphy_no, mode,

-:2531: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2531: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1268:
+	drm_dbg(&kmb->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(kmb, MIPI_DPHY_STAT4_7));

-:2555: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2555: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1292:
+	drm_dbg(&kmb->drm, "DPHY_TEST_CTRL0=0x%x\n",
+		  kmb_read_mipi(kmb, DPHY_TEST_CTRL0));

-:2656: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2656: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1393:
+
+	}

-:2663: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2663: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1400:
+	drm_dbg(&kmb->drm, "DPHY_FREQ = 0x%x\n",
+		 kmb_read_mipi(kmb, DPHY_FREQ_CTRL0_3 + 4));

-:2665: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2665: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1402:
+	drm_dbg(&kmb->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(kmb, MIPI_DPHY_STAT4_7));

-:2671: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2671: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1408:
+	drm_dbg(&kmb->drm, "DPHY_CFG_CLK_EN = 0x%x\n",
+		 kmb_read_mipi(kmb, DPHY_CFG_CLK_EN));

-:2692: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2692: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1429:
+		drm_dbg(&kmb->drm, "DPHY_INIT_CTRL1 = 0x%x\n",
+			 kmb_read_mipi(kmb, DPHY_INIT_CTRL1));

-:2696: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2696: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1433:
+	drm_dbg(&kmb->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(kmb, MIPI_DPHY_STAT4_7));

-:2737: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2737: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1474:
+	drm_dbg(&kmb->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(kmb, MIPI_DPHY_STAT4_7));

-:2749: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2749: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1486:
+	drm_dbg(&kmb->drm, "DPHY_INIT_CTRL2 = 0x%x\n",
+		 kmb_read_mipi(kmb, DPHY_INIT_CTRL2));

-:2762: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2762: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1499:
+	drm_dbg(&kmb->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		 kmb_read_mipi(kmb, MIPI_DPHY_STAT4_7));

-:2769: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2769: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1506:
+	drm_dbg(&kmb->drm, "DPHY_INIT_CTRL0 = 0x%x\n",
+		 kmb_read_mipi(kmb, DPHY_INIT_CTRL0));

-:2804: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2804: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1541:
+	drm_dbg(&kmb->drm, "dphy=%d active_lanes=%d data_lanes=%d\n", dphy_no,
+		 active_lanes, data_lanes);

-:2817: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2817: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1554:
+			drm_info(&kmb->drm,
+				"! WAIT_INIT_DONE: TIMING OUT!(err_stat=%d)",

-:2876: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2876: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1613:
+	drm_info(&kmb->drm,
+		"active_lanes=%d lane_rate=%d\n", cfg->active_lanes,

-:2943: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "mode"
#2943: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1680:
+	if (mode != NULL) {

-:2962: CHECK:SPACING: No space is necessary after a cast
#2962: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1699:
+		data_rate = ((((u32) mode->crtc_vtotal *

-:2963: CHECK:SPACING: No space is necessary after a cast
#2963: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1700:
+				(u32) mode->crtc_htotal) *

-:2972: CHECK:SPACING: No space is necessary after a cast
#2972: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1709:
+			 (u32) data_rate, mipi_tx_init_cfg.active_lanes);

-:2984: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2984: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1721:
+		drm_info(&kmb->drm,
+			"lane rate=%d\n", mipi_tx_init_cfg.lane_rate_mbps);

-:2986: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2986: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1723:
+		drm_dbg(&kmb->drm,
+		     "vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d lane-rate=%d",

-:2995: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2995: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1732:
+
+	}

-:3011: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3011: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1748:
+	drm_dbg(&kmb->drm, "IRQ_STATUS = 0x%x\n",
+		 GET_MIPI_TX_HS_IRQ_STATUS(kmb, MIPI_CTRL6));

-:3020: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3020: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1757:
+	drm_dbg(&kmb->drm, "IRQ_STATUS = 0x%x\n",
+		 GET_MIPI_TX_HS_IRQ_STATUS(kmb, MIPI_CTRL6));

-:3026: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3026: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1763:
+	drm_dbg(&kmb->drm, "MIPI_TXm_HS_CTRL = 0x%x\n",
+		 kmb_read_mipi(kmb, MIPI_TXm_HS_CTRL(6)));

-:3028: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3028: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1765:
+	drm_dbg(&kmb->drm, "MIPI LOOP BACK = %x\n",
+		 kmb_read_mipi(kmb, MIPI_CTRL_DIG_LOOPBACK));

-:3360: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3360: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:257:
+	uint8_t size_constraint_pixels;

-:3361: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3361: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:258:
+	uint8_t size_constraint_bytes;

-:3362: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3362: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:259:
+	uint8_t pixels_per_pclk;

-:3363: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3363: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:260:
+	uint8_t bits_per_pclk;

-:3367: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3367: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:264:
+	uint8_t hfp_blank_en;	/*horizontal front porch blanking enable */

-:3368: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3368: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:265:
+	uint8_t eotp_en;	/*End of transmission packet enable */

-:3370: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3370: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:267:
+	uint8_t lpm_last_vfp_line;

-:3372: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3372: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:269:
+	uint8_t lpm_first_vsa_line;

-:3373: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3373: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:270:
+	uint8_t sync_pulse_eventn;	/*sync type */

-:3374: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3374: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:271:
+	uint8_t hfp_blanking;	/*horizontal front porch blanking mode */

-:3375: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3375: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:272:
+	uint8_t hbp_blanking;	/*horizontal back porch blanking mode */

-:3376: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3376: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:273:
+	uint8_t hsa_blanking;	/*horizontal sync active blanking mode */

-:3377: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3377: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:274:
+	uint8_t v_blanking;	/*vertical timing blanking mode */

-:3381: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3381: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:278:
+	uint32_t dma_v_stride;

-:3382: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3382: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:279:
+	uint16_t dma_v_scale_cfg;

-:3383: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3383: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:280:
+	uint16_t width_pixels;

-:3384: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3384: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:281:
+	uint16_t height_lines;

-:3385: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3385: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:282:
+	uint8_t dma_packed;

-:3386: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3386: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:283:
+	uint8_t bpp;

-:3387: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3387: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:284:
+	uint8_t bpp_unpacked;

-:3388: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3388: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:285:
+	uint8_t dma_h_stride;

-:3389: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3389: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:286:
+	uint8_t data_type;

-:3390: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3390: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:287:
+	uint8_t data_mode;

-:3391: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3391: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:288:
+	uint8_t dma_flip_rotate_sel;

-:3395: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3395: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:292:
+	uint32_t bpp;

-:3396: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3396: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:293:
+	uint32_t lane_rate_mbps;

-:3397: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3397: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:294:
+	uint32_t hsync_width;

-:3398: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3398: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:295:
+	uint32_t h_backporch;

-:3399: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3399: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:296:
+	uint32_t h_frontporch;

-:3400: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3400: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:297:
+	uint32_t h_active;

-:3401: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3401: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:298:
+	uint16_t vsync_width;

-:3402: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3402: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:299:
+	uint16_t v_backporch;

-:3403: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3403: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:300:
+	uint16_t v_frontporch;

-:3404: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3404: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:301:
+	uint16_t v_active;

-:3405: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3405: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:302:
+	uint8_t active_lanes;

-:3409: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3409: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:306:
+	uint32_t wc;

-:3412: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3412: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:309:
+	uint8_t vchannel;

-:3413: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3413: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:310:
+	uint8_t dma_packed;

-:3418: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3418: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:315:
+	uint32_t hsync_width;	/*in pixels */

-:3419: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3419: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:316:
+	uint32_t h_backporch;	/*in pixels */

-:3420: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3420: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:317:
+	uint32_t h_frontporch;	/*in pixels */

-:3421: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3421: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:318:
+	uint16_t vsync_width;	/*in lines */

-:3422: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3422: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:319:
+	uint16_t v_backporch;	/*in lines */

-:3423: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3423: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:320:
+	uint16_t v_frontporch;	/*in lines */

-:3429: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3429: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:326:
+	uint8_t line_sync_pkt_en;

-:3430: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3430: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:327:
+	uint8_t line_counter_active;

-:3431: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3431: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:328:
+	uint8_t frame_counter_active;

-:3432: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3432: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:329:
+	uint8_t tx_hsclkkidle_cnt;

-:3433: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3433: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:330:
+	uint8_t tx_hsexit_cnt;

-:3434: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3434: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:331:
+	uint8_t tx_crc_en;

-:3435: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3435: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:332:
+	uint8_t tx_hact_wait_stop;

-:3436: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3436: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:333:
+	uint8_t tx_always_use_hact;

-:3437: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3437: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:334:
+	uint8_t tx_wait_trig;

-:3438: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3438: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:335:
+	uint8_t tx_wait_all_sect;

-:3444: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3444: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:341:
+	uint8_t index;

-:3445: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3445: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:342:
+	uint8_t type;		/* controller type : MIPI_DSI */

-:3446: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3446: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:343:
+	uint8_t dir;		/* controller direction : MIPI_TX */

-:3447: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3447: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:344:
+	uint8_t active_lanes;	/* # active lanes per controller 2/4 */

-:3448: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uin


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
