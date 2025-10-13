Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C42BD3A50
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 16:46:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7536710E48C;
	Mon, 13 Oct 2025 14:46:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g55sTfYs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC1710E474;
 Mon, 13 Oct 2025 14:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760366759; x=1791902759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KRv0U7G+9iopupW6LqNqUIvU8j7be5VuP1yEk0gHkAE=;
 b=g55sTfYsjynrnR71oJ7HwgnMnuZtA6zf4dlDWpDk8kuGhSpHymptwDwB
 RVj19eg85VKe3meGwDZIOCwUiihQ0bKhphF1bzXy9QGJ1F6CvVLFlT6Lj
 KDxsOeGXGyGAsW4YW3tuzRvNFGMWE3yERvc5HI8iU+Qg5R3PBgXYn6VmN
 1BAzQWG233Nr8RWntj4crV3g1IkVbUH7NfpKrQzlTSdGr1tmYwMSrk1WW
 1p8M9pVKLODMCIU3AFnUSyxCMDEqWcCA/ZKWykMase6i5DxvM/2KdH59Q
 TldvZvAZx8FP+4VqAAVYInxCqYwiayt2GIgtRvIR0kDg8dq7e0DESMH/g g==;
X-CSE-ConnectionGUID: 28aUQRE4QDCdRp6uSU66Ng==
X-CSE-MsgGUID: kKwrBwRSTOCc02CD52NsSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="62602328"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="62602328"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 07:45:59 -0700
X-CSE-ConnectionGUID: wypeoV39TP29LTKKDf04+w==
X-CSE-MsgGUID: bgPXDPr5QBuX6C2dgLSDTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="181425501"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 07:45:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH v2] drm/i915/display: add HAS_AUX_CCS() feature check
Date: Mon, 13 Oct 2025 17:45:52 +0300
Message-ID: <20251013144552.1710851-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <f3839c6a87796d087b944720248d39462521d20b.1760094361.git.jani.nikula@intel.com>
References: <f3839c6a87796d087b944720248d39462521d20b.1760094361.git.jani.nikula@intel.com>
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

We should try to get rid of checks that depend on struct
drm_i915_private (or struct xe_device) in display code. HAS_FLAT_CCS()
is one of them. In the interest of simplicity, add a reversed
HAS_AUX_CCS() feature check macro, as that's we mostly use it for in
display.

v2: include adl-p (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_fb.c             | 4 +---
 drivers/gpu/drm/i915/display/skl_universal_plane.c  | 4 ++--
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 2 --
 4 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 9960ac13a6dd..2d856c5fcbed 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -144,6 +144,7 @@ struct intel_display_platforms {
 
 #define HAS_128B_Y_TILING(__display)	(!(__display)->platform.i915g && !(__display)->platform.i915gm)
 #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
+#define HAS_AUX_CCS(__display)		(IS_DISPLAY_VER(__display, 9, 12) || (__display)->platform.alderlake_p || (__display)->platform.meteorlake)
 #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
 #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
 #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 7388791dfde0..9c256a2805e4 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -547,8 +547,6 @@ static bool plane_has_modifier(struct intel_display *display,
 			       u8 plane_caps,
 			       const struct intel_modifier_desc *md)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (!IS_DISPLAY_VER(display, md->display_ver.from, md->display_ver.until))
 		return false;
 
@@ -560,7 +558,7 @@ static bool plane_has_modifier(struct intel_display *display,
 	 * where supported.
 	 */
 	if (intel_fb_is_ccs_modifier(md->modifier) &&
-	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
+	    HAS_AUX_CCS(display) != !!md->ccs.packed_aux_planes)
 		return false;
 
 	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e13fb781e7b2..0319174adf95 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1572,7 +1572,7 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 	}
 
 	/* FLAT CCS doesn't need to program AUX_DIST */
-	if (!HAS_FLAT_CCS(to_i915(display->drm)) && DISPLAY_VER(display) < 20)
+	if (HAS_AUX_CCS(display))
 		intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
 				   skl_plane_aux_dist(plane_state, color_plane));
 
@@ -2930,7 +2930,7 @@ skl_universal_plane_create(struct intel_display *display,
 		caps = skl_plane_caps(display, pipe, plane_id);
 
 	/* FIXME: xe has problems with AUX */
-	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(to_i915(display->drm)))
+	if (!IS_ENABLED(I915) && HAS_AUX_CCS(display))
 		caps &= ~(INTEL_PLANE_CAP_CCS_RC |
 			  INTEL_PLANE_CAP_CCS_RC_CC |
 			  INTEL_PLANE_CAP_CCS_MC);
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index be3edf20de22..7c657ea98a44 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -35,6 +35,4 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 
 #define IS_MOBILE(xe) (xe && 0)
 
-#define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
-
 #endif
-- 
2.47.3

