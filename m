Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2DB91515B
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 17:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B6F610E4AE;
	Mon, 24 Jun 2024 15:05:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dxCmRAE0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C69C310E4B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 15:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719241553; x=1750777553;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9dBzCql9Rnzt9F6XV+2VE5FZDF/GjyjzaH24ANZjNKw=;
 b=dxCmRAE0HRYEiGdjLiqUtv+sYdLqetTUAJZYiJLnRa/FEeXOPsjvxqfs
 4LGLs0D2z6jJBHBg68f/Hm46Y8cGQm1re9wvyb8Pt0RaxwJDX/GyQdgFy
 MpPzFd4C38vfCuzwyAueRrxA1W40TqpAeHGf7uZ12u3m0hwt7DJ06fIMW
 4j/IECjFX7+hYkA6J7bFsInDn95LpWu/UpMg99bLXv0w21sXlZTEQEvLi
 /A9qTTCxdbvcyfO/8QBtz/A89gjDiBGHVJ6hAeLrFqdh11xu8p+tu6X6p
 mU9VAYNbeNc4dXj5pAmj++gdldMI7zdXXbrygiSXx3u7w22olaEiOH6Np g==;
X-CSE-ConnectionGUID: LVkRQ+TEQO2ygRnWDbsNIA==
X-CSE-MsgGUID: jJTpTE6ET2WOyFiS5Ux2mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="19117867"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="19117867"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 08:05:52 -0700
X-CSE-ConnectionGUID: 3/dbK18LTk2eMPHORgJ0jg==
X-CSE-MsgGUID: obC1vAU4Rxu2B3KB9hPhcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43298676"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 08:05:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 18:05:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/5] drm/i915: Allow async flips with render compression on
 TGL+
Date: Mon, 24 Jun 2024 18:05:37 +0300
Message-ID: <20240624150538.24102-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
References: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c    | 14 +++++++++++++-
 .../gpu/drm/i915/display/skl_universal_plane.c  | 17 ++++++++++-------
 .../gpu/drm/i915/display/skl_universal_plane.h  |  3 +++
 3 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c782e65a7123..0b0c5ef1d48e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6248,6 +6248,9 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
 		case I915_FORMAT_MOD_4_TILED:
+		case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+		case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
+		case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
 			break;
 		default:
 			drm_dbg_kms(&i915->drm,
@@ -6257,7 +6260,8 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			return -EINVAL;
 		}
 
-		if (new_plane_state->hw.fb->format->num_planes > 1) {
+		if (intel_format_info_is_yuv_semiplanar(new_plane_state->hw.fb->format,
+							new_plane_state->hw.fb->modifier)) {
 			drm_dbg_kms(&i915->drm,
 				    "[PLANE:%d:%s] Planar formats do not support async flips\n",
 				    plane->base.base.id, plane->base.name);
@@ -6303,6 +6307,14 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
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
index c80a89b71ef7..6f4b3839724d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -528,15 +528,18 @@ static u32 tgl_plane_min_alignment(struct intel_plane *plane,
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
 		/*
 		 * Align to at least 4x1 main surface
 		 * tiles (16K) to match 64B of AUX.
@@ -1185,8 +1188,8 @@ static u32 skl_plane_surf(const struct intel_plane_state *plane_state,
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
2.44.2

