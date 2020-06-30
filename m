Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E91820FF1F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4547D6E4A7;
	Tue, 30 Jun 2020 21:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AFE86E33F;
 Tue, 30 Jun 2020 21:28:55 +0000 (UTC)
IronPort-SDR: 4K7yL5LtDnDa/2qTC+oLPVUljfSRwTQ0GyYkpKlTz7moHRaiEN43rD3WqLKvkGkJw9pDEFi2pl
 ZNeXXTOwqOVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="133846947"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="133846947"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:54 -0700
IronPort-SDR: tusMOwafPhIQnQGGDGXBcPYZnYmtZ5HXr67Mw8VHaPCxuAQmODSjaY6OZqUwF1onBAKWzXbxo0
 UwhfScu1V2Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066834"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:54 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:28:02 -0700
Message-Id: <1593552491-23698-51-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 50/59] drm/kmb: Do the layer initializations
 only once
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

The issue was video starts fine, but towards the end, the color disappers.
Do the layer initializations only once, but update the DMA registers
for every frame. Also changed DRM_INFO to DRM_DEBUG.

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_plane.c | 150 ++++++++++++++++++----------------------
 1 file changed, 66 insertions(+), 84 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index 35dece3..8aa48b5 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -117,6 +117,9 @@ static const u32 csc_coef_lcd[] = {
 	-179, 125, -226
 };
 
+/*plane initialization status */
+static int plane_init_status[KMB_MAX_PLANES] = { 0, 0, 0, 0 };
+
 static unsigned int check_pixel_format(struct drm_plane *plane, u32 format)
 {
 	int i;
@@ -177,9 +180,9 @@ static void kmb_plane_atomic_disable(struct drm_plane *plane,
 	kmb_clr_bitmask_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
 			    LCD_DMA_LAYER_ENABLE);
 	kmb_clr_bitmask_lcd(dev_p, LCD_CONTROL, ctrl);
-	DRM_INFO("%s : %d lcd_ctrl = 0x%x lcd_int_enable=0x%x\n",
-		 __func__, __LINE__, kmb_read_lcd(dev_p, LCD_CONTROL),
-		 kmb_read_lcd(dev_p, LCD_INT_ENABLE));
+	DRM_DEBUG("%s : %d lcd_ctrl = 0x%x lcd_int_enable=0x%x\n",
+		  __func__, __LINE__, kmb_read_lcd(dev_p, LCD_CONTROL),
+		  kmb_read_lcd(dev_p, LCD_INT_ENABLE));
 }
 
 unsigned int set_pixel_format(u32 format)
@@ -337,8 +340,6 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	unsigned int src_w, src_h, crtc_x, crtc_y;
 	unsigned char plane_id;
 	int num_planes;
-	/*plane initialization status */
-	static int plane_init_status[KMB_MAX_PLANES] = { 0, 0, 0, 0 };
 	static dma_addr_t addr[MAX_SUB_PLANES] = { 0, 0, 0 };
 
 	if (!plane || !plane->state || !state)
@@ -359,9 +360,56 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	crtc_x = plane->state->crtc_x;
 	crtc_y = plane->state->crtc_y;
 
-	DRM_INFO
+	DRM_DEBUG
 	    ("%s : %d src_w=%d src_h=%d, fb->format->format=0x%x fb->flags=0x%x",
 	     __func__, __LINE__, src_w, src_h, fb->format->format, fb->flags);
+
+	width = fb->width;
+	height = fb->height;
+	dma_len = (width * height * fb->format->cpp[0]);
+	DRM_DEBUG("%s : %d dma_len=%d ", __func__, __LINE__, dma_len);
+	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN(plane_id), dma_len);
+	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN_SHADOW(plane_id), dma_len);
+
+	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_VSTRIDE(plane_id),
+		      fb->pitches[0]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_WIDTH(plane_id),
+		      (width * fb->format->cpp[0]));
+
+	addr[Y_PLANE] = drm_fb_cma_get_gem_addr(fb, plane->state, 0);
+	dev_p->fb_addr = (dma_addr_t) addr;
+	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_ADDR(plane_id),
+		      addr[Y_PLANE] + fb->offsets[0]);
+	/*program Cb/Cr for planar formats */
+	if (num_planes > 1) {
+		if (fb->format->format == DRM_FORMAT_YUV420 ||
+		    fb->format->format == DRM_FORMAT_YVU420)
+			width /= 2;
+		kmb_write_lcd(dev_p,
+			      LCD_LAYERn_DMA_CB_LINE_VSTRIDE(plane_id),
+			      fb->pitches[LAYER_1]);
+		kmb_write_lcd(dev_p,
+			      LCD_LAYERn_DMA_CB_LINE_WIDTH(plane_id),
+			      (width * fb->format->cpp[0]));
+		addr[U_PLANE] = drm_fb_cma_get_gem_addr(fb, plane->state,
+							U_PLANE);
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_CB_ADR(plane_id),
+			      addr[U_PLANE]);
+		if (num_planes == 3) {
+			kmb_write_lcd(dev_p,
+				      LCD_LAYERn_DMA_CR_LINE_VSTRIDE(plane_id),
+				      fb->pitches[LAYER_2]);
+			kmb_write_lcd(dev_p,
+				      LCD_LAYERn_DMA_CR_LINE_WIDTH(plane_id),
+				      (width * fb->format->cpp[0]));
+			addr[V_PLANE] = drm_fb_cma_get_gem_addr(fb,
+								plane->state,
+								V_PLANE);
+			kmb_write_lcd(dev_p,
+				      LCD_LAYERn_DMA_START_CR_ADR(plane_id),
+				      addr[V_PLANE]);
+		}
+	}
 	if (plane_init_status[plane_id] != INITIALIZED) {
 		kmb_write_lcd(dev_p, LCD_LAYERn_WIDTH(plane_id), src_w - 1);
 		kmb_write_lcd(dev_p, LCD_LAYERn_HEIGHT(plane_id), src_h - 1);
@@ -374,55 +422,6 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 		val |= LCD_LAYER_FIFO_100;
 		kmb_write_lcd(dev_p, LCD_LAYERn_CFG(plane_id), val);
 
-		/*re-initialize interrupts */
-		kmb_clr_bitmask_lcd(dev_p, LCD_INT_ENABLE,
-				    layer_irqs[plane_id]);
-		kmb_set_bitmask_lcd(dev_p, LCD_INT_CLEAR, layer_irqs[plane_id]);
-
-		dma_cfg = LCD_DMA_LAYER_ENABLE | LCD_DMA_LAYER_VSTRIDE_EN |
-		    LCD_DMA_LAYER_CONT_UPDATE | LCD_DMA_LAYER_AXI_BURST_16;
-
-		width = fb->width;
-		height = fb->height;
-		dma_len = (width * height * fb->format->cpp[0]);
-		DRM_INFO("%s : %d dma_len=%d ", __func__, __LINE__, dma_len);
-		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN(plane_id), dma_len);
-		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN_SHADOW(plane_id),
-			      dma_len);
-
-		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_VSTRIDE(plane_id),
-			      fb->pitches[0]);
-		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_WIDTH(plane_id),
-			      (width * fb->format->cpp[0]));
-
-		/*program Cb/Cr for planar formats */
-		if (num_planes > 1) {
-			if (fb->format->format == DRM_FORMAT_YUV420 ||
-			    fb->format->format == DRM_FORMAT_YVU420)
-				width /= 2;
-			kmb_write_lcd(dev_p,
-				      LCD_LAYERn_DMA_CB_LINE_VSTRIDE(plane_id),
-				      fb->pitches[LAYER_1]);
-			kmb_write_lcd(dev_p,
-				      LCD_LAYERn_DMA_CB_LINE_WIDTH(plane_id),
-				      (width * fb->format->cpp[0]));
-			if (num_planes == 3) {
-				kmb_write_lcd(dev_p,
-					      LCD_LAYERn_DMA_CR_LINE_VSTRIDE
-					      (plane_id), fb->pitches[LAYER_2]);
-				kmb_write_lcd(dev_p,
-					      LCD_LAYERn_DMA_CR_LINE_WIDTH
-					      (plane_id),
-					      (width * fb->format->cpp[0]));
-			}
-		}
-
-		/* enable DMA */
-		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id), dma_cfg);
-		DRM_INFO("%s : %d dma_cfg=0x%x LCD_DMA_CFG=0x%x\n",
-			 __func__, __LINE__, dma_cfg,
-			 kmb_read_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id)));
-
 		switch (plane_id) {
 		case LAYER_0:
 			ctrl = LCD_CTRL_VL1_ENABLE;
@@ -464,38 +463,18 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 		/* do not interleave RGB channels for mipi Tx compatibility */
 		out_format |= LCD_OUTF_MIPI_RGB_MODE;
 		kmb_write_lcd(dev_p, LCD_OUT_FORMAT_CFG, out_format);
-
-		kmb_set_bitmask_lcd(dev_p, LCD_INT_ENABLE,
-				    layer_irqs[plane_id]);
 		plane_init_status[plane_id] = INITIALIZED;
 	}
 
-	addr[Y_PLANE] = drm_fb_cma_get_gem_addr(fb, plane->state, 0);
-	dev_p->fb_addr = (dma_addr_t) addr;
-	if (num_planes > 1) {
-		addr[U_PLANE] = drm_fb_cma_get_gem_addr(fb, plane->state,
-							U_PLANE);
-		if (num_planes == 3)
-			addr[V_PLANE] =
-			    drm_fb_cma_get_gem_addr(fb, plane->state, V_PLANE);
-	}
-	/* disable DMA first */
-	kmb_clr_bitmask_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
-			    LCD_DMA_LAYER_ENABLE);
-	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_ADDR(plane_id),
-		      addr[Y_PLANE] + fb->offsets[0]);
-	if (num_planes > 1) {
-		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_CB_ADR(plane_id),
-			      addr[U_PLANE]);
-		if (num_planes == 3)
-			kmb_write_lcd(dev_p,
-				      LCD_LAYERn_DMA_START_CR_ADR(plane_id),
-				      addr[V_PLANE]);
-	}
-	/* Enable DMA */
-	kmb_set_bitmask_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
-			    LCD_DMA_LAYER_ENABLE);
-	DRM_INFO("%s : %d flipping.....\n", __func__, __LINE__);
+	dma_cfg = LCD_DMA_LAYER_ENABLE | LCD_DMA_LAYER_VSTRIDE_EN |
+	    LCD_DMA_LAYER_CONT_UPDATE | LCD_DMA_LAYER_AXI_BURST_16;
+
+	/* enable DMA */
+	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id), dma_cfg);
+	DRM_DEBUG("%s : %d dma_cfg=0x%x LCD_DMA_CFG=0x%x\n",
+		  __func__, __LINE__, dma_cfg,
+		  kmb_read_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id)));
+
 	return;
 
 #endif
@@ -609,6 +588,9 @@ struct kmb_plane *kmb_plane_init(struct drm_device *drm)
 			     ret);
 			goto cleanup;
 		}
+		DRM_DEBUG("%s : %d plane=%px\n i=%d type=%d",
+			  __func__, __LINE__, &plane->base_plane,
+			  i, plane_type);
 
 		drm_plane_helper_add(&plane->base_plane,
 				     &kmb_plane_helper_funcs);
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
