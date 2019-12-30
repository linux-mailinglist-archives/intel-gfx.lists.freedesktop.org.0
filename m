Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF52512D1F2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:26:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB656E029;
	Mon, 30 Dec 2019 16:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DE289FF9;
 Mon, 30 Dec 2019 16:26:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 08:26:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,375,1571727600"; d="scan'208";a="251418111"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2019 08:26:03 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 30 Dec 2019 21:45:23 +0530
Message-Id: <20191230161523.32222-10-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191230161523.32222-1-animesh.manna@intel.com>
References: <20191230161523.32222-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 9/9] drm/i915/dp: [FIXME] Program vswing,
 pre-emphasis, test-pattern
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com, harry.wentland@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch process phy compliance request by programming requested
vswing, pre-emphasis and test pattern.

Note: FIXME tag added as design discusion is ongoing in previous patch
series. Some temporary fix added and the patch is under-development, not for
review.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 ++++++-
 drivers/gpu/drm/i915/display/intel_dp.c      | 74 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h      |  2 +
 drivers/gpu/drm/i915/i915_drv.h              |  2 +
 4 files changed, 101 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index da5266e76738..c00be1eb67d6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14480,6 +14480,9 @@ static int intel_atomic_check(struct drm_device *dev,
 	int ret, i;
 	bool any_ms = false;
 
+	if (dev_priv->dp_phy_comp)
+		return 0;
+
 	/* Catch I915_MODE_FLAG_INHERITED */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
@@ -15207,10 +15210,23 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
+	const struct drm_connector_state *conn_state;
+	struct drm_connector *conn;
 	u64 put_domains[I915_MAX_PIPES] = {};
 	intel_wakeref_t wakeref = 0;
 	int i;
 
+	if(dev_priv->dp_phy_comp) {
+		for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
+			struct intel_encoder *encoder =
+				to_intel_encoder(conn_state->best_encoder);
+			struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
+
+			intel_dp_process_phy_request(intel_dp);
+		}
+		goto dp_phy_comp1;
+	}
+
 	intel_atomic_commit_fence_wait(state);
 
 	drm_atomic_helper_wait_for_dependencies(&state->base);
@@ -15345,6 +15361,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	if (state->modeset && intel_can_enable_sagv(state))
 		intel_enable_sagv(dev_priv);
 
+dp_phy_comp1:
 	drm_atomic_helper_commit_hw_done(&state->base);
 
 	if (state->modeset) {
@@ -15436,6 +15453,7 @@ static int intel_atomic_commit(struct drm_device *dev,
 	state->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
 	drm_atomic_state_get(&state->base);
+	if (!dev_priv->dp_phy_comp) {
 	i915_sw_fence_init(&state->commit_ready,
 			   intel_atomic_commit_ready);
 
@@ -15474,11 +15492,13 @@ static int intel_atomic_commit(struct drm_device *dev,
 		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
 		return ret;
 	}
+	}
 
 	ret = drm_atomic_helper_setup_commit(&state->base, nonblock);
 	if (!ret)
 		ret = drm_atomic_helper_swap_state(&state->base, true);
 
+	if (!dev_priv->dp_phy_comp) {
 	if (ret) {
 		i915_sw_fence_commit(&state->commit_ready);
 
@@ -15489,6 +15509,7 @@ static int intel_atomic_commit(struct drm_device *dev,
 	dev_priv->wm.distrust_bios_wm = false;
 	intel_shared_dpll_swap_state(state);
 	intel_atomic_track_fbs(state);
+	}
 
 	if (state->global_state_changed) {
 		assert_global_state_locked(dev_priv);
@@ -15505,8 +15526,9 @@ static int intel_atomic_commit(struct drm_device *dev,
 
 	drm_atomic_state_get(&state->base);
 	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
-
+	if (!dev_priv->dp_phy_comp) {
 	i915_sw_fence_commit(&state->commit_ready);
+	}
 	if (nonblock && state->modeset) {
 		queue_work(dev_priv->modeset_wq, &state->base.commit_work);
 	} else if (nonblock) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7c3f65e5d88b..c3454053a212 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5060,9 +5060,82 @@ static inline void intel_dp_phy_pattern_update(struct intel_dp *intel_dp)
 	}
 }
 
+static void
+intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp)
+{
+	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct drm_device *dev = intel_dig_port->base.base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum port port = intel_dig_port->base.port;
+	u32 ddi_buf_ctl_value, dp_tp_ctl_value, trans_ddi_func_ctl_value;
+
+	ddi_buf_ctl_value = I915_READ(DDI_BUF_CTL(port));
+	dp_tp_ctl_value = I915_READ(TGL_DP_TP_CTL(port));
+	trans_ddi_func_ctl_value = I915_READ(TRANS_DDI_FUNC_CTL(port));
+
+	ddi_buf_ctl_value        &= ~(DDI_BUF_CTL_ENABLE | DDI_PORT_WIDTH_MASK);
+	dp_tp_ctl_value          &= ~DP_TP_CTL_ENABLE;
+	trans_ddi_func_ctl_value &= ~(TRANS_DDI_FUNC_ENABLE |
+				      DDI_PORT_WIDTH_MASK);
+
+	I915_WRITE(DDI_BUF_CTL(port), ddi_buf_ctl_value);
+	I915_WRITE(TGL_DP_TP_CTL(port), dp_tp_ctl_value);
+	I915_WRITE(TRANS_DDI_FUNC_CTL(port), trans_ddi_func_ctl_value);
+}
+
+static void
+intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp, uint8_t lane_cnt)
+{
+	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct drm_device *dev = intel_dig_port->base.base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum port port = intel_dig_port->base.port;
+	u32 ddi_buf_ctl_value, dp_tp_ctl_value, trans_ddi_func_ctl_value;
+
+	ddi_buf_ctl_value = I915_READ(DDI_BUF_CTL(port));
+	dp_tp_ctl_value = I915_READ(TGL_DP_TP_CTL(port));
+	trans_ddi_func_ctl_value = I915_READ(TRANS_DDI_FUNC_CTL(port));
+
+	ddi_buf_ctl_value |= DDI_BUF_CTL_ENABLE | DDI_PORT_WIDTH(lane_cnt);
+	dp_tp_ctl_value |= DP_TP_CTL_ENABLE;
+	trans_ddi_func_ctl_value |= TRANS_DDI_FUNC_ENABLE |
+				    DDI_PORT_WIDTH(lane_cnt);
+
+	I915_WRITE(TRANS_DDI_FUNC_CTL(port), trans_ddi_func_ctl_value);
+	I915_WRITE(TGL_DP_TP_CTL(port), dp_tp_ctl_value);
+	I915_WRITE(DDI_BUF_CTL(port), ddi_buf_ctl_value);
+}
+
+void intel_dp_process_phy_request(struct intel_dp *intel_dp)
+{
+	struct drm_dp_phy_test_params *data =
+		&intel_dp->compliance.test_data.phytest;
+	u8 link_status[DP_LINK_STATUS_SIZE];
+
+	if (!intel_dp_get_link_status(intel_dp, link_status)) {
+		DRM_DEBUG_KMS("failed to get link status\n");
+		return;
+	}
+
+	/* retrieve vswing & pre-emphasis setting */
+	intel_dp_get_adjust_train(intel_dp, link_status);
+
+	intel_dp_autotest_phy_ddi_disable(intel_dp);
+
+	intel_dp_set_signal_levels(intel_dp);
+
+	intel_dp_phy_pattern_update(intel_dp);
+
+	intel_dp_autotest_phy_ddi_enable(intel_dp, data->num_lanes);
+
+	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
+				    link_status[DP_DPCD_REV]);
+}
+
 static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
 {
 	u8 test_result = DP_TEST_NAK;
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
 	test_result = intel_dp_prepare_phytest(intel_dp);
 	if (test_result != DP_TEST_ACK)
@@ -5070,6 +5143,7 @@ static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
 
 	/* Set test active flag here so userspace doesn't interrupt things */
 	intel_dp->compliance.test_active = 1;
+	dev_priv->dp_phy_comp = true;
 
 	return test_result;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 83eadc87af26..65e4a01a4199 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -121,6 +121,8 @@ void intel_dp_hdr_metadata_enable(struct intel_dp *intel_dp,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state);
 bool intel_digital_port_connected(struct intel_encoder *encoder);
+void intel_dp_process_phy_request(struct intel_dp *intel_dp);
+
 
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b7f122dccdca..b5839db97c1f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1283,6 +1283,8 @@ struct drm_i915_private {
 
 	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
 
+	bool dp_phy_comp;
+
 	/*
 	 * NOTE: This is the dri1/ums dungeon, don't add stuff here. Your patch
 	 * will be rejected. Instead look for a better place.
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
