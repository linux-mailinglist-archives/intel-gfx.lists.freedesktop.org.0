Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCB69E0485
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 15:14:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E3410E750;
	Mon,  2 Dec 2024 14:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a1rH53fq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFAAE10E750
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 14:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733148870; x=1764684870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NtRXeVJtg1UD35MWccQ1Vp8PEWUhh+sJmVr6a/SAoTM=;
 b=a1rH53fqMO6kzIAI7KNOfJEAc7bDa5Wf1T1NXTSVw++cplwZV46PfHVb
 HlSSJXy2Vt2KhOD+sVC2x9PLiCQpEtqjl87s26BZlby75CRk0UBcPZM7A
 EoU1CuiVZwOxiVDxcTNOaUfiChIPLIy5oZSuxFZHLSr756idOhilbWm4M
 evT7zYV8rrjyNQD+gmomd6UmQi45lWsZfEi8T4UPmSDvy8Qh/bzkDXBUC
 XKYae/nFq+Ro8Fbl5dAlTNtHteV55Ry8dslyrI9rEjmnvh4ckl4VLIzqO
 kPjAx5usY7HSpJx0RsHjuXDYo/Rl6MRL2pIR1WN7ONsb4XXljGJxBqnsP w==;
X-CSE-ConnectionGUID: P63dexb8T5iKl005F0XVCw==
X-CSE-MsgGUID: bs/2YVBjRcWhB3f1dtNTJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="55807235"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="55807235"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 06:14:30 -0800
X-CSE-ConnectionGUID: RV4Z2OrdSz2+/Kk8VqJiSw==
X-CSE-MsgGUID: gqCf2JeSTkCX2+Wdrl9EZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93287720"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Dec 2024 06:14:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Dec 2024 16:14:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/9] drm/i915: Allow async flips with render compression on
 TGL+
Date: Mon,  2 Dec 2024 16:14:16 +0200
Message-ID: <20241202141424.21446-2-ville.syrjala@linux.intel.com>
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

Looks like CCS + async flips has been a thing for a while now.
Enable this for TGL+ render compression modifiers.

Note that we can't update AUX_DIST during async flips we must
check to make sure it remains unchanged.

We also can't do clear color. Supposedly there was some attempt
to make it work, but apparently the issues only got ironed out
in MTL. For now we'll not worry about it and refuse async flips
with clear color modifiers.

Bspec claims that media compression doesn't support async flips.
Based on a quick test it does seem to work to some degree, but
perhaps it has issues as well. Let's trust the spec here and
continue to refuse async flips + media compression.

Bspec: 49250,49251,49252,49253
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c    | 14 +++++++++++++-
 .../gpu/drm/i915/display/skl_universal_plane.c  | 17 ++++++++++-------
 .../gpu/drm/i915/display/skl_universal_plane.h  |  3 +++
 3 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4805bf682d43..77405a7c706b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6541,6 +6541,9 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
 		case I915_FORMAT_MOD_4_TILED:
+		case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+		case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
+		case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
 		case I915_FORMAT_MOD_4_TILED_BMG_CCS:
 		case I915_FORMAT_MOD_4_TILED_LNL_CCS:
 			break;
@@ -6552,7 +6555,8 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			return -EINVAL;
 		}
 
-		if (new_plane_state->hw.fb->format->num_planes > 1) {
+		if (intel_format_info_is_yuv_semiplanar(new_plane_state->hw.fb->format,
+							new_plane_state->hw.fb->modifier)) {
 			drm_dbg_kms(&i915->drm,
 				    "[PLANE:%d:%s] Planar formats do not support async flips\n",
 				    plane->base.base.id, plane->base.name);
@@ -6598,6 +6602,14 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			return -EINVAL;
 		}
 
+		if (skl_plane_aux_dist(old_plane_state, 0) !=
+		    skl_plane_aux_dist(new_plane_state, 0)) {
+			drm_dbg_kms(&i915->drm,
+				    "[PLANE:%d:%s] AUX_DIST cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
+			return -EINVAL;
+		}
+
 		if (!drm_rect_equals(&old_plane_state->uapi.src, &new_plane_state->uapi.src) ||
 		    !drm_rect_equals(&old_plane_state->uapi.dst, &new_plane_state->uapi.dst)) {
 			drm_dbg_kms(&i915->drm,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 4c7bcf6806ff..8621c539c110 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -541,15 +541,18 @@ static u32 tgl_plane_min_alignment(struct intel_plane *plane,
 		if (IS_ALDERLAKE_P(i915) && HAS_ASYNC_FLIPS(i915))
 			return mult * 16 * 1024;
 		return mult * 4 * 1024;
-	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
-	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
 	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
-	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
 	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
-	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
+		if (IS_ALDERLAKE_P(i915) && HAS_ASYNC_FLIPS(i915))
+			return mult * 16 * 1024;
+		fallthrough;
+	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
 	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
+	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
 	case I915_FORMAT_MOD_4_TILED_BMG_CCS:
 	case I915_FORMAT_MOD_4_TILED_LNL_CCS:
 		/*
@@ -1203,8 +1206,8 @@ static u32 skl_plane_surf(const struct intel_plane_state *plane_state,
 	return plane_surf;
 }
 
-static u32 skl_plane_aux_dist(const struct intel_plane_state *plane_state,
-			      int color_plane)
+u32 skl_plane_aux_dist(const struct intel_plane_state *plane_state,
+		       int color_plane)
 {
 	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers/gpu/drm/i915/display/skl_universal_plane.h
index 541489479135..18b41d13f0bd 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
@@ -37,4 +37,7 @@ bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
 u8 icl_hdr_plane_mask(void);
 bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id plane_id);
 
+u32 skl_plane_aux_dist(const struct intel_plane_state *plane_state,
+		       int color_plane);
+
 #endif
-- 
2.45.2

