Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D13BA69EF6F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 08:36:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57B210E42D;
	Wed, 22 Feb 2023 07:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B916610E3EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677051352; x=1708587352;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=otHiR2JRmehqSPjK3vL+mYcqxTdJGCNfibk/0KRel9I=;
 b=Ut8c0/7kpery2jMvjolpfpmFEEa0JW0IHVPtCcq57wfw0EeUqp+S9zBW
 moobwJfrzXG9nZvlVVb0Sd/HmWmSBpL/S0WH0oiAzkn6zGUhqrE9qDE+h
 KRrb5/2/u5BGQcMM6xRVzyTgvzYlH1eqF2vX5KUkCXZS10/SBMw0+QGYt
 TEXeSGXkPXk5JbluD0J7XK9GVrocYnCwY7iHVP/AdOcD0ijc6S9Ygn9UM
 enwIeMG0CajN+ni3qHN/hTJ4/y5MQ+j46Q5b3LtoUcYjZRb99+bji2Sm9
 ezhh6Sla7Fg8cplAsJV0zOzCddXkhYQqMaQ7PCrT9g+RDucgLqYiq/QuP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="397544111"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="397544111"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795811236"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="795811236"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 23:35:07 -0800
Message-Id: <20230222073507.788705-10-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915/mtl: Add handling for MTL ccs
 modifiers
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

From: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>

Add Tile4 ccs modifiers w/ auxbuffer handling

Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 42 ++++++++++++++++++-
 .../drm/i915/display/skl_universal_plane.c    | 22 +++++++++-
 2 files changed, 61 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index fc4cb829e8af..4db245f4c70b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -157,6 +157,32 @@ struct intel_modifier_desc {
 
 static const struct intel_modifier_desc intel_modifiers[] = {
 	{
+		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
+		.display_ver = { 14, 14 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
+
+		.ccs.packed_aux_planes = BIT(1),
+		.ccs.planar_aux_planes = BIT(2) | BIT(3),
+
+		FORMAT_OVERRIDE(gen12_ccs_formats),
+	}, {
+		.modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS,
+		.display_ver = { 14, 14 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
+
+		.ccs.packed_aux_planes = BIT(1),
+
+		FORMAT_OVERRIDE(gen12_ccs_formats),
+	}, {
+		.modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC,
+		.display_ver = { 14, 14 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC_CC,
+
+		.ccs.cc_planes = BIT(2),
+		.ccs.packed_aux_planes = BIT(1),
+
+		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
+	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
 		.display_ver = { 13, 13 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
@@ -370,6 +396,14 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	if (!plane_caps_contain_all(plane_caps, md->plane_caps))
 		return false;
 
+	/*
+	 * Separate AuxCCS and Flat CCS modifiers to be run only on platforms
+	 * where supported.
+	 */
+	if (intel_fb_is_ccs_modifier(md->modifier) &&
+	   HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
+		return false;
+
 	return true;
 }
 
@@ -489,7 +523,7 @@ static bool intel_fb_is_gen12_ccs_aux_plane(const struct drm_framebuffer *fb, in
 {
 	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
 
-	return check_modifier_display_ver_range(md, 12, 13) &&
+	return check_modifier_display_ver_range(md, 12, 14) &&
 	       ccs_aux_plane_mask(md, fb->format) & BIT(color_plane);
 }
 
@@ -605,6 +639,9 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
 			return 128;
 		fallthrough;
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
+	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
@@ -790,6 +827,9 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
+	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
 		return 16 * 1024;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ce55b8f09301..af4a1baa46d1 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -790,6 +790,14 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
 			PLANE_CTL_CLEAR_COLOR_DISABLE;
 	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
 		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
+		return PLANE_CTL_TILED_4 |
+			PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
+			PLANE_CTL_CLEAR_COLOR_DISABLE;
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
+		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
+	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
+		return PLANE_CTL_TILED_4 | PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
@@ -2161,6 +2169,11 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
 static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
+	/* Wa_14017240301 */
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+		return false;
+
 	/* Wa_22011186057 */
 	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
 		return false;
@@ -2442,12 +2455,17 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	case PLANE_CTL_TILED_Y:
 		plane_config->tiling = I915_TILING_Y;
 		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
-			if (DISPLAY_VER(dev_priv) >= 12)
+			if (DISPLAY_VER(dev_priv) >= 14)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS;
+			else if (DISPLAY_VER(dev_priv) >= 12)
 				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS;
 			else
 				fb->modifier = I915_FORMAT_MOD_Y_TILED_CCS;
 		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
-			fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
+			if (DISPLAY_VER(dev_priv) >= 14)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS;
+			else
+				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
 		else
 			fb->modifier = I915_FORMAT_MOD_Y_TILED;
 		break;
-- 
2.34.1

