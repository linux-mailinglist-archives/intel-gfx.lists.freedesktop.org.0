Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEFEA5CCFB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 19:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 876BB10E64E;
	Tue, 11 Mar 2025 18:00:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bT8SAfCA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D04810E64C;
 Tue, 11 Mar 2025 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741716053; x=1773252053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BMhz7HKj2Zo1jPskXPtolQrc5/GvLUKNAYX/+dCHsrk=;
 b=bT8SAfCAsnrE+oUPnbILO/2iuBs0bktj++eCD+6k6R4B1sIc/8e9jsMu
 cLg92Appjq5EyGfUMeffWJxflW6nPpkESyVBzL1msXt55DxMeyohczDeX
 VI3Fyja2g8dMyH1gBlSMtKVUihmD9/Wz1m2Y6FknhH15PrzG+CZ95/WRm
 taUbcCllurFcnJPLfFrqudMI6JpJX3wXO9x8sjq4DW5M8o1pumhrvutS6
 Dooqw6dz985czK+jHjnvBP14czCsiVsXfw1AGrFuVzmgYChZrHn12pRfT
 PODCKBT1DOTKgjv+estbdUgad7OiiqbLfNU23no6A8rQqEKgVJ8caDqU0 g==;
X-CSE-ConnectionGUID: aO2POoqyTP21zMHjE+Ox7w==
X-CSE-MsgGUID: wgXX6pLvQ+2fOnl0wIy70A==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42805766"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42805766"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:00:53 -0700
X-CSE-ConnectionGUID: Phl8iCbYRl2fi2jhrCRqEA==
X-CSE-MsgGUID: /2IGLTyNTlu3mOe3NbG91Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125457054"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:00:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/9] drm/i915/color: prefer display->platform.<platform> checks
Date: Tue, 11 Mar 2025 20:00:35 +0200
Message-Id: <1236d79c0770c7c7da9be47be0531743df239fc0.1741715981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741715981.git.jani.nikula@intel.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
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

This let's us drop the dependency on i915_drv.h.

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

