Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A326F9E0489
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 15:14:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C60410E758;
	Mon,  2 Dec 2024 14:14:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I3HHeJzX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 954F210E757
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 14:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733148876; x=1764684876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/gHoN0RhmU/Pnw43d8fgkgveyIw9GyEyey2V2/TlP0A=;
 b=I3HHeJzXneLnY/1GU4oOTdB8OjBC0klyfE4N1MCveaAhKXj3hfk2yvzN
 TkI6anTG82dEmYholor51bAvukDoZF1XBfIzv5jXWDxUP6BGtrnxn0ltO
 pP4U5kCSgM8WnzS+P6Ko6EtCK6H+LC3Bbf2IAdQnQcnzlf/6ChqQ2bi5H
 cnVIITIN4ofSDXvfEGMli9R78pee4yaIeDVa/WfOjQc6KAUfr56SdFOL1
 H7h4FWehvupo6Nkj8/Et950JGpQJ3ksGtm8BKs6qbL/gSFc5u5N71yl9m
 GikasMASH8QMlGWNILiAI+R9sB3uLBswQkgcyUH6MXfmrfRUR6+DlUMKY w==;
X-CSE-ConnectionGUID: UGZuY5yJQFaQY0JGLDbVMQ==
X-CSE-MsgGUID: By4cueKtS5qRLPrJFzVQpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="55807250"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="55807250"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 06:14:36 -0800
X-CSE-ConnectionGUID: E4xCg1EISUuh6c03weLUAA==
X-CSE-MsgGUID: Bmu+5afOTICcI9WU8zaUpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93287730"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Dec 2024 06:14:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Dec 2024 16:14:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/9] drm/i915: Introduce plane->can_async_flip()
Date: Mon,  2 Dec 2024 16:14:18 +0200
Message-ID: <20241202141424.21446-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
References: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the "does this modifier support async flips?" check
to be handled by the platform specific plane code instead
of having a big mess in common code.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  9 +++
 .../gpu/drm/i915/display/intel_atomic_plane.c |  5 ++
 .../gpu/drm/i915/display/intel_atomic_plane.h |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 53 +-----------
 .../drm/i915/display/intel_display_types.h    |  1 +
 .../drm/i915/display/skl_universal_plane.c    | 80 +++++++++++++++++++
 6 files changed, 97 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 17a1e3801a85..7455da863a26 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -672,6 +672,11 @@ vlv_primary_disable_flip_done(struct intel_plane *plane)
 	spin_unlock_irq(&i915->irq_lock);
 }
 
+static bool i9xx_plane_can_async_flip(u64 modifier)
+{
+	return modifier == I915_FORMAT_MOD_X_TILED;
+}
+
 static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 				    enum pipe *pipe)
 {
@@ -958,19 +963,23 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		plane->async_flip = vlv_primary_async_flip;
 		plane->enable_flip_done = vlv_primary_enable_flip_done;
 		plane->disable_flip_done = vlv_primary_disable_flip_done;
+		plane->can_async_flip = i9xx_plane_can_async_flip;
 	} else if (IS_BROADWELL(dev_priv)) {
 		plane->need_async_flip_toggle_wa = true;
 		plane->async_flip = g4x_primary_async_flip;
 		plane->enable_flip_done = bdw_primary_enable_flip_done;
 		plane->disable_flip_done = bdw_primary_disable_flip_done;
+		plane->can_async_flip = i9xx_plane_can_async_flip;
 	} else if (DISPLAY_VER(dev_priv) >= 7) {
 		plane->async_flip = g4x_primary_async_flip;
 		plane->enable_flip_done = ivb_primary_enable_flip_done;
 		plane->disable_flip_done = ivb_primary_disable_flip_done;
+		plane->can_async_flip = i9xx_plane_can_async_flip;
 	} else if (DISPLAY_VER(dev_priv) >= 5) {
 		plane->async_flip = g4x_primary_async_flip;
 		plane->enable_flip_done = ilk_primary_enable_flip_done;
 		plane->disable_flip_done = ilk_primary_disable_flip_done;
+		plane->can_async_flip = i9xx_plane_can_async_flip;
 	}
 
 	modifiers = intel_fb_plane_get_modifiers(dev_priv, INTEL_PLANE_CAP_TILING_X);
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index d89630b2d5c1..c9e8e604d40c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -155,6 +155,11 @@ bool intel_plane_needs_physical(struct intel_plane *plane)
 		DISPLAY_INFO(i915)->cursor_needs_physical;
 }
 
+bool intel_plane_can_async_flip(struct intel_plane *plane, u64 modifier)
+{
+	return plane->can_async_flip && plane->can_async_flip(modifier);
+}
+
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate)
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 0f982f452ff3..fb87b3353ab0 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -19,6 +19,7 @@ struct intel_plane;
 struct intel_plane_state;
 enum plane_id;
 
+bool intel_plane_can_async_flip(struct intel_plane *plane, u64 modifier);
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8b19008202e5..ead37c5e51f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6515,58 +6515,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		if (!plane->async_flip)
 			continue;
 
-		/*
-		 * FIXME: This check is kept generic for all platforms.
-		 * Need to verify this for all gen9 platforms to enable
-		 * this selectively if required.
-		 */
-		switch (new_plane_state->hw.fb->modifier) {
-		case DRM_FORMAT_MOD_LINEAR:
-			/*
-			 * FIXME: Async on Linear buffer is supported on ICL as
-			 * but with additional alignment and fbc restrictions
-			 * need to be taken care of. These aren't applicable for
-			 * gen12+.
-			 */
-			if (DISPLAY_VER(i915) < 12) {
-				drm_dbg_kms(&i915->drm,
-					    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip on display ver %d\n",
-					    plane->base.base.id, plane->base.name,
-					    new_plane_state->hw.fb->modifier, DISPLAY_VER(i915));
-				return -EINVAL;
-			}
-			break;
-		case I915_FORMAT_MOD_Y_TILED_CCS:
-		case I915_FORMAT_MOD_Yf_TILED_CCS:
-			/*
-			 * Display WA #0731: skl
-			 * WaDisableRCWithAsyncFlip: skl
-			 * "When render decompression is enabled, hardware
-			 *  internally converts the Async flips to Sync flips."
-			 *
-			 * Display WA #1159: glk
-			 * "Async flip with render compression may result in
-			 *  intermittent underrun corruption."
-			 */
-			if (DISPLAY_VER(i915) < 11) {
-				drm_dbg_kms(&i915->drm,
-					    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip on display ver %d\n",
-					    plane->base.base.id, plane->base.name,
-					    new_plane_state->hw.fb->modifier, DISPLAY_VER(i915));
-				return -EINVAL;
-			}
-			break;
-		case I915_FORMAT_MOD_X_TILED:
-		case I915_FORMAT_MOD_Y_TILED:
-		case I915_FORMAT_MOD_Yf_TILED:
-		case I915_FORMAT_MOD_4_TILED:
-		case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
-		case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
-		case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
-		case I915_FORMAT_MOD_4_TILED_BMG_CCS:
-		case I915_FORMAT_MOD_4_TILED_LNL_CCS:
-			break;
-		default:
+		if (!intel_plane_can_async_flip(plane, new_plane_state->hw.fb->modifier)) {
 			drm_dbg_kms(&i915->drm,
 				    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip\n",
 				    plane->base.base.id, plane->base.name,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ec68bbfed442..d1c9eab5b7c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1467,6 +1467,7 @@ struct intel_plane {
 	unsigned int (*max_stride)(struct intel_plane *plane,
 				   u32 pixel_format, u64 modifier,
 				   unsigned int rotation);
+	bool (*can_async_flip)(u64 modifier);
 	/* Write all non-self arming plane registers */
 	void (*update_noarm)(struct intel_dsb *dsb,
 			     struct intel_plane *plane,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8621c539c110..c373b1c6babd 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -516,6 +516,79 @@ skl_plane_max_stride(struct intel_plane *plane,
 				max_pixels, max_bytes);
 }
 
+static bool tgl_plane_can_async_flip(u64 modifier)
+{
+	switch (modifier) {
+	case DRM_FORMAT_MOD_LINEAR:
+	case I915_FORMAT_MOD_X_TILED:
+	case I915_FORMAT_MOD_Y_TILED:
+	case I915_FORMAT_MOD_4_TILED:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_BMG_CCS:
+	case I915_FORMAT_MOD_4_TILED_LNL_CCS:
+		return true;
+	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
+	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
+	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
+		return false;
+	default:
+		return false;
+	}
+}
+
+static bool icl_plane_can_async_flip(u64 modifier)
+{
+	switch (modifier) {
+	case DRM_FORMAT_MOD_LINEAR:
+		/*
+		 * FIXME: Async on Linear buffer is supported on ICL
+		 * but with additional alignment and fbc restrictions
+		 * need to be taken care of.
+		 */
+		return false;
+	case I915_FORMAT_MOD_X_TILED:
+	case I915_FORMAT_MOD_Y_TILED:
+	case I915_FORMAT_MOD_Yf_TILED:
+	case I915_FORMAT_MOD_Y_TILED_CCS:
+	case I915_FORMAT_MOD_Yf_TILED_CCS:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool skl_plane_can_async_flip(u64 modifier)
+{
+	switch (modifier) {
+	case DRM_FORMAT_MOD_LINEAR:
+		return false;
+	case I915_FORMAT_MOD_X_TILED:
+	case I915_FORMAT_MOD_Y_TILED:
+	case I915_FORMAT_MOD_Yf_TILED:
+		return true;
+	case I915_FORMAT_MOD_Y_TILED_CCS:
+	case I915_FORMAT_MOD_Yf_TILED_CCS:
+		/*
+		 * Display WA #0731: skl
+		 * WaDisableRCWithAsyncFlip: skl
+		 * "When render decompression is enabled, hardware
+		 *  internally converts the Async flips to Sync flips."
+		 *
+		 * Display WA #1159: glk
+		 * "Async flip with render compression may result in
+		 *  intermittent underrun corruption."
+		 */
+		return false;
+	default:
+		return false;
+	}
+}
+
 static u32 tgl_plane_min_alignment(struct intel_plane *plane,
 				   const struct drm_framebuffer *fb,
 				   int color_plane)
@@ -2653,6 +2726,13 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 		plane->async_flip = skl_plane_async_flip;
 		plane->enable_flip_done = skl_plane_enable_flip_done;
 		plane->disable_flip_done = skl_plane_disable_flip_done;
+
+		if (DISPLAY_VER(dev_priv) >= 12)
+			plane->can_async_flip = tgl_plane_can_async_flip;
+		else if (DISPLAY_VER(dev_priv) == 11)
+			plane->can_async_flip = icl_plane_can_async_flip;
+		else
+			plane->can_async_flip = skl_plane_can_async_flip;
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 11)
-- 
2.45.2

