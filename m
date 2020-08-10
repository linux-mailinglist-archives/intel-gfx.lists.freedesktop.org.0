Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681B42412D4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 00:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F986E47E;
	Mon, 10 Aug 2020 22:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74DE76E47E;
 Mon, 10 Aug 2020 22:09:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D65CA47DB;
 Mon, 10 Aug 2020 22:09:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anitha Chrisanthus" <anitha.chrisanthus@intel.com>
Date: Mon, 10 Aug 2020 22:09:01 -0000
Message-ID: <159709734141.17063.14916395933509279660@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1597096418-28937-1-git-send-email-anitha.chrisanthus@intel.com>
In-Reply-To: <1597096418-28937-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/kmb=3A_Add_support_for_KeemBay_Display_=28rev4=29?=
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

Series: drm/kmb: Add support for KeemBay Display (rev4)
URL   : https://patchwork.freedesktop.org/series/79615/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7aaa226cd61c drm/kmb: Add support for KeemBay Display
-:58: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#58: 
new file mode 100644

-:699: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_CFG>
#699: FILE: drivers/gpu/drm/kmb/kmb_drv.c:345:
+						    LCD_LAYERn_DMA_CFG

-:1024: WARNING:UNDOCUMENTED_DT_STRING: DT compatible string "intel,kmb_display" appears un-documented -- check ./Documentation/devicetree/bindings/
#1024: FILE: drivers/gpu/drm/kmb/kmb_drv.c:670:
+	{.compatible = "intel,kmb_display"},

-:1120: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#1120: FILE: drivers/gpu/drm/kmb/kmb_drv.h:35:
+	spinlock_t			irq_lock;

-:1773: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECTo_PH>
#1773: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:510:
+		       (MIPI_TXm_HS_FGn_SECTo_PH(ctrl_no, frame_id, section)),

-:1785: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0>
#1785: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:522:
+	    MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(ctrl_no,

-:1794: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_FGn_SECTo_LINE_CFG>
#1794: FILE: drivers/gpu/drm/kmb/kmb_dsi.c:531:
+	reg_adr = MIPI_TXm_HS_FGn_SECTo_LINE_CFG(ctrl_no, frame_id, section);

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

-:3688: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF11>
#3688: FILE: drivers/gpu/drm/kmb/kmb_plane.c:215:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_COEFF11(plane_id), csc_coef_lcd[0]);

-:3689: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF12>
#3689: FILE: drivers/gpu/drm/kmb/kmb_plane.c:216:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_COEFF12(plane_id), csc_coef_lcd[1]);

-:3690: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF13>
#3690: FILE: drivers/gpu/drm/kmb/kmb_plane.c:217:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_COEFF13(plane_id), csc_coef_lcd[2]);

-:3691: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF21>
#3691: FILE: drivers/gpu/drm/kmb/kmb_plane.c:218:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_COEFF21(plane_id), csc_coef_lcd[3]);

-:3692: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF22>
#3692: FILE: drivers/gpu/drm/kmb/kmb_plane.c:219:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_COEFF22(plane_id), csc_coef_lcd[4]);

-:3693: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF23>
#3693: FILE: drivers/gpu/drm/kmb/kmb_plane.c:220:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_COEFF23(plane_id), csc_coef_lcd[5]);

-:3694: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF31>
#3694: FILE: drivers/gpu/drm/kmb/kmb_plane.c:221:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_COEFF31(plane_id), csc_coef_lcd[6]);

-:3695: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF32>
#3695: FILE: drivers/gpu/drm/kmb/kmb_plane.c:222:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_COEFF32(plane_id), csc_coef_lcd[7]);

-:3696: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF33>
#3696: FILE: drivers/gpu/drm/kmb/kmb_plane.c:223:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_COEFF33(plane_id), csc_coef_lcd[8]);

-:3697: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_OFF1>
#3697: FILE: drivers/gpu/drm/kmb/kmb_plane.c:224:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_OFF1(plane_id), csc_coef_lcd[9]);

-:3698: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_OFF2>
#3698: FILE: drivers/gpu/drm/kmb/kmb_plane.c:225:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_OFF2(plane_id), csc_coef_lcd[10]);

-:3699: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_OFF3>
#3699: FILE: drivers/gpu/drm/kmb/kmb_plane.c:226:
+	kmb_write_lcd(kmb, LCD_LAYERn_CSC_OFF3(plane_id), csc_coef_lcd[11]);

-:3748: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LEN>
#3748: FILE: drivers/gpu/drm/kmb/kmb_plane.c:275:
+	kmb_write_lcd(kmb, LCD_LAYERn_DMA_LEN(plane_id), dma_len);

-:3749: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LEN_SHADOW>
#3749: FILE: drivers/gpu/drm/kmb/kmb_plane.c:276:
+	kmb_write_lcd(kmb, LCD_LAYERn_DMA_LEN_SHADOW(plane_id), dma_len);

-:3750: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LINE_VSTRIDE>
#3750: FILE: drivers/gpu/drm/kmb/kmb_plane.c:277:
+	kmb_write_lcd(kmb, LCD_LAYERn_DMA_LINE_VSTRIDE(plane_id),

-:3752: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LINE_WIDTH>
#3752: FILE: drivers/gpu/drm/kmb/kmb_plane.c:279:
+	kmb_write_lcd(kmb, LCD_LAYERn_DMA_LINE_WIDTH(plane_id),

-:3757: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_START_ADDR>
#3757: FILE: drivers/gpu/drm/kmb/kmb_plane.c:284:
+	kmb_write_lcd(kmb, LCD_LAYERn_DMA_START_ADDR(plane_id),

-:3763: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_CB_LINE_VSTRIDE>
#3763: FILE: drivers/gpu/drm/kmb/kmb_plane.c:290:
+		kmb_write_lcd(kmb, LCD_LAYERn_DMA_CB_LINE_VSTRIDE(plane_id),

-:3765: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_CB_LINE_WIDTH>
#3765: FILE: drivers/gpu/drm/kmb/kmb_plane.c:292:
+		kmb_write_lcd(kmb, LCD_LAYERn_DMA_CB_LINE_WIDTH(plane_id),

-:3773: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_START_CR_ADR>
#3773: FILE: drivers/gpu/drm/kmb/kmb_plane.c:300:
+				      LCD_LAYERn_DMA_START_CR_ADR(plane_id),

-:3777: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_START_CB_ADR>
#3777: FILE: drivers/gpu/drm/kmb/kmb_plane.c:304:
+				      LCD_LAYERn_DMA_START_CB_ADR(plane_id),

-:3782: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_CR_LINE_VSTRIDE>
#3782: FILE: drivers/gpu/drm/kmb/kmb_plane.c:309:
+				      LCD_LAYERn_DMA_CR_LINE_VSTRIDE(plane_id),

-:3786: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_CR_LINE_WIDTH>
#3786: FILE: drivers/gpu/drm/kmb/kmb_plane.c:313:
+				      LCD_LAYERn_DMA_CR_LINE_WIDTH(plane_id),

-:3805: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_WIDTH>
#3805: FILE: drivers/gpu/drm/kmb/kmb_plane.c:332:
+	kmb_write_lcd(kmb, LCD_LAYERn_WIDTH(plane_id), src_w - 1);

-:3806: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_HEIGHT>
#3806: FILE: drivers/gpu/drm/kmb/kmb_plane.c:333:
+	kmb_write_lcd(kmb, LCD_LAYERn_HEIGHT(plane_id), src_h - 1);

-:3807: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_COL_START>
#3807: FILE: drivers/gpu/drm/kmb/kmb_plane.c:334:
+	kmb_write_lcd(kmb, LCD_LAYERn_COL_START(plane_id), crtc_x);

-:3808: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_ROW_START>
#3808: FILE: drivers/gpu/drm/kmb/kmb_plane.c:335:
+	kmb_write_lcd(kmb, LCD_LAYERn_ROW_START(plane_id), crtc_y);

-:3819: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CFG>
#3819: FILE: drivers/gpu/drm/kmb/kmb_plane.c:346:
+	kmb_write_lcd(kmb, LCD_LAYERn_CFG(plane_id), val);

-:4323: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_SCALE_CFG>
#4323: FILE: drivers/gpu/drm/kmb/kmb_regs.h:195:
+#define LCD_LAYERn_SCALE_CFG(N)		(LCD_LAYER0_SCALE_CFG + (0x400 * (N)))

-:4325: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_ALPHA>
#4325: FILE: drivers/gpu/drm/kmb/kmb_regs.h:197:
+#define LCD_LAYERn_ALPHA(N)		(LCD_LAYER0_ALPHA + (0x400 * (N)))

-:4327: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_INV_COLOUR_LS>
#4327: FILE: drivers/gpu/drm/kmb/kmb_regs.h:199:
+#define LCD_LAYERn_INV_COLOUR_LS(N)	(LCD_LAYER0_INV_COLOUR_LS + \

-:4330: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_INV_COLOUR_MS>
#4330: FILE: drivers/gpu/drm/kmb/kmb_regs.h:202:
+#define LCD_LAYERn_INV_COLOUR_MS(N)	(LCD_LAYER0_INV_COLOUR_MS + \

-:4333: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_TRANS_COLOUR_LS>
#4333: FILE: drivers/gpu/drm/kmb/kmb_regs.h:205:
+#define LCD_LAYERn_TRANS_COLOUR_LS(N)	(LCD_LAYER0_TRANS_COLOUR_LS + \

-:4336: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_TRANS_COLOUR_MS>
#4336: FILE: drivers/gpu/drm/kmb/kmb_regs.h:208:
+#define LCD_LAYERn_TRANS_COLOUR_MS(N)	(LCD_LAYER0_TRANS_COLOUR_MS + \

-:4396: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_START_SHADOW>
#4396: FILE: drivers/gpu/drm/kmb/kmb_regs.h:268:
+#define LCD_LAYERn_DMA_START_SHADOW(N)		(LCD_LAYER0_DMA_START_SHADOW \

-:4405: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_STATUS>
#4405: FILE: drivers/gpu/drm/kmb/kmb_regs.h:277:
+#define LCD_LAYERn_DMA_STATUS(N)		(LCD_LAYER0_DMA_STATUS + \

-:4414: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_FIFO_STATUS>
#4414: FILE: drivers/gpu/drm/kmb/kmb_regs.h:286:
+#define LCD_LAYERn_DMA_FIFO_STATUS(N)		(LCD_LAYER0_DMA_FIFO_STATUS + \

-:4417: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CFG2>
#4417: FILE: drivers/gpu/drm/kmb/kmb_regs.h:289:
+#define LCD_LAYERn_CFG2(N)			(LCD_LAYER0_CFG2 + (0x400 * (N)))

-:4422: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_START_CB_SHADOW>
#4422: FILE: drivers/gpu/drm/kmb/kmb_regs.h:294:
+#define LCD_LAYERn_DMA_START_CB_SHADOW(N)	(LCD_LAYER0_DMA_START_CB_SHADOW\

-:4434: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_START_CR_SHADOW>
#4434: FILE: drivers/gpu/drm/kmb/kmb_regs.h:306:
+#define LCD_LAYERn_DMA_START_CR_SHADOW(N)	\

-:4649: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_MC_FIFO_CHAN_ALLOCn>
#4649: FILE: drivers/gpu/drm/kmb/kmb_regs.h:521:
+#define   MIPI_TXm_HS_MC_FIFO_CHAN_ALLOCn(M, N)	\

-:4652: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vc' - possible side-effects?
#4652: FILE: drivers/gpu/drm/kmb/kmb_regs.h:524:
+#define   SET_MC_FIFO_CHAN_ALLOC(dev, ctrl, vc, sz)	\
+		kmb_write_bits_mipi(dev, \
+				MIPI_TXm_HS_MC_FIFO_CHAN_ALLOCn(ctrl, \
+				(vc) / 2), ((vc) % 2) * 16, 16, sz)

-:4658: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TXm_HS_MC_FIFO_RTHRESHOLDn>
#4658: FILE: drivers/gpu/drm/kmb/kmb_regs.h:530:
+#define   MIPI_TXm_HS_MC_FIFO_RTHRESHOLDn(M, N)	\

-:4661: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vc' - possible side-effects?
#4661: FILE: drivers/gpu/drm/kmb/kmb_regs.h:533:
+#define   SET_MC_FIFO_RTHRESHOLD(dev, ctrl, vc, th)	\
+	kmb_write_bits_mipi(dev, MIPI_TXm_HS_MC_FIFO_RTHRESHOLDn(ctrl, \
+				(vc) / 2), ((vc) % 2) * 16, 16, th)

-:4699: CHECK:CAMELCASE: Avoid CamelCase: <MIPI_TX_HS_IRQ_STATUSm>
#4699: FILE: drivers/gpu/drm/kmb/kmb_regs.h:571:
+#define   MIPI_TX_HS_IRQ_STATUSm(M)		(MIPI_TX_HS_IRQ_STATUS + \

-:4807: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dphy' - possible side-effects?
#4807: FILE: drivers/gpu/drm/kmb/kmb_regs.h:679:
+#define   SET_DPHY_FREQ_CTRL0_3(dev, dphy, val)	\
+			kmb_write_bits_mipi(dev, DPHY_FREQ_CTRL0_3 \
+			+ (((dphy) / 4) * 4), (dphy % 4) * 8, 6, val)

-:4815: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dphy' - possible side-effects?
#4815: FILE: drivers/gpu/drm/kmb/kmb_regs.h:687:
+#define	  GET_STOPSTATE_DATA(dev, dphy)		\
+			(((kmb_read_mipi(dev, MIPI_DPHY_STAT0_3 + \
+					 ((dphy) / 4) * 4)) >> \
+					 (((dphy % 4) * 8) + 4)) & 0x03)

total: 0 errors, 2 warnings, 72 checks, 4769 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
