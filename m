Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A267A20FEF3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCFED6E441;
	Tue, 30 Jun 2020 21:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5826C6E34D;
 Tue, 30 Jun 2020 21:28:51 +0000 (UTC)
IronPort-SDR: 3F0wUSlZQNuAi8eSqbgU275XSCzB9s+/UqyNaPBXsWoAfWvM3/NE1AA0Kiz+wDfyuHwSF18aPu
 6L8LrtrDHPZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="133846905"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="133846905"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:51 -0700
IronPort-SDR: UJGwK5la9qQWuEeFwrf0xQViepizw1rDIMZciWMFkpIOzqvlRHvtth1GFOvK8mohjTongGwJSW
 uEEdmTkL4uWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066779"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:50 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:52 -0700
Message-Id: <1593552491-23698-41-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 40/59] drm/kmb: Added LCD_TEST config
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To run modetest without ADV driver, enable LCD_TEST and FCC_TEST.
Also made front porches 0, and some changes in the plane init.

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
---
 drivers/gpu/drm/kmb/kmb_crtc.c  | 13 +++----
 drivers/gpu/drm/kmb/kmb_drv.c   |  6 +--
 drivers/gpu/drm/kmb/kmb_drv.h   |  3 +-
 drivers/gpu/drm/kmb/kmb_dsi.c   | 85 +++++++++++++++++++++++++++--------------
 drivers/gpu/drm/kmb/kmb_plane.c | 15 ++++++--
 5 files changed, 78 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_crtc.c b/drivers/gpu/drm/kmb/kmb_crtc.c
index 01ad82e..9275f77 100644
--- a/drivers/gpu/drm/kmb/kmb_crtc.c
+++ b/drivers/gpu/drm/kmb/kmb_crtc.c
@@ -100,13 +100,14 @@ static void kmb_crtc_mode_set_nofb(struct drm_crtc *crtc)
 	struct videomode vm;
 	int vsync_start_offset;
 	int vsync_end_offset;
-	unsigned int ctrl = 0;
 #endif
 	/* initialize mipi */
 	kmb_dsi_hw_init(dev);
 #ifdef LCD_TEST
-	vm.vfront_porch = m->crtc_vsync_start - m->crtc_vdisplay;
-	vm.vback_porch = m->crtc_vtotal - m->crtc_vsync_end;
+//	vm.vfront_porch = m->crtc_vsync_start - m->crtc_vdisplay;
+	vm.vfront_porch = 0;
+//	vm.vback_porch = m->crtc_vtotal - m->crtc_vsync_end;
+	vm.vback_porch = 0;
 	vm.vsync_len = m->crtc_vsync_end - m->crtc_vsync_start;
 	//vm.hfront_porch = m->crtc_hsync_start - m->crtc_hdisplay;
 	vm.hfront_porch = 0;
@@ -149,12 +150,8 @@ static void kmb_crtc_mode_set_nofb(struct drm_crtc *crtc)
 		kmb_write_lcd(dev->dev_private, LCD_VSYNC_END_EVEN, 10);
 	}
 	/* enable VL1 layer as default */
-	ctrl = LCD_CTRL_ENABLE | LCD_CTRL_VL1_ENABLE;
-	ctrl |= LCD_CTRL_PROGRESSIVE | LCD_CTRL_TIM_GEN_ENABLE
-		| LCD_CTRL_OUTPUT_ENABLED;
-	kmb_write_lcd(dev->dev_private, LCD_CONTROL, ctrl);
-
 	kmb_write_lcd(dev->dev_private, LCD_TIMING_GEN_TRIG, ENABLE);
+	kmb_set_bitmask_lcd(dev->dev_private, LCD_CONTROL, LCD_CTRL_ENABLE);
 #endif
 	/* TBD */
 	/* set clocks here */
diff --git a/drivers/gpu/drm/kmb/kmb_drv.c b/drivers/gpu/drm/kmb/kmb_drv.c
index e9dd879..e2d57ca 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.c
+++ b/drivers/gpu/drm/kmb/kmb_drv.c
@@ -236,6 +236,8 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 #endif
 	/* Set MIPI clock to 24 Mhz*/
 	DRM_INFO("Get clk_mipi before set = %ld\n", clk_get_rate(clk_mipi));
+//#define MIPI_CLK
+#ifdef MIPI_CLK
 	ret = clk_set_rate(clk_mipi, KMB_MIPI_DEFAULT_CLK);
 	DRM_INFO("Get clk_mipi after set = %ld\n", clk_get_rate(clk_mipi));
 	if (clk_get_rate(clk_mipi) != KMB_MIPI_DEFAULT_CLK) {
@@ -243,6 +245,7 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 				KMB_MIPI_DEFAULT_CLK);
 		goto setup_fail;
 	}
+#endif
 	DRM_INFO("Setting MIPI clock to %d Mhz ret = %d\n",
 			KMB_MIPI_DEFAULT_CLK/1000000, ret);
 	DRM_INFO("Get clk_mipi after set = %ld\n", clk_get_rate(clk_mipi));
@@ -339,8 +342,6 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		DRM_ERROR("failed to initialize DSI\n");
 		goto setup_fail;
 	}
-
-	DRM_INFO("%s : %d\n", __func__, __LINE__);
 #ifdef WIP
 	ret = drm_irq_install(drm, platform_get_irq(pdev, 0));
 	if (ret < 0) {
@@ -355,7 +356,6 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 	drm_crtc_cleanup(&dev_p->crtc);
 #endif
 setup_fail:
-	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	of_reserved_mem_device_release(drm->dev);
 
 	return ret;
diff --git a/drivers/gpu/drm/kmb/kmb_drv.h b/drivers/gpu/drm/kmb/kmb_drv.h
index da1df5c..67ddf7a 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.h
+++ b/drivers/gpu/drm/kmb/kmb_drv.h
@@ -28,7 +28,8 @@
 
 #include "kmb_regs.h"
 
-/*#define FCCTEST*/
+#define FCCTEST
+#define LCD_TEST
 #define KMB_MAX_WIDTH			1920 /*max width in pixels */
 #define KMB_MAX_HEIGHT			1080 /*max height in pixels */
 #define KMB_LCD_DEFAULT_CLK		250000000
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index 5f7683e..91c6898 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -44,18 +44,19 @@
 
 static int hw_initialized;
 #define IMAGE_PATH "/home/root/1280x720.pnm"
-#define MIPI_TX_TEST_PATTERN_GENERATION
+//#define MIPI_TX_TEST_PATTERN_GENERATION
+//#define RTL_TEST
+//#define IMG_WIDTH_PX      640
+//#define IMG_HEIGHT_LINES  10
 
-#define IMG_HEIGHT_LINES  720
-#define IMG_WIDTH_PX      1280
 #define LCD_BYTESPP       1
 
 /*MIPI TX CFG*/
-#define MIPI_TX_ACTIVE_LANES  2
 //#define MIPI_TX_LANE_DATA_RATE_MBPS 1782
 #define MIPI_TX_LANE_DATA_RATE_MBPS 891
 //#define MIPI_TX_LANE_DATA_RATE_MBPS 80
 #define MIPI_TX_REF_CLK_KHZ         24000
+//#define MIPI_TX_REF_CLK_KHZ         23809
 #define MIPI_TX_CFG_CLK_KHZ         24000
 
 /*DPHY Tx test codes*/
@@ -99,6 +100,18 @@ static struct mipi_dsi_device *dsi_device;
  * these will eventually go to the device tree sections,
  * and can be used as a refernce later for device tree additions
  */
+#ifdef RES_1920x1080
+#define IMG_HEIGHT_LINES  1080
+#define IMG_WIDTH_PX      1920
+#define MIPI_TX_ACTIVE_LANES 4
+#endif
+
+#define RES_1280x720
+#ifdef RES_1280x720
+#define IMG_HEIGHT_LINES  720
+#define IMG_WIDTH_PX      1280
+#define MIPI_TX_ACTIVE_LANES 2
+#endif
 struct mipi_tx_frame_section_cfg mipi_tx_frame0_sect_cfg = {
 	.width_pixels = IMG_WIDTH_PX,
 	.height_lines = IMG_HEIGHT_LINES,
@@ -108,6 +121,22 @@ struct mipi_tx_frame_section_cfg mipi_tx_frame0_sect_cfg = {
 	.dma_packed = 1
 };
 
+#ifdef RES_1920x1080
+struct mipi_tx_frame_cfg mipitx_frame0_cfg = {
+	.sections[0] = &mipi_tx_frame0_sect_cfg,
+	.sections[1] = NULL,
+	.sections[2] = NULL,
+	.sections[3] = NULL,
+	.vsync_width = 5,
+	.v_backporch = 36,
+	.v_frontporch = 4,
+	.hsync_width = 44,
+	.h_backporch = 148,
+	.h_frontporch = 88
+};
+#endif
+
+#ifdef RES_1280x720
 struct mipi_tx_frame_cfg mipitx_frame0_cfg = {
 	.sections[0] = &mipi_tx_frame0_sect_cfg,
 	.sections[1] = NULL,
@@ -120,6 +149,7 @@ struct mipi_tx_frame_cfg mipitx_frame0_cfg = {
 	.h_backporch = 220,
 	.h_frontporch = 110,
 };
+#endif
 
 struct mipi_tx_dsi_cfg mipitx_dsi_cfg = {
 	.hfp_blank_en = 0,
@@ -141,8 +171,7 @@ struct mipi_ctrl_cfg mipi_tx_init_cfg = {
 	.lane_rate_mbps = MIPI_TX_LANE_DATA_RATE_MBPS,
 	.ref_clk_khz = MIPI_TX_REF_CLK_KHZ,
 	.cfg_clk_khz = MIPI_TX_CFG_CLK_KHZ,
-//      .data_if = MIPI_IF_PARALLEL,
-	.data_if = MIPI_IF_DMA,
+	.data_if = MIPI_IF_PARALLEL,
 	.tx_ctrl_cfg = {
 			.frames[0] = &mipitx_frame0_cfg,
 			.frames[1] = NULL,
@@ -334,7 +363,6 @@ static struct kmb_dsi_host *kmb_dsi_host_init(struct drm_device *drm,
 
 struct drm_bridge *kmb_dsi_host_bridge_init(struct device *dev)
 {
-	struct device_node *encoder_node;
 	struct drm_bridge *bridge;
 
 	/* Create and register MIPI DSI host */
@@ -613,7 +641,13 @@ static void mipi_tx_fg_cfg_regs(struct kmb_drm_private *dev_p,
 	ppl_llp_ratio = ((fg_cfg->bpp / 8) * sysclk * 1000) /
 	    ((fg_cfg->lane_rate_mbps / 8) * fg_cfg->active_lanes);
 
-	/*frame generator number of lines */
+	DRM_INFO("%s : %d bpp=%d sysclk=%d lane-rate=%d activ-lanes=%d\n",
+			__func__, __LINE__, fg_cfg->bpp, sysclk,
+			fg_cfg->lane_rate_mbps, fg_cfg->active_lanes);
+
+	DRM_INFO("%s : %d ppl_llp_ratio=%d\n", __func__, __LINE__,
+			ppl_llp_ratio);
+	/*frame generator number of lines*/
 	reg_adr = MIPI_TXm_HS_FGn_NUM_LINES(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr, fg_cfg->v_active);
 
@@ -774,8 +808,8 @@ static void mipi_tx_ctrl_cfg(struct kmb_drm_private *dev_p, u8 fg_id,
 	if (ctrl_cfg->tx_ctrl_cfg.tx_hact_wait_stop)
 		sync_cfg |= HACT_WAIT_STOP(fg_en);
 
-	/* MIPI_TX_HS_CTRL */
-	ctrl = HS_CTRL_EN;	/* type:DSI,source:LCD */
+	/* MIPI_TX_HS_CTRL*/
+	ctrl = HS_CTRL_EN | TX_SOURCE; /* type:DSI,source:LCD */
 	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->eotp_en)
 		ctrl |= DSI_EOTP_EN;
 	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->hfp_blank_en)
@@ -862,6 +896,7 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_p,
 		active_vchannels++;
 
 		/*connect lcd to mipi */
+		kmb_write_msscam(dev_p, MSS_LCD_MIPI_CFG, 1);
 
 		/*stop iterating as only one virtual channel shall be used for
 		 * LCD connection
@@ -1528,7 +1563,7 @@ static u32 wait_init_done(struct kmb_drm_private *dev_p, u32 dphy_no,
 				 kmb_read_mipi(dev_p, MIPI_DPHY_ERR_STAT6_7));
 			break;
 		}
-		udelay(1);
+//		udelay(1);
 	} while (stopstatedata != data_lanes);
 
 	DRM_INFO("********** DPHY %d INIT - %s **********\n",
@@ -1543,10 +1578,9 @@ static u32 wait_pll_lock(struct kmb_drm_private *dev_p, u32 dphy_no)
 	int status = 1;
 
 	do {
-		;
 		/*TODO-need to add a time out and return failure */
 		i++;
-		udelay(1);
+	//	udelay(1);
 		if (i > TIMEOUT) {
 			status = 0;
 			DRM_INFO("%s: timing out", __func__);
@@ -1603,7 +1637,7 @@ static u32 mipi_tx_init_dphy(struct kmb_drm_private *dev_p,
 			       cfg->active_lanes - MIPI_DPHY_D_LANES);
 		wait_pll_lock(dev_p, dphy_no);
 		wait_pll_lock(dev_p, dphy_no + 1);
-		udelay(1000);
+//		udelay(1000);
 		dphy_wait_fsm(dev_p, dphy_no, DPHY_TX_IDLE);
 	} else {		/* Single DPHY */
 		dphy_init_sequence(dev_p, cfg, dphy_no, cfg->active_lanes,
@@ -1727,11 +1761,9 @@ int kmb_kernel_read(struct file *file, loff_t offset,
 int kmb_dsi_hw_init(struct drm_device *dev)
 {
 	struct kmb_drm_private *dev_p = dev->dev_private;
-	int i;
 
 	if (hw_initialized)
 		return 0;
-	udelay(1000);
 	kmb_write_mipi(dev_p, DPHY_ENABLE, 0);
 	kmb_write_mipi(dev_p, DPHY_INIT_CTRL0, 0);
 	kmb_write_mipi(dev_p, DPHY_INIT_CTRL1, 0);
@@ -1739,19 +1771,15 @@ int kmb_dsi_hw_init(struct drm_device *dev)
 
 	/* initialize mipi controller */
 	mipi_tx_init_cntrl(dev_p, &mipi_tx_init_cfg);
-	/* irq initialization */
-	//mipi_tx_init_irqs(dev_p, &int_cfg, &mipi_tx_init_cfg.tx_ctrl_cfg);
 	/*d-phy initialization */
 	mipi_tx_init_dphy(dev_p, &mipi_tx_init_cfg);
 #ifdef MIPI_TX_TEST_PATTERN_GENERATION
-	for (i = MIPI_CTRL6; i < MIPI_CTRL6 + 1; i++) {
-		mipi_tx_hs_tp_gen(dev_p, 0, MIPI_TX_HS_TP_V_STRIPES,
-				  0x05, 0xffffff, 0xff00, i);
-	}
-	DRM_INFO("%s : %d MIPI_TXm_HS_CTRL = 0x%x\n", __func__,
-		 __LINE__, kmb_read_mipi(dev_p, MIPI_TXm_HS_CTRL(6)));
-#else
-	dma_data_length = image_height * image_width * unpacked_bytes;
+	mipi_tx_hs_tp_gen(dev_p, 0, MIPI_TX_HS_TP_V_STRIPES, 0x15, 0xff,
+			0xff00, MIPI_CTRL6);
+	DRM_INFO("%s : %d IRQ_STATUS = 0x%x\n", __func__, __LINE__,
+			GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6));
+#elseif MIPI_DMA
+	  dma_data_length = image_height * image_width * unpacked_bytes;
 	file = filp_open(IMAGE_PATH, O_RDWR, 0);
 	if (IS_ERR(file)) {
 		DRM_ERROR("filp_open failed\n");
@@ -1785,7 +1813,6 @@ int kmb_dsi_hw_init(struct drm_device *dev)
 	DRM_INFO("count = %d\n", count);
 	kfree(file_buf);
 	filp_close(file, NULL);
-
 #endif //MIPI_TX_TEST_PATTERN_GENERATION
 
 	hw_initialized = true;
@@ -1854,13 +1881,15 @@ int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge)
 		return ret;
 	}
 #endif
+
 #ifndef FCCTEST
 	DRM_INFO("%s : %d Bridge attached : SUCCESS\n", __func__, __LINE__);
 #endif
 
 #ifdef FCCTEST
+#ifndef LCD_TEST
 	kmb_dsi_hw_init(dev);
 #endif
-
+#endif
 	return 0;
 }
diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index 2815ab3..008fd48 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -367,10 +367,14 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	kmb_set_bitmask_lcd(dev_p, LCD_INT_ENABLE, layer_irqs[plane_id]);
 
 	/*TBD check visible? */
-
+/*
 	dma_cfg = LCD_DMA_LAYER_ENABLE | LCD_DMA_LAYER_AUTO_UPDATE
 		  | LCD_DMA_LAYER_CONT_UPDATE | LCD_DMA_LAYER_AXI_BURST_1
 		  | LCD_DMA_LAYER_VSTRIDE_EN;
+*/
+	dma_cfg = LCD_DMA_LAYER_ENABLE
+		  | LCD_DMA_LAYER_AXI_BURST_1
+		  | LCD_DMA_LAYER_VSTRIDE_EN;
 
 	/* disable DMA first */
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
@@ -447,10 +451,12 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 		break;
 	}
 
-	ctrl |= LCD_CTRL_ENABLE;
-	ctrl |= LCD_CTRL_PROGRESSIVE | LCD_CTRL_TIM_GEN_ENABLE
-		| LCD_CTRL_CONTINUOUS | LCD_CTRL_OUTPUT_ENABLED;
+//	ctrl |= LCD_CTRL_ENABLE;
+//	ctrl |= LCD_CTRL_PROGRESSIVE | LCD_CTRL_TIM_GEN_ENABLE
+//		| LCD_CTRL_CONTINUOUS | LCD_CTRL_OUTPUT_ENABLED;
 
+	ctrl |= LCD_CTRL_PROGRESSIVE | LCD_CTRL_TIM_GEN_ENABLE
+		| LCD_CTRL_ONE_SHOT | LCD_CTRL_OUTPUT_ENABLED;
 	/*LCD is connected to MIPI on kmb
 	 * Therefore this bit is required for DSI Tx
 	 */
@@ -474,6 +480,7 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	/* do not interleave RGB channels for mipi Tx compatibility */
 	out_format |= LCD_OUTF_MIPI_RGB_MODE;
 	kmb_write_lcd(dev_p, LCD_OUT_FORMAT_CFG, out_format);
+//	kmb_write_lcd(dev_p, LCD_CONTROL, LCD_CTRL_ENABLE);
 #endif
 }
 
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
