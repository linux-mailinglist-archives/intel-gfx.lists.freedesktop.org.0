Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC83A20FF23
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F766E4C5;
	Tue, 30 Jun 2020 21:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A1EA6E33C;
 Tue, 30 Jun 2020 21:28:53 +0000 (UTC)
IronPort-SDR: GCCCxpeFsmarSDNLmITH4byraeLLe9WRMfQ0V7Nyqbq36EHby8eiNNl5CFJZAGoVIoJoHXJXcg
 GkXx8cSiAyiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="133846923"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="133846923"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:52 -0700
IronPort-SDR: ZPhXHQG6B7R8r2Xl1L68L2rrGEChsetWfwrwiuhWvh3CFh6fcsFIriFSdKYXFZ/tXonBQcmr9N
 +ThS5f/Gq6xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066802"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:52 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:56 -0700
Message-Id: <1593552491-23698-45-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 44/59] drm/kmb: Mipi settings from input timings
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

Removed hardcoded timings, set timings based on the current mode's
input timings. Also calculate and set the lane rate based on the
timings.

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
---
 drivers/gpu/drm/kmb/kmb_crtc.c |  9 +++-
 drivers/gpu/drm/kmb/kmb_dsi.c  | 93 +++++++++++++++++++++++-------------------
 drivers/gpu/drm/kmb/kmb_dsi.h  |  2 +-
 3 files changed, 61 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_crtc.c b/drivers/gpu/drm/kmb/kmb_crtc.c
index d9f6199..75e78d7 100644
--- a/drivers/gpu/drm/kmb/kmb_crtc.c
+++ b/drivers/gpu/drm/kmb/kmb_crtc.c
@@ -102,7 +102,14 @@ static void kmb_crtc_mode_set_nofb(struct drm_crtc *crtc)
 	int vsync_end_offset;
 #endif
 	/* initialize mipi */
-	kmb_dsi_hw_init(dev);
+	kmb_dsi_hw_init(dev, m);
+	DRM_INFO("vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d\n",
+			m->crtc_vsync_start - m->crtc_vdisplay,
+			m->crtc_vtotal - m->crtc_vsync_end,
+			m->crtc_vsync_end - m->crtc_vsync_start,
+			m->crtc_hsync_start - m->crtc_hdisplay,
+			m->crtc_htotal - m->crtc_hsync_end,
+			m->crtc_hsync_end - m->crtc_hsync_start);
 #ifdef LCD_TEST
 //	vm.vfront_porch = m->crtc_vsync_start - m->crtc_vdisplay;
 	vm.vfront_porch = 2;
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index 3b3bb0a..3368e97 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -47,19 +47,12 @@ static int hw_initialized;
 //#define MIPI_TX_TEST_PATTERN_GENERATION
 //#define MIPI_DMA
 //#define RTL_TEST
-//#define IMG_WIDTH_PX      640
-//#define IMG_HEIGHT_LINES  10
-
-#define LCD_BYTESPP       1
 
 /*MIPI TX CFG*/
-//#define MIPI_TX_LANE_DATA_RATE_MBPS 1782
-//#define MIPI_TX_LANE_DATA_RATE_MBPS 800
 #define MIPI_TX_LANE_DATA_RATE_MBPS 891
-//#define MIPI_TX_LANE_DATA_RATE_MBPS 80
 #define MIPI_TX_REF_CLK_KHZ         24000
-//#define MIPI_TX_REF_CLK_KHZ         23809
 #define MIPI_TX_CFG_CLK_KHZ         24000
+#define MIPI_TX_BPP		    24
 
 /*DPHY Tx test codes*/
 #define TEST_CODE_FSM_CONTROL				0x03
@@ -98,23 +91,12 @@ static struct mipi_dsi_host *dsi_host;
 static struct mipi_dsi_device *dsi_device;
 
 /*
- * These are added here only temporarily for testing,
- * these will eventually go to the device tree sections,
- * and can be used as a refernce later for device tree additions
+ * Default setting is 1080p, 4 lanes.
  */
-#define RES_1920x1080
-#ifdef RES_1920x1080
 #define IMG_HEIGHT_LINES  1080
 #define IMG_WIDTH_PX      1920
 #define MIPI_TX_ACTIVE_LANES 4
-#endif
 
-//#define RES_1280x720
-#ifdef RES_1280x720
-#define IMG_HEIGHT_LINES  720
-#define IMG_WIDTH_PX      1280
-#define MIPI_TX_ACTIVE_LANES 2
-#endif
 struct mipi_tx_frame_section_cfg mipi_tx_frame0_sect_cfg = {
 	.width_pixels = IMG_WIDTH_PX,
 	.height_lines = IMG_HEIGHT_LINES,
@@ -124,7 +106,6 @@ struct mipi_tx_frame_section_cfg mipi_tx_frame0_sect_cfg = {
 	.dma_packed = 0
 };
 
-#ifdef RES_1920x1080
 struct mipi_tx_frame_cfg mipitx_frame0_cfg = {
 	.sections[0] = &mipi_tx_frame0_sect_cfg,
 	.sections[1] = NULL,
@@ -137,22 +118,6 @@ struct mipi_tx_frame_cfg mipitx_frame0_cfg = {
 	.h_backporch = 148,
 	.h_frontporch = 88
 };
-#endif
-
-#ifdef RES_1280x720
-struct mipi_tx_frame_cfg mipitx_frame0_cfg = {
-	.sections[0] = &mipi_tx_frame0_sect_cfg,
-	.sections[1] = NULL,
-	.sections[2] = NULL,
-	.sections[3] = NULL,
-	.vsync_width = 5,
-	.v_backporch = 20,
-	.v_frontporch = 5,
-	.hsync_width = 40,
-	.h_backporch = 220,
-	.h_frontporch = 110,
-};
-#endif
 
 struct mipi_tx_dsi_cfg mipitx_dsi_cfg = {
 	.hfp_blank_en = 0,
@@ -1740,10 +1705,58 @@ int kmb_kernel_read(struct file *file, loff_t offset,
 	return ret;
 }
 
-int kmb_dsi_hw_init(struct drm_device *dev)
+int kmb_dsi_hw_init(struct drm_device *dev, struct drm_display_mode *mode)
 {
 	struct kmb_drm_private *dev_p = dev->dev_private;
+	u64 data_rate;
+
+	mipi_tx_init_cfg.active_lanes = MIPI_TX_ACTIVE_LANES;
+	if (mode != NULL) {
+		mipi_tx_frame0_sect_cfg.width_pixels = mode->crtc_hdisplay;
+		mipi_tx_frame0_sect_cfg.height_lines = mode->crtc_vdisplay;
+		mipitx_frame0_cfg.vsync_width =
+			mode->crtc_vsync_end - mode->crtc_vsync_start;
+		mipitx_frame0_cfg.v_backporch =
+			mode->crtc_vtotal - mode->crtc_vsync_end;
+		mipitx_frame0_cfg.v_frontporch =
+			mode->crtc_vsync_start - mode->crtc_vdisplay;
+		mipitx_frame0_cfg.hsync_width =
+			mode->crtc_hsync_end - mode->crtc_hsync_start;
+		mipitx_frame0_cfg.h_backporch =
+			mode->crtc_htotal - mode->crtc_hsync_end;
+		mipitx_frame0_cfg.h_frontporch =
+			mode->crtc_hsync_start - mode->crtc_hdisplay;
+		/*lane rate = (vtotal*htotal*fps*bpp)/4 / 1000000
+		 * to convert to Mbps
+		 */
+		DRM_INFO("htotal = %d vtotal=%d refresh=%d\n",
+				mode->crtc_htotal, mode->crtc_vtotal,
+				drm_mode_vrefresh(mode));
+		data_rate =
+			((((u32)mode->crtc_vtotal * (u32)mode->crtc_htotal)
+			* (u32)(drm_mode_vrefresh(mode))
+			* MIPI_TX_BPP)/mipi_tx_init_cfg.active_lanes) / 1000000;
+		DRM_INFO("data_rate = %llu active_lanes=%d\n",
+				data_rate, mipi_tx_init_cfg.active_lanes);
+
+		/*when late rate < 800 - modeset fails with 4 lanes -
+		 * so switch to 2 lanes
+		 */
+		if (data_rate < 800) {
+			mipi_tx_init_cfg.active_lanes = 2;
+			mipi_tx_init_cfg.lane_rate_mbps = data_rate * 2;
+		} else {
+			mipi_tx_init_cfg.lane_rate_mbps = data_rate;
+		}
+		DRM_INFO("lane rate=%d\n", mipi_tx_init_cfg.lane_rate_mbps);
+		DRM_INFO("vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d lane-rate=%d\n",
+		mipitx_frame0_cfg.v_frontporch, mipitx_frame0_cfg.v_backporch,
+		mipitx_frame0_cfg.vsync_width,
+		mipitx_frame0_cfg.h_frontporch, mipitx_frame0_cfg.h_backporch,
+		mipitx_frame0_cfg.hsync_width,
+		mipi_tx_init_cfg.lane_rate_mbps);
 
+	}
 	if (hw_initialized)
 		return 0;
 	kmb_write_mipi(dev_p, DPHY_ENABLE, 0);
@@ -1826,15 +1839,13 @@ int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge)
 		drm_encoder_cleanup(encoder);
 		return ret;
 	}
-#endif
 
-#ifndef FCCTEST
 	DRM_INFO("%s : %d Bridge attached : SUCCESS\n", __func__, __LINE__);
 #endif
 
 #ifdef FCCTEST
 #ifndef LCD_TEST
-	kmb_dsi_hw_init(dev);
+	kmb_dsi_hw_init(dev, NULL);
 #endif
 #endif
 	return 0;
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.h b/drivers/gpu/drm/kmb/kmb_dsi.h
index ece4ee1..1d4ca8d 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.h
+++ b/drivers/gpu/drm/kmb/kmb_dsi.h
@@ -341,7 +341,7 @@ int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge);
 void kmb_plane_destroy(struct drm_plane *plane);
 void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p);
 void kmb_dsi_host_unregister(void);
-int kmb_dsi_hw_init(struct drm_device *dev);
+int kmb_dsi_hw_init(struct drm_device *dev, struct drm_display_mode *mode);
 
 #define to_kmb_connector(x) container_of(x, struct kmb_connector, base)
 #define to_kmb_host(x) container_of(x, struct kmb_dsi_host, base)
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
