Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D969D3982
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 12:30:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1318A10E712;
	Wed, 20 Nov 2024 11:30:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nGNRPoz/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F40FB10E711;
 Wed, 20 Nov 2024 11:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732102245; x=1763638245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TE3llptiHiKBTIbQ6unzrdYrs2/R70+jylAz6W/kzHo=;
 b=nGNRPoz//DRQjZTtg2nggYAi1v+ZpTi4VlO2cwWxyIZLzpInzBIi6e7E
 rH6rl5zqwh9FqT2Sg+CAXZQ89vbl/zhf8TNih0uOB3QlkMNhrxxbRt0Uf
 OrfGCyRBRbZFs4kfTTTslzfMPQofBSXJoxozVMAbc+G60ZeFLB27iBM7T
 5Ls+dtP6VWPxt5LOQIMt+P6Ko81mA7hwGrbuZoME51UrTY+I4i5/l7cuz
 tNFZaCaqwgoeItfNus13N7WQF38eqh/2Ud/h7NfNpweQritQ+MToM3v+D
 wCKvLKBJhhW3+2CMQ0o1xD4XA9EGtgh9dpbkhTW/5QFIKVAuBzmo7laPd g==;
X-CSE-ConnectionGUID: 3n8x5hMeT6qhci3mxWxLCA==
X-CSE-MsgGUID: fKaW2fMoSpOPmQlbeaewJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32266635"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32266635"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:30:44 -0800
X-CSE-ConnectionGUID: 0Eth08uYRNGE9eUOFRHhjQ==
X-CSE-MsgGUID: NUnN+sFhTl2UgxRmG2NjVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94951483"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:30:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 1/5] drm/i915/overlay: convert to struct intel_display
Date: Wed, 20 Nov 2024 13:30:29 +0200
Message-Id: <3680586c05e82fd01d173cfb4f8df015d6db663c.1732102179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732102179.git.jani.nikula@intel.com>
References: <cover.1732102179.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

struct intel_display replaces struct drm_i915_private as the main
display device pointer. Convert overlay to it, as much as possible.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  | 179 +++++++++---------
 drivers/gpu/drm/i915/display/intel_overlay.h  |  14 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   3 +-
 4 files changed, 102 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 06a60be649ee..50b93ce11b78 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -518,7 +518,7 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
 	if (ret)
 		drm_dbg_kms(&i915->drm, "Initial modeset failed, %d\n", ret);
 
-	intel_overlay_setup(i915);
+	intel_overlay_setup(display);
 
 	/* Only enable hotplug handling once the fbdev is fully set up. */
 	intel_hpd_init(i915);
@@ -607,7 +607,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 
 	intel_dp_tunnel_mgr_cleanup(display);
 
-	intel_overlay_cleanup(i915);
+	intel_overlay_cleanup(display);
 
 	intel_gmbus_teardown(display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 2ec14096ba9c..57eaf81651c4 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -183,7 +183,7 @@ struct overlay_registers {
 };
 
 struct intel_overlay {
-	struct drm_i915_private *i915;
+	struct intel_display *display;
 	struct intel_context *context;
 	struct intel_crtc *crtc;
 	struct i915_vma *vma;
@@ -205,17 +205,17 @@ struct intel_overlay {
 	void (*flip_complete)(struct intel_overlay *ovl);
 };
 
-static void i830_overlay_clock_gating(struct drm_i915_private *dev_priv,
+static void i830_overlay_clock_gating(struct intel_display *display,
 				      bool enable)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	u8 val;
 
 	/* WA_OVERLAY_CLKGATE:alm */
 	if (enable)
-		intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), 0);
+		intel_de_write(display, DSPCLK_GATE_D(display), 0);
 	else
-		intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv),
+		intel_de_write(display, DSPCLK_GATE_D(display),
 			       OVRUNIT_CLOCK_GATE_DISABLE);
 
 	/* WA_DISABLE_L2CACHE_CLOCK_GATING:alm */
@@ -253,11 +253,11 @@ alloc_request(struct intel_overlay *overlay, void (*fn)(struct intel_overlay *))
 /* overlay needs to be disable in OCMD reg */
 static int intel_overlay_on(struct intel_overlay *overlay)
 {
-	struct drm_i915_private *dev_priv = overlay->i915;
+	struct intel_display *display = overlay->display;
 	struct i915_request *rq;
 	u32 *cs;
 
-	drm_WARN_ON(&dev_priv->drm, overlay->active);
+	drm_WARN_ON(display->drm, overlay->active);
 
 	rq = alloc_request(overlay, NULL);
 	if (IS_ERR(rq))
@@ -271,8 +271,8 @@ static int intel_overlay_on(struct intel_overlay *overlay)
 
 	overlay->active = true;
 
-	if (IS_I830(dev_priv))
-		i830_overlay_clock_gating(dev_priv, false);
+	if (display->platform.i830)
+		i830_overlay_clock_gating(display, false);
 
 	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_ON;
 	*cs++ = overlay->flip_addr | OFC_UPDATE;
@@ -288,10 +288,12 @@ static int intel_overlay_on(struct intel_overlay *overlay)
 static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
 				       struct i915_vma *vma)
 {
+	struct intel_display *display = overlay->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum pipe pipe = overlay->crtc->pipe;
 	struct intel_frontbuffer *frontbuffer = NULL;
 
-	drm_WARN_ON(&overlay->i915->drm, overlay->old_vma);
+	drm_WARN_ON(display->drm, overlay->old_vma);
 
 	if (vma)
 		frontbuffer = intel_frontbuffer_get(intel_bo_to_drm_bo(vma->obj));
@@ -303,8 +305,7 @@ static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
 		intel_frontbuffer_put(overlay->frontbuffer);
 	overlay->frontbuffer = frontbuffer;
 
-	intel_frontbuffer_flip_prepare(overlay->i915,
-				       INTEL_FRONTBUFFER_OVERLAY(pipe));
+	intel_frontbuffer_flip_prepare(i915, INTEL_FRONTBUFFER_OVERLAY(pipe));
 
 	overlay->old_vma = overlay->vma;
 	if (vma)
@@ -318,20 +319,20 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
 				  struct i915_vma *vma,
 				  bool load_polyphase_filter)
 {
-	struct drm_i915_private *dev_priv = overlay->i915;
+	struct intel_display *display = overlay->display;
 	struct i915_request *rq;
 	u32 flip_addr = overlay->flip_addr;
 	u32 tmp, *cs;
 
-	drm_WARN_ON(&dev_priv->drm, !overlay->active);
+	drm_WARN_ON(display->drm, !overlay->active);
 
 	if (load_polyphase_filter)
 		flip_addr |= OFC_UPDATE;
 
 	/* check for underruns */
-	tmp = intel_de_read(dev_priv, DOVSTA);
+	tmp = intel_de_read(display, DOVSTA);
 	if (tmp & (1 << 17))
-		drm_dbg(&dev_priv->drm, "overlay underrun, DOVSTA: %x\n", tmp);
+		drm_dbg(display->drm, "overlay underrun, DOVSTA: %x\n", tmp);
 
 	rq = alloc_request(overlay, NULL);
 	if (IS_ERR(rq))
@@ -355,14 +356,15 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
 
 static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
 {
+	struct intel_display *display = overlay->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_vma *vma;
 
 	vma = fetch_and_zero(&overlay->old_vma);
-	if (drm_WARN_ON(&overlay->i915->drm, !vma))
+	if (drm_WARN_ON(display->drm, !vma))
 		return;
 
-	intel_frontbuffer_flip_complete(overlay->i915,
-					INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
+	intel_frontbuffer_flip_complete(i915, INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
 
 	i915_vma_unpin(vma);
 	i915_vma_put(vma);
@@ -376,7 +378,7 @@ intel_overlay_release_old_vid_tail(struct intel_overlay *overlay)
 
 static void intel_overlay_off_tail(struct intel_overlay *overlay)
 {
-	struct drm_i915_private *dev_priv = overlay->i915;
+	struct intel_display *display = overlay->display;
 
 	intel_overlay_release_old_vma(overlay);
 
@@ -384,8 +386,8 @@ static void intel_overlay_off_tail(struct intel_overlay *overlay)
 	overlay->crtc = NULL;
 	overlay->active = false;
 
-	if (IS_I830(dev_priv))
-		i830_overlay_clock_gating(dev_priv, true);
+	if (display->platform.i830)
+		i830_overlay_clock_gating(display, true);
 }
 
 static void intel_overlay_last_flip_retire(struct i915_active *active)
@@ -400,10 +402,11 @@ static void intel_overlay_last_flip_retire(struct i915_active *active)
 /* overlay needs to be disabled in OCMD reg */
 static int intel_overlay_off(struct intel_overlay *overlay)
 {
+	struct intel_display *display = overlay->display;
 	struct i915_request *rq;
 	u32 *cs, flip_addr = overlay->flip_addr;
 
-	drm_WARN_ON(&overlay->i915->drm, !overlay->active);
+	drm_WARN_ON(display->drm, !overlay->active);
 
 	/* According to intel docs the overlay hw may hang (when switching
 	 * off) without loading the filter coeffs. It is however unclear whether
@@ -452,7 +455,7 @@ static int intel_overlay_recover_from_interrupt(struct intel_overlay *overlay)
  */
 static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
 {
-	struct drm_i915_private *dev_priv = overlay->i915;
+	struct intel_display *display = overlay->display;
 	struct i915_request *rq;
 	u32 *cs;
 
@@ -463,7 +466,7 @@ static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
 	if (!overlay->old_vma)
 		return 0;
 
-	if (!(intel_de_read(dev_priv, GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
+	if (!(intel_de_read(display, GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
 		intel_overlay_release_old_vid_tail(overlay);
 		return 0;
 	}
@@ -487,9 +490,9 @@ static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
 	return i915_active_wait(&overlay->last_flip);
 }
 
-void intel_overlay_reset(struct drm_i915_private *dev_priv)
+void intel_overlay_reset(struct intel_display *display)
 {
-	struct intel_overlay *overlay = dev_priv->display.overlay;
+	struct intel_overlay *overlay = display->overlay;
 
 	if (!overlay)
 		return;
@@ -550,11 +553,11 @@ static int uv_vsubsampling(u32 format)
 	}
 }
 
-static u32 calc_swidthsw(struct drm_i915_private *dev_priv, u32 offset, u32 width)
+static u32 calc_swidthsw(struct intel_display *display, u32 offset, u32 width)
 {
 	u32 sw;
 
-	if (DISPLAY_VER(dev_priv) == 2)
+	if (DISPLAY_VER(display) == 2)
 		sw = ALIGN((offset & 31) + width, 32);
 	else
 		sw = ALIGN((offset & 63) + width, 64);
@@ -789,16 +792,17 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 				      struct drm_i915_gem_object *new_bo,
 				      struct drm_intel_overlay_put_image *params)
 {
+	struct intel_display *display = overlay->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct overlay_registers __iomem *regs = overlay->regs;
-	struct drm_i915_private *dev_priv = overlay->i915;
 	u32 swidth, swidthsw, sheight, ostride;
 	enum pipe pipe = overlay->crtc->pipe;
 	bool scale_changed = false;
 	struct i915_vma *vma;
 	int ret, tmp_width;
 
-	drm_WARN_ON(&dev_priv->drm,
-		    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
+	drm_WARN_ON(display->drm,
+		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
 
 	ret = intel_overlay_release_old_vid(overlay);
 	if (ret != 0)
@@ -824,7 +828,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 			oconfig |= OCONF_CC_OUT_8BIT;
 		if (crtc_state->gamma_enable)
 			oconfig |= OCONF_GAMMA2_ENABLE;
-		if (DISPLAY_VER(dev_priv) == 4)
+		if (DISPLAY_VER(display) == 4)
 			oconfig |= OCONF_CSC_MODE_BT709;
 		oconfig |= pipe == 0 ?
 			OCONF_PIPE_A : OCONF_PIPE_B;
@@ -845,7 +849,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 		tmp_width = params->src_width;
 
 	swidth = params->src_width;
-	swidthsw = calc_swidthsw(dev_priv, params->offset_Y, tmp_width);
+	swidthsw = calc_swidthsw(display, params->offset_Y, tmp_width);
 	sheight = params->src_height;
 	iowrite32(i915_ggtt_offset(vma) + params->offset_Y, &regs->OBUF_0Y);
 	ostride = params->stride_Y;
@@ -858,9 +862,9 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 		swidth |= (params->src_width / uv_hscale) << 16;
 		sheight |= (params->src_height / uv_vscale) << 16;
 
-		tmp_U = calc_swidthsw(dev_priv, params->offset_U,
+		tmp_U = calc_swidthsw(display, params->offset_U,
 				      params->src_width / uv_hscale);
-		tmp_V = calc_swidthsw(dev_priv, params->offset_V,
+		tmp_V = calc_swidthsw(display, params->offset_V,
 				      params->src_width / uv_hscale);
 		swidthsw |= max(tmp_U, tmp_V) << 16;
 
@@ -899,11 +903,11 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 
 int intel_overlay_switch_off(struct intel_overlay *overlay)
 {
-	struct drm_i915_private *dev_priv = overlay->i915;
+	struct intel_display *display = overlay->display;
 	int ret;
 
-	drm_WARN_ON(&dev_priv->drm,
-		    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
+	drm_WARN_ON(display->drm,
+		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
 
 	ret = intel_overlay_recover_from_interrupt(overlay);
 	if (ret != 0)
@@ -936,26 +940,24 @@ static int check_overlay_possible_on_crtc(struct intel_overlay *overlay,
 
 static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 {
-	struct drm_i915_private *dev_priv = overlay->i915;
+	struct intel_display *display = overlay->display;
 	u32 ratio;
 
 	/* XXX: This is not the same logic as in the xorg driver, but more in
 	 * line with the intel documentation for the i965
 	 */
-	if (DISPLAY_VER(dev_priv) >= 4) {
-		u32 tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS(dev_priv));
+	if (DISPLAY_VER(display) >= 4) {
+		u32 tmp = intel_de_read(display, PFIT_PGM_RATIOS(display));
 
 		/* on i965 use the PGM reg to read out the autoscaler values */
 		ratio = REG_FIELD_GET(PFIT_VERT_SCALE_MASK_965, tmp);
 	} else {
 		u32 tmp;
 
-		if (intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_VERT_AUTO_SCALE)
-			tmp = intel_de_read(dev_priv,
-					    PFIT_AUTO_RATIOS(dev_priv));
+		if (intel_de_read(display, PFIT_CONTROL(display)) & PFIT_VERT_AUTO_SCALE)
+			tmp = intel_de_read(display, PFIT_AUTO_RATIOS(display));
 		else
-			tmp = intel_de_read(dev_priv,
-					    PFIT_PGM_RATIOS(dev_priv));
+			tmp = intel_de_read(display, PFIT_PGM_RATIOS(display));
 
 		ratio = REG_FIELD_GET(PFIT_VERT_SCALE_MASK, tmp);
 	}
@@ -1000,7 +1002,7 @@ static int check_overlay_scaling(struct drm_intel_overlay_put_image *rec)
 	return 0;
 }
 
-static int check_overlay_src(struct drm_i915_private *dev_priv,
+static int check_overlay_src(struct intel_display *display,
 			     struct drm_intel_overlay_put_image *rec,
 			     struct drm_i915_gem_object *new_bo)
 {
@@ -1011,7 +1013,7 @@ static int check_overlay_src(struct drm_i915_private *dev_priv,
 	u32 tmp;
 
 	/* check src dimensions */
-	if (IS_I845G(dev_priv) || IS_I830(dev_priv)) {
+	if (display->platform.i845g || display->platform.i830) {
 		if (rec->src_height > IMAGE_MAX_HEIGHT_LEGACY ||
 		    rec->src_width  > IMAGE_MAX_WIDTH_LEGACY)
 			return -EINVAL;
@@ -1063,14 +1065,14 @@ static int check_overlay_src(struct drm_i915_private *dev_priv,
 		return -EINVAL;
 
 	/* stride checking */
-	if (IS_I830(dev_priv) || IS_I845G(dev_priv))
+	if (display->platform.i830 || display->platform.i845g)
 		stride_mask = 255;
 	else
 		stride_mask = 63;
 
 	if (rec->stride_Y & stride_mask || rec->stride_UV & stride_mask)
 		return -EINVAL;
-	if (DISPLAY_VER(dev_priv) == 4 && rec->stride_Y < 512)
+	if (DISPLAY_VER(display) == 4 && rec->stride_Y < 512)
 		return -EINVAL;
 
 	tmp = (rec->flags & I915_OVERLAY_TYPE_MASK) == I915_OVERLAY_YUV_PLANAR ?
@@ -1114,17 +1116,17 @@ static int check_overlay_src(struct drm_i915_private *dev_priv,
 int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 				  struct drm_file *file_priv)
 {
+	struct intel_display *display = to_intel_display(dev);
 	struct drm_intel_overlay_put_image *params = data;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_overlay *overlay;
 	struct drm_crtc *drmmode_crtc;
 	struct intel_crtc *crtc;
 	struct drm_i915_gem_object *new_bo;
 	int ret;
 
-	overlay = dev_priv->display.overlay;
+	overlay = display->overlay;
 	if (!overlay) {
-		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
+		drm_dbg(display->drm, "userspace bug: no overlay\n");
 		return -ENODEV;
 	}
 
@@ -1148,7 +1150,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 	drm_modeset_lock_all(dev);
 
 	if (i915_gem_object_is_tiled(new_bo)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "buffer used for overlay image can not be tiled\n");
 		ret = -EINVAL;
 		goto out_unlock;
@@ -1197,7 +1199,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 		goto out_unlock;
 	}
 
-	ret = check_overlay_src(dev_priv, params, new_bo);
+	ret = check_overlay_src(display, params, new_bo);
 	if (ret != 0)
 		goto out_unlock;
 
@@ -1277,14 +1279,14 @@ static int check_gamma(struct drm_intel_overlay_attrs *attrs)
 int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 			      struct drm_file *file_priv)
 {
+	struct intel_display *display = to_intel_display(dev);
 	struct drm_intel_overlay_attrs *attrs = data;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_overlay *overlay;
 	int ret;
 
-	overlay = dev_priv->display.overlay;
+	overlay = display->overlay;
 	if (!overlay) {
-		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
+		drm_dbg(display->drm, "userspace bug: no overlay\n");
 		return -ENODEV;
 	}
 
@@ -1297,13 +1299,13 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 		attrs->contrast   = overlay->contrast;
 		attrs->saturation = overlay->saturation;
 
-		if (DISPLAY_VER(dev_priv) != 2) {
-			attrs->gamma0 = intel_de_read(dev_priv, OGAMC0);
-			attrs->gamma1 = intel_de_read(dev_priv, OGAMC1);
-			attrs->gamma2 = intel_de_read(dev_priv, OGAMC2);
-			attrs->gamma3 = intel_de_read(dev_priv, OGAMC3);
-			attrs->gamma4 = intel_de_read(dev_priv, OGAMC4);
-			attrs->gamma5 = intel_de_read(dev_priv, OGAMC5);
+		if (DISPLAY_VER(display) != 2) {
+			attrs->gamma0 = intel_de_read(display, OGAMC0);
+			attrs->gamma1 = intel_de_read(display, OGAMC1);
+			attrs->gamma2 = intel_de_read(display, OGAMC2);
+			attrs->gamma3 = intel_de_read(display, OGAMC3);
+			attrs->gamma4 = intel_de_read(display, OGAMC4);
+			attrs->gamma5 = intel_de_read(display, OGAMC5);
 		}
 	} else {
 		if (attrs->brightness < -128 || attrs->brightness > 127)
@@ -1321,7 +1323,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 		update_reg_attrs(overlay, overlay->regs);
 
 		if (attrs->flags & I915_OVERLAY_UPDATE_GAMMA) {
-			if (DISPLAY_VER(dev_priv) == 2)
+			if (DISPLAY_VER(display) == 2)
 				goto out_unlock;
 
 			if (overlay->active) {
@@ -1333,12 +1335,12 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 			if (ret)
 				goto out_unlock;
 
-			intel_de_write(dev_priv, OGAMC0, attrs->gamma0);
-			intel_de_write(dev_priv, OGAMC1, attrs->gamma1);
-			intel_de_write(dev_priv, OGAMC2, attrs->gamma2);
-			intel_de_write(dev_priv, OGAMC3, attrs->gamma3);
-			intel_de_write(dev_priv, OGAMC4, attrs->gamma4);
-			intel_de_write(dev_priv, OGAMC5, attrs->gamma5);
+			intel_de_write(display, OGAMC0, attrs->gamma0);
+			intel_de_write(display, OGAMC1, attrs->gamma1);
+			intel_de_write(display, OGAMC2, attrs->gamma2);
+			intel_de_write(display, OGAMC3, attrs->gamma3);
+			intel_de_write(display, OGAMC4, attrs->gamma4);
+			intel_de_write(display, OGAMC5, attrs->gamma5);
 		}
 	}
 	overlay->color_key_enabled = (attrs->flags & I915_OVERLAY_DISABLE_DEST_COLORKEY) == 0;
@@ -1352,12 +1354,13 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 
 static int get_registers(struct intel_overlay *overlay, bool use_phys)
 {
-	struct drm_i915_private *i915 = overlay->i915;
+	struct intel_display *display = overlay->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_i915_gem_object *obj = ERR_PTR(-ENODEV);
 	struct i915_vma *vma;
 	int err;
 
-	if (!IS_METEORLAKE(i915)) /* Wa_22018444074 */
+	if (!display->platform.meteorlake) /* Wa_22018444074 */
 		obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
@@ -1390,13 +1393,14 @@ static int get_registers(struct intel_overlay *overlay, bool use_phys)
 	return err;
 }
 
-void intel_overlay_setup(struct drm_i915_private *dev_priv)
+void intel_overlay_setup(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_overlay *overlay;
 	struct intel_engine_cs *engine;
 	int ret;
 
-	if (!HAS_OVERLAY(dev_priv))
+	if (!HAS_OVERLAY(display))
 		return;
 
 	engine = to_gt(dev_priv)->engine[RCS0];
@@ -1407,7 +1411,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
 	if (!overlay)
 		return;
 
-	overlay->i915 = dev_priv;
+	overlay->display = display;
 	overlay->context = engine->kernel_context;
 	overlay->color_key = 0x0101fe;
 	overlay->color_key_enabled = true;
@@ -1418,7 +1422,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
 	i915_active_init(&overlay->last_flip,
 			 NULL, intel_overlay_last_flip_retire, 0);
 
-	ret = get_registers(overlay, OVERLAY_NEEDS_PHYSICAL(dev_priv));
+	ret = get_registers(overlay, OVERLAY_NEEDS_PHYSICAL(display));
 	if (ret)
 		goto out_free;
 
@@ -1426,19 +1430,19 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
 	update_polyphase_filter(overlay->regs);
 	update_reg_attrs(overlay, overlay->regs);
 
-	dev_priv->display.overlay = overlay;
-	drm_info(&dev_priv->drm, "Initialized overlay support.\n");
+	display->overlay = overlay;
+	drm_info(display->drm, "Initialized overlay support.\n");
 	return;
 
 out_free:
 	kfree(overlay);
 }
 
-void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
+void intel_overlay_cleanup(struct intel_display *display)
 {
 	struct intel_overlay *overlay;
 
-	overlay = fetch_and_zero(&dev_priv->display.overlay);
+	overlay = fetch_and_zero(&display->overlay);
 	if (!overlay)
 		return;
 
@@ -1447,7 +1451,7 @@ void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
 	 * Furthermore modesetting teardown happens beforehand so the
 	 * hardware should be off already.
 	 */
-	drm_WARN_ON(&dev_priv->drm, overlay->active);
+	drm_WARN_ON(display->drm, overlay->active);
 
 	i915_gem_object_put(overlay->reg_bo);
 	i915_active_fini(&overlay->last_flip);
@@ -1467,8 +1471,7 @@ struct intel_overlay_snapshot {
 struct intel_overlay_snapshot *
 intel_overlay_snapshot_capture(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	struct intel_overlay *overlay = dev_priv->display.overlay;
+	struct intel_overlay *overlay = display->overlay;
 	struct intel_overlay_snapshot *error;
 
 	if (!overlay || !overlay->active)
@@ -1478,8 +1481,8 @@ intel_overlay_snapshot_capture(struct intel_display *display)
 	if (error == NULL)
 		return NULL;
 
-	error->dovsta = intel_de_read(dev_priv, DOVSTA);
-	error->isr = intel_de_read(dev_priv, GEN2_ISR);
+	error->dovsta = intel_de_read(display, DOVSTA);
+	error->isr = intel_de_read(display, GEN2_ISR);
 	error->base = overlay->flip_addr;
 
 	memcpy_fromio(&error->regs, overlay->regs, sizeof(error->regs));
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
index eafac24d1de8..dc885edf39e6 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.h
+++ b/drivers/gpu/drm/i915/display/intel_overlay.h
@@ -17,19 +17,19 @@ struct intel_overlay;
 struct intel_overlay_snapshot;
 
 #ifdef I915
-void intel_overlay_setup(struct drm_i915_private *dev_priv);
-void intel_overlay_cleanup(struct drm_i915_private *dev_priv);
+void intel_overlay_setup(struct intel_display *display);
+void intel_overlay_cleanup(struct intel_display *display);
 int intel_overlay_switch_off(struct intel_overlay *overlay);
 int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 				  struct drm_file *file_priv);
 int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 			      struct drm_file *file_priv);
-void intel_overlay_reset(struct drm_i915_private *dev_priv);
+void intel_overlay_reset(struct intel_display *display);
 #else
-static inline void intel_overlay_setup(struct drm_i915_private *dev_priv)
+static inline void intel_overlay_setup(struct intel_display *display)
 {
 }
-static inline void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
+static inline void intel_overlay_cleanup(struct intel_display *display)
 {
 }
 static inline int intel_overlay_switch_off(struct intel_overlay *overlay)
@@ -37,7 +37,7 @@ static inline int intel_overlay_switch_off(struct intel_overlay *overlay)
 	return 0;
 }
 static inline int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
-				  struct drm_file *file_priv)
+						struct drm_file *file_priv)
 {
 	return 0;
 }
@@ -46,7 +46,7 @@ static inline int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 {
 	return 0;
 }
-static inline void intel_overlay_reset(struct drm_i915_private *dev_priv)
+static inline void intel_overlay_reset(struct intel_display *display)
 {
 }
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index f42f21632306..c2fe3fc78e76 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1198,6 +1198,7 @@ void intel_gt_reset(struct intel_gt *gt,
 		    intel_engine_mask_t stalled_mask,
 		    const char *reason)
 {
+	struct intel_display *display = &gt->i915->display;
 	intel_engine_mask_t awake;
 	int ret;
 
@@ -1243,7 +1244,7 @@ void intel_gt_reset(struct intel_gt *gt,
 	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
 		intel_irq_resume(gt->i915);
 
-	intel_overlay_reset(gt->i915);
+	intel_overlay_reset(display);
 
 	/* sanitize uC after engine reset */
 	if (!intel_uc_uses_guc_submission(&gt->uc))
-- 
2.39.5

