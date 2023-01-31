Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 390326830C9
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA97D10E379;
	Tue, 31 Jan 2023 15:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A703E10E378
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675177563; x=1706713563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zmZ0gOJSfZMAj5j10BOiwMSm9caAb0hzliDFDWSGRxA=;
 b=B/vqTZzxAI5ErEgtVS4QU6huyTUHVZYvqsa0/8GRJj4HYPWqqkAeuUiG
 AhiMxSuVhwv5n2bgz3/i8pOmVqyMuKkcXCs9fGMRWK+I5ES8d9X7PSCyc
 D2yZhLjlbxjouFbuRCPeCkx9Q7PGWUsX5AEQKC3DC/bESpmzAjZx8ARqu
 OjnDZLfCo122NFqss96bisIUMaq5gTfDxUycSWcMQyN6+IA4FPUE+lGMT
 zaa8DC0L1N1saq+egqpFL9esDh1OJg9TvxTxjSAsiCBN6QcmpYEnjLFIU
 JPuUQwlrV02IP6DAdVMpM66NNcBpjdNAaIEyK+waQ4F71BIq9Kfqmq7e8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="308205553"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="308205553"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:06:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="807155306"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="807155306"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:06:02 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 17:05:38 +0200
Message-Id: <20230131150548.1614458-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230131150548.1614458-1-imre.deak@intel.com>
References: <20230131150548.1614458-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/17] drm/i915: Factor out helpers for
 modesetting CRTCs and connectors
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

Factor out and add the functions to intel_atomic.c to modeset pipes or
connectors. These can be used in a few places, also making it a bit
clearer where modeset forcing is needed.

After this patch the MST topology state for modesetted CRTCs is added
already in the connector's atomic check function, but that shouldn't
matter since the state would be added later anyway in the encoders'
compute config function. Also the crtc_state->update_pipe flag will be
reset for CRTCs modesetted from a connector check function, but this
should be ok, since the flag can get set only later in
intel_crtc_check_fastset().

v2: Use intel_dp_mst_add_topology_state_for_connector() when modesetting
    a connector, to avoid iterating connectors redundantly.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c  | 135 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_atomic.h  |   7 +
 drivers/gpu/drm/i915/display/intel_cdclk.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c |  59 +-------
 drivers/gpu/drm/i915/display/intel_display.h |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c      |  38 +-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  27 +---
 drivers/gpu/drm/i915/display/intel_dp_mst.h  |   4 +
 drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
 9 files changed, 159 insertions(+), 117 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index a9a3f3715279d..0f1c5b9c9a826 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -38,6 +38,7 @@
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
+#include "intel_dp_mst.h"
 #include "intel_global_state.h"
 #include "intel_hdcp.h"
 #include "intel_psr.h"
@@ -613,3 +614,137 @@ intel_atomic_get_crtc_state(struct drm_atomic_state *state,
 
 	return to_intel_crtc_state(crtc_state);
 }
+
+static int modeset_pipe(struct intel_atomic_state *state,
+			struct intel_crtc *crtc, const char *reason)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state;
+
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
+		    crtc->base.base.id, crtc->base.name, reason);
+
+	crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
+	if (IS_ERR(crtc_state))
+		return PTR_ERR(crtc_state);
+
+	crtc_state->uapi.mode_changed = true;
+	crtc_state->update_pipe = false;
+
+	return intel_atomic_add_affected_planes(state, crtc);
+}
+
+/**
+ * intel_atomic_modeset_connector - add a connector to the atomic state, force modeset on its CRTC if any
+ * @state: atomic state
+ * @connector: connector to add the state for
+ * @reason: the reason why the connector needs to be added
+ *
+ * Add the @connector to the atomic state with its CRTC state and force a modeset
+ * on the CRTC if any.
+ *
+ * This function can be called only before computing the new plane states.
+ *
+ * Returns 0 in case of success, a negative error code on failure.
+ */
+int intel_atomic_modeset_connector(struct intel_atomic_state *state,
+				   struct intel_connector *connector, const char *reason)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct drm_connector_state *conn_state;
+	struct intel_crtc *crtc;
+	int ret;
+
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Full modeset due to %s\n",
+		    connector->base.base.id, connector->base.name, reason);
+
+	conn_state = drm_atomic_get_connector_state(&state->base, &connector->base);
+	if (IS_ERR(conn_state))
+		return PTR_ERR(conn_state);
+
+	if (!conn_state->crtc)
+		return 0;
+
+	crtc = to_intel_crtc(conn_state->crtc);
+
+	ret = intel_dp_mst_add_topology_state_for_connector(state, connector, crtc);
+	if (ret)
+		return ret;
+
+	return modeset_pipe(state, crtc, reason);
+}
+
+/**
+ * intel_atomic_modeset_pipe - add a CRTC to the atomic state, force modeset on it
+ * @state: atomic state
+ * @crtc: CRTC to add the state for
+ * @reason: the reason why the CRTC needs to be added
+ *
+ * Add @crtc to the atomic state with all its connector and plane dependencies and
+ * force modeset on it.
+ *
+ * This function can be called only before computing the new plane states.
+ *
+ * Returns 0 in case of success, a negative error code on failure.
+ */
+int intel_atomic_modeset_pipe(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc, const char *reason)
+{
+	int ret;
+
+	ret = drm_atomic_add_affected_connectors(&state->base, &crtc->base);
+	if (ret)
+		return ret;
+
+	ret = intel_dp_mst_add_topology_state_for_crtc(state, crtc);
+	if (ret)
+		return ret;
+
+	return modeset_pipe(state, crtc, reason);
+}
+
+/**
+ * intel_atomic_modeset_all_pipes - add all active CRTCs to the atomic state, force modeset on them
+ * @state: atomic state
+ * @reason: the reason why the CRTCs need to be added
+ *
+ * Add all the CRTCs to the atomic state and if active also add their connector and plane
+ * dependencies and force a modeset on the CRTC.
+ *
+ * This function can be called only after computing the new plane states.
+ *
+ * Returns 0 in case of success, a negative error code on failure.
+ */
+int intel_atomic_modeset_all_pipes(struct intel_atomic_state *state,
+				   const char *reason)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc *crtc;
+
+	/*
+	 * Add all pipes to the state, and force
+	 * a modeset on all the active ones.
+	 */
+	for_each_intel_crtc(&dev_priv->drm, crtc) {
+		struct intel_crtc_state *crtc_state;
+		int ret;
+
+		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
+		if (IS_ERR(crtc_state))
+			return PTR_ERR(crtc_state);
+
+		if (!crtc_state->hw.active ||
+		    intel_crtc_needs_modeset(crtc_state))
+			continue;
+
+		ret = intel_atomic_modeset_pipe(state, crtc, reason);
+		if (ret)
+			return ret;
+
+		crtc_state->update_planes |= crtc_state->active_planes;
+		crtc_state->async_flip_planes = 0;
+		crtc_state->do_async_flip = false;
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/drm/i915/display/intel_atomic.h
index 1dc439983dd94..84295d388e3cb 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic.h
@@ -56,4 +56,11 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 			       struct intel_crtc *intel_crtc,
 			       struct intel_crtc_state *crtc_state);
 
+int intel_atomic_modeset_pipe(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc, const char *reason);
+int intel_atomic_modeset_connector(struct intel_atomic_state *state,
+				   struct intel_connector *connector, const char *reason);
+int intel_atomic_modeset_all_pipes(struct intel_atomic_state *state,
+				   const char *reason);
+
 #endif /* __INTEL_ATOMIC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 82da76b586edb..4c8c9b6f8cfcb 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2930,7 +2930,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
-		ret = intel_modeset_all_pipes(state, "CDCLK change");
+		ret = intel_atomic_modeset_all_pipes(state, "CDCLK change");
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 38106cf63b3b9..36269ae34075e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5903,55 +5903,6 @@ intel_verify_planes(struct intel_atomic_state *state)
 			     plane_state->uapi.visible);
 }
 
-int intel_modeset_all_pipes(struct intel_atomic_state *state,
-			    const char *reason)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc *crtc;
-
-	/*
-	 * Add all pipes to the state, and force
-	 * a modeset on all the active ones.
-	 */
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
-		struct intel_crtc_state *crtc_state;
-		int ret;
-
-		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
-		if (IS_ERR(crtc_state))
-			return PTR_ERR(crtc_state);
-
-		if (!crtc_state->hw.active ||
-		    intel_crtc_needs_modeset(crtc_state))
-			continue;
-
-		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
-			    crtc->base.base.id, crtc->base.name, reason);
-
-		crtc_state->uapi.mode_changed = true;
-		crtc_state->update_pipe = false;
-
-		ret = drm_atomic_add_affected_connectors(&state->base,
-							 &crtc->base);
-		if (ret)
-			return ret;
-
-		ret = intel_dp_mst_add_topology_state_for_crtc(state, crtc);
-		if (ret)
-			return ret;
-
-		ret = intel_atomic_add_affected_planes(state, crtc);
-		if (ret)
-			return ret;
-
-		crtc_state->update_planes |= crtc_state->active_planes;
-		crtc_state->async_flip_planes = 0;
-		crtc_state->do_async_flip = false;
-	}
-
-	return 0;
-}
-
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -6671,15 +6622,7 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, modeset_pipes) {
 		int ret;
 
-		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
-
-		crtc_state->uapi.mode_changed = true;
-
-		ret = drm_atomic_add_affected_connectors(&state->base, &crtc->base);
-		if (ret)
-			return ret;
-
-		ret = intel_atomic_add_affected_planes(state, crtc);
+		ret = intel_atomic_modeset_pipe(state, crtc, "big joiner");
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index cb6f520cc575f..69528018428ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -537,8 +537,6 @@ void intel_modeset_driver_remove(struct drm_i915_private *i915);
 void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
 void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_resume(struct drm_device *dev);
-int intel_modeset_all_pipes(struct intel_atomic_state *state,
-			    const char *reason);
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 					  struct intel_power_domain_mask *old_domains);
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62cbab7402e93..501163c5c590d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4914,35 +4914,17 @@ static int intel_modeset_tile_group(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct drm_connector_list_iter conn_iter;
-	struct drm_connector *connector;
+	struct intel_connector *connector;
 	int ret = 0;
 
 	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
-		struct drm_connector_state *conn_state;
-		struct intel_crtc_state *crtc_state;
-		struct intel_crtc *crtc;
-
-		if (!connector->has_tile ||
-		    connector->tile_group->id != tile_group_id)
-			continue;
-
-		conn_state = drm_atomic_get_connector_state(&state->base,
-							    connector);
-		if (IS_ERR(conn_state)) {
-			ret = PTR_ERR(conn_state);
-			break;
-		}
-
-		crtc = to_intel_crtc(conn_state->crtc);
-
-		if (!crtc)
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		if (!connector->base.has_tile ||
+		    connector->base.tile_group->id != tile_group_id)
 			continue;
 
-		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
-		crtc_state->uapi.mode_changed = true;
-
-		ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
+		ret = intel_atomic_modeset_connector(state, connector,
+						     "connector tile group");
 		if (ret)
 			break;
 	}
@@ -4973,13 +4955,7 @@ static int intel_modeset_affected_transcoders(struct intel_atomic_state *state,
 		if (!(transcoders & BIT(crtc_state->cpu_transcoder)))
 			continue;
 
-		crtc_state->uapi.mode_changed = true;
-
-		ret = drm_atomic_add_affected_connectors(&state->base, &crtc->base);
-		if (ret)
-			return ret;
-
-		ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
+		ret = intel_atomic_modeset_pipe(state, crtc, "port syncing");
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 054a009e800d7..ca55b87bd8f3a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -434,35 +434,14 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
 
 	drm_connector_list_iter_begin(&dev_priv->drm, &connector_list_iter);
 	for_each_intel_connector_iter(connector_iter, &connector_list_iter) {
-		struct intel_digital_connector_state *conn_iter_state;
-		struct intel_crtc_state *crtc_state;
-		struct intel_crtc *crtc;
-
 		if (connector_iter->mst_port != connector->mst_port ||
 		    connector_iter == connector)
 			continue;
 
-		conn_iter_state = intel_atomic_get_digital_connector_state(state,
-									   connector_iter);
-		if (IS_ERR(conn_iter_state)) {
-			ret = PTR_ERR(conn_iter_state);
-			break;
-		}
-
-		if (!conn_iter_state->base.crtc)
-			continue;
-
-		crtc = to_intel_crtc(conn_iter_state->base.crtc);
-		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
-		if (IS_ERR(crtc_state)) {
-			ret = PTR_ERR(crtc_state);
-			break;
-		}
-
-		ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
+		ret = intel_atomic_modeset_connector(state, connector_iter,
+						     "MST master transcoder");
 		if (ret)
 			break;
-		crtc_state->uapi.mode_changed = true;
 	}
 	drm_connector_list_iter_end(&connector_list_iter);
 
@@ -1240,7 +1219,7 @@ bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state)
  *
  * Returns 0 on success, negative error code on failure.
  */
-static int
+int
 intel_dp_mst_add_topology_state_for_connector(struct intel_atomic_state *state,
 					      struct intel_connector *connector,
 					      struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index f1815bb722672..cd0ae661dc20b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 struct intel_atomic_state;
+struct intel_connector;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_digital_port;
@@ -22,5 +23,8 @@ bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
 int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
 					     struct intel_crtc *crtc);
+int intel_dp_mst_add_topology_state_for_connector(struct intel_atomic_state *state,
+						  struct intel_connector *connector,
+						  struct intel_crtc *crtc);
 
 #endif /* __INTEL_DP_MST_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 261cdab390b48..7bf95b3a6eb22 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2483,7 +2483,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 
 		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
 			/* TODO: Implement vblank synchronized MBUS joining changes */
-			ret = intel_modeset_all_pipes(state, "MBUS joining change");
+			ret = intel_atomic_modeset_all_pipes(state, "MBUS joining change");
 			if (ret)
 				return ret;
 		}
-- 
2.37.1

