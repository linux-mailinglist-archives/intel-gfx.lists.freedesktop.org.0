Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE3220FF19
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E810D6E323;
	Tue, 30 Jun 2020 21:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F4C6E33C;
 Tue, 30 Jun 2020 21:28:54 +0000 (UTC)
IronPort-SDR: 8GcvW+VqCaEMOlld0c1VK1M9zpH+Kf6tcUmQs9gjxKZllfKfzZzs+72AgKb6BNdGRTTOkgQoBw
 JuvqS7ENorAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="133846942"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="133846942"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:54 -0700
IronPort-SDR: 4L+0PxmUsvAimRtZXn2PTFwznVe8odTYFJyEaX7zS7wr/ZM+lNNqKz9Rhn/uuYN+glMJLaxQLB
 lwX9S5mbBkeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066828"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:54 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:28:01 -0700
Message-Id: <1593552491-23698-50-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 49/59] drm/kmb: Disable ping pong mode
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

Disable ping pong mode otherwise video corruption results,
use continuous mode and also fetch the dma
addresses before disabling dma. For now, only initialize the dma and
planes once and for next plane updates only update the addresses for
dma.

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_plane.c | 303 ++++++++++++++++++++--------------------
 drivers/gpu/drm/kmb/kmb_plane.h |   8 ++
 2 files changed, 159 insertions(+), 152 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index 9f9ae57..35dece3 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -103,11 +103,12 @@ static const u32 kmb_formats_v[] = {
 #define LCD_INT_GL1 (LAYER3_DMA_DONE | LAYER3_DMA_IDLE | LCD_INT_GL1_ERR)
 
 const uint32_t layer_irqs[] = {
-				LCD_INT_VL0,
-				LCD_INT_VL1,
-				LCD_INT_GL0,
-				LCD_INT_GL1
-			      };
+	LCD_INT_VL0,
+	LCD_INT_VL1,
+	LCD_INT_GL0,
+	LCD_INT_GL1
+};
+
 /*Conversion (yuv->rgb) matrix from myriadx */
 static const u32 csc_coef_lcd[] = {
 	1024, 0, 1436,
@@ -116,7 +117,6 @@ static const u32 csc_coef_lcd[] = {
 	-179, 125, -226
 };
 
-
 static unsigned int check_pixel_format(struct drm_plane *plane, u32 format)
 {
 	int i;
@@ -134,7 +134,6 @@ static int kmb_plane_atomic_check(struct drm_plane *plane,
 	struct drm_framebuffer *fb;
 	int ret;
 
-
 	fb = state->fb;
 
 	if (!fb || !state->crtc)
@@ -150,7 +149,7 @@ static int kmb_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void kmb_plane_atomic_disable(struct drm_plane *plane,
-				struct drm_plane_state *state)
+				     struct drm_plane_state *state)
 {
 	struct kmb_plane *kmb_plane = to_kmb_plane(plane);
 	int ctrl = 0;
@@ -176,14 +175,13 @@ static void kmb_plane_atomic_disable(struct drm_plane *plane,
 	}
 
 	kmb_clr_bitmask_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
-			LCD_DMA_LAYER_ENABLE);
+			    LCD_DMA_LAYER_ENABLE);
 	kmb_clr_bitmask_lcd(dev_p, LCD_CONTROL, ctrl);
 	DRM_INFO("%s : %d lcd_ctrl = 0x%x lcd_int_enable=0x%x\n",
-			__func__, __LINE__, kmb_read_lcd(dev_p, LCD_CONTROL),
-			kmb_read_lcd(dev_p, LCD_INT_ENABLE));
+		 __func__, __LINE__, kmb_read_lcd(dev_p, LCD_CONTROL),
+		 kmb_read_lcd(dev_p, LCD_INT_ENABLE));
 }
 
-
 unsigned int set_pixel_format(u32 format)
 {
 	unsigned int val = 0;
@@ -218,8 +216,8 @@ unsigned int set_pixel_format(u32 format)
 		val = LCD_LAYER_FORMAT_NV12 | LCD_LAYER_PLANAR_STORAGE
 		    | LCD_LAYER_CRCB_ORDER;
 		break;
-	/* packed formats */
-	/* looks hw requires B & G to be swapped when RGB */
+		/* packed formats */
+		/* looks hw requires B & G to be swapped when RGB */
 	case DRM_FORMAT_RGB332:
 		val = LCD_LAYER_FORMAT_RGB332 | LCD_LAYER_BGR_ORDER;
 		break;
@@ -283,7 +281,7 @@ unsigned int set_bits_per_pixel(const struct drm_format_info *format)
 		return val;
 	}
 
-	bpp += 8*format->cpp[0];
+	bpp += 8 * format->cpp[0];
 
 	switch (bpp) {
 	case 8:
@@ -330,7 +328,6 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 #ifdef LCD_TEST
 	struct drm_framebuffer *fb;
 	struct kmb_drm_private *dev_p;
-	dma_addr_t addr;
 	unsigned int width;
 	unsigned int height;
 	unsigned int dma_len;
@@ -340,6 +337,9 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	unsigned int src_w, src_h, crtc_x, crtc_y;
 	unsigned char plane_id;
 	int num_planes;
+	/*plane initialization status */
+	static int plane_init_status[KMB_MAX_PLANES] = { 0, 0, 0, 0 };
+	static dma_addr_t addr[MAX_SUB_PLANES] = { 0, 0, 0 };
 
 	if (!plane || !plane->state || !state)
 		return;
@@ -352,8 +352,6 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	kmb_plane = to_kmb_plane(plane);
 	plane_id = kmb_plane->id;
 
-
-
 	dev_p = plane->dev->dev_private;
 
 	src_w = (plane->state->src_w >> 16);
@@ -361,146 +359,145 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	crtc_x = plane->state->crtc_x;
 	crtc_y = plane->state->crtc_y;
 
-	DRM_INFO("src_w=%d src_h=%d\n", src_w, src_h);
-	kmb_write_lcd(dev_p, LCD_LAYERn_WIDTH(plane_id), src_w-1);
-	kmb_write_lcd(dev_p, LCD_LAYERn_HEIGHT(plane_id), src_h-1);
-	kmb_write_lcd(dev_p, LCD_LAYERn_COL_START(plane_id), crtc_x);
-	kmb_write_lcd(dev_p, LCD_LAYERn_ROW_START(plane_id), crtc_y);
-
-	val = set_pixel_format(fb->format->format);
-	val |= set_bits_per_pixel(fb->format);
-	/*CHECKME Leon drvr sets it to 100 try this for now */
-	val |= LCD_LAYER_FIFO_100;
-	kmb_write_lcd(dev_p, LCD_LAYERn_CFG(plane_id), val);
-
-	/*re-initialize interrupts */
-	kmb_clr_bitmask_lcd(dev_p, LCD_INT_ENABLE, layer_irqs[plane_id]);
-	kmb_set_bitmask_lcd(dev_p, LCD_INT_CLEAR, layer_irqs[plane_id]);
-	kmb_set_bitmask_lcd(dev_p, LCD_INT_ENABLE, layer_irqs[plane_id]);
-
-	/*TBD check visible? */
-/*
-	dma_cfg = LCD_DMA_LAYER_ENABLE | LCD_DMA_LAYER_AUTO_UPDATE
-		  | LCD_DMA_LAYER_CONT_UPDATE | LCD_DMA_LAYER_AXI_BURST_1
-		  | LCD_DMA_LAYER_VSTRIDE_EN;
-*/
-	dma_cfg = LCD_DMA_LAYER_ENABLE | LCD_DMA_LAYER_VSTRIDE_EN
-		| LCD_DMA_LAYER_AXI_BURST_16 |
-		LCD_DMA_LAYER_CONT_PING_PONG_UPDATE;
-
-	/* disable DMA first */
-	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
-			~LCD_DMA_LAYER_ENABLE);
-	kmb_write_lcd(dev_p, LCD_FIFO_FLUSH + plane_id*0x400, 1);
-
-	/* pinpong mode is enabled - at the end of DMA transfer, start new
-	 * transfer alternatively using main and shadow register settings.
-	 * So update both main and shadow registers
-	 */
-	addr = drm_fb_cma_get_gem_addr(fb, plane->state, 0);
-	dev_p->fb_addr = addr;
-	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_ADDR(plane_id), addr);
-	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_SHADOW(plane_id), addr);
-
-	width = fb->width;
-	height = fb->height;
-	dma_len = width * height * fb->format->cpp[0];
-	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN(plane_id), dma_len);
-	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN_SHADOW(plane_id), dma_len);
-
-	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_VSTRIDE(plane_id),
-			fb->pitches[0]);
-	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_WIDTH(plane_id),
-			(width*fb->format->cpp[0]));
-
-	/*program Cb/Cr for planar formats*/
-	if (num_planes > 1) {
-		if (fb->format->format == DRM_FORMAT_YUV420 ||
-				fb->format->format == DRM_FORMAT_YVU420)
-			width /= 2;
-		addr = drm_fb_cma_get_gem_addr(fb, plane->state, LAYER_1);
-		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_CB_ADR(plane_id),
-				addr);
-		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_CB_SHADOW(plane_id),
-				addr);
-		kmb_write_lcd(dev_p,
-				LCD_LAYERn_DMA_CB_LINE_VSTRIDE(plane_id),
-				fb->pitches[LAYER_1]);
-		kmb_write_lcd(dev_p,
-				LCD_LAYERn_DMA_CB_LINE_WIDTH(plane_id),
-				(width*fb->format->cpp[0]));
-		if (num_planes == 3) {
-			addr = drm_fb_cma_get_gem_addr(fb, plane->state,
-					LAYER_2);
-			kmb_write_lcd(dev_p,
-				LCD_LAYERn_DMA_START_CR_ADR(plane_id),
-				addr);
-			kmb_write_lcd(dev_p,
-				LCD_LAYERn_DMA_START_CR_SHADOW(plane_id),
-				addr);
+	DRM_INFO
+	    ("%s : %d src_w=%d src_h=%d, fb->format->format=0x%x fb->flags=0x%x",
+	     __func__, __LINE__, src_w, src_h, fb->format->format, fb->flags);
+	if (plane_init_status[plane_id] != INITIALIZED) {
+		kmb_write_lcd(dev_p, LCD_LAYERn_WIDTH(plane_id), src_w - 1);
+		kmb_write_lcd(dev_p, LCD_LAYERn_HEIGHT(plane_id), src_h - 1);
+		kmb_write_lcd(dev_p, LCD_LAYERn_COL_START(plane_id), crtc_x);
+		kmb_write_lcd(dev_p, LCD_LAYERn_ROW_START(plane_id), crtc_y);
+
+		val = set_pixel_format(fb->format->format);
+		val |= set_bits_per_pixel(fb->format);
+		/*CHECKME Leon drvr sets it to 100 try this for now */
+		val |= LCD_LAYER_FIFO_100;
+		kmb_write_lcd(dev_p, LCD_LAYERn_CFG(plane_id), val);
+
+		/*re-initialize interrupts */
+		kmb_clr_bitmask_lcd(dev_p, LCD_INT_ENABLE,
+				    layer_irqs[plane_id]);
+		kmb_set_bitmask_lcd(dev_p, LCD_INT_CLEAR, layer_irqs[plane_id]);
+
+		dma_cfg = LCD_DMA_LAYER_ENABLE | LCD_DMA_LAYER_VSTRIDE_EN |
+		    LCD_DMA_LAYER_CONT_UPDATE | LCD_DMA_LAYER_AXI_BURST_16;
+
+		width = fb->width;
+		height = fb->height;
+		dma_len = (width * height * fb->format->cpp[0]);
+		DRM_INFO("%s : %d dma_len=%d ", __func__, __LINE__, dma_len);
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN(plane_id), dma_len);
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN_SHADOW(plane_id),
+			      dma_len);
+
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_VSTRIDE(plane_id),
+			      fb->pitches[0]);
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_WIDTH(plane_id),
+			      (width * fb->format->cpp[0]));
+
+		/*program Cb/Cr for planar formats */
+		if (num_planes > 1) {
+			if (fb->format->format == DRM_FORMAT_YUV420 ||
+			    fb->format->format == DRM_FORMAT_YVU420)
+				width /= 2;
 			kmb_write_lcd(dev_p,
-				LCD_LAYERn_DMA_CR_LINE_VSTRIDE(plane_id),
-				fb->pitches[LAYER_2]);
+				      LCD_LAYERn_DMA_CB_LINE_VSTRIDE(plane_id),
+				      fb->pitches[LAYER_1]);
 			kmb_write_lcd(dev_p,
-				LCD_LAYERn_DMA_CR_LINE_WIDTH(plane_id),
-				(width*fb->format->cpp[0]));
+				      LCD_LAYERn_DMA_CB_LINE_WIDTH(plane_id),
+				      (width * fb->format->cpp[0]));
+			if (num_planes == 3) {
+				kmb_write_lcd(dev_p,
+					      LCD_LAYERn_DMA_CR_LINE_VSTRIDE
+					      (plane_id), fb->pitches[LAYER_2]);
+				kmb_write_lcd(dev_p,
+					      LCD_LAYERn_DMA_CR_LINE_WIDTH
+					      (plane_id),
+					      (width * fb->format->cpp[0]));
+			}
 		}
-	}
 
-	/* enable DMA */
-	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id), dma_cfg);
-	DRM_INFO("%s : %d dma_cfg=0x%x LCD_DMA_CFG=0x%x\n", __func__,
-			__LINE__, dma_cfg,
-			kmb_read_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id)));
+		/* enable DMA */
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id), dma_cfg);
+		DRM_INFO("%s : %d dma_cfg=0x%x LCD_DMA_CFG=0x%x\n",
+			 __func__, __LINE__, dma_cfg,
+			 kmb_read_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id)));
+
+		switch (plane_id) {
+		case LAYER_0:
+			ctrl = LCD_CTRL_VL1_ENABLE;
+			break;
+		case LAYER_1:
+			ctrl = LCD_CTRL_VL2_ENABLE;
+			break;
+		case LAYER_2:
+			ctrl = LCD_CTRL_GL1_ENABLE;
+			break;
+		case LAYER_3:
+			ctrl = LCD_CTRL_GL2_ENABLE;
+			break;
+		}
 
-	switch (plane_id) {
-	case LAYER_0:
-		ctrl = LCD_CTRL_VL1_ENABLE;
-		break;
-	case LAYER_1:
-		ctrl = LCD_CTRL_VL2_ENABLE;
-		break;
-	case LAYER_2:
-		ctrl = LCD_CTRL_GL1_ENABLE;
-		break;
-	case LAYER_3:
-		ctrl = LCD_CTRL_GL2_ENABLE;
-		break;
-	}
+		ctrl |= LCD_CTRL_PROGRESSIVE | LCD_CTRL_TIM_GEN_ENABLE
+		    | LCD_CTRL_CONTINUOUS | LCD_CTRL_OUTPUT_ENABLED;
 
-//	ctrl |= LCD_CTRL_ENABLE;
-	ctrl |= LCD_CTRL_PROGRESSIVE | LCD_CTRL_TIM_GEN_ENABLE
-		| LCD_CTRL_CONTINUOUS | LCD_CTRL_OUTPUT_ENABLED;
+		/*LCD is connected to MIPI on kmb
+		 * Therefore this bit is required for DSI Tx
+		 */
+		ctrl |= LCD_CTRL_VHSYNC_IDLE_LVL;
 
-//	ctrl |= LCD_CTRL_PROGRESSIVE | LCD_CTRL_TIM_GEN_ENABLE
-//		| LCD_CTRL_ONE_SHOT | LCD_CTRL_OUTPUT_ENABLED;
-	/*LCD is connected to MIPI on kmb
-	 * Therefore this bit is required for DSI Tx
-	 */
-	ctrl |= LCD_CTRL_VHSYNC_IDLE_LVL;
+		kmb_set_bitmask_lcd(dev_p, LCD_CONTROL, ctrl);
 
-	kmb_set_bitmask_lcd(dev_p, LCD_CONTROL, ctrl);
+		/* FIXME no doc on how to set output format,these values are
+		 * taken from the Myriadx tests
+		 */
+		out_format |= LCD_OUTF_FORMAT_RGB888;
 
-	/* FIXME no doc on how to set output format,these values are taken
-	 * from the Myriadx tests
-	 */
-	out_format |= LCD_OUTF_FORMAT_RGB888;
-//	out_format |= LCD_OUTF_BGR_ORDER;
+		if (val & LCD_LAYER_PLANAR_STORAGE) {
+			/*enable CSC if input is planar and output is RGB */
+			config_csc(dev_p, plane_id);
+		}
+
+		/*set background color to white */
+		//      kmb_write_lcd(dev_p, LCD_BG_COLOUR_LS, 0xffffff);
+		/*leave RGB order,conversion mode and clip mode to default */
+		/* do not interleave RGB channels for mipi Tx compatibility */
+		out_format |= LCD_OUTF_MIPI_RGB_MODE;
+		kmb_write_lcd(dev_p, LCD_OUT_FORMAT_CFG, out_format);
 
-	if (val & LCD_LAYER_PLANAR_STORAGE) {
-		/*enable CSC if input is planar and output is RGB */
-		config_csc(dev_p, plane_id);
+		kmb_set_bitmask_lcd(dev_p, LCD_INT_ENABLE,
+				    layer_irqs[plane_id]);
+		plane_init_status[plane_id] = INITIALIZED;
 	}
 
-	/*set background color to white*/
-//	kmb_write_lcd(dev_p, LCD_BG_COLOUR_LS, 0xffffff);
-	/*leave RGB order,conversion mode and clip mode to default*/
-	/* do not interleave RGB channels for mipi Tx compatibility */
-	out_format |= LCD_OUTF_MIPI_RGB_MODE;
-//	out_format |= LCD_OUTF_SYNC_MODE ;
-	kmb_write_lcd(dev_p, LCD_OUT_FORMAT_CFG, out_format);
+	addr[Y_PLANE] = drm_fb_cma_get_gem_addr(fb, plane->state, 0);
+	dev_p->fb_addr = (dma_addr_t) addr;
+	if (num_planes > 1) {
+		addr[U_PLANE] = drm_fb_cma_get_gem_addr(fb, plane->state,
+							U_PLANE);
+		if (num_planes == 3)
+			addr[V_PLANE] =
+			    drm_fb_cma_get_gem_addr(fb, plane->state, V_PLANE);
+	}
+	/* disable DMA first */
+	kmb_clr_bitmask_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
+			    LCD_DMA_LAYER_ENABLE);
+	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_ADDR(plane_id),
+		      addr[Y_PLANE] + fb->offsets[0]);
+	if (num_planes > 1) {
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_CB_ADR(plane_id),
+			      addr[U_PLANE]);
+		if (num_planes == 3)
+			kmb_write_lcd(dev_p,
+				      LCD_LAYERn_DMA_START_CR_ADR(plane_id),
+				      addr[V_PLANE]);
+	}
+	/* Enable DMA */
+	kmb_set_bitmask_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
+			    LCD_DMA_LAYER_ENABLE);
+	DRM_INFO("%s : %d flipping.....\n", __func__, __LINE__);
+	return;
 
-//	kmb_write_lcd(dev_p, LCD_CONTROL, LCD_CTRL_ENABLE);
 #endif
 }
 
@@ -513,6 +510,7 @@ static const struct drm_plane_helper_funcs kmb_plane_helper_funcs = {
 void kmb_plane_destroy(struct drm_plane *plane)
 {
 	struct kmb_plane *kmb_plane = to_kmb_plane(plane);
+
 	drm_plane_cleanup(plane);
 	kfree(kmb_plane);
 }
@@ -591,7 +589,7 @@ struct kmb_plane *kmb_plane_init(struct drm_device *drm)
 		}
 
 		plane_type = (i == 0) ? DRM_PLANE_TYPE_PRIMARY :
-			DRM_PLANE_TYPE_OVERLAY;
+		    DRM_PLANE_TYPE_OVERLAY;
 		if (i < 2) {
 			plane_formats = kmb_formats_v;
 			num_plane_formats = ARRAY_SIZE(kmb_formats_v);
@@ -601,13 +599,14 @@ struct kmb_plane *kmb_plane_init(struct drm_device *drm)
 		}
 
 		ret = drm_universal_plane_init(drm, &plane->base_plane,
-				POSSIBLE_CRTCS,
-				&kmb_plane_funcs, plane_formats,
-					num_plane_formats,
-					NULL, plane_type, "plane %d", i);
+					       POSSIBLE_CRTCS,
+					       &kmb_plane_funcs, plane_formats,
+					       num_plane_formats,
+					       NULL, plane_type, "plane %d", i);
 		if (ret < 0) {
-			DRM_ERROR("drm_universal_plane_init -failed with ret=%d"
-					, ret);
+			DRM_ERROR
+			    ("drm_universal_plane_init -failed with ret=%d",
+			     ret);
 			goto cleanup;
 		}
 
diff --git a/drivers/gpu/drm/kmb/kmb_plane.h b/drivers/gpu/drm/kmb/kmb_plane.h
index 45bcec1..8411219 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.h
+++ b/drivers/gpu/drm/kmb/kmb_plane.h
@@ -36,6 +36,13 @@ enum layer_id {
 	KMB_MAX_PLANES,
 };
 
+enum sub_plane_id {
+	Y_PLANE,
+	U_PLANE,
+	V_PLANE,
+	MAX_SUB_PLANES,
+};
+
 struct kmb_plane {
 	struct drm_plane base_plane;
 	struct kmb_drm_private kmb_dev;
@@ -48,6 +55,7 @@ struct kmb_plane_state {
 };
 
 #define POSSIBLE_CRTCS 1
+#define INITIALIZED 1
 #define to_kmb_plane(x) container_of(x, struct kmb_plane, base_plane)
 
 #define to_kmb_plane_state(x) \
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
