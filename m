Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6FBAFAA9F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 06:44:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF45A10E3FD;
	Mon,  7 Jul 2025 04:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W53VbPE7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 008F710E3FD;
 Mon,  7 Jul 2025 04:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751863439; x=1783399439;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8gau+gPFngMUmJ+rLD+mc1yj/UWDFj40LAjw1AT39OE=;
 b=W53VbPE7AzMr27PX+spH6rOxVk0iBzKxnLmb1ydTHL0p/FqObxyMiGnM
 he36BY91B1s9iCR99O+OT3tP19WPqXmwD86XkGFN/qSDDvazAzpWF5Yn4
 ADTjBXSIGJml1wu8m9ZVDhrhz2v9pqYO/H+678Q+OkvU85GuF9+kSP3Im
 AC5mUCzo53SfV8DYK4gcZ1/dgoBcfYooJMdMsqRjTb61mBhOXG3Pydczt
 eSwGQ4WbnNokEmGJZ1hIvISw+61DDKRFDnXtAUUMj1LRbtB/SmPEUqfuj
 PpvS3zusp3Pdd8nmjT6bho2JS/9d8C7Gp+LOr+b0v5Q5OWWjrHO6u/Yl+ A==;
X-CSE-ConnectionGUID: WA5UjvL3QImyPzJ/77wpfA==
X-CSE-MsgGUID: NLdfxVXtTmm4t+FaRX28Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="54215818"
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="54215818"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 21:43:58 -0700
X-CSE-ConnectionGUID: cM6VU5emR9mtzvOiHB4rkw==
X-CSE-MsgGUID: blJDBCrDSROwmOqwgKczMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="155209914"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 21:43:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/4] drm/i915/vrr: Fix seamless_mn drrs for PTL
Date: Mon,  7 Jul 2025 10:03:17 +0530
Message-ID: <20250707043321.97343-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250707043321.97343-1-ankit.k.nautiyal@intel.com>
References: <20250707043321.97343-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

With VRR timing generator always on, the fixed refresh rate is achieved
by setting vrr.flipline, vrr.vmin, and vrr.vmax as the vtotal for the
desired mode.

This creates a problem for seamless_mn drrs feature, where user can
seamlessly set a lower mode on the supporting panels by just changing
the mode clock, with desired lower rate. With VRR timing generator,
the vrr.flipline, vrr.vmin, vrr.vmax are set to vtotal, but that
corresponds to the higher mode.

To fix this, re-compute the vrr timings when seamless_mn drrs is in
picture. At the same time make sure that the optimized vrr.guardband
is set as per the highest mode for such panels, so that switching
between higher to lower mode, does not change the vrr.guardband.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 41 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 +
 3 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c09f0a7f1fc1..c814dc02ed3c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5743,6 +5743,9 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 				   &new_crtc_state->dp_m_n))
 		new_crtc_state->update_m_n = false;
 
+	if (new_crtc_state->update_m_n && intel_vrr_always_use_vrr_tg(display))
+		intel_vrr_compute_fixed_rr_for_seamless_m_n(old_crtc_state, new_crtc_state);
+
 	if (!lrr_params_changed(&old_crtc_state->hw.adjusted_mode,
 				&new_crtc_state->hw.adjusted_mode))
 		new_crtc_state->update_lrr = false;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 780f91db3bc8..c58f430c1739 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -435,6 +435,7 @@ int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
 {
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *highest_mode;
 	struct intel_dp *intel_dp;
 	int dsc_prefill_time = 0;
 	int psr2_pr_latency = 0;
@@ -447,8 +448,22 @@ int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
 	int vblank_us;
 	int pm_delay;
 
-	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
-				   adjusted_mode->crtc_clock);
+	/*
+	 * For seamless m_n the clock is changed while other modeline
+	 * parameters are same. In that case the linetime_us will change,
+	 * causing the guardband to change, and the seamless switch to
+	 * lower mode would not take place.
+	 * To avoid this, take the highest mode where panel supports
+	 * seamless drrs.
+	 */
+	highest_mode = intel_panel_highest_mode(connector, adjusted_mode);
+	if (crtc_state->has_drrs && highest_mode) {
+		linetime_us = DIV_ROUND_UP(highest_mode->htotal * 1000,
+					   highest_mode->clock);
+	} else {
+		linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
+					   adjusted_mode->crtc_clock);
+	}
 
 	/* Assuming max wm0 lines = 4 */
 	wm0_prefill_time = 4 * linetime_us + 20;
@@ -859,3 +874,25 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
+
+void intel_vrr_compute_fixed_rr_for_seamless_m_n(const struct intel_crtc_state *old_crtc_state,
+						 struct intel_crtc_state *new_crtc_state)
+{
+	int old_clock = old_crtc_state->hw.adjusted_mode.crtc_clock;
+	int new_clock = new_crtc_state->hw.adjusted_mode.crtc_clock;
+	int new_vtotal = new_crtc_state->hw.adjusted_mode.crtc_vtotal;
+	int vtotal_lower_mode;
+
+	/*
+	 * For switching seamlessly from higher to lower mode with VRR TG on,
+	 * we need to set flipline, vmin, vmax to the vtotal computed for the
+	 * lower mode. Since for seamless drrs, user changes the clock as per
+	 * the required lower mode, (keeping vtotal same), we need to compute
+	 * flipline, vmin, vmax as per the lower mode.
+	 */
+
+	vtotal_lower_mode = (old_clock * new_vtotal  / new_clock);
+	new_crtc_state->vrr.flipline = vtotal_lower_mode;
+	new_crtc_state->vrr.vmin = new_crtc_state->vrr.flipline;
+	new_crtc_state->vrr.vmax = new_crtc_state->vrr.flipline;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 4b15c2838492..aac073881a48 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -42,5 +42,7 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
+void intel_vrr_compute_fixed_rr_for_seamless_m_n(const struct intel_crtc_state *old_crtc_state,
+						 struct intel_crtc_state *new_crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

