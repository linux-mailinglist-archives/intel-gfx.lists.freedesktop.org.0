Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 035CE11FB3C
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 21:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098E389CD4;
	Sun, 15 Dec 2019 20:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 854D58929D
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 20:55:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Dec 2019 12:55:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,319,1571727600"; d="scan'208";a="416239943"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 15 Dec 2019 12:55:00 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 15 Dec 2019 22:52:08 +0200
Message-Id: <20191215205210.31667-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215205210.31667-1-stanislav.lisovskiy@intel.com>
References: <20191215205210.31667-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] [PATCH v9 2/4] drm/i915: Move dbuf slice update to
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
place, especially its "post" part, which should
disable those only once vblank had passed and
all other changes are committed.

v2: Fix to use dev_priv and intel_atomic_state
    instead of skl_ddb_values
    (to be nuked in Villes patch)

v3: Renamed "enabled_slices" to "enabled_dbuf_slices_num"
    (Matt Roper)

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 38 ++++++++++++++------
 1 file changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d9ae9beb67df..73d9c275bc20 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14549,13 +14549,33 @@ static void intel_update_trans_port_sync_crtcs(struct intel_crtc *crtc,
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
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
-	u8 hw_enabled_slices = dev_priv->enabled_dbuf_slices_num;
-	u8 required_slices = state->enabled_dbuf_slices_num;
 	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
 	u8 dirty_pipes = 0;
 	int i;
@@ -14568,10 +14588,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 			dirty_pipes |= BIT(crtc->pipe);
 	}
 
-	/* If 2nd DBuf slice required, enable it here */
-	if (INTEL_GEN(dev_priv) >= 11 && required_slices > hw_enabled_slices)
-		icl_dbuf_slices_update(dev_priv, required_slices);
-
 	/*
 	 * Whenever the number of active pipes changes, we need to make sure we
 	 * update the pipes in the right order so that their ddb allocations
@@ -14620,10 +14636,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 				intel_wait_for_vblank(dev_priv, pipe);
 		}
 	}
-
-	/* If 2nd DBuf slice is no more required disable it */
-	if (INTEL_GEN(dev_priv) >= 11 && required_slices < hw_enabled_slices)
-		icl_dbuf_slices_update(dev_priv, required_slices);
 }
 
 static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
@@ -14753,6 +14765,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	if (state->modeset)
 		intel_encoders_update_prepare(state);
 
+	/* Enable all new slices, we might need */
+	icl_dbuf_slice_pre_update(state);
+
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.commit_modeset_enables(state);
 
@@ -14828,6 +14843,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
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
