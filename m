Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670F04455A6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6CB389D86;
	Thu,  4 Nov 2021 14:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4C589D86
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:46:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="317919063"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="317919063"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:46:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="450222788"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 04 Nov 2021 07:46:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:46:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:18 +0200
Message-Id: <20211104144520.22605-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/17] drm/i915/fbc: s/dev_priv/i915/
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename 'dev_priv' to 'i915' to match modern style.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 526 +++++++++++------------
 1 file changed, 263 insertions(+), 263 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 888ee814e8bb..ea3968001c4b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -139,17 +139,17 @@ static unsigned int intel_fbc_cfb_stride(struct drm_i915_private *i915,
 		return stride;
 }
 
-static unsigned int intel_fbc_cfb_size(struct drm_i915_private *dev_priv,
+static unsigned int intel_fbc_cfb_size(struct drm_i915_private *i915,
 				       const struct intel_fbc_state_cache *cache)
 {
 	int lines = cache->plane.src_h;
 
-	if (DISPLAY_VER(dev_priv) == 7)
+	if (DISPLAY_VER(i915) == 7)
 		lines = min(lines, 2048);
-	else if (DISPLAY_VER(dev_priv) >= 8)
+	else if (DISPLAY_VER(i915) >= 8)
 		lines = min(lines, 2560);
 
-	return lines * intel_fbc_cfb_stride(dev_priv, cache);
+	return lines * intel_fbc_cfb_stride(i915, cache);
 }
 
 static u32 i8xx_fbc_ctl(struct drm_i915_private *i915)
@@ -194,50 +194,50 @@ static u32 i965_fbc_ctl2(struct drm_i915_private *i915)
 	return fbc_ctl2;
 }
 
-static void i8xx_fbc_deactivate(struct drm_i915_private *dev_priv)
+static void i8xx_fbc_deactivate(struct drm_i915_private *i915)
 {
 	u32 fbc_ctl;
 
 	/* Disable compression */
-	fbc_ctl = intel_de_read(dev_priv, FBC_CONTROL);
+	fbc_ctl = intel_de_read(i915, FBC_CONTROL);
 	if ((fbc_ctl & FBC_CTL_EN) == 0)
 		return;
 
 	fbc_ctl &= ~FBC_CTL_EN;
-	intel_de_write(dev_priv, FBC_CONTROL, fbc_ctl);
+	intel_de_write(i915, FBC_CONTROL, fbc_ctl);
 
 	/* Wait for compressing bit to clear */
-	if (intel_de_wait_for_clear(dev_priv, FBC_STATUS,
+	if (intel_de_wait_for_clear(i915, FBC_STATUS,
 				    FBC_STAT_COMPRESSING, 10)) {
-		drm_dbg_kms(&dev_priv->drm, "FBC idle timed out\n");
+		drm_dbg_kms(&i915->drm, "FBC idle timed out\n");
 		return;
 	}
 }
 
-static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
+static void i8xx_fbc_activate(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 	const struct intel_fbc_reg_params *params = &fbc->params;
 	int i;
 
 	/* Clear old tags */
 	for (i = 0; i < (FBC_LL_SIZE / 32) + 1; i++)
-		intel_de_write(dev_priv, FBC_TAG(i), 0);
+		intel_de_write(i915, FBC_TAG(i), 0);
 
-	if (DISPLAY_VER(dev_priv) == 4) {
-		intel_de_write(dev_priv, FBC_CONTROL2,
-			       i965_fbc_ctl2(dev_priv));
-		intel_de_write(dev_priv, FBC_FENCE_OFF,
+	if (DISPLAY_VER(i915) == 4) {
+		intel_de_write(i915, FBC_CONTROL2,
+			       i965_fbc_ctl2(i915));
+		intel_de_write(i915, FBC_FENCE_OFF,
 			       params->fence_y_offset);
 	}
 
-	intel_de_write(dev_priv, FBC_CONTROL,
-		       FBC_CTL_EN | i8xx_fbc_ctl(dev_priv));
+	intel_de_write(i915, FBC_CONTROL,
+		       FBC_CTL_EN | i8xx_fbc_ctl(i915));
 }
 
-static bool i8xx_fbc_is_active(struct drm_i915_private *dev_priv)
+static bool i8xx_fbc_is_active(struct drm_i915_private *i915)
 {
-	return intel_de_read(dev_priv, FBC_CONTROL) & FBC_CTL_EN;
+	return intel_de_read(i915, FBC_CONTROL) & FBC_CTL_EN;
 }
 
 static bool i8xx_fbc_is_compressing(struct drm_i915_private *i915)
@@ -337,32 +337,32 @@ static u32 g4x_dpfc_ctl(struct drm_i915_private *i915)
 	return dpfc_ctl;
 }
 
-static void g4x_fbc_activate(struct drm_i915_private *dev_priv)
+static void g4x_fbc_activate(struct drm_i915_private *i915)
 {
-	const struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
+	const struct intel_fbc_reg_params *params = &i915->fbc.params;
 
-	intel_de_write(dev_priv, DPFC_FENCE_YOFF,
+	intel_de_write(i915, DPFC_FENCE_YOFF,
 		       params->fence_y_offset);
 
-	intel_de_write(dev_priv, DPFC_CONTROL,
-		       DPFC_CTL_EN | g4x_dpfc_ctl(dev_priv));
+	intel_de_write(i915, DPFC_CONTROL,
+		       DPFC_CTL_EN | g4x_dpfc_ctl(i915));
 }
 
-static void g4x_fbc_deactivate(struct drm_i915_private *dev_priv)
+static void g4x_fbc_deactivate(struct drm_i915_private *i915)
 {
 	u32 dpfc_ctl;
 
 	/* Disable compression */
-	dpfc_ctl = intel_de_read(dev_priv, DPFC_CONTROL);
+	dpfc_ctl = intel_de_read(i915, DPFC_CONTROL);
 	if (dpfc_ctl & DPFC_CTL_EN) {
 		dpfc_ctl &= ~DPFC_CTL_EN;
-		intel_de_write(dev_priv, DPFC_CONTROL, dpfc_ctl);
+		intel_de_write(i915, DPFC_CONTROL, dpfc_ctl);
 	}
 }
 
-static bool g4x_fbc_is_active(struct drm_i915_private *dev_priv)
+static bool g4x_fbc_is_active(struct drm_i915_private *i915)
 {
-	return intel_de_read(dev_priv, DPFC_CONTROL) & DPFC_CTL_EN;
+	return intel_de_read(i915, DPFC_CONTROL) & DPFC_CTL_EN;
 }
 
 static bool g4x_fbc_is_compressing(struct drm_i915_private *i915)
@@ -386,32 +386,32 @@ static const struct intel_fbc_funcs g4x_fbc_funcs = {
 	.program_cfb = g4x_fbc_program_cfb,
 };
 
-static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
+static void ilk_fbc_activate(struct drm_i915_private *i915)
 {
-	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
+	struct intel_fbc_reg_params *params = &i915->fbc.params;
 
-	intel_de_write(dev_priv, ILK_DPFC_FENCE_YOFF,
+	intel_de_write(i915, ILK_DPFC_FENCE_YOFF,
 		       params->fence_y_offset);
 
-	intel_de_write(dev_priv, ILK_DPFC_CONTROL,
-		       DPFC_CTL_EN | g4x_dpfc_ctl(dev_priv));
+	intel_de_write(i915, ILK_DPFC_CONTROL,
+		       DPFC_CTL_EN | g4x_dpfc_ctl(i915));
 }
 
-static void ilk_fbc_deactivate(struct drm_i915_private *dev_priv)
+static void ilk_fbc_deactivate(struct drm_i915_private *i915)
 {
 	u32 dpfc_ctl;
 
 	/* Disable compression */
-	dpfc_ctl = intel_de_read(dev_priv, ILK_DPFC_CONTROL);
+	dpfc_ctl = intel_de_read(i915, ILK_DPFC_CONTROL);
 	if (dpfc_ctl & DPFC_CTL_EN) {
 		dpfc_ctl &= ~DPFC_CTL_EN;
-		intel_de_write(dev_priv, ILK_DPFC_CONTROL, dpfc_ctl);
+		intel_de_write(i915, ILK_DPFC_CONTROL, dpfc_ctl);
 	}
 }
 
-static bool ilk_fbc_is_active(struct drm_i915_private *dev_priv)
+static bool ilk_fbc_is_active(struct drm_i915_private *i915)
 {
-	return intel_de_read(dev_priv, ILK_DPFC_CONTROL) & DPFC_CTL_EN;
+	return intel_de_read(i915, ILK_DPFC_CONTROL) & DPFC_CTL_EN;
 }
 
 static bool ilk_fbc_is_compressing(struct drm_i915_private *i915)
@@ -447,17 +447,17 @@ static void snb_fbc_program_fence(struct drm_i915_private *i915)
 	intel_de_write(i915, SNB_DPFC_CPU_FENCE_OFFSET, params->fence_y_offset);
 }
 
-static void snb_fbc_activate(struct drm_i915_private *dev_priv)
+static void snb_fbc_activate(struct drm_i915_private *i915)
 {
-	snb_fbc_program_fence(dev_priv);
+	snb_fbc_program_fence(i915);
 
-	ilk_fbc_activate(dev_priv);
+	ilk_fbc_activate(i915);
 }
 
-static void snb_fbc_nuke(struct drm_i915_private *dev_priv)
+static void snb_fbc_nuke(struct drm_i915_private *i915)
 {
-	intel_de_write(dev_priv, MSG_FBC_REND_STATE, FBC_REND_NUKE);
-	intel_de_posting_read(dev_priv, MSG_FBC_REND_STATE);
+	intel_de_write(i915, MSG_FBC_REND_STATE, FBC_REND_NUKE);
+	intel_de_posting_read(i915, MSG_FBC_REND_STATE);
 }
 
 static const struct intel_fbc_funcs snb_fbc_funcs = {
@@ -517,18 +517,18 @@ static u32 ivb_dpfc_ctl(struct drm_i915_private *i915)
 	return dpfc_ctl;
 }
 
-static void ivb_fbc_activate(struct drm_i915_private *dev_priv)
+static void ivb_fbc_activate(struct drm_i915_private *i915)
 {
-	if (DISPLAY_VER(dev_priv) >= 10)
-		glk_fbc_program_cfb_stride(dev_priv);
-	else if (DISPLAY_VER(dev_priv) == 9)
-		skl_fbc_program_cfb_stride(dev_priv);
+	if (DISPLAY_VER(i915) >= 10)
+		glk_fbc_program_cfb_stride(i915);
+	else if (DISPLAY_VER(i915) == 9)
+		skl_fbc_program_cfb_stride(i915);
 
-	if (dev_priv->ggtt.num_fences)
-		snb_fbc_program_fence(dev_priv);
+	if (i915->ggtt.num_fences)
+		snb_fbc_program_fence(i915);
 
-	intel_de_write(dev_priv, ILK_DPFC_CONTROL,
-		       DPFC_CTL_EN | ivb_dpfc_ctl(dev_priv));
+	intel_de_write(i915, ILK_DPFC_CONTROL,
+		       DPFC_CTL_EN | ivb_dpfc_ctl(i915));
 }
 
 static bool ivb_fbc_is_compressing(struct drm_i915_private *i915)
@@ -553,34 +553,34 @@ static const struct intel_fbc_funcs ivb_fbc_funcs = {
 	.set_false_color = ivb_fbc_set_false_color,
 };
 
-static bool intel_fbc_hw_is_active(struct drm_i915_private *dev_priv)
+static bool intel_fbc_hw_is_active(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	return fbc->funcs->is_active(dev_priv);
+	return fbc->funcs->is_active(i915);
 }
 
-static void intel_fbc_hw_activate(struct drm_i915_private *dev_priv)
+static void intel_fbc_hw_activate(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
 	trace_intel_fbc_activate(fbc->crtc);
 
 	fbc->active = true;
 	fbc->activated = true;
 
-	fbc->funcs->activate(dev_priv);
+	fbc->funcs->activate(i915);
 }
 
-static void intel_fbc_hw_deactivate(struct drm_i915_private *dev_priv)
+static void intel_fbc_hw_deactivate(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
 	trace_intel_fbc_deactivate(fbc->crtc);
 
 	fbc->active = false;
 
-	fbc->funcs->deactivate(dev_priv);
+	fbc->funcs->deactivate(i915);
 }
 
 bool intel_fbc_is_compressing(struct drm_i915_private *i915)
@@ -619,33 +619,33 @@ int intel_fbc_set_false_color(struct drm_i915_private *i915, bool enable)
 
 /**
  * intel_fbc_is_active - Is FBC active?
- * @dev_priv: i915 device instance
+ * @i915: i915 device instance
  *
  * This function is used to verify the current state of FBC.
  *
  * FIXME: This should be tracked in the plane config eventually
  * instead of queried at runtime for most callers.
  */
-bool intel_fbc_is_active(struct drm_i915_private *dev_priv)
+bool intel_fbc_is_active(struct drm_i915_private *i915)
 {
-	return dev_priv->fbc.active;
+	return i915->fbc.active;
 }
 
-static void intel_fbc_activate(struct drm_i915_private *dev_priv)
+static void intel_fbc_activate(struct drm_i915_private *i915)
 {
-	intel_fbc_hw_activate(dev_priv);
-	intel_fbc_nuke(dev_priv);
+	intel_fbc_hw_activate(i915);
+	intel_fbc_nuke(i915);
 }
 
-static void intel_fbc_deactivate(struct drm_i915_private *dev_priv,
+static void intel_fbc_deactivate(struct drm_i915_private *i915,
 				 const char *reason)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
+	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
 
 	if (fbc->active)
-		intel_fbc_hw_deactivate(dev_priv);
+		intel_fbc_hw_deactivate(i915);
 
 	fbc->no_fbc_reason = reason;
 }
@@ -658,7 +658,7 @@ static u64 intel_fbc_cfb_base_max(struct drm_i915_private *i915)
 		return BIT_ULL(32);
 }
 
-static u64 intel_fbc_stolen_end(struct drm_i915_private *dev_priv)
+static u64 intel_fbc_stolen_end(struct drm_i915_private *i915)
 {
 	u64 end;
 
@@ -666,13 +666,13 @@ static u64 intel_fbc_stolen_end(struct drm_i915_private *dev_priv)
 	 * reserved range size, so it always assumes the maximum (8mb) is used.
 	 * If we enable FBC using a CFB on that memory range we'll get FIFO
 	 * underruns, even if that range is not reserved by the BIOS. */
-	if (IS_BROADWELL(dev_priv) || (DISPLAY_VER(dev_priv) == 9 &&
-				       !IS_BROXTON(dev_priv)))
-		end = resource_size(&dev_priv->dsm) - 8 * 1024 * 1024;
+	if (IS_BROADWELL(i915) ||
+	    (DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915)))
+		end = resource_size(&i915->dsm) - 8 * 1024 * 1024;
 	else
 		end = U64_MAX;
 
-	return min(end, intel_fbc_cfb_base_max(dev_priv));
+	return min(end, intel_fbc_cfb_base_max(i915));
 }
 
 static int intel_fbc_min_limit(int fb_cpp)
@@ -680,10 +680,10 @@ static int intel_fbc_min_limit(int fb_cpp)
 	return fb_cpp == 2 ? 2 : 1;
 }
 
-static int intel_fbc_max_limit(struct drm_i915_private *dev_priv)
+static int intel_fbc_max_limit(struct drm_i915_private *i915)
 {
 	/* WaFbcOnly1to1Ratio:ctg */
-	if (IS_G4X(dev_priv))
+	if (IS_G4X(i915))
 		return 1;
 
 	/*
@@ -693,23 +693,23 @@ static int intel_fbc_max_limit(struct drm_i915_private *dev_priv)
 	return 4;
 }
 
-static int find_compression_limit(struct drm_i915_private *dev_priv,
+static int find_compression_limit(struct drm_i915_private *i915,
 				  unsigned int size, int min_limit)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
-	u64 end = intel_fbc_stolen_end(dev_priv);
+	struct intel_fbc *fbc = &i915->fbc;
+	u64 end = intel_fbc_stolen_end(i915);
 	int ret, limit = min_limit;
 
 	size /= limit;
 
 	/* Try to over-allocate to reduce reallocations and fragmentation. */
-	ret = i915_gem_stolen_insert_node_in_range(dev_priv, &fbc->compressed_fb,
+	ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
 						   size <<= 1, 4096, 0, end);
 	if (ret == 0)
 		return limit;
 
-	for (; limit <= intel_fbc_max_limit(dev_priv); limit <<= 1) {
-		ret = i915_gem_stolen_insert_node_in_range(dev_priv, &fbc->compressed_fb,
+	for (; limit <= intel_fbc_max_limit(i915); limit <<= 1) {
+		ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
 							   size >>= 1, 4096, 0, end);
 		if (ret == 0)
 			return limit;
@@ -718,34 +718,34 @@ static int find_compression_limit(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
+static int intel_fbc_alloc_cfb(struct drm_i915_private *i915,
 			       unsigned int size, int min_limit)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 	int ret;
 
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(&i915->drm,
 		    drm_mm_node_allocated(&fbc->compressed_fb));
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(&i915->drm,
 		    drm_mm_node_allocated(&fbc->compressed_llb));
 
-	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv)) {
-		ret = i915_gem_stolen_insert_node(dev_priv, &fbc->compressed_llb,
+	if (DISPLAY_VER(i915) < 5 && !IS_G4X(i915)) {
+		ret = i915_gem_stolen_insert_node(i915, &fbc->compressed_llb,
 						  4096, 4096);
 		if (ret)
 			goto err;
 	}
 
-	ret = find_compression_limit(dev_priv, size, min_limit);
+	ret = find_compression_limit(i915, size, min_limit);
 	if (!ret)
 		goto err_llb;
 	else if (ret > min_limit)
-		drm_info_once(&dev_priv->drm,
+		drm_info_once(&i915->drm,
 			      "Reducing the compressed framebuffer size. This may lead to less power savings than a non-reduced-size. Try to increase stolen memory size if available in BIOS.\n");
 
 	fbc->limit = ret;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "reserved %llu bytes of contiguous stolen space for FBC, limit: %d\n",
 		    fbc->compressed_fb.size, fbc->limit);
 
@@ -753,64 +753,64 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 
 err_llb:
 	if (drm_mm_node_allocated(&fbc->compressed_llb))
-		i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_llb);
+		i915_gem_stolen_remove_node(i915, &fbc->compressed_llb);
 err:
-	if (drm_mm_initialized(&dev_priv->mm.stolen))
-		drm_info_once(&dev_priv->drm, "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
+	if (drm_mm_initialized(&i915->mm.stolen))
+		drm_info_once(&i915->drm, "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
 	return -ENOSPC;
 }
 
-static void intel_fbc_program_cfb(struct drm_i915_private *dev_priv)
+static void intel_fbc_program_cfb(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	fbc->funcs->program_cfb(dev_priv);
+	fbc->funcs->program_cfb(i915);
 }
 
-static void __intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
+static void __intel_fbc_cleanup_cfb(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	if (WARN_ON(intel_fbc_hw_is_active(dev_priv)))
+	if (WARN_ON(intel_fbc_hw_is_active(i915)))
 		return;
 
 	if (drm_mm_node_allocated(&fbc->compressed_llb))
-		i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_llb);
+		i915_gem_stolen_remove_node(i915, &fbc->compressed_llb);
 	if (drm_mm_node_allocated(&fbc->compressed_fb))
-		i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_fb);
+		i915_gem_stolen_remove_node(i915, &fbc->compressed_fb);
 }
 
-void intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
+void intel_fbc_cleanup_cfb(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	if (!HAS_FBC(dev_priv))
+	if (!HAS_FBC(i915))
 		return;
 
 	mutex_lock(&fbc->lock);
-	__intel_fbc_cleanup_cfb(dev_priv);
+	__intel_fbc_cleanup_cfb(i915);
 	mutex_unlock(&fbc->lock);
 }
 
-static bool stride_is_valid(struct drm_i915_private *dev_priv,
+static bool stride_is_valid(struct drm_i915_private *i915,
 			    u64 modifier, unsigned int stride)
 {
 	/* This should have been caught earlier. */
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, (stride & (64 - 1)) != 0))
+	if (drm_WARN_ON_ONCE(&i915->drm, (stride & (64 - 1)) != 0))
 		return false;
 
 	/* Below are the additional FBC restrictions. */
 	if (stride < 512)
 		return false;
 
-	if (DISPLAY_VER(dev_priv) == 2 || DISPLAY_VER(dev_priv) == 3)
+	if (DISPLAY_VER(i915) == 2 || DISPLAY_VER(i915) == 3)
 		return stride == 4096 || stride == 8192;
 
-	if (DISPLAY_VER(dev_priv) == 4 && !IS_G4X(dev_priv) && stride < 2048)
+	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) && stride < 2048)
 		return false;
 
 	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
-	if ((DISPLAY_VER(dev_priv) == 9 || IS_GEMINILAKE(dev_priv)) &&
+	if ((DISPLAY_VER(i915) == 9 || IS_GEMINILAKE(i915)) &&
 	    modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
 		return false;
 
@@ -820,7 +820,7 @@ static bool stride_is_valid(struct drm_i915_private *dev_priv,
 	return true;
 }
 
-static bool pixel_format_is_valid(struct drm_i915_private *dev_priv,
+static bool pixel_format_is_valid(struct drm_i915_private *i915,
 				  u32 pixel_format)
 {
 	switch (pixel_format) {
@@ -830,10 +830,10 @@ static bool pixel_format_is_valid(struct drm_i915_private *dev_priv,
 	case DRM_FORMAT_XRGB1555:
 	case DRM_FORMAT_RGB565:
 		/* 16bpp not supported on gen2 */
-		if (DISPLAY_VER(dev_priv) == 2)
+		if (DISPLAY_VER(i915) == 2)
 			return false;
 		/* WaFbcOnly1to1Ratio:ctg */
-		if (IS_G4X(dev_priv))
+		if (IS_G4X(i915))
 			return false;
 		return true;
 	default:
@@ -841,13 +841,13 @@ static bool pixel_format_is_valid(struct drm_i915_private *dev_priv,
 	}
 }
 
-static bool rotation_is_valid(struct drm_i915_private *dev_priv,
+static bool rotation_is_valid(struct drm_i915_private *i915,
 			      u32 pixel_format, unsigned int rotation)
 {
-	if (DISPLAY_VER(dev_priv) >= 9 && pixel_format == DRM_FORMAT_RGB565 &&
+	if (DISPLAY_VER(i915) >= 9 && pixel_format == DRM_FORMAT_RGB565 &&
 	    drm_rotation_90_or_270(rotation))
 		return false;
-	else if (DISPLAY_VER(dev_priv) <= 4 && !IS_G4X(dev_priv) &&
+	else if (DISPLAY_VER(i915) <= 4 && !IS_G4X(i915) &&
 		 rotation != DRM_MODE_ROTATE_0)
 		return false;
 
@@ -862,17 +862,17 @@ static bool rotation_is_valid(struct drm_i915_private *dev_priv,
  */
 static bool intel_fbc_hw_tracking_covers_screen(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_fbc *fbc = &i915->fbc;
 	unsigned int effective_w, effective_h, max_w, max_h;
 
-	if (DISPLAY_VER(dev_priv) >= 10) {
+	if (DISPLAY_VER(i915) >= 10) {
 		max_w = 5120;
 		max_h = 4096;
-	} else if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv)) {
+	} else if (DISPLAY_VER(i915) >= 8 || IS_HASWELL(i915)) {
 		max_w = 4096;
 		max_h = 4096;
-	} else if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5) {
+	} else if (IS_G4X(i915) || DISPLAY_VER(i915) >= 5) {
 		max_w = 4096;
 		max_h = 2048;
 	} else {
@@ -888,14 +888,14 @@ static bool intel_fbc_hw_tracking_covers_screen(struct intel_crtc *crtc)
 	return effective_w <= max_w && effective_h <= max_h;
 }
 
-static bool tiling_is_valid(struct drm_i915_private *dev_priv,
+static bool tiling_is_valid(struct drm_i915_private *i915,
 			    u64 modifier)
 {
 	switch (modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_Yf_TILED:
-		return DISPLAY_VER(dev_priv) >= 9;
+		return DISPLAY_VER(i915) >= 9;
 	case I915_FORMAT_MOD_X_TILED:
 		return true;
 	default:
@@ -907,8 +907,8 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 					 const struct intel_crtc_state *crtc_state,
 					 const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_fbc *fbc = &i915->fbc;
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 
@@ -917,7 +917,7 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 		return;
 
 	cache->crtc.mode_flags = crtc_state->hw.adjusted_mode.flags;
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
+	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
 		cache->crtc.hsw_bdw_pixel_rate = crtc_state->pixel_rate;
 
 	cache->plane.rotation = plane_state->hw.rotation;
@@ -942,7 +942,7 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 
 	cache->fence_y_offset = intel_plane_fence_y_offset(plane_state);
 
-	drm_WARN_ON(&dev_priv->drm, plane_state->flags & PLANE_HAS_FENCE &&
+	drm_WARN_ON(&i915->drm, plane_state->flags & PLANE_HAS_FENCE &&
 		    !plane_state->ggtt_vma->fence);
 
 	if (plane_state->flags & PLANE_HAS_FENCE &&
@@ -954,19 +954,19 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 	cache->psr2_active = crtc_state->has_psr2;
 }
 
-static bool intel_fbc_cfb_size_changed(struct drm_i915_private *dev_priv)
+static bool intel_fbc_cfb_size_changed(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	return intel_fbc_cfb_size(dev_priv, &fbc->state_cache) >
+	return intel_fbc_cfb_size(i915, &fbc->state_cache) >
 		fbc->compressed_fb.size * fbc->limit;
 }
 
-static u16 intel_fbc_override_cfb_stride(struct drm_i915_private *dev_priv,
+static u16 intel_fbc_override_cfb_stride(struct drm_i915_private *i915,
 					 const struct intel_fbc_state_cache *cache)
 {
 	unsigned int stride = _intel_fbc_cfb_stride(cache);
-	unsigned int stride_aligned = intel_fbc_cfb_stride(dev_priv, cache);
+	unsigned int stride_aligned = intel_fbc_cfb_stride(i915, cache);
 
 	/*
 	 * Override stride in 64 byte units per 4 line segment.
@@ -976,23 +976,23 @@ static u16 intel_fbc_override_cfb_stride(struct drm_i915_private *dev_priv,
 	 * we always need to use the override there.
 	 */
 	if (stride != stride_aligned ||
-	    (DISPLAY_VER(dev_priv) == 9 &&
+	    (DISPLAY_VER(i915) == 9 &&
 	     cache->fb.modifier == DRM_FORMAT_MOD_LINEAR))
 		return stride_aligned * 4 / 64;
 
 	return 0;
 }
 
-static bool intel_fbc_can_enable(struct drm_i915_private *dev_priv)
+static bool intel_fbc_can_enable(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	if (intel_vgpu_active(dev_priv)) {
+	if (intel_vgpu_active(i915)) {
 		fbc->no_fbc_reason = "VGPU is active";
 		return false;
 	}
 
-	if (!dev_priv->params.enable_fbc) {
+	if (!i915->params.enable_fbc) {
 		fbc->no_fbc_reason = "disabled per module param or by default";
 		return false;
 	}
@@ -1007,11 +1007,11 @@ static bool intel_fbc_can_enable(struct drm_i915_private *dev_priv)
 
 static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_fbc *fbc = &i915->fbc;
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
 
-	if (!intel_fbc_can_enable(dev_priv))
+	if (!intel_fbc_can_enable(i915))
 		return false;
 
 	if (!cache->plane.visible) {
@@ -1054,28 +1054,28 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	 * For now this will effectively disable FBC with 90/270 degree
 	 * rotation.
 	 */
-	if (DISPLAY_VER(dev_priv) < 9 && cache->fence_id < 0) {
+	if (DISPLAY_VER(i915) < 9 && cache->fence_id < 0) {
 		fbc->no_fbc_reason = "framebuffer not tiled or fenced";
 		return false;
 	}
 
-	if (!pixel_format_is_valid(dev_priv, cache->fb.format->format)) {
+	if (!pixel_format_is_valid(i915, cache->fb.format->format)) {
 		fbc->no_fbc_reason = "pixel format is invalid";
 		return false;
 	}
 
-	if (!rotation_is_valid(dev_priv, cache->fb.format->format,
+	if (!rotation_is_valid(i915, cache->fb.format->format,
 			       cache->plane.rotation)) {
 		fbc->no_fbc_reason = "rotation unsupported";
 		return false;
 	}
 
-	if (!tiling_is_valid(dev_priv, cache->fb.modifier)) {
+	if (!tiling_is_valid(i915, cache->fb.modifier)) {
 		fbc->no_fbc_reason = "tiling unsupported";
 		return false;
 	}
 
-	if (!stride_is_valid(dev_priv, cache->fb.modifier,
+	if (!stride_is_valid(i915, cache->fb.modifier,
 			     cache->fb.stride * cache->fb.format->cpp[0])) {
 		fbc->no_fbc_reason = "framebuffer stride not supported";
 		return false;
@@ -1088,8 +1088,8 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	}
 
 	/* WaFbcExceedCdClockThreshold:hsw,bdw */
-	if ((IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) &&
-	    cache->crtc.hsw_bdw_pixel_rate >= dev_priv->cdclk.hw.cdclk * 95 / 100) {
+	if ((IS_HASWELL(i915) || IS_BROADWELL(i915)) &&
+	    cache->crtc.hsw_bdw_pixel_rate >= i915->cdclk.hw.cdclk * 95 / 100) {
 		fbc->no_fbc_reason = "pixel rate is too big";
 		return false;
 	}
@@ -1104,7 +1104,7 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	 * we didn't get any invalidate/deactivate calls, but this would require
 	 * a lot of tracking just for a specific case. If we conclude it's an
 	 * important case, we can implement it later. */
-	if (intel_fbc_cfb_size_changed(dev_priv)) {
+	if (intel_fbc_cfb_size_changed(i915)) {
 		fbc->no_fbc_reason = "CFB requirements changed";
 		return false;
 	}
@@ -1114,14 +1114,14 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
 	 * and screen flicker.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 9 &&
+	if (DISPLAY_VER(i915) >= 9 &&
 	    (fbc->state_cache.plane.adjusted_y & 3)) {
 		fbc->no_fbc_reason = "plane Y offset is misaligned";
 		return false;
 	}
 
 	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
-	if (DISPLAY_VER(dev_priv) >= 11 &&
+	if (DISPLAY_VER(i915) >= 11 &&
 	    (cache->plane.src_h + cache->plane.adjusted_y) % 4) {
 		fbc->no_fbc_reason = "plane height + offset is non-modulo of 4";
 		return false;
@@ -1132,7 +1132,7 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 */
-	if (fbc->state_cache.psr2_active && DISPLAY_VER(dev_priv) >= 12) {
+	if (fbc->state_cache.psr2_active && DISPLAY_VER(i915) >= 12) {
 		fbc->no_fbc_reason = "not supported with PSR2";
 		return false;
 	}
@@ -1143,8 +1143,8 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 static void intel_fbc_get_reg_params(struct intel_crtc *crtc,
 				     struct intel_fbc_reg_params *params)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_fbc *fbc = &i915->fbc;
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
 
 	/* Since all our fields are integer types, use memset here so the
@@ -1164,9 +1164,9 @@ static void intel_fbc_get_reg_params(struct intel_crtc *crtc,
 	params->fb.modifier = cache->fb.modifier;
 	params->fb.stride = cache->fb.stride;
 
-	params->cfb_stride = intel_fbc_cfb_stride(dev_priv, cache);
-	params->cfb_size = intel_fbc_cfb_size(dev_priv, cache);
-	params->override_cfb_stride = intel_fbc_override_cfb_stride(dev_priv, cache);
+	params->cfb_stride = intel_fbc_cfb_stride(i915, cache);
+	params->cfb_size = intel_fbc_cfb_size(i915, cache);
+	params->override_cfb_stride = intel_fbc_override_cfb_stride(i915, cache);
 
 	params->plane_visible = cache->plane.visible;
 }
@@ -1174,8 +1174,8 @@ static void intel_fbc_get_reg_params(struct intel_crtc *crtc,
 static bool intel_fbc_can_flip_nuke(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct intel_fbc *fbc = &dev_priv->fbc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	const struct intel_fbc *fbc = &i915->fbc;
 	const struct intel_fbc_state_cache *cache = &fbc->state_cache;
 	const struct intel_fbc_reg_params *params = &fbc->params;
 
@@ -1197,13 +1197,13 @@ static bool intel_fbc_can_flip_nuke(const struct intel_crtc_state *crtc_state)
 	if (params->fb.stride != cache->fb.stride)
 		return false;
 
-	if (params->cfb_stride != intel_fbc_cfb_stride(dev_priv, cache))
+	if (params->cfb_stride != intel_fbc_cfb_stride(i915, cache))
 		return false;
 
-	if (params->cfb_size != intel_fbc_cfb_size(dev_priv, cache))
+	if (params->cfb_size != intel_fbc_cfb_size(i915, cache))
 		return false;
 
-	if (params->override_cfb_stride != intel_fbc_override_cfb_stride(dev_priv, cache))
+	if (params->override_cfb_stride != intel_fbc_override_cfb_stride(i915, cache))
 		return false;
 
 	return true;
@@ -1217,8 +1217,8 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_fbc *fbc = &i915->fbc;
 	const char *reason = "update pending";
 	bool need_vblank_wait = false;
 
@@ -1234,7 +1234,7 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 	fbc->flip_pending = true;
 
 	if (!intel_fbc_can_flip_nuke(crtc_state)) {
-		intel_fbc_deactivate(dev_priv, reason);
+		intel_fbc_deactivate(i915, reason);
 
 		/*
 		 * Display WA #1198: glk+
@@ -1250,7 +1250,7 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 		 * if at least one frame has already passed.
 		 */
 		if (fbc->activated &&
-		    DISPLAY_VER(dev_priv) >= 10)
+		    DISPLAY_VER(i915) >= 10)
 			need_vblank_wait = true;
 		fbc->activated = false;
 	}
@@ -1262,43 +1262,43 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 
 /**
  * __intel_fbc_disable - disable FBC
- * @dev_priv: i915 device instance
+ * @i915: i915 device instance
  *
  * This is the low level function that actually disables FBC. Callers should
  * grab the FBC lock.
  */
-static void __intel_fbc_disable(struct drm_i915_private *dev_priv)
+static void __intel_fbc_disable(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 	struct intel_crtc *crtc = fbc->crtc;
 
-	drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
-	drm_WARN_ON(&dev_priv->drm, !fbc->crtc);
-	drm_WARN_ON(&dev_priv->drm, fbc->active);
+	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
+	drm_WARN_ON(&i915->drm, !fbc->crtc);
+	drm_WARN_ON(&i915->drm, fbc->active);
 
-	drm_dbg_kms(&dev_priv->drm, "Disabling FBC on pipe %c\n",
+	drm_dbg_kms(&i915->drm, "Disabling FBC on pipe %c\n",
 		    pipe_name(crtc->pipe));
 
-	__intel_fbc_cleanup_cfb(dev_priv);
+	__intel_fbc_cleanup_cfb(i915);
 
 	fbc->crtc = NULL;
 }
 
 static void __intel_fbc_post_update(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_fbc *fbc = &i915->fbc;
 
-	drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
+	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
 
 	if (fbc->crtc != crtc)
 		return;
 
 	fbc->flip_pending = false;
 
-	if (!dev_priv->params.enable_fbc) {
-		intel_fbc_deactivate(dev_priv, "disabled at runtime per module param");
-		__intel_fbc_disable(dev_priv);
+	if (!i915->params.enable_fbc) {
+		intel_fbc_deactivate(i915, "disabled at runtime per module param");
+		__intel_fbc_disable(i915);
 
 		return;
 	}
@@ -1309,19 +1309,19 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
 		return;
 
 	if (!fbc->busy_bits)
-		intel_fbc_activate(dev_priv);
+		intel_fbc_activate(i915);
 	else
-		intel_fbc_deactivate(dev_priv, "frontbuffer write");
+		intel_fbc_deactivate(i915, "frontbuffer write");
 }
 
 void intel_fbc_post_update(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
 	if (!plane->has_fbc || !plane_state)
 		return;
@@ -1339,13 +1339,13 @@ static unsigned int intel_fbc_get_frontbuffer_bit(struct intel_fbc *fbc)
 		return fbc->possible_framebuffer_bits;
 }
 
-void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
+void intel_fbc_invalidate(struct drm_i915_private *i915,
 			  unsigned int frontbuffer_bits,
 			  enum fb_op_origin origin)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	if (!HAS_FBC(dev_priv))
+	if (!HAS_FBC(i915))
 		return;
 
 	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
@@ -1356,17 +1356,17 @@ void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
 	fbc->busy_bits |= intel_fbc_get_frontbuffer_bit(fbc) & frontbuffer_bits;
 
 	if (fbc->crtc && fbc->busy_bits)
-		intel_fbc_deactivate(dev_priv, "frontbuffer write");
+		intel_fbc_deactivate(i915, "frontbuffer write");
 
 	mutex_unlock(&fbc->lock);
 }
 
-void intel_fbc_flush(struct drm_i915_private *dev_priv,
+void intel_fbc_flush(struct drm_i915_private *i915,
 		     unsigned int frontbuffer_bits, enum fb_op_origin origin)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	if (!HAS_FBC(dev_priv))
+	if (!HAS_FBC(i915))
 		return;
 
 	mutex_lock(&fbc->lock);
@@ -1379,7 +1379,7 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
 	if (!fbc->busy_bits && fbc->crtc &&
 	    (frontbuffer_bits & intel_fbc_get_frontbuffer_bit(fbc))) {
 		if (fbc->active)
-			intel_fbc_nuke(dev_priv);
+			intel_fbc_nuke(i915);
 		else if (!fbc->flip_pending)
 			__intel_fbc_post_update(fbc->crtc);
 	}
@@ -1390,7 +1390,7 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
 
 /**
  * intel_fbc_choose_crtc - select a CRTC to enable FBC on
- * @dev_priv: i915 device instance
+ * @i915: i915 device instance
  * @state: the atomic state structure
  *
  * This function looks at the proposed state for CRTCs and planes, then chooses
@@ -1398,12 +1398,12 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
  * true.
  *
  * Later, intel_fbc_enable is going to look for state->enable_fbc and then maybe
- * enable FBC for the chosen CRTC. If it does, it will set dev_priv->fbc.crtc.
+ * enable FBC for the chosen CRTC. If it does, it will set i915->fbc.crtc.
  */
-void intel_fbc_choose_crtc(struct drm_i915_private *dev_priv,
+void intel_fbc_choose_crtc(struct drm_i915_private *i915,
 			   struct intel_atomic_state *state)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 	struct intel_plane *plane;
 	struct intel_plane_state *plane_state;
 	bool crtc_chosen = false;
@@ -1416,7 +1416,7 @@ void intel_fbc_choose_crtc(struct drm_i915_private *dev_priv,
 	    !intel_atomic_get_new_crtc_state(state, fbc->crtc))
 		goto out;
 
-	if (!intel_fbc_can_enable(dev_priv))
+	if (!intel_fbc_can_enable(i915))
 		goto out;
 
 	/* Simply choose the first CRTC that is compatible and has a visible
@@ -1460,13 +1460,13 @@ void intel_fbc_choose_crtc(struct drm_i915_private *dev_priv,
 static void intel_fbc_enable(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
 	int min_limit;
 
@@ -1483,13 +1483,13 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 			goto out;
 
 		if (fbc->limit >= min_limit &&
-		    !intel_fbc_cfb_size_changed(dev_priv))
+		    !intel_fbc_cfb_size_changed(i915))
 			goto out;
 
-		__intel_fbc_disable(dev_priv);
+		__intel_fbc_disable(i915);
 	}
 
-	drm_WARN_ON(&dev_priv->drm, fbc->active);
+	drm_WARN_ON(&i915->drm, fbc->active);
 
 	intel_fbc_update_state_cache(crtc, crtc_state, plane_state);
 
@@ -1497,20 +1497,20 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 	if (!cache->plane.visible)
 		goto out;
 
-	if (intel_fbc_alloc_cfb(dev_priv,
-				intel_fbc_cfb_size(dev_priv, cache), min_limit)) {
+	if (intel_fbc_alloc_cfb(i915,
+				intel_fbc_cfb_size(i915, cache), min_limit)) {
 		cache->plane.visible = false;
 		fbc->no_fbc_reason = "not enough stolen memory";
 		goto out;
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "Enabling FBC on pipe %c\n",
+	drm_dbg_kms(&i915->drm, "Enabling FBC on pipe %c\n",
 		    pipe_name(crtc->pipe));
 	fbc->no_fbc_reason = "FBC enabled but not active yet\n";
 
 	fbc->crtc = crtc;
 
-	intel_fbc_program_cfb(dev_priv);
+	intel_fbc_program_cfb(i915);
 out:
 	mutex_unlock(&fbc->lock);
 }
@@ -1523,16 +1523,16 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
  */
 void intel_fbc_disable(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
 	if (!plane->has_fbc)
 		return;
 
 	mutex_lock(&fbc->lock);
 	if (fbc->crtc == crtc)
-		__intel_fbc_disable(dev_priv);
+		__intel_fbc_disable(i915);
 	mutex_unlock(&fbc->lock);
 }
 
@@ -1560,30 +1560,30 @@ void intel_fbc_update(struct intel_atomic_state *state,
 
 /**
  * intel_fbc_global_disable - globally disable FBC
- * @dev_priv: i915 device instance
+ * @i915: i915 device instance
  *
  * This function disables FBC regardless of which CRTC is associated with it.
  */
-void intel_fbc_global_disable(struct drm_i915_private *dev_priv)
+void intel_fbc_global_disable(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	if (!HAS_FBC(dev_priv))
+	if (!HAS_FBC(i915))
 		return;
 
 	mutex_lock(&fbc->lock);
 	if (fbc->crtc) {
-		drm_WARN_ON(&dev_priv->drm, fbc->crtc->active);
-		__intel_fbc_disable(dev_priv);
+		drm_WARN_ON(&i915->drm, fbc->crtc->active);
+		__intel_fbc_disable(i915);
 	}
 	mutex_unlock(&fbc->lock);
 }
 
 static void intel_fbc_underrun_work_fn(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv =
+	struct drm_i915_private *i915 =
 		container_of(work, struct drm_i915_private, fbc.underrun_work);
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
 	mutex_lock(&fbc->lock);
 
@@ -1591,46 +1591,46 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 	if (fbc->underrun_detected || !fbc->crtc)
 		goto out;
 
-	drm_dbg_kms(&dev_priv->drm, "Disabling FBC due to FIFO underrun.\n");
+	drm_dbg_kms(&i915->drm, "Disabling FBC due to FIFO underrun.\n");
 	fbc->underrun_detected = true;
 
-	intel_fbc_deactivate(dev_priv, "FIFO underrun");
+	intel_fbc_deactivate(i915, "FIFO underrun");
 out:
 	mutex_unlock(&fbc->lock);
 }
 
 /*
  * intel_fbc_reset_underrun - reset FBC fifo underrun status.
- * @dev_priv: i915 device instance
+ * @i915: i915 device instance
  *
  * See intel_fbc_handle_fifo_underrun_irq(). For automated testing we
  * want to re-enable FBC after an underrun to increase test coverage.
  */
-int intel_fbc_reset_underrun(struct drm_i915_private *dev_priv)
+int intel_fbc_reset_underrun(struct drm_i915_private *i915)
 {
 	int ret;
 
-	cancel_work_sync(&dev_priv->fbc.underrun_work);
+	cancel_work_sync(&i915->fbc.underrun_work);
 
-	ret = mutex_lock_interruptible(&dev_priv->fbc.lock);
+	ret = mutex_lock_interruptible(&i915->fbc.lock);
 	if (ret)
 		return ret;
 
-	if (dev_priv->fbc.underrun_detected) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (i915->fbc.underrun_detected) {
+		drm_dbg_kms(&i915->drm,
 			    "Re-allowing FBC after fifo underrun\n");
-		dev_priv->fbc.no_fbc_reason = "FIFO underrun cleared";
+		i915->fbc.no_fbc_reason = "FIFO underrun cleared";
 	}
 
-	dev_priv->fbc.underrun_detected = false;
-	mutex_unlock(&dev_priv->fbc.lock);
+	i915->fbc.underrun_detected = false;
+	mutex_unlock(&i915->fbc.lock);
 
 	return 0;
 }
 
 /**
  * intel_fbc_handle_fifo_underrun_irq - disable FBC when we get a FIFO underrun
- * @dev_priv: i915 device instance
+ * @i915: i915 device instance
  *
  * Without FBC, most underruns are harmless and don't really cause too many
  * problems, except for an annoying message on dmesg. With FBC, underruns can
@@ -1642,11 +1642,11 @@ int intel_fbc_reset_underrun(struct drm_i915_private *dev_priv)
  *
  * This function is called from the IRQ handler.
  */
-void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *dev_priv)
+void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
-	if (!HAS_FBC(dev_priv))
+	if (!HAS_FBC(i915))
 		return;
 
 	/* There's no guarantee that underrun_detected won't be set to true
@@ -1670,26 +1670,26 @@ void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *dev_priv)
  * space to change the value during runtime without sanitizing it again. IGT
  * relies on being able to change i915.enable_fbc at runtime.
  */
-static int intel_sanitize_fbc_option(struct drm_i915_private *dev_priv)
+static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
 {
-	if (dev_priv->params.enable_fbc >= 0)
-		return !!dev_priv->params.enable_fbc;
+	if (i915->params.enable_fbc >= 0)
+		return !!i915->params.enable_fbc;
 
-	if (!HAS_FBC(dev_priv))
+	if (!HAS_FBC(i915))
 		return 0;
 
-	if (IS_BROADWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 9)
+	if (IS_BROADWELL(i915) || DISPLAY_VER(i915) >= 9)
 		return 1;
 
 	return 0;
 }
 
-static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
+static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
 {
 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
 	if (intel_vtd_active() &&
-	    (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))) {
-		drm_info(&dev_priv->drm,
+	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
+		drm_info(&i915->drm,
 			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
 		return true;
 	}
@@ -1699,42 +1699,42 @@ static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
 
 /**
  * intel_fbc_init - Initialize FBC
- * @dev_priv: the i915 device
+ * @i915: the i915 device
  *
  * This function might be called during PM init process.
  */
-void intel_fbc_init(struct drm_i915_private *dev_priv)
+void intel_fbc_init(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 
 	INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
 	mutex_init(&fbc->lock);
 	fbc->active = false;
 
-	if (!drm_mm_initialized(&dev_priv->mm.stolen))
-		mkwrite_device_info(dev_priv)->display.has_fbc = false;
+	if (!drm_mm_initialized(&i915->mm.stolen))
+		mkwrite_device_info(i915)->display.has_fbc = false;
 
-	if (need_fbc_vtd_wa(dev_priv))
-		mkwrite_device_info(dev_priv)->display.has_fbc = false;
+	if (need_fbc_vtd_wa(i915))
+		mkwrite_device_info(i915)->display.has_fbc = false;
 
-	dev_priv->params.enable_fbc = intel_sanitize_fbc_option(dev_priv);
-	drm_dbg_kms(&dev_priv->drm, "Sanitized enable_fbc value: %d\n",
-		    dev_priv->params.enable_fbc);
+	i915->params.enable_fbc = intel_sanitize_fbc_option(i915);
+	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
+		    i915->params.enable_fbc);
 
-	if (!HAS_FBC(dev_priv)) {
+	if (!HAS_FBC(i915)) {
 		fbc->no_fbc_reason = "unsupported by this chipset";
 		return;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 7)
+	if (DISPLAY_VER(i915) >= 7)
 		fbc->funcs = &ivb_fbc_funcs;
-	else if (DISPLAY_VER(dev_priv) == 6)
+	else if (DISPLAY_VER(i915) == 6)
 		fbc->funcs = &snb_fbc_funcs;
-	else if (DISPLAY_VER(dev_priv) == 5)
+	else if (DISPLAY_VER(i915) == 5)
 		fbc->funcs = &ilk_fbc_funcs;
-	else if (IS_G4X(dev_priv))
+	else if (IS_G4X(i915))
 		fbc->funcs = &g4x_fbc_funcs;
-	else if (DISPLAY_VER(dev_priv) == 4)
+	else if (DISPLAY_VER(i915) == 4)
 		fbc->funcs = &i965_fbc_funcs;
 	else
 		fbc->funcs = &i8xx_fbc_funcs;
@@ -1742,6 +1742,6 @@ void intel_fbc_init(struct drm_i915_private *dev_priv)
 	/* We still don't have any sort of hardware state readout for FBC, so
 	 * deactivate it in case the BIOS activated it to make sure software
 	 * matches the hardware state. */
-	if (intel_fbc_hw_is_active(dev_priv))
-		intel_fbc_hw_deactivate(dev_priv);
+	if (intel_fbc_hw_is_active(i915))
+		intel_fbc_hw_deactivate(i915);
 }
-- 
2.32.0

