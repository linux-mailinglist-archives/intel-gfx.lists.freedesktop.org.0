Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E72DD2245F3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:48:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA276E2D6;
	Fri, 17 Jul 2020 21:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 27E126E2D6;
 Fri, 17 Jul 2020 21:48:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20482A363B;
 Fri, 17 Jul 2020 21:48:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anitha Chrisanthus" <anitha.chrisanthus@intel.com>
Date: Fri, 17 Jul 2020 21:48:33 -0000
Message-ID: <159502251310.14917.12971788321919586977@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1595020551-30768-1-git-send-email-anitha.chrisanthus@intel.com>
In-Reply-To: <1595020551-30768-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/kmb=3A_Add_support_for_KeemBay_Display?=
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

Series: drm/kmb: Add support for KeemBay Display
URL   : https://patchwork.freedesktop.org/series/79615/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
09ff5d4b7f4c drm/kmb: Add support for KeemBay Display
-:48: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#48: 
new file mode 100644

-:136: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#136: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:58:
+	kmb_clr_bitmask_lcd(dev_p, LCD_INT_ENABLE,
+			LCD_INT_VERT_COMP);

-:163: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#163: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:85:
+	drm_info(dev,
+		"vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d\n",

-:184: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#184: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:106:
+	drm_dbg(dev, "%s : %dactive height= %d vbp=%d vfp=%d vsync-w=%d h-active=%d h-bp=%d h-fp=%d hysnc-l=%d",
+			__func__, __LINE__,

-:189: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#189: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:111:
+	kmb_write_lcd(dev_p, LCD_V_ACTIVEHEIGHT,
+			m->crtc_vdisplay - 1);

-:194: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#194: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:116:
+	kmb_write_lcd(dev_p, LCD_H_ACTIVEWIDTH,
+			m->crtc_hdisplay - 1);

-:207: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#207: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:129:
+		kmb_write_lcd(dev_p,
+				LCD_V_BACKPORCH_EVEN, vm.vback_porch);

-:209: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#209: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:131:
+		kmb_write_lcd(dev_p,
+				LCD_V_FRONTPORCH_EVEN, vm.vfront_porch);

-:342: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#342: FILE: drivers/gpu/drm/kmb/kmb_crtc.h:39:
+extern void kmb_plane_destroy(struct drm_plane *plane);

-:343: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#343: FILE: drivers/gpu/drm/kmb/kmb_crtc.h:40:
+extern struct kmb_plane *kmb_plane_init(struct drm_device *drm);

-:546: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#546: FILE: drivers/gpu/drm/kmb/kmb_drv.c:196:
+	dev_p->sys_clk_mhz = clk_get_rate(clk_pll0)/1000000;
 	                                           ^

-:553: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#553: FILE: drivers/gpu/drm/kmb/kmb_drv.c:203:
+		drm_err(&dev_p->drm, "failed to set to clk_lcd to %d\n",
+			  KMB_LCD_DEFAULT_CLK);

-:561: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#561: FILE: drivers/gpu/drm/kmb/kmb_drv.c:211:
+		drm_err(&dev_p->drm, "failed to set to clk_mipi to %d\n",
+			  KMB_MIPI_DEFAULT_CLK);

-:588: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#588: FILE: drivers/gpu/drm/kmb/kmb_drv.c:238:
+			drm_err(&dev_p->drm,
+					"failed to set clk_mipi_cfg to %d\n",

-:593: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#593: FILE: drivers/gpu/drm/kmb/kmb_drv.c:243:
+		drm_info(&dev_p->drm,
+				"Get clk_mipi_cfg after set = %ld\n", clk);

-:658: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#658: FILE: drivers/gpu/drm/kmb/kmb_drv.c:308:
+	drm_info(&dev_p->drm,
+			"ICAM mode = 0x%x, priority = 0x%x bandwidth=0x%x",

-:721: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_CFG>
#721: FILE: drivers/gpu/drm/kmb/kmb_drv.c:371:
+						    LCD_LAYERn_DMA_CFG

-:726: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#726: FILE: drivers/gpu/drm/kmb/kmb_drv.c:376:
+				kmb_clr_bitmask_lcd(dev_p, LCD_CONTROL,
+					    plane_status[plane_id].ctrl);

-:753: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#753: FILE: drivers/gpu/drm/kmb/kmb_drv.c:403:
+
+	}

-:794: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#794: FILE: drivers/gpu/drm/kmb/kmb_drv.c:444:
+			drm_info(&dev_p->drm,
+			    "!LAYER0:VL0 DMA UNDERFLOW val = 0x%lx,under_flow=%d",

-:807: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#807: FILE: drivers/gpu/drm/kmb/kmb_drv.c:457:
+			kmb_clr_bitmask_lcd(dev_p, LCD_LAYERn_DMA_CFG(0),
+				    LCD_DMA_LAYER_CONT_PING_PONG_UPDATE);

-:813: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#813: FILE: drivers/gpu/drm/kmb/kmb_drv.c:463:
+			drm_info(&dev_p->drm,
+				"LAYER0:VL0 DMA OVERFLOW val = 0x%lx", val);

-:816: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#816: FILE: drivers/gpu/drm/kmb/kmb_drv.c:466:
+			drm_info(&dev_p->drm,
+				"LAYER0:VL0 DMA CB OVERFLOW val = 0x%lx", val);

-:819: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#819: FILE: drivers/gpu/drm/kmb/kmb_drv.c:469:
+			drm_info(&dev_p->drm,
+				"LAYER0:VL0 DMA CR OVERFLOW val = 0x%lx", val);

-:827: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#827: FILE: drivers/gpu/drm/kmb/kmb_drv.c:477:
+			drm_info(&dev_p->drm,
+			    "!LAYER1:VL1 DMA UNDERFLOW val = 0x%lx, under_flow=%d",

-:840: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#840: FILE: drivers/gpu/drm/kmb/kmb_drv.c:490:
+			kmb_clr_bitmask_lcd(dev_p, LCD_LAYERn_DMA_CFG(1),
+				    LCD_DMA_LAYER_CONT_PING_PONG_UPDATE);

-:847: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#847: FILE: drivers/gpu/drm/kmb/kmb_drv.c:497:
+			drm_info(&dev_p->drm,
+				"LAYER1:VL1 DMA OVERFLOW val = 0x%lx", val);

-:850: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#850: FILE: drivers/gpu/drm/kmb/kmb_drv.c:500:
+			drm_info(&dev_p->drm,
+				"LAYER1:VL1 DMA CB OVERFLOW val = 0x%lx", val);

-:853: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#853: FILE: drivers/gpu/drm/kmb/kmb_drv.c:503:
+			drm_info(&dev_p->drm,
+				"LAYER1:VL1 DMA CR OVERFLOW val = 0x%lx", val);

-:858: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#858: FILE: drivers/gpu/drm/kmb/kmb_drv.c:508:
+			drm_info(&dev_p->drm,
+				"LAYER2:GL0 DMA UNDERFLOW val = 0x%lx", val);

-:861: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#861: FILE: drivers/gpu/drm/kmb/kmb_drv.c:511:
+			drm_info(&dev_p->drm,
+				"LAYER2:GL0 DMA OVERFLOW val = 0x%lx", val);

-:866: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#866: FILE: drivers/gpu/drm/kmb/kmb_drv.c:516:
+			drm_info(&dev_p->drm,
+				"LAYER3:GL1 DMA UNDERFLOW val = 0x%lx", val);

-:869: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#869: FILE: drivers/gpu/drm/kmb/kmb_drv.c:519:
+			drm_info(&dev_p->drm,
+				"LAYER3:GL1 DMA OVERFLOW val = 0x%lx", val);

-:986: CHECK:BRACES: braces {} should be used on all arms of this statement
#986: FILE: drivers/gpu/drm/kmb/kmb_drv.c:636:
+	if (adv_bridge == ERR_PTR(-EPROBE_DEFER))
[...]
+	else if (IS_ERR(adv_bridge)) {
[...]

-:995: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#995: FILE: drivers/gpu/drm/kmb/kmb_drv.c:645:
+	dev_p = devm_drm_dev_alloc(dev, &kmb_driver,
+			struct kmb_drm_private, drm);

-:1008: CHECK:BRACES: braces {} should be used on all arms of this statement
#1008: FILE: drivers/gpu/drm/kmb/kmb_drv.c:658:
+	if (ret == -EPROBE_DEFER) {
[...]
+	} else if (ret)
[...]

-:1018: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1018: FILE: drivers/gpu/drm/kmb/kmb_drv.c:668:
+	drm_info(&dev_p->drm, "mode_config.num_crtc=%d\n",
+			dev_p->drm.mode_config.num_crtc);

-:1054: WARNING:UNDOCUMENTED_DT_STRING: DT compatible string "intel,kmb_display" appears un-documented -- check ./Documentation/devicetree/bindings/
#1054: FILE: drivers/gpu/drm/kmb/kmb_drv.c:704:
+	{.compatible = "intel,kmb_display"},

-:1151: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#1151: FILE: drivers/gpu/drm/kmb/kmb_drv.h:36:
+	spinlock_t			irq_lock;

-:1379: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#1379: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:93:
+	uint16_t default_bit_rate_mbps;

-:1380: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1380: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:94:
+	uint8_t hsfreqrange_code;

-:1481: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1481: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:195:
+	if (mode->hdisplay < mode_config->min_width ||
+			mode->hdisplay > mode_config->max_width)

-:1485: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1485: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:199:
+	if (mode->vdisplay < mode_config->min_height ||
+			mode->vdisplay > mode_config->max_height)

-:1496: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1496: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:210:
+	num_modes = drm_add_modes_noedid(connector,
+			 connector->dev->mode_config.max_width,

-:1791: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1791: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:505:
+	drm_dbg(&dev_p->drm,
+		 "ctrl=%d frame_id=%d section=%d cfg=%x packed=%d\n",

-:1794: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECTo_PH>
#1794: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:508:
+		       (MIPI_TXm_HS_FGn_SECTo_PH(ctrl_no, frame_id, section)),

-:1806: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0>
#1806: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:520:
+	    MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(ctrl_no,

-:1811: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1811: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:525:
+	drm_dbg(&dev_p->drm,
+		 "unpacked_bytes = %d, wordcount = %d\n", unpacked_bytes,

-:1815: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECTo_LINE_CFG>
#1815: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:529:
+	reg_adr = MIPI_TXm_HS_FGn_SECTo_LINE_CFG(ctrl_no, frame_id, section);

-:1847: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1847: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:561:
+	unpacked_bytes = compute_unpacked_bytes(*wc,
+					data_type_parameters.bits_per_pclk);

-:1888: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1888: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:602:
+	drm_dbg(&dev_p->drm, "bpp=%d sysclk=%d lane-rate=%d activ-lanes=%d\n",
+		 fg_cfg->bpp, sysclk, fg_cfg->lane_rate_mbps,

-:1892: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_NUM_LINES>
#1892: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:606:
+	reg_adr = MIPI_TXm_HS_FGn_NUM_LINES(ctrl_no, frame_gen);

-:1902: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_VSYNC_WIDTHn>
#1902: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:616:
+	reg_adr = MIPI_TXm_HS_VSYNC_WIDTHn(ctrl_no, frame_gen / 2);

-:1906: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_V_BACKPORCHESn>
#1906: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:620:
+	reg_adr = MIPI_TXm_HS_V_BACKPORCHESn(ctrl_no, frame_gen / 2);

-:1910: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_V_FRONTPORCHESn>
#1910: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:624:
+	reg_adr = MIPI_TXm_HS_V_FRONTPORCHESn(ctrl_no, frame_gen / 2);

-:1914: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_V_ACTIVEn>
#1914: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:628:
+	reg_adr = MIPI_TXm_HS_V_ACTIVEn(ctrl_no, frame_gen / 2);

-:1918: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_HSYNC_WIDTHn>
#1918: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:632:
+	reg_adr = MIPI_TXm_HS_HSYNC_WIDTHn(ctrl_no, frame_gen);

-:1923: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_H_BACKPORCHn>
#1923: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:637:
+	reg_adr = MIPI_TXm_HS_H_BACKPORCHn(ctrl_no, frame_gen);

-:1928: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_H_FRONTPORCHn>
#1928: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:642:
+	reg_adr = MIPI_TXm_HS_H_FRONTPORCHn(ctrl_no, frame_gen);

-:1933: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_H_ACTIVEn>
#1933: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:647:
+	reg_adr = MIPI_TXm_HS_H_ACTIVEn(ctrl_no, frame_gen);

-:1942: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_LLP_HSYNC_WIDTHn>
#1942: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:656:
+	reg_adr = MIPI_TXm_HS_LLP_HSYNC_WIDTHn(ctrl_no, frame_gen);

-:1946: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_LLP_H_BACKPORCHn>
#1946: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:660:
+	reg_adr = MIPI_TXm_HS_LLP_H_BACKPORCHn(ctrl_no, frame_gen);

-:1950: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_LLP_H_FRONTPORCHn>
#1950: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:664:
+	reg_adr = MIPI_TXm_HS_LLP_H_FRONTPORCHn(ctrl_no, frame_gen);

-:1966: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "fg_cfg->sections[i]"
#1966: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:680:
+		if (fg_cfg->sections[i] != NULL)

-:2014: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_MC_FIFO_CTRL_EN>
#2014: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:728:
+	kmb_set_bit_mipi(dev_p, MIPI_TXm_HS_MC_FIFO_CTRL_EN(ctrl_no),

-:2071: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_SYNC_CFG>
#2071: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:785:
+	kmb_write_mipi(dev_p, MIPI_TXm_HS_SYNC_CFG(ctrl_no), sync_cfg);

-:2072: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_CTRL>
#2072: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:786:
+	kmb_write_mipi(dev_p, MIPI_TXm_HS_CTRL(ctrl_no), ctrl);

-:2083: CHECK:CAMELCASE: Avoid CamelCase: <TP_SEL_VCm>
#2083: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:797:
+	val = TP_SEL_VCm(vc, tp_sel);

-:2086: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_TEST_PAT_COLOR0>
#2086: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:800:
+	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_COLOR0(ctrl_no), color0);

-:2087: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_TEST_PAT_COLOR1>
#2087: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:801:
+	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_COLOR1(ctrl_no), color1);

-:2090: CHECK:CAMELCASE: Avoid CamelCase: <TP_EN_VCm>
#2090: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:804:
+	val |= TP_EN_VCm(vc);

-:2091: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_TEST_PAT_CTRL>
#2091: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:805:
+	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_CTRL(ctrl_no), val);

-:2093: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2093: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:807:
+
+}

-:2118: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!frame"
#2118: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:832:
+		if (frame == NULL)

-:2126: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!frame->sections[sect]"
#2126: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:840:
+			if (frame->sections[sect] == NULL)

-:2136: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2136: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:850:
+
+		}

-:2165: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2165: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:879:
+	drm_dbg(&dev_p->drm, "IRQ_STATUS = 0x%x\n",
+		  GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6));

-:2357: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#2357: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1071:
+							      *dev_p,
 							      ^

-:2370: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#2370: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1084:
+							     *dev_p,
 							     ^

-:2537: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2537: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1251:
+	drm_dbg(&dev_p->drm, "dphy %d fsm_state = 0%x\n", dphy_no,
+		 kmb_read_mipi(dev_p, DPHY_TEST_DOUT4_7));

-:2549: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2549: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1263:
+	drm_info(&dev_p->drm,
+		"dphy=%d mode=%d active_lanes=%d\n", dphy_no, mode,

-:2552: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2552: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1266:
+	drm_dbg(&dev_p->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));

-:2576: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2576: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1290:
+	drm_dbg(&dev_p->drm, "DPHY_TEST_CTRL0=0x%x\n",
+		  kmb_read_mipi(dev_p, DPHY_TEST_CTRL0));

-:2677: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2677: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1391:
+
+	}

-:2684: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2684: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1398:
+	drm_dbg(&dev_p->drm, "DPHY_FREQ = 0x%x\n",
+		 kmb_read_mipi(dev_p, DPHY_FREQ_CTRL0_3 + 4));

-:2686: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2686: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1400:
+	drm_dbg(&dev_p->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));

-:2692: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2692: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1406:
+	drm_dbg(&dev_p->drm, "DPHY_CFG_CLK_EN = 0x%x\n",
+		 kmb_read_mipi(dev_p, DPHY_CFG_CLK_EN));

-:2713: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2713: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1427:
+		drm_dbg(&dev_p->drm, "DPHY_INIT_CTRL1 = 0x%x\n",
+			 kmb_read_mipi(dev_p, DPHY_INIT_CTRL1));

-:2717: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2717: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1431:
+	drm_dbg(&dev_p->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));

-:2758: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2758: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1472:
+	drm_dbg(&dev_p->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));

-:2770: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2770: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1484:
+	drm_dbg(&dev_p->drm, "DPHY_INIT_CTRL2 = 0x%x\n",
+		 kmb_read_mipi(dev_p, DPHY_INIT_CTRL2));

-:2783: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2783: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1497:
+	drm_dbg(&dev_p->drm, "MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		 kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));

-:2790: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2790: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1504:
+	drm_dbg(&dev_p->drm, "DPHY_INIT_CTRL0 = 0x%x\n",
+		 kmb_read_mipi(dev_p, DPHY_INIT_CTRL0));

-:2825: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2825: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1539:
+	drm_dbg(&dev_p->drm, "dphy=%d active_lanes=%d data_lanes=%d\n", dphy_no,
+		 active_lanes, data_lanes);

-:2838: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2838: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1552:
+			drm_info(&dev_p->drm,
+				"! WAIT_INIT_DONE: TIMING OUT!(err_stat=%d)",

-:2897: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2897: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1611:
+	drm_info(&dev_p->drm,
+		"active_lanes=%d lane_rate=%d\n", cfg->active_lanes,

-:2965: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "mode"
#2965: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1679:
+	if (mode != NULL) {

-:2984: CHECK:SPACING: No space is necessary after a cast
#2984: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1698:
+		data_rate = ((((u32) mode->crtc_vtotal *

-:2985: CHECK:SPACING: No space is necessary after a cast
#2985: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1699:
+				(u32) mode->crtc_htotal) *

-:2994: CHECK:SPACING: No space is necessary after a cast
#2994: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1708:
+			 (u32) data_rate, mipi_tx_init_cfg.active_lanes);

-:3006: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3006: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1720:
+		drm_info(&dev_p->drm,
+			"lane rate=%d\n", mipi_tx_init_cfg.lane_rate_mbps);

-:3008: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3008: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1722:
+		drm_dbg(&dev_p->drm,
+		     "vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d lane-rate=%d",

-:3017: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#3017: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1731:
+
+	}

-:3033: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3033: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1747:
+	drm_dbg(&dev_p->drm, "IRQ_STATUS = 0x%x\n",
+		 GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6));

-:3042: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3042: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1756:
+	drm_dbg(&dev_p->drm, "IRQ_STATUS = 0x%x\n",
+		 GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6));

-:3048: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3048: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1762:
+	drm_dbg(&dev_p->drm, "MIPI_TXm_HS_CTRL = 0x%x\n",
+		 kmb_read_mipi(dev_p, MIPI_TXm_HS_CTRL(6)));

-:3050: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3050: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:1764:
+	drm_dbg(&dev_p->drm, "MIPI LOOP BACK = %x\n",
+		 kmb_read_mipi(dev_p, MIPI_CTRL_DIG_LOOPBACK));

-:3382: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3382: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:257:
+	uint8_t size_constraint_pixels;

-:3383: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3383: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:258:
+	uint8_t size_constraint_bytes;

-:3384: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3384: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:259:
+	uint8_t pixels_per_pclk;

-:3385: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3385: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:260:
+	uint8_t bits_per_pclk;

-:3389: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3389: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:264:
+	uint8_t hfp_blank_en;	/*horizontal front porch blanking enable */

-:3390: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3390: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:265:
+	uint8_t eotp_en;	/*End of transmission packet enable */

-:3392: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3392: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:267:
+	uint8_t lpm_last_vfp_line;

-:3394: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3394: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:269:
+	uint8_t lpm_first_vsa_line;

-:3395: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3395: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:270:
+	uint8_t sync_pulse_eventn;	/*sync type */

-:3396: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3396: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:271:
+	uint8_t hfp_blanking;	/*horizontal front porch blanking mode */

-:3397: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3397: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:272:
+	uint8_t hbp_blanking;	/*horizontal back porch blanking mode */

-:3398: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3398: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:273:
+	uint8_t hsa_blanking;	/*horizontal sync active blanking mode */

-:3399: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3399: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:274:
+	uint8_t v_blanking;	/*vertical timing blanking mode */

-:3403: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3403: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:278:
+	uint32_t dma_v_stride;

-:3404: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3404: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:279:
+	uint16_t dma_v_scale_cfg;

-:3405: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3405: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:280:
+	uint16_t width_pixels;

-:3406: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3406: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:281:
+	uint16_t height_lines;

-:3407: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3407: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:282:
+	uint8_t dma_packed;

-:3408: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3408: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:283:
+	uint8_t bpp;

-:3409: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3409: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:284:
+	uint8_t bpp_unpacked;

-:3410: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3410: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:285:
+	uint8_t dma_h_stride;

-:3411: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3411: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:286:
+	uint8_t data_type;

-:3412: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3412: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:287:
+	uint8_t data_mode;

-:3413: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3413: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:288:
+	uint8_t dma_flip_rotate_sel;

-:3417: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3417: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:292:
+	uint32_t bpp;

-:3418: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3418: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:293:
+	uint32_t lane_rate_mbps;

-:3419: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3419: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:294:
+	uint32_t hsync_width;

-:3420: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3420: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:295:
+	uint32_t h_backporch;

-:3421: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3421: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:296:
+	uint32_t h_frontporch;

-:3422: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3422: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:297:
+	uint32_t h_active;

-:3423: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3423: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:298:
+	uint16_t vsync_width;

-:3424: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3424: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:299:
+	uint16_t v_backporch;

-:3425: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3425: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:300:
+	uint16_t v_frontporch;

-:3426: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3426: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:301:
+	uint16_t v_active;

-:3427: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3427: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:302:
+	uint8_t active_lanes;

-:3431: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3431: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:306:
+	uint32_t wc;

-:3434: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3434: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:309:
+	uint8_t vchannel;

-:3435: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3435: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:310:
+	uint8_t dma_packed;

-:3440: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3440: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:315:
+	uint32_t hsync_width;	/*in pixels */

-:3441: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3441: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:316:
+	uint32_t h_backporch;	/*in pixels */

-:3442: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3442: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:317:
+	uint32_t h_frontporch;	/*in pixels */

-:3443: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3443: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:318:
+	uint16_t vsync_width;	/*in lines */

-:3444: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3444: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:319:
+	uint16_t v_backporch;	/*in lines */

-:3445: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#3445: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:320:
+	uint16_t v_frontporch;	/*in lines */

-:3451: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3451: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:326:
+	uint8_t line_sync_pkt_en;

-:3452: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3452: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:327:
+	uint8_t line_counter_active;

-:3453: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3453: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:328:
+	uint8_t frame_counter_active;

-:3454: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3454: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:329:
+	uint8_t tx_hsclkkidle_cnt;

-:3455: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3455: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:330:
+	uint8_t tx_hsexit_cnt;

-:3456: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3456: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:331:
+	uint8_t tx_crc_en;

-:3457: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3457: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:332:
+	uint8_t tx_hact_wait_stop;

-:3458: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3458: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:333:
+	uint8_t tx_always_use_hact;

-:3459: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3459: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:334:
+	uint8_t tx_wait_trig;

-:3460: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3460: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:335:
+	uint8_t tx_wait_all_sect;

-:3466: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3466: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:341:
+	uint8_t index;

-:3467: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3467: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:342:
+	uint8_t type;		/* controller type : MIPI_DSI */

-:3468: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3468: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:343:
+	uint8_t dir;		/* controller direction : MIPI_TX */

-:3469: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#3469: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:344:
+	uint8_t active_lanes;	/* # active lanes per controller 2/4 */

-:3470: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#3470: FILE: drivers/gpu/drm/kmb/kmb_dsi.h:345:
+	ui


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
