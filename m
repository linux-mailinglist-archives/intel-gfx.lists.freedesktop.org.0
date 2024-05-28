Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA958D1A26
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:48:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58AA210E100;
	Tue, 28 May 2024 11:48:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NVY/e7XR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0129A10E100
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716896920; x=1748432920;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9fSDSQaSqnq4m1QrJ3FaZDsthod7ZrmQypdGtf8pCkM=;
 b=NVY/e7XRy2WU/wxYj12jKrOLm3Mz5Xo5awEapWqfUDWIYLSkf7x1LPts
 iRNfgHZ9P9fVzCkvb78Ys7heq2YYTd6N4PVVD1k76iW4Cd7V8DxfBLGlk
 tAj2XpftMd+2a7jiJCdpKTgwIKpPgDwq2FWIBnwPGKDy57qA9anqsnkWv
 txq+gpZwSsFnnLtr/yBfNpby/QArO8RAtg2xHWif93ik52AIu73MITEfa
 HJq9lC8JdEWZFjovCS9KNO+Yjv7Pvy/wi5tGadTdU0qtXwBNEl+ivEXtR
 IkdvqznSEywqhwVM6Dejyvllu1jNCon5PzpQbFd75SbTHi9339+kW110/ A==;
X-CSE-ConnectionGUID: LGwMci8yQaSc/ZJ9mza1+g==
X-CSE-MsgGUID: RjR8Fi1yQHO1NJsEw4iHdQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23900661"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="23900661"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:48:39 -0700
X-CSE-ConnectionGUID: pyAIC5TFSFWJelFznJVVFw==
X-CSE-MsgGUID: pag/iq0ZSL2n8XkVcKrqVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39868472"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.205])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:48:38 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v3] drm/i915/display: update handling of FBC when VT-d active
 workaround
Date: Tue, 28 May 2024 14:48:26 +0300
Message-Id: <20240528114826.134958-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
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

Move the handling of the disabling FBC when VT-d is active wa
as part of the intel_fbc_check_plane(). As the hw is still there,
intel_fbc_sanitize should be able to handle the state properly.

v2: update the patch description (Jani Nikula)

v3: fix the return value in wa handling (Jani Nikula)

Bspec: 21664
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index e9189a864f69..b546ebc6823d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1235,6 +1235,12 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
+	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
+	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
+		plane_state->no_fbc_reason = "VT-d enabled";
+		return 0;
+	}
+
 	crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
@@ -1820,19 +1826,6 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
 	return 0;
 }
 
-static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
-{
-	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
-	if (i915_vtd_active(i915) &&
-	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
-		drm_info(&i915->drm,
-			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
-		return true;
-	}
-
-	return false;
-}
-
 void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane)
 {
 	plane->fbc = fbc;
@@ -1878,9 +1871,6 @@ void intel_fbc_init(struct drm_i915_private *i915)
 {
 	enum intel_fbc_id fbc_id;
 
-	if (need_fbc_vtd_wa(i915))
-		DISPLAY_RUNTIME_INFO(i915)->fbc_mask = 0;
-
 	i915->display.params.enable_fbc = intel_sanitize_fbc_option(i915);
 	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
 		    i915->display.params.enable_fbc);
-- 
2.34.1

