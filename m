Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE02970DEF
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 08:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4954C10E2D1;
	Mon,  9 Sep 2024 06:34:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="baY4YCjY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 188FA10E2D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 06:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725863685; x=1757399685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PeEf8gu0RvbD1x2zEVjv6q22S5yH2jLMisaREY33z1o=;
 b=baY4YCjYhVrX2WDGi2y2JX0v2ilnnxLq2kxc2MMz4Xhm/PibEEaiz6K0
 a9GrI/preRP65DZdLWBAzAGZ+eny/kw6XDB1YO3rbzsiw4Nt9Vd4eazKE
 oJarzoCdvmyp3+/rMq6K8y+MQfNPGeciRPtnr1wf+/f1xZZhX6GN6jt6d
 0dQ6gCGJryhqdIu9xs9xK6cPDsYBGEVktpEqFBFS7DtNRMOvwpTjq6zF6
 fjQ25boZYY9GysqTeFD+sRR6t8KDT0Z04t9AcUiyuAbde2KDgtRJCoqyF
 39SaUZQd7a9xhvCaO5zPxgB01r06grzsAESbv0TlEnx8UL5E/G+ocipTy g==;
X-CSE-ConnectionGUID: 66Z3FpiHQfy2v4YLdpPdFw==
X-CSE-MsgGUID: ALH/jIJyQQubp9FlrQChXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="42047425"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="42047425"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2024 23:34:44 -0700
X-CSE-ConnectionGUID: cubIkSaIQ3CALQEqANXmHg==
X-CSE-MsgGUID: LgW7G31YSsyDkaTM5wbDFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="89830434"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 08 Sep 2024 23:34:42 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, jouni.hogander@intel.com, imre.deak@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Date: Mon,  9 Sep 2024 12:02:18 +0530
Message-ID: <20240909063218.447934-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240909045454.412110-1-suraj.kandpal@intel.com>
References: <20240909045454.412110-1-suraj.kandpal@intel.com>
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

--v6
-check target_dc_state [Jouni]
-fix condition in pre/post plane update [Jouni]

WA: 22019444797
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 112 +++++++++++++++++-
 2 files changed, 114 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 733de5edcfdb..59c81f0a3abd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1577,6 +1577,9 @@ struct intel_psr {
 #define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
 
 	u32 debug;
+	bool is_dpkgc_configured;
+	bool is_dc5_entry_possible;
+	bool is_wa_delayed_vblank_limit;
 	bool sink_support;
 	bool source_support;
 	bool enabled;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b30fa067ce6e..e50b476494a0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -26,6 +26,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_debugfs.h>
+#include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -874,6 +875,78 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
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
+	if ((display->power.domains.target_dc_state &
+	     DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0)
+		return false;
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
@@ -986,7 +1059,15 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
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
@@ -2667,10 +2748,20 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
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
@@ -2679,6 +2770,12 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 
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
@@ -2686,6 +2783,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		 * - Changing between PSR versions
 		 * - Region Early Transport changing
 		 * - Display WA #1136: skl, bxt
+		 * - Display WA_22019444797
 		 */
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
@@ -2695,6 +2793,10 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 			psr->su_region_et_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
+		/* TODO: Disable PSR1 when vblank gets enabled while PSR1 is enabled */
+		needs_to_disable |= DISPLAY_VER(display) == 20 && dpkgc_configured &&
+			(wa_delayed_vblank_limit || dc5_entry_possible) &&
+			!new_crtc_state->has_sel_update && !new_crtc_state->has_panel_replay;
 
 		if (psr->enabled && needs_to_disable)
 			intel_psr_disable_locked(intel_dp);
@@ -2735,6 +2837,14 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		keep_disabled |= DISPLAY_VER(display) < 11 &&
 			crtc_state->wm_level_disabled;
 
+		/*
+		 * Wa_22019444797
+		 * TODO: Disable PSR1 when vblank gets enabled while PSR1 is enabled
+		 */
+		keep_disabled |= DISPLAY_VER(display) == 20 && psr->is_dpkgc_configured &&
+			(psr->is_wa_delayed_vblank_limit || psr->is_dc5_entry_possible) &&
+			!crtc_state->has_sel_update && !crtc_state->has_panel_replay;
+
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 		else if (psr->enabled && !crtc_state->wm_level_disabled)
-- 
2.43.2

