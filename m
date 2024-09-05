Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44C296CE30
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 06:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD93A10E4DD;
	Thu,  5 Sep 2024 04:43:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PkPRfLS8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA61310E41E
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 04:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725511408; x=1757047408;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J7VjU8eZgVtq+vpN2ueb0o4x+0PR/oNVoSYuvrAgSUQ=;
 b=PkPRfLS8EBuZ+R1lCVpjqz4vjYRFdk2QkmRhWigabzJc3WVzFmLElVU8
 4XSdju1YbnVL7DtBtM3aoYwNUck5KzTfWX+WswXC6E6Etn9LkgdwHVZw5
 PWik6Wh1QbK9cSemQyReeynDo9o3JsPuW0U9pwSOsIbF7B7Cl+l51avEU
 YVHwyT3jdlSA3IW2EtMjgdbq1yV4yWmdQtNRMFyySv756GAF9rmIhyiY4
 V3lXZNrLLJ3amzdbZnIpob6P1loAYkzLXRElFc2X7tt2nqPf67s300mpc
 /2CI49WSaxa9Idr3YZKVV505gAses5pnppSOC5gmOuCQBPh8d2xXykckw g==;
X-CSE-ConnectionGUID: sAZ3ZGhuQaSqcTMiWfGaqg==
X-CSE-MsgGUID: 1jE1mZlVQK+kZT6MEf8AiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24399362"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="24399362"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 21:43:28 -0700
X-CSE-ConnectionGUID: 3Kc2arKQQ8SwMy/N8DEyUg==
X-CSE-MsgGUID: S3fd2ny6S6SlXtZx+4qreA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="66017902"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 04 Sep 2024 21:43:26 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, jouni.hogander@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Date: Thu,  5 Sep 2024 10:11:01 +0530
Message-ID: <20240905044102.270527-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240903082450.222141-1-suraj.kandpal@intel.com>
References: <20240903082450.222141-1-suraj.kandpal@intel.com>
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

To reach PC10 when PKG_C_LATENCY is configure we must do the following
things
1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be entered
2) Allow PSR2 deep sleep when DC5 can be entered
3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are
not happening.

--v2
-Switch condition and do an early return [Jani]
-Do some checks in compute_config [Jani]
-Do not use register reads as a method of checking states for
DPKGC or delayed vblank [Jani]
-Use another way to see is vblank interrupts are disabled or not [Jani]

--v3
-Use has_psr to check if psr can be enabled or not for dc5_entry cond
[Uma]
-Move the dc5 entry computation to psr_compute_config [Jouni]
-No need to change sequence of enabled and activate,
so dont make hsw_psr1_activate return anything [Jouni]
-Use has_psr to stop psr1 activation [Jouni]
-Use lineage no. in WA
-Add the display ver restrictions for WA

--v4
-use more appropriate name for check_vblank_limit() [Jouni]
-Cover the case for idle frames when dpkgc is not configured [Jouni]
-Check psr only for edp [Jouni]

--v5
-move psr1 handling to plane update [Jouni]
-add todo for cases when vblank is enabled when psr enabled [Jouni]
-use intel_display instead of drm_i915_private

WA: 22019444797
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 107 +++++++++++++++++-
 2 files changed, 109 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f29e5dc3db91..368da8778f0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1714,6 +1714,9 @@ struct intel_psr {
 #define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
 
 	u32 debug;
+	bool is_dpkgc_configured;
+	bool is_dc5_entry_possible;
+	bool is_wa_delayed_vblank_limit;
 	bool sink_support;
 	bool source_support;
 	bool enabled;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1f83b3b67ea6..111917ff1888 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -872,6 +872,74 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 	return idle_frames;
 }
 
+static bool
+intel_psr_check_wa_delayed_vblank(const struct drm_display_mode *adjusted_mode)
+{
+	return (adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay) >= 6;
+}
+
+/*
+ * PKG_C_LATENCY is configured only when DISPLAY_VER >= 20 and
+ * VRR is not enabled
+ */
+static bool intel_psr_is_dpkgc_configured(struct intel_display *display,
+					  struct intel_atomic_state *state)
+{
+	struct intel_crtc *intel_crtc;
+	struct intel_crtc_state *crtc_state;
+	int i;
+
+	if (DISPLAY_VER(display) < 20)
+		return false;
+
+	for_each_new_intel_crtc_in_state(state, intel_crtc, crtc_state, i) {
+		if (!intel_crtc->active)
+			continue;
+
+		if (crtc_state->vrr.enable)
+			return false;
+	}
+
+	return true;
+}
+
+/*
+ * DC5 entry is only possible if vblank interrupt is disabled
+ * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
+ * enabled encoders.
+ */
+static bool
+intel_psr_is_dc5_entry_possible(struct intel_display *display,
+				struct intel_atomic_state *state)
+{
+	struct intel_crtc *intel_crtc;
+	struct intel_crtc_state *crtc_state;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, intel_crtc, crtc_state, i) {
+		struct drm_crtc *crtc = &intel_crtc->base;
+		struct drm_vblank_crtc *vblank;
+		struct intel_encoder *encoder;
+
+		if (!intel_crtc->active)
+			continue;
+
+		vblank = drm_crtc_vblank_crtc(crtc);
+
+		if (vblank->enabled)
+			return false;
+
+		if (crtc_state->has_psr)
+			return false;
+
+		for_each_encoder_on_crtc(display->drm, crtc, encoder)
+			if (encoder->type != INTEL_OUTPUT_EDP)
+				return false;
+	}
+
+	return true;
+}
+
 static void hsw_activate_psr1(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -984,7 +1052,15 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
 
-	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
+	/*
+	 * Wa_22019444797
+	 * TODO: Disable idle frames when vblank gets enabled while
+	 * PSR2 is enabled
+	 */
+	if (DISPLAY_VER(dev_priv) != 20 ||
+	    !intel_dp->psr.is_dpkgc_configured ||
+	    intel_dp->psr.is_dc5_entry_possible)
+		val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
 	if (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))
 		val |= EDP_SU_TRACK_ENABLE;
@@ -2665,10 +2741,20 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
+	bool dpkgc_configured = false, dc5_entry_possible = false;
+	bool wa_delayed_vblank_limit = false;
 
 	if (!HAS_PSR(display))
 		return;
 
+	if (DISPLAY_VER(display) == 20) {
+		dpkgc_configured = intel_psr_is_dpkgc_configured(display, state);
+		dc5_entry_possible =
+			intel_psr_is_dc5_entry_possible(display, state);
+		wa_delayed_vblank_limit =
+			intel_psr_check_wa_delayed_vblank(&new_crtc_state->hw.adjusted_mode);
+	}
+
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
 					     old_crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -2677,6 +2763,12 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 
 		mutex_lock(&psr->lock);
 
+		if (DISPLAY_VER(i915) == 20) {
+			psr->is_dpkgc_configured = dpkgc_configured;
+			psr->is_dc5_entry_possible = dc5_entry_possible;
+			psr->is_wa_delayed_vblank_limit = wa_delayed_vblank_limit;
+		}
+
 		/*
 		 * Reasons to disable:
 		 * - PSR disabled in new state
@@ -2684,6 +2776,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		 * - Changing between PSR versions
 		 * - Region Early Transport changing
 		 * - Display WA #1136: skl, bxt
+		 * - Display WA_22019444797
 		 */
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
@@ -2693,6 +2786,10 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 			psr->su_region_et_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
+		/* TODO: Disable PSR1 when vblank gets enabled while PSR1 is enabled */
+		needs_to_disable |= (DISPLAY_VER(display) != 20 || !dpkgc_configured ||
+			wa_delayed_vblank_limit || dc5_entry_possible) &&
+			!(new_crtc_state->has_sel_update || !new_crtc_state->has_panel_replay);
 
 		if (psr->enabled && needs_to_disable)
 			intel_psr_disable_locked(intel_dp);
@@ -2733,6 +2830,14 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		keep_disabled |= DISPLAY_VER(display) < 11 &&
 			crtc_state->wm_level_disabled;
 
+		/*
+		 * Wa_22019444797
+		 * TODO: Disable PSR1 when vblank gets enabled while PSR1 is enabled
+		 */
+		keep_disabled |= (DISPLAY_VER(display) != 20 || !psr->is_dpkgc_configured ||
+			psr->is_wa_delayed_vblank_limit || psr->is_dc5_entry_possible) &&
+			!(crtc_state->has_sel_update || !crtc_state->has_panel_replay);
+
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 		else if (psr->enabled && !crtc_state->wm_level_disabled)
-- 
2.43.2

