Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EBAB9700F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E742610E680;
	Tue, 23 Sep 2025 17:21:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YNKU043X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1853210E67D;
 Tue, 23 Sep 2025 17:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648063; x=1790184063;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W4vD8AIl7mjAT9IQIMhV7JLmhCyRjNIUUFJ5fXWbNJ8=;
 b=YNKU043XQPLVMIj8BZI3SehLoa38v9+FecXk74pmeMa8RgWqIoz7S2f2
 cxL2vl+WXvtIVZnrGHUsUASIp3znoMVL2WH4gbAfRLcT+wsjK9lCMZcy6
 FlurFQ/m4mJ9sXlzjc9lGnqfSKgmzK8ERlRkIudgMhpWCVPMWfjiC3D/Z
 xcb3FsvO/Srz9M4TApA7Jh9C5Y/V45kkod51ap6dc/fxLhVGjOYO3SRSB
 lSFdeuWXUZzMzR8LdYj1ETLT8hIBkJxZcZolLb/dBjJtkxu2CLNX/YnUj
 Ttdjdqw7v6jIf3zwijr4lBGvvybjEpyTx6GQlKlcvL/1bNnnuipBrgCN+ w==;
X-CSE-ConnectionGUID: DeHQDwv7TK26Mo0AszgMZQ==
X-CSE-MsgGUID: 5pRmqyozTOCcfSKlsyaCYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60859521"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60859521"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:21:03 -0700
X-CSE-ConnectionGUID: uNw7/OQtQsu9PmRCdExZbA==
X-CSE-MsgGUID: rAYKjcK3SkuEtpYHZwEMAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="177608582"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:21:01 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 19/20] drm/i915/cdclk: Hide intel_modeset_calc_cdclk()
Date: Tue, 23 Sep 2025 20:19:41 +0300
Message-ID: <20250923171943.7319-20-ville.syrjala@linux.intel.com>
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

We no longer have anything of importance between
intel_cdclk_atomic_check() and intel_modeset_calc_cdclk(), so
hide the latter inside the former.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 22 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_cdclk.h   |  4 +---
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++----------------
 3 files changed, 20 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0be35e5c43c1..487d15ef206d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3310,22 +3310,24 @@ static int intel_crtcs_calc_min_cdclk(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_cdclk_atomic_check(struct intel_atomic_state *state,
-			     bool *need_cdclk_calc)
+static int intel_modeset_calc_cdclk(struct intel_atomic_state *state);
+
+int intel_cdclk_atomic_check(struct intel_atomic_state *state)
 {
 	const struct intel_cdclk_state *old_cdclk_state;
 	struct intel_cdclk_state *new_cdclk_state;
+	bool need_cdclk_calc = false;
 	int ret;
 
-	ret = intel_cdclk_modeset_checks(state, need_cdclk_calc);
+	ret = intel_cdclk_modeset_checks(state, &need_cdclk_calc);
 	if (ret)
 		return ret;
 
-	ret = intel_crtcs_calc_min_cdclk(state, need_cdclk_calc);
+	ret = intel_crtcs_calc_min_cdclk(state, &need_cdclk_calc);
 	if (ret)
 		return ret;
 
-	ret = intel_bw_calc_min_cdclk(state, need_cdclk_calc);
+	ret = intel_bw_calc_min_cdclk(state, &need_cdclk_calc);
 	if (ret)
 		return ret;
 
@@ -3338,7 +3340,13 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 		if (ret)
 			return ret;
 
-		*need_cdclk_calc = true;
+		need_cdclk_calc = true;
+	}
+
+	if (need_cdclk_calc) {
+		ret = intel_modeset_calc_cdclk(state);
+		if (ret)
+			return ret;
 	}
 
 	return 0;
@@ -3386,7 +3394,7 @@ static bool intel_cdclk_need_serialize(struct intel_display *display,
 		dg2_power_well_count(display, new_cdclk_state);
 }
 
-int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
+static int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_cdclk_state *old_cdclk_state;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 0e67c75ca569..72963f6f399a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -38,11 +38,9 @@ void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
 void intel_cdclk_dump_config(struct intel_display *display,
 			     const struct intel_cdclk_config *cdclk_config,
 			     const char *context);
-int intel_modeset_calc_cdclk(struct intel_atomic_state *state);
 void intel_cdclk_get_cdclk(struct intel_display *display,
 			   struct intel_cdclk_config *cdclk_config);
-int intel_cdclk_atomic_check(struct intel_atomic_state *state,
-			     bool *need_cdclk_calc);
+int intel_cdclk_atomic_check(struct intel_atomic_state *state);
 int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joined_mbus);
 struct intel_cdclk_state *
 intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 42fb0e082cc9..e8ef23305264 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6302,9 +6302,7 @@ int intel_atomic_check(struct drm_device *dev,
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_crtc *crtc;
-	bool need_cdclk_calc = false;
 	int ret, i;
-	bool any_ms = false;
 
 	if (!intel_display_driver_check_access(display))
 		return -ENODEV;
@@ -6412,14 +6410,11 @@ int intel_atomic_check(struct drm_device *dev,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		any_ms = true;
-
 		intel_dpll_release(state, crtc);
 	}
 
-	if (any_ms && !check_digital_port_conflicts(state)) {
-		drm_dbg_kms(display->drm,
-			    "rejecting conflicting digital port configuration\n");
+	if (intel_any_crtc_needs_modeset(state) && !check_digital_port_conflicts(state)) {
+		drm_dbg_kms(display->drm, "rejecting conflicting digital port configuration\n");
 		ret = -EINVAL;
 		goto fail;
 	}
@@ -6436,25 +6431,16 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	ret = intel_cdclk_atomic_check(state, &need_cdclk_calc);
+	ret = intel_cdclk_atomic_check(state);
 	if (ret)
 		goto fail;
 
-	if (intel_any_crtc_needs_modeset(state))
-		any_ms = true;
-
-	if (any_ms) {
+	if (intel_any_crtc_needs_modeset(state)) {
 		ret = intel_modeset_checks(state);
 		if (ret)
 			goto fail;
 	}
 
-	if (need_cdclk_calc) {
-		ret = intel_modeset_calc_cdclk(state);
-		if (ret)
-			return ret;
-	}
-
 	ret = intel_pmdemand_atomic_check(state);
 	if (ret)
 		goto fail;
-- 
2.49.1

