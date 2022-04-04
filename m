Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB6B4F160F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 15:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC2C10F57F;
	Mon,  4 Apr 2022 13:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695BC10E0AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 13:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649079536; x=1680615536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KKcrA5s0D28eDvqR9BU8Jwr4YDquWyOzvFY2yiWZqQw=;
 b=ZMcXlksbMduMwyOq9OQ9kQDEbLPH6rMCA+kQ+Oi66RexHwiY8UIdFzFD
 MYGdeI9dtWib3yKDIgdM5YWeInAtTvkl93HjbwqvjyOP6jZe16UwErFA5
 QfDJUF/cA9HB0DL51Mp+WltSIRtoV35oDBqIshFY+HW5tX640ah4pOd1p
 sCIoZtGECFwguG7k8xVX43bm9kboeP472l5xuXubGdJImDXpgnQHqtGZA
 rDnROV5jmp6rUaxsOEgjjnG7x4WOaRTBqKJP6ZMyGgCGtPxvH88h67Aad
 jpHXFZ5BIcK9TKjp23A7gGtsathkDA5F9Qpy2xYeVJe5h4cxaZQOGR1ay g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="321210237"
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="321210237"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 06:38:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="548655980"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 06:38:53 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Apr 2022 16:38:44 +0300
Message-Id: <20220404133846.131401-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220404133846.131401-1-imre.deak@intel.com>
References: <20220404133846.131401-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dg2: Add support for DG2 render
 and media compression
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
Cc: =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

Add support for DG2 render and media compression, for the description of
buffer layouts see the previous patch adding the corresponding
frame buffer modifiers.

v2:
  Display version fix [Imre]
v3:
  Split out modifier addition to separate patch.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 13 ++++++++++
 .../drm/i915/display/skl_universal_plane.c    | 26 ++++++++++++++++---
 2 files changed, 35 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e9ad142ac40fa..447003a91160e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -141,6 +141,14 @@ struct intel_modifier_desc {
 
 static const struct intel_modifier_desc intel_modifiers[] = {
 	{
+		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
+		.display_ver = { 13, 13 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
+	}, {
+		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS,
+		.display_ver = { 13, 13 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
+	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED,
 		.display_ver = { 13, 13 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_4,
@@ -550,6 +558,8 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 			return 128;
 		else
 			return 512;
+	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
 	case I915_FORMAT_MOD_4_TILED:
 		/*
 		 * Each 4K tile consists of 64B(8*8) subtiles, with
@@ -752,6 +762,9 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 	case I915_FORMAT_MOD_4_TILED:
 	case I915_FORMAT_MOD_Yf_TILED:
 		return 1 * 1024 * 1024;
+	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
+		return 16 * 1024;
 	default:
 		MISSING_CASE(fb->modifier);
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index c57fca1fe6788..b939c503bc6ff 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -773,6 +773,14 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
 		return PLANE_CTL_TILED_Y;
 	case I915_FORMAT_MOD_4_TILED:
 		return PLANE_CTL_TILED_4;
+	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
+		return PLANE_CTL_TILED_4 |
+			PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
+			PLANE_CTL_CLEAR_COLOR_DISABLE;
+	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
+		return PLANE_CTL_TILED_4 |
+			PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE |
+			PLANE_CTL_CLEAR_COLOR_DISABLE;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
@@ -2168,6 +2176,10 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
 		return false;
 
+	/* Wa_14013215631 */
+	if (IS_DG2_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
+		return false;
+
 	return plane_id < PLANE_SPRITE4;
 }
 
@@ -2415,9 +2427,10 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	case PLANE_CTL_TILED_Y:
 		plane_config->tiling = I915_TILING_Y;
 		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
-			fb->modifier = DISPLAY_VER(dev_priv) >= 12 ?
-				I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS :
-				I915_FORMAT_MOD_Y_TILED_CCS;
+			if (DISPLAY_VER(dev_priv) >= 12)
+				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS;
+			else
+				fb->modifier = I915_FORMAT_MOD_Y_TILED_CCS;
 		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
 			fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
 		else
@@ -2425,7 +2438,12 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		break;
 	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
 		if (HAS_4TILE(dev_priv)) {
-			fb->modifier = I915_FORMAT_MOD_4_TILED;
+			if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS;
+			else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
+			else
+				fb->modifier = I915_FORMAT_MOD_4_TILED;
 		} else {
 			if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
 				fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
-- 
2.30.2

