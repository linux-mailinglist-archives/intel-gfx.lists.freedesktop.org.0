Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 964E02DF827
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 05:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E3D36E466;
	Mon, 21 Dec 2020 04:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D286E46B
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Dec 2020 04:04:31 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-268-sCbSmDqCOICFri6MU_JZaA-1; Sun, 20 Dec 2020 23:04:29 -0500
X-MC-Unique: sCbSmDqCOICFri6MU_JZaA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E1F359
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Dec 2020 04:04:28 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 826E75D9D3;
 Mon, 21 Dec 2020 04:04:27 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Dec 2020 14:03:57 +1000
Message-Id: <20201221040357.4928-17-airlied@gmail.com>
In-Reply-To: <20201221040357.4928-1-airlied@gmail.com>
References: <20201221040357.4928-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 16/16] drm/i915: migrate i9xx plane get config
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
Cc: Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

Migrate this code out like the skylake code.
---
 drivers/gpu/drm/i915/display/i9xx_plane.c    | 119 +++++++++++++++++++
 drivers/gpu/drm/i915/display/i9xx_plane.h    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c | 119 -------------------
 3 files changed, 121 insertions(+), 119 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 6c568079f492..a063a92f04dc 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -698,3 +698,122 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	return ERR_PTR(ret);
 }
 
+static int i9xx_format_to_fourcc(int format)
+{
+	switch (format) {
+	case DISPPLANE_8BPP:
+		return DRM_FORMAT_C8;
+	case DISPPLANE_BGRA555:
+		return DRM_FORMAT_ARGB1555;
+	case DISPPLANE_BGRX555:
+		return DRM_FORMAT_XRGB1555;
+	case DISPPLANE_BGRX565:
+		return DRM_FORMAT_RGB565;
+	default:
+	case DISPPLANE_BGRX888:
+		return DRM_FORMAT_XRGB8888;
+	case DISPPLANE_RGBX888:
+		return DRM_FORMAT_XBGR8888;
+	case DISPPLANE_BGRA888:
+		return DRM_FORMAT_ARGB8888;
+	case DISPPLANE_RGBA888:
+		return DRM_FORMAT_ABGR8888;
+	case DISPPLANE_BGRX101010:
+		return DRM_FORMAT_XRGB2101010;
+	case DISPPLANE_RGBX101010:
+		return DRM_FORMAT_XBGR2101010;
+	case DISPPLANE_BGRA101010:
+		return DRM_FORMAT_ARGB2101010;
+	case DISPPLANE_RGBA101010:
+		return DRM_FORMAT_ABGR2101010;
+	case DISPPLANE_RGBX161616:
+		return DRM_FORMAT_XBGR16161616F;
+	}
+}
+
+void
+i9xx_get_initial_plane_config(struct intel_crtc *crtc,
+			      struct intel_initial_plane_config *plane_config)
+{
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+	enum pipe pipe;
+	u32 val, base, offset;
+	int fourcc, pixel_format;
+	unsigned int aligned_height;
+	struct drm_framebuffer *fb;
+	struct intel_framebuffer *intel_fb;
+
+	if (!plane->get_hw_state(plane, &pipe))
+		return;
+
+	drm_WARN_ON(dev, pipe != crtc->pipe);
+
+	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
+	if (!intel_fb) {
+		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
+		return;
+	}
+
+	fb = &intel_fb->base;
+
+	fb->dev = dev;
+
+	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
+
+	if (INTEL_GEN(dev_priv) >= 4) {
+		if (val & DISPPLANE_TILED) {
+			plane_config->tiling = I915_TILING_X;
+			fb->modifier = I915_FORMAT_MOD_X_TILED;
+		}
+
+		if (val & DISPPLANE_ROTATE_180)
+			plane_config->rotation = DRM_MODE_ROTATE_180;
+	}
+
+	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B &&
+	    val & DISPPLANE_MIRROR)
+		plane_config->rotation |= DRM_MODE_REFLECT_X;
+
+	pixel_format = val & DISPPLANE_PIXFORMAT_MASK;
+	fourcc = i9xx_format_to_fourcc(pixel_format);
+	fb->format = drm_format_info(fourcc);
+
+	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
+		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
+		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
+	} else if (INTEL_GEN(dev_priv) >= 4) {
+		if (plane_config->tiling)
+			offset = intel_de_read(dev_priv,
+					       DSPTILEOFF(i9xx_plane));
+		else
+			offset = intel_de_read(dev_priv,
+					       DSPLINOFF(i9xx_plane));
+		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
+	} else {
+		base = intel_de_read(dev_priv, DSPADDR(i9xx_plane));
+	}
+	plane_config->base = base;
+
+	val = intel_de_read(dev_priv, PIPESRC(pipe));
+	fb->width = ((val >> 16) & 0xfff) + 1;
+	fb->height = ((val >> 0) & 0xfff) + 1;
+
+	val = intel_de_read(dev_priv, DSPSTRIDE(i9xx_plane));
+	fb->pitches[0] = val & 0xffffffc0;
+
+	aligned_height = intel_fb_align_height(fb, 0, fb->height);
+
+	plane_config->size = fb->pitches[0] * aligned_height;
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
+		    crtc->base.name, plane->base.name, fb->width, fb->height,
+		    fb->format->cpp[0] * 8, base, fb->pitches[0],
+		    plane_config->size);
+
+	plane_config->fb = intel_fb;
+}
+
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/i915/display/i9xx_plane.h
index a3a0e360da4c..eddfd354a950 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
@@ -18,4 +18,6 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state);
 struct intel_plane *
 intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe);
 
+void i9xx_get_initial_plane_config(struct intel_crtc *crtc,
+				   struct intel_initial_plane_config *plane_config);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 72c247ac5245..c34bfd2fae7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2162,39 +2162,6 @@ intel_plane_compute_gtt(struct intel_plane_state *plane_state)
 	return intel_plane_check_stride(plane_state);
 }
 
-static int i9xx_format_to_fourcc(int format)
-{
-	switch (format) {
-	case DISPPLANE_8BPP:
-		return DRM_FORMAT_C8;
-	case DISPPLANE_BGRA555:
-		return DRM_FORMAT_ARGB1555;
-	case DISPPLANE_BGRX555:
-		return DRM_FORMAT_XRGB1555;
-	case DISPPLANE_BGRX565:
-		return DRM_FORMAT_RGB565;
-	default:
-	case DISPPLANE_BGRX888:
-		return DRM_FORMAT_XRGB8888;
-	case DISPPLANE_RGBX888:
-		return DRM_FORMAT_XBGR8888;
-	case DISPPLANE_BGRA888:
-		return DRM_FORMAT_ARGB8888;
-	case DISPPLANE_RGBA888:
-		return DRM_FORMAT_ABGR8888;
-	case DISPPLANE_BGRX101010:
-		return DRM_FORMAT_XRGB2101010;
-	case DISPPLANE_RGBX101010:
-		return DRM_FORMAT_XBGR2101010;
-	case DISPPLANE_BGRA101010:
-		return DRM_FORMAT_ARGB2101010;
-	case DISPPLANE_RGBA101010:
-		return DRM_FORMAT_ABGR2101010;
-	case DISPPLANE_RGBX161616:
-		return DRM_FORMAT_XBGR16161616F;
-	}
-}
-
 static struct i915_vma *
 initial_plane_vma(struct drm_i915_private *i915,
 		  struct intel_initial_plane_config *plane_config)
@@ -5850,92 +5817,6 @@ static void vlv_crtc_clock_get(struct intel_crtc *crtc,
 	pipe_config->port_clock = vlv_calc_dpll_params(refclk, &clock);
 }
 
-static void
-i9xx_get_initial_plane_config(struct intel_crtc *crtc,
-			      struct intel_initial_plane_config *plane_config)
-{
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	enum pipe pipe;
-	u32 val, base, offset;
-	int fourcc, pixel_format;
-	unsigned int aligned_height;
-	struct drm_framebuffer *fb;
-	struct intel_framebuffer *intel_fb;
-
-	if (!plane->get_hw_state(plane, &pipe))
-		return;
-
-	drm_WARN_ON(dev, pipe != crtc->pipe);
-
-	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
-	if (!intel_fb) {
-		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
-		return;
-	}
-
-	fb = &intel_fb->base;
-
-	fb->dev = dev;
-
-	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
-
-	if (INTEL_GEN(dev_priv) >= 4) {
-		if (val & DISPPLANE_TILED) {
-			plane_config->tiling = I915_TILING_X;
-			fb->modifier = I915_FORMAT_MOD_X_TILED;
-		}
-
-		if (val & DISPPLANE_ROTATE_180)
-			plane_config->rotation = DRM_MODE_ROTATE_180;
-	}
-
-	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B &&
-	    val & DISPPLANE_MIRROR)
-		plane_config->rotation |= DRM_MODE_REFLECT_X;
-
-	pixel_format = val & DISPPLANE_PIXFORMAT_MASK;
-	fourcc = i9xx_format_to_fourcc(pixel_format);
-	fb->format = drm_format_info(fourcc);
-
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
-		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
-	} else if (INTEL_GEN(dev_priv) >= 4) {
-		if (plane_config->tiling)
-			offset = intel_de_read(dev_priv,
-					       DSPTILEOFF(i9xx_plane));
-		else
-			offset = intel_de_read(dev_priv,
-					       DSPLINOFF(i9xx_plane));
-		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
-	} else {
-		base = intel_de_read(dev_priv, DSPADDR(i9xx_plane));
-	}
-	plane_config->base = base;
-
-	val = intel_de_read(dev_priv, PIPESRC(pipe));
-	fb->width = ((val >> 16) & 0xfff) + 1;
-	fb->height = ((val >> 0) & 0xfff) + 1;
-
-	val = intel_de_read(dev_priv, DSPSTRIDE(i9xx_plane));
-	fb->pitches[0] = val & 0xffffffc0;
-
-	aligned_height = intel_fb_align_height(fb, 0, fb->height);
-
-	plane_config->size = fb->pitches[0] * aligned_height;
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
-		    crtc->base.name, plane->base.name, fb->width, fb->height,
-		    fb->format->cpp[0] * 8, base, fb->pitches[0],
-		    plane_config->size);
-
-	plane_config->fb = intel_fb;
-}
-
 static void chv_crtc_clock_get(struct intel_crtc *crtc,
 			       struct intel_crtc_state *pipe_config)
 {
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
