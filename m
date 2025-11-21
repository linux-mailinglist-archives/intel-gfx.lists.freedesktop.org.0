Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EFFC79104
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 13:51:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E4A810E2AE;
	Fri, 21 Nov 2025 12:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZSeWWr/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30E510E2AE;
 Fri, 21 Nov 2025 12:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763729482; x=1795265482;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Q/q+lBA585XlrdWkiSBht5XMwy+meWk1mktTZFJWFY=;
 b=VZSeWWr/2fHPuT9js4Y2PC8LWaZSCiTy5SaiAqoX1cOa4EPDQ73+RR55
 nlZ6JVSqAjxowdvobsd0KCeTfHFTH+rXv3HWtDF9VITeyW65bGM/nAXjy
 Ds3BpyD5vCvZP4R5qyN1tEeg3AD9WG6w2TuphNk9elNbH8aF1jbq8IFCl
 XbiRWUREU+TMvVgynmaEnLzU1aEDpAby49DOUmPh8ruJJ0Sxwsg3ZeYfg
 h7A5z8MFeXH0RKsPOOQio5TAuakMYZnTrVKSz0JEmBRbEqW4XwTODm9rO
 /XDuuv8V8YkrjaW2uuFpCa1g0yzwGAQNrQZUiz5hx8WHUjCbgdjReI3lN g==;
X-CSE-ConnectionGUID: N5mrCbywSw+MCffSNI5eEw==
X-CSE-MsgGUID: czY3F07mQ1a8rN4dpmebvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65702740"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65702740"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 04:51:21 -0800
X-CSE-ConnectionGUID: khzNnrXnSsmo0e+CQqsemA==
X-CSE-MsgGUID: LwWBulFjQ8q6u60rf9c3AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="191936373"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 04:51:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915/pps: drop wakeref parameter from
 with_intel_pps_lock()
Date: Fri, 21 Nov 2025 14:51:01 +0200
Message-ID: <990675b9f4639c0f32c09177f7d835e2aa8a5238.1763729370.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763729370.git.jani.nikula@intel.com>
References: <cover.1763729370.git.jani.nikula@intel.com>
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

Add another level of macro abstraction, and declare the wakeref within
the for loop using __UNIQUE_ID. This allows us to drop a bunch of
boilerplate declarations and parameter passing.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_pps.c | 56 +++++++-----------------
 drivers/gpu/drm/i915/display/intel_pps.h |  7 ++-
 3 files changed, 22 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index a3ff21b2f69f..27f4c55d7484 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -684,12 +684,11 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u32 dp_reg = intel_de_read(display, intel_dp->output_reg);
-	intel_wakeref_t wakeref;
 
 	if (drm_WARN_ON(display->drm, dp_reg & DP_PORT_EN))
 		return;
 
-	with_intel_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp) {
 		if (display->platform.valleyview || display->platform.cherryview)
 			vlv_pps_port_enable_unlocked(encoder, pipe_config);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 25692a547764..34376255b85c 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -697,12 +697,10 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 
 void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)
 {
-	intel_wakeref_t wakeref;
-
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	with_intel_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp)
 		wait_panel_power_cycle(intel_dp);
 }
 
@@ -811,14 +809,13 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 void intel_pps_vdd_on(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	intel_wakeref_t wakeref;
 	bool vdd;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
 	vdd = false;
-	with_intel_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp)
 		vdd = intel_pps_vdd_on_unlocked(intel_dp);
 	INTEL_DISPLAY_STATE_WARN(display, !vdd, "[ENCODER:%d:%s] %s VDD already requested on\n",
 				 dp_to_dig_port(intel_dp)->base.base.base.id,
@@ -873,8 +870,6 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 
 void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
 {
-	intel_wakeref_t wakeref;
-
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
@@ -883,7 +878,7 @@ void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
 	 * vdd might still be enabled due to the delayed vdd off.
 	 * Make sure vdd is actually turned off here.
 	 */
-	with_intel_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp)
 		intel_pps_vdd_off_sync_unlocked(intel_dp);
 }
 
@@ -892,9 +887,8 @@ static void edp_panel_vdd_work(struct work_struct *__work)
 	struct intel_pps *pps = container_of(to_delayed_work(__work),
 					     struct intel_pps, panel_vdd_work);
 	struct intel_dp *intel_dp = container_of(pps, struct intel_dp, pps);
-	intel_wakeref_t wakeref;
 
-	with_intel_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp) {
 		if (!intel_dp->pps.want_panel_vdd)
 			intel_pps_vdd_off_sync_unlocked(intel_dp);
 	}
@@ -952,12 +946,10 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 
 void intel_pps_vdd_off(struct intel_dp *intel_dp)
 {
-	intel_wakeref_t wakeref;
-
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	with_intel_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp)
 		intel_pps_vdd_off_unlocked(intel_dp, false);
 }
 
@@ -1026,12 +1018,10 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 
 void intel_pps_on(struct intel_dp *intel_dp)
 {
-	intel_wakeref_t wakeref;
-
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	with_intel_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp)
 		intel_pps_on_unlocked(intel_dp);
 }
 
@@ -1082,12 +1072,10 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 
 void intel_pps_off(struct intel_dp *intel_dp)
 {
-	intel_wakeref_t wakeref;
-
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	with_intel_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp)
 		intel_pps_off_unlocked(intel_dp);
 }
 
@@ -1095,7 +1083,6 @@ void intel_pps_off(struct intel_dp *intel_dp)
 void intel_pps_backlight_on(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	intel_wakeref_t wakeref;
 
 	/*
 	 * If we enable the backlight right away following a panel power
@@ -1105,7 +1092,7 @@ void intel_pps_backlight_on(struct intel_dp *intel_dp)
 	 */
 	wait_backlight_on(intel_dp);
 
-	with_intel_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp) {
 		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 		u32 pp;
 
@@ -1121,12 +1108,11 @@ void intel_pps_backlight_on(struct intel_dp *intel_dp)
 void intel_pps_backlight_off(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	intel_wakeref_t wakeref;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	with_intel_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp) {
 		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 		u32 pp;
 
@@ -1149,11 +1135,10 @@ void intel_pps_backlight_power(struct intel_connector *connector, bool enable)
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	intel_wakeref_t wakeref;
 	bool is_enabled;
 
 	is_enabled = false;
-	with_intel_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp)
 		is_enabled = ilk_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
 	if (is_enabled == enable)
 		return;
@@ -1251,9 +1236,7 @@ void vlv_pps_pipe_init(struct intel_dp *intel_dp)
 /* Call on all DP, not just eDP */
 void vlv_pps_pipe_reset(struct intel_dp *intel_dp)
 {
-	intel_wakeref_t wakeref;
-
-	with_intel_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp)
 		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
 }
 
@@ -1329,9 +1312,7 @@ void vlv_pps_port_disable(struct intel_encoder *encoder,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-	intel_wakeref_t wakeref;
-
-	with_intel_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp)
 		intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
 }
 
@@ -1362,10 +1343,9 @@ static void pps_vdd_init(struct intel_dp *intel_dp)
 
 bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp)
 {
-	intel_wakeref_t wakeref;
 	bool have_power = false;
 
-	with_intel_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp) {
 		have_power = edp_have_panel_power(intel_dp) ||
 			     edp_have_panel_vdd(intel_dp);
 	}
@@ -1692,12 +1672,11 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	intel_wakeref_t wakeref;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	with_intel_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp) {
 		/*
 		 * Reinit the power sequencer also on the resume path, in case
 		 * BIOS did something nasty with it.
@@ -1716,7 +1695,6 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 
 bool intel_pps_init(struct intel_dp *intel_dp)
 {
-	intel_wakeref_t wakeref;
 	bool ret;
 
 	intel_dp->pps.initializing = true;
@@ -1724,7 +1702,7 @@ bool intel_pps_init(struct intel_dp *intel_dp)
 
 	pps_init_timestamps(intel_dp);
 
-	with_intel_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp) {
 		ret = pps_initial_setup(intel_dp);
 
 		pps_init_delays(intel_dp);
@@ -1760,9 +1738,7 @@ static void pps_init_late(struct intel_dp *intel_dp)
 
 void intel_pps_init_late(struct intel_dp *intel_dp)
 {
-	intel_wakeref_t wakeref;
-
-	with_intel_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp) {
 		/* Reinit delays after per-panel info has been parsed from VBT */
 		pps_init_late(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index c83007152f07..ad5c458ccdaf 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -20,8 +20,11 @@ struct intel_encoder;
 intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp);
 intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref);
 
-#define with_intel_pps_lock(dp, wf)						\
-	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
+#define __with_intel_pps_lock(dp, wf) \
+	for (intel_wakeref_t (wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
+
+#define with_intel_pps_lock(dp) \
+	__with_intel_pps_lock((dp), __UNIQUE_ID(wakeref))
 
 void intel_pps_backlight_on(struct intel_dp *intel_dp);
 void intel_pps_backlight_off(struct intel_dp *intel_dp);
-- 
2.47.3

