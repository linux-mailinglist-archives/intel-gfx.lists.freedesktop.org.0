Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0796450E73
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 19:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 049276E55E;
	Mon, 15 Nov 2021 18:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C80BD6E55E
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 18:12:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="319710971"
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="319710971"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 10:11:25 -0800
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="671599117"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 10:11:23 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Nov 2021 20:11:21 +0200
Message-Id: <20211115181121.156197-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211112190904.62920-1-imre.deak@intel.com>
References: <20211112190904.62920-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix fastsets on TypeC ports
 following a non-blocking modeset
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

After a non-blocking modeset on a TypeC port's CRTC - possibly blocked
later in drm_atomic_helper_wait_for_dependencies() - a fastset on the
same CRTC may copy the state of CRTC before this gets updated to reflect
the up-to-date DP-alt vs. TBT-alt TypeC mode DPLL used for the CRTC. In
this case after the first (non-blocking) commit completes enabling the
DPLL required for the up-to-date TypeC mode the following fastset will
update the CRTC state pointing to the wrong DPLL. A subsequent disabling
modeset will try to disable the wrong PLL, triggering a state checker
WARN (and leaving the DPLL which is actually used active for good).

Fix the above race by copying the DPLL state for fastset CRTCs from the
old CRTC state at the point where it's guaranteed to be up-to-date
already. This could be handled in the encoder's update_prepare() hook as
well, but that's a bigger change, which is better done as a follow-up.

v2: Copy dpll_hw_state as well. (Ville)

Testcase: igt/kms_busy/extended-modeset-hang-newfb-with-reset
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4308
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++++++++----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0ceee8ac66717..f3c9208a30b16 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1572,10 +1572,30 @@ intel_connector_primary_encoder(struct intel_connector *connector)
 
 static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+	struct intel_crtc *crtc;
 	struct drm_connector_state *new_conn_state;
 	struct drm_connector *connector;
 	int i;
 
+	/*
+	 * Make sure the DPLL state is up-to-date for fastset TypeC ports after non-blocking commits.
+	 * TODO: Update the DPLL state for all cases in the encoder->update_prepare() hook.
+	 */
+	if (i915->dpll.mgr) {
+		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+			if (intel_crtc_needs_modeset(new_crtc_state))
+				continue;
+
+			new_crtc_state->shared_dpll = old_crtc_state->shared_dpll;
+			new_crtc_state->dpll_hw_state = old_crtc_state->dpll_hw_state;
+		}
+	}
+
+	if (!state->modeset)
+		return;
+
 	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
 					i) {
 		struct intel_connector *intel_connector;
@@ -1602,6 +1622,9 @@ static void intel_encoders_update_complete(struct intel_atomic_state *state)
 	struct drm_connector *connector;
 	int i;
 
+	if (!state->modeset)
+		return;
+
 	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
 					i) {
 		struct intel_connector *intel_connector;
@@ -8670,8 +8693,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		}
 	}
 
-	if (state->modeset)
-		intel_encoders_update_prepare(state);
+	intel_encoders_update_prepare(state);
 
 	intel_dbuf_pre_plane_update(state);
 
@@ -8683,11 +8705,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display->commit_modeset_enables(state);
 
-	if (state->modeset) {
-		intel_encoders_update_complete(state);
+	intel_encoders_update_complete(state);
 
+	if (state->modeset)
 		intel_set_cdclk_post_plane_update(state);
-	}
 
 	intel_wait_for_vblank_workers(state);
 
-- 
2.27.0

