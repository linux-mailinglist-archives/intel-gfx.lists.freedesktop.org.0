Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F16BCCB24
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 13:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEA9B10EBBC;
	Fri, 10 Oct 2025 11:08:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KO7g7dBX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED4110EBBC;
 Fri, 10 Oct 2025 11:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760094495; x=1791630495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XjN9q++P+OR5eMMZougLEnpGt9pONgYSmDvOMCY0NAM=;
 b=KO7g7dBXfwxLmTW+8bLWFT0RKUSkGgGBW5+Uyq87DXTwES6CfHM0GNbH
 X+3EjFy+fLU8fn7Jzf7qXGX1IvDW7OqCzKS1ec+YfY9jzLioPk8RCDMwi
 RVbAuYbc5YsAWaDQGV51XPfFjhXdvhofT1n2X+MbHNsPmbwsPToxKCoGD
 i0I8n6peru+NyzXEDmLR41W2ST6N0hA4woB8rCMV708LecKeglzsY9Gdw
 j591RDdPfDlW2D/guGbqwhwGIwYRSmUCspbXyALbM5XNkg/p6CpasrJQX
 hxURCjZ9PXH173Q1U7VDjx4QBWABzmvJTzwJADGQoHGL+/BV3sEyTh7i6 Q==;
X-CSE-ConnectionGUID: WSM+PuiLTpO+Gii0xwq3SA==
X-CSE-MsgGUID: cl4ruhIxTiOjpAfCZRNbdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="72925072"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="72925072"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 04:08:15 -0700
X-CSE-ConnectionGUID: zL4uhcdgRbia6w+Yx/mzGA==
X-CSE-MsgGUID: F9xypNTHSliKWX0K/4YSyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="211607790"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.168])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 04:08:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/3] drm/i915/display: add HAS_AUX_CCS() feature check
Date: Fri, 10 Oct 2025 14:07:53 +0300
Message-ID: <f3839c6a87796d087b944720248d39462521d20b.1760094361.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1760094361.git.jani.nikula@intel.com>
References: <cover.1760094361.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Is "display < 13 || mtl" good enough?
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_fb.c             | 4 +---
 drivers/gpu/drm/i915/display/skl_universal_plane.c  | 4 ++--
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 2 --
 4 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 9960ac13a6dd..3ceecfe3b1b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -144,6 +144,7 @@ struct intel_display_platforms {
 
 #define HAS_128B_Y_TILING(__display)	(!(__display)->platform.i915g && !(__display)->platform.i915gm)
 #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
+#define HAS_AUX_CCS(__display)		(DISPLAY_VER(__display) < 13 || (__display)->platform.meteorlake)
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

