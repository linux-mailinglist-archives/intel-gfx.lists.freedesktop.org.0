Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46935A6A8EB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 15:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF01110E634;
	Thu, 20 Mar 2025 14:46:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ma8LYYtW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A4C110E636;
 Thu, 20 Mar 2025 14:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742481983; x=1774017983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uWz1vp2Muw1hGpm9TdpzxdEJdT+2LcWUr6pOKE9gPFg=;
 b=ma8LYYtWGuSTXQDThdGvkhvSRnpfH31BgP5nrJG+ZhnAEVqBqb3MT5A0
 uVOOI8YMhMrFHooGgswWrOBl+tQPbqphn3hQsQGMmPj7ZEHuPAtUCeOiH
 5XnFWw9k9EjcAiImT+sbobORMDqjQp+KjIQMAVr+a6M2eIVImWkmjsnGE
 yqzTsDoICfHcCJ2/B1QQ5o3RwFWGVHVhdntnSvJVyZ4p9iLd6kno6yYBW
 XGdDX84DS/I/ONucOxUQKZGgJdvHvJlH8UG38AatSrE0ren8Sz11LhI/5
 Z31s1W0sBvlo5jdF5udyIJcbPyfD47G7eFtzr6DQwniVj39NkXsA7dher w==;
X-CSE-ConnectionGUID: 7ylFAJOHTNSq49SZFTSPXA==
X-CSE-MsgGUID: cbAs/2wDQzKbHsYQ89GOwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="42964299"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="42964299"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:15 -0700
X-CSE-ConnectionGUID: InaQXZmvRiSjSz5Eermndw==
X-CSE-MsgGUID: VKFOZ7Z0QZihRWpVAamiLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="128337230"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 1/9] drm/i915/color: prefer display->platform.<platform> checks
Date: Thu, 20 Mar 2025 16:45:57 +0200
Message-Id: <d57fd6444c512b3cc35c0e216c86eeb95124eead.1742481923.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742481923.git.jani.nikula@intel.com>
References: <cover.1742481923.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This let's us drop the dependency on i915_drv.h.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index cfe14162231d..bbf6df7ebb95 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -22,7 +22,7 @@
  *
  */
 
-#include "i915_drv.h"
+#include "i915_utils.h"
 #include "i9xx_plane_regs.h"
 #include "intel_color.h"
 #include "intel_color_regs.h"
@@ -405,14 +405,13 @@ static void icl_read_csc(struct intel_crtc_state *crtc_state)
 static bool ilk_limited_range(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	/* icl+ have dedicated output CSC */
 	if (DISPLAY_VER(display) >= 11)
 		return false;
 
 	/* pre-hsw have TRANSCONF_COLOR_RANGE_SELECT */
-	if (DISPLAY_VER(display) < 7 || IS_IVYBRIDGE(i915))
+	if (DISPLAY_VER(display) < 7 || display->platform.ivybridge)
 		return false;
 
 	return crtc_state->limited_color_range;
@@ -516,7 +515,6 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
 static void ilk_assign_csc(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool limited_color_range = ilk_csc_limited_range(crtc_state);
 
 	if (crtc_state->hw.ctm) {
@@ -538,7 +536,7 @@ static void ilk_assign_csc(struct intel_crtc_state *crtc_state)
 		 * LUT is needed but CSC is not we need to load an
 		 * identity matrix.
 		 */
-		drm_WARN_ON(display->drm, !IS_GEMINILAKE(i915));
+		drm_WARN_ON(display->drm, !display->platform.geminilake);
 
 		ilk_csc_copy(display, &crtc_state->csc, &ilk_csc_matrix_identity);
 	} else {
@@ -3983,12 +3981,10 @@ int intel_color_init(struct intel_display *display)
 
 void intel_color_init_hooks(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (HAS_GMCH(display)) {
-		if (IS_CHERRYVIEW(i915))
+		if (display->platform.cherryview)
 			display->funcs.color = &chv_color_funcs;
-		else if (IS_VALLEYVIEW(i915))
+		else if (display->platform.valleyview)
 			display->funcs.color = &vlv_color_funcs;
 		else if (DISPLAY_VER(display) >= 4)
 			display->funcs.color = &i965_color_funcs;
@@ -4005,7 +4001,7 @@ void intel_color_init_hooks(struct intel_display *display)
 			display->funcs.color = &skl_color_funcs;
 		else if (DISPLAY_VER(display) == 8)
 			display->funcs.color = &bdw_color_funcs;
-		else if (IS_HASWELL(i915))
+		else if (display->platform.haswell)
 			display->funcs.color = &hsw_color_funcs;
 		else if (DISPLAY_VER(display) == 7)
 			display->funcs.color = &ivb_color_funcs;
-- 
2.39.5

