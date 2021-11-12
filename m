Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3636844ED0D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 20:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E28B56F418;
	Fri, 12 Nov 2021 19:09:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057846F413
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 19:09:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="233436078"
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="233436078"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 11:09:08 -0800
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="453157020"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 11:09:07 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Nov 2021 21:09:04 +0200
Message-Id: <20211112190904.62920-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix fastsets on TypeC ports following
 a non-blocking modeset
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

Testcase: igt/kms_busy/extended-modeset-hang-newfb-with-reset
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4308
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 25 ++++++++++++++++----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0ceee8ac66717..76ebb3c91a75b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1572,10 +1572,24 @@ intel_connector_primary_encoder(struct intel_connector *connector)
 
 static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 {
+	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+	struct intel_crtc *crtc;
 	struct drm_connector_state *new_conn_state;
 	struct drm_connector *connector;
 	int i;
 
+	/*
+	 * Make sure the DPLL state is up-to-date for fastset TypeC ports after non-blocking commits.
+	 * TODO: Update the DPLL state for all cases in the encoder->update_prepare() hook.
+	 */
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+		if (!intel_crtc_needs_modeset(new_crtc_state))
+			new_crtc_state->shared_dpll = old_crtc_state->shared_dpll;
+	}
+
+	if (!state->modeset)
+		return;
+
 	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
 					i) {
 		struct intel_connector *intel_connector;
@@ -1602,6 +1616,9 @@ static void intel_encoders_update_complete(struct intel_atomic_state *state)
 	struct drm_connector *connector;
 	int i;
 
+	if (!state->modeset)
+		return;
+
 	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
 					i) {
 		struct intel_connector *intel_connector;
@@ -8670,8 +8687,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		}
 	}
 
-	if (state->modeset)
-		intel_encoders_update_prepare(state);
+	intel_encoders_update_prepare(state);
 
 	intel_dbuf_pre_plane_update(state);
 
@@ -8683,11 +8699,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
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

