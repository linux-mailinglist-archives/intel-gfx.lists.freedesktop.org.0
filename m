Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C42B96FEB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2531E10E668;
	Tue, 23 Sep 2025 17:20:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BF9Ue1OH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2CD10E660;
 Tue, 23 Sep 2025 17:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648026; x=1790184026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hXCYZBBAKqDTP+A1tnaRApywR8vAHPXPji/nb+lELTQ=;
 b=BF9Ue1OHkKKw0gOEP8xsYukTIu6p0KBpgDjZ78ZqnjFtRmsKOrHwbpwU
 i5cxBTREHY6PE1MIv8idIaZxgdBn5mNE1xgpQXRBj5Ns6AwgSvLEsBVr0
 06kCl4f/ESwf23rF5/ylmktnWxani5vhb8UDEg0UcG+99w13HMK/+XXxy
 8MQwyL552FeW3MlZrK3CLHjU81GJg4jOsUh3qLPYBPntkcoGdyVmBXVm7
 49I1xUjv2nHp7zlWNNXjOjqGo2U8jHGs/bi2rUa5rUK3T7Z/nTd8HZt9f
 k6XdYlRRr6B4OpmuMcvhrP/MTCYfW/t5tgXA+wKO8vXhSqWdk2WKS4yHw Q==;
X-CSE-ConnectionGUID: bjYT7qNQSNKd2a8zwJiNYw==
X-CSE-MsgGUID: 6GSc6BTkSYqD+wEEOnuj/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60991019"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60991019"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:25 -0700
X-CSE-ConnectionGUID: H/5OT7seS6imyHY8h0gZtw==
X-CSE-MsgGUID: nGz+bQbrSHafhJlBODAZvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176898849"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/20] drm/i915/cdclk: Extract
 intel_cdclk_update_bw_min_cdclk()
Date: Tue, 23 Sep 2025 20:19:31 +0300
Message-ID: <20250923171943.7319-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hide the cdclk state details better by providing a helper
(intel_cdclk_update_bw_min_cdclk()) by which the bw code can
inform the cdclk code about a new bw_min_cdclk value.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c    | 43 ++++------------------
 drivers/gpu/drm/i915/display/intel_cdclk.c | 28 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h |  3 ++
 3 files changed, 38 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 8232b344a88f..7499ddec2b14 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1405,12 +1405,10 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
-	const struct intel_cdclk_state *cdclk_state;
 	const struct intel_crtc_state *old_crtc_state;
 	const struct intel_crtc_state *new_crtc_state;
-	int old_min_cdclk, new_min_cdclk;
 	struct intel_crtc *crtc;
-	int i;
+	int ret, i;
 
 	if (DISPLAY_VER(display) < 9)
 		return 0;
@@ -1443,39 +1441,12 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			return ret;
 	}
 
-	old_min_cdclk = intel_bw_min_cdclk(display, old_bw_state);
-	new_min_cdclk = intel_bw_min_cdclk(display, new_bw_state);
-
-	/*
-	 * No need to check against the cdclk state if
-	 * the min cdclk doesn't increase.
-	 *
-	 * Ie. we only ever increase the cdclk due to bandwidth
-	 * requirements. This can reduce back and forth
-	 * display blinking due to constant cdclk changes.
-	 */
-	if (new_min_cdclk <= old_min_cdclk)
-		return 0;
-
-	cdclk_state = intel_atomic_get_cdclk_state(state);
-	if (IS_ERR(cdclk_state))
-		return PTR_ERR(cdclk_state);
-
-	/*
-	 * No need to recalculate the cdclk state if
-	 * the min cdclk doesn't increase.
-	 *
-	 * Ie. we only ever increase the cdclk due to bandwidth
-	 * requirements. This can reduce back and forth
-	 * display blinking due to constant cdclk changes.
-	 */
-	if (new_min_cdclk <= intel_cdclk_bw_min_cdclk(cdclk_state))
-		return 0;
-
-	drm_dbg_kms(display->drm,
-		    "new bandwidth min cdclk (%d kHz) > old min cdclk (%d kHz)\n",
-		    new_min_cdclk, intel_cdclk_bw_min_cdclk(cdclk_state));
-	*need_cdclk_calc = true;
+	ret = intel_cdclk_update_bw_min_cdclk(state,
+					      intel_bw_min_cdclk(display, old_bw_state),
+					      intel_bw_min_cdclk(display, new_bw_state),
+					      need_cdclk_calc);
+	if (ret)
+		return ret;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c3ff8cbf1d78..3257f1f4fc11 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2836,6 +2836,34 @@ static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_stat
 	return min_cdclk;
 }
 
+int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
+				    int old_min_cdclk, int new_min_cdclk,
+				    bool *need_cdclk_calc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_cdclk_state *cdclk_state;
+
+	if (new_min_cdclk <= old_min_cdclk)
+		return 0;
+
+	cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(cdclk_state))
+		return PTR_ERR(cdclk_state);
+
+	old_min_cdclk = cdclk_state->bw_min_cdclk;
+
+	if (new_min_cdclk <= old_min_cdclk)
+		return 0;
+
+	*need_cdclk_calc = true;
+
+	drm_dbg_kms(display->drm,
+		    "bandwidth min cdclk: %d kHz -> %d kHz\n",
+		    old_min_cdclk, new_min_cdclk);
+
+	return 0;
+}
+
 static bool glk_cdclk_audio_wa_needed(struct intel_display *display,
 				      const struct intel_cdclk_state *cdclk_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index cacee598af0e..0e67c75ca569 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -48,6 +48,9 @@ struct intel_cdclk_state *
 intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 void intel_cdclk_update_hw_state(struct intel_display *display);
 void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc);
+int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
+				    int old_min_cdclk, int new_min_cdclk,
+				    bool *need_cdclk_calc);
 
 #define to_intel_cdclk_state(global_state) \
 	container_of_const((global_state), struct intel_cdclk_state, base)
-- 
2.49.1

