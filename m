Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EF011E208
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 11:34:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18C516E416;
	Fri, 13 Dec 2019 10:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32AAC6E405
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 10:34:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 02:34:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="220896305"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2019 02:34:52 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 12:31:56 +0200
Message-Id: <20191213103158.29520-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213103158.29520-1-stanislav.lisovskiy@intel.com>
References: <20191213103158.29520-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] [PATCH v8 2/4] drm/i915: Move dbuf slice update to
 proper place
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current DBuf slices update wasn't done in proper
plane, especially its "post" part, which should
disable those only once vblank had passed and
all other changes are committed.

v2: Fix to use dev_priv and intel_atomic_state
    instead of skl_ddb_values
    (to be nuked in Villes patch)

v3: Renamed "enabled_slices" to "enabled_dbuf_slices_num"

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 38 ++++++++++++++------
 1 file changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 792bdb65ee14..7d3405dea4f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14637,6 +14637,28 @@ static void intel_update_trans_port_sync_crtcs(struct intel_crtc *crtc,
 				       state);
 }
 
+static void icl_dbuf_slice_pre_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	u8 hw_enabled_slices = dev_priv->enabled_dbuf_slices_num;
+	u8 required_slices = state->enabled_dbuf_slices_num;
+
+	/* If 2nd DBuf slice required, enable it here */
+	if (INTEL_GEN(dev_priv) >= 11 && required_slices > hw_enabled_slices)
+		icl_dbuf_slices_update(dev_priv, required_slices);
+}
+
+static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	u8 hw_enabled_slices = dev_priv->enabled_dbuf_slices_num;
+	u8 required_slices = state->enabled_dbuf_slices_num;
+
+	/* If 2nd DBuf slice is no more required disable it */
+	if (INTEL_GEN(dev_priv) >= 11 && required_slices < hw_enabled_slices)
+		icl_dbuf_slices_update(dev_priv, required_slices);
+}
+
 static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
@@ -14645,8 +14667,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	unsigned int updated = 0;
 	bool progress;
 	int i;
-	u8 hw_enabled_slices = dev_priv->enabled_dbuf_slices_num;
-	u8 required_slices = state->enabled_dbuf_slices_num;
 	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i)
@@ -14654,10 +14674,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if (new_crtc_state->hw.active)
 			entries[i] = old_crtc_state->wm.skl.ddb;
 
-	/* If 2nd DBuf slice required, enable it here */
-	if (INTEL_GEN(dev_priv) >= 11 && required_slices > hw_enabled_slices)
-		icl_dbuf_slices_update(dev_priv, required_slices);
-
 	/*
 	 * Whenever the number of active pipes changes, we need to make sure we
 	 * update the pipes in the right order so that their ddb allocations
@@ -14714,10 +14730,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 			progress = true;
 		}
 	} while (progress);
-
-	/* If 2nd DBuf slice is no more required disable it */
-	if (INTEL_GEN(dev_priv) >= 11 && required_slices < hw_enabled_slices)
-		icl_dbuf_slices_update(dev_priv, required_slices);
 }
 
 static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
@@ -14847,6 +14859,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	if (state->modeset)
 		intel_encoders_update_prepare(state);
 
+	/* Enable all new slices, we might need */
+	icl_dbuf_slice_pre_update(state);
+
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.commit_modeset_enables(state);
 
@@ -14906,6 +14921,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	if (state->modeset && intel_can_enable_sagv(state))
 		intel_enable_sagv(dev_priv);
 
+	/* Disable all slices, we don't need */
+	icl_dbuf_slice_post_update(state);
+
 	drm_atomic_helper_commit_hw_done(&state->base);
 
 	if (state->modeset) {
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
