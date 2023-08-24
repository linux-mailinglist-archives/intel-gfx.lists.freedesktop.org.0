Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFF9786972
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3EE10E4FC;
	Thu, 24 Aug 2023 08:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D40710E4F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864328; x=1724400328;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zEaCkJTAv096Lwy9FS3MS4OEvSV79aV1aPleipB61GE=;
 b=l1jVVFboKFqZXmIi2z7fk5Usa1tUxy2o6UAjfS7wZ0cRVDLVVxtm3IdQ
 4MO346kse/BWtkw4P8n6tkNZVs24vy9JAmiG7BQgZ6IiqpmG+tJGCKEaB
 CFlPWZnMwFMZS2UIpFlCZLk48+tofqYD4ZUBQHg6qLNmdljUk9k/2hnAO
 hFPw1TjfEiHP/chM+Ri6kPWZ9quM7Khu3iSXKaRm6mhb7uoN68FJGx1+U
 07tPKbA/DuO3jivmf2Xo1JDD9a2I9MEhdjy41BR611515X1PJBJEN0DsN
 L1zlBJBOVFpH8Kpko8e/QEzXvlk8YWfpkJdTEqDlSUZ7FgK2wqNyC8okS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345908"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345908"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710363"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:16 +0300
Message-Id: <20230824080517.693621-22-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 21/22] drm/i915/dp_mst: Improve BW sharing
 between MST streams
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

At the moment modesetting a stream CRTC will fail if the stream's BW
along with the current BW of all the other streams on the same MST link
is above the total BW of the MST link. Make the BW sharing more dynamic
by trying to reduce the link bpp of one or more streams on the MST link
in this case.

When selecting a stream to reduce the BW for, take into account which
link segment in the MST topology ran out of BW and which streams go
through this link segment. For instance with A,B,C streams in the same
MST topology A and B may share the BW of a link segment downstream of a
branch device, stream C not downstream of the branch device, hence not
affecting this BW. If this link segment's BW runs out one or both of
stream A/B's BW will be reduced until their total BW is within limits.

While reducing the link bpp for a given stream DSC may need to be
enabled for it, which requires FEC on the whole MST link. Check for this
condition and recompute the state for all streams taking the FEC
overhead into account (on 8b/10b links).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  14 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  13 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 128 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   3 +
 7 files changed, 156 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index ee4cbf80ddb55..743c3afbdb822 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -38,6 +38,7 @@
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
+#include "intel_dp_mst.h"
 #include "intel_fdi.h"
 #include "intel_global_state.h"
 #include "intel_hdcp.h"
@@ -458,7 +459,7 @@ static int intel_atomic_check_link(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	return 0;
+	return intel_dp_mst_atomic_check_link(state, limits);
 }
 
 static bool
@@ -469,6 +470,12 @@ assert_link_limit_change_valid(struct drm_i915_private *i915,
 	bool bpps_changed = false;
 	enum pipe pipe;
 
+	/* FEC can't be forced off after it was forced on. */
+	if (drm_WARN_ON(&i915->drm,
+			(old_limits->force_fec_pipes & new_limits->force_fec_pipes) !=
+			old_limits->force_fec_pipes))
+		return false;
+
 	for_each_pipe(i915, pipe) {
 		/* The bpp limit can only decrease. */
 		if (drm_WARN_ON(&i915->drm,
@@ -481,8 +488,11 @@ assert_link_limit_change_valid(struct drm_i915_private *i915,
 			bpps_changed = true;
 	}
 
+	/* At least one limit must change. */
 	if (drm_WARN_ON(&i915->drm,
-			!bpps_changed))
+			!bpps_changed &&
+			new_limits->force_fec_pipes ==
+			old_limits->force_fec_pipes))
 		return false;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 32778bd01bb05..1200a9d9d29f1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4673,6 +4673,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	crtc_state->fec_enable = limits->force_fec_pipes & BIT(crtc->pipe);
 	crtc_state->max_link_bpp_x16 = limits->max_bpp_x16[crtc->pipe];
 
 	if (crtc_state->pipe_bpp > to_bpp_int(crtc_state->max_link_bpp_x16)) {
@@ -6384,10 +6385,6 @@ int intel_atomic_check(struct drm_device *dev,
 		goto fail;
 	}
 
-	ret = drm_dp_mst_atomic_check(&state->base);
-	if (ret)
-		goto fail;
-
 	ret = intel_atomic_check_planes(state);
 	if (ret)
 		goto fail;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6f4f46658df22..f5a0fcc340aa1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -67,6 +67,7 @@ struct intel_tc_port;
  */
 
 struct intel_link_bw_limits {
+	u8 force_fec_pipes;
 	u8 min_bpp_pipes;
 	/* in 1/16 bpp units */
 	int max_bpp_x16[I915_MAX_PIPES];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e5b1567d2a9d4..3896532ab670f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1369,8 +1369,8 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
 	return false;
 }
 
-static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
-				  const struct intel_crtc_state *pipe_config)
+bool intel_dp_supports_fec(struct intel_dp *intel_dp,
+			   const struct intel_crtc_state *pipe_config)
 {
 	return intel_dp_source_supports_fec(intel_dp, pipe_config) &&
 		drm_dp_sink_supports_fec(intel_dp->fec_capable);
@@ -2110,8 +2110,9 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		&pipe_config->hw.adjusted_mode;
 	int ret;
 
-	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
-		intel_dp_supports_fec(intel_dp, pipe_config);
+	pipe_config->fec_enable = pipe_config->fec_enable ||
+		(!intel_dp_is_edp(intel_dp) &&
+		 intel_dp_supports_fec(intel_dp, pipe_config));
 
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
@@ -2303,6 +2304,10 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	bool dsc_needed;
 	int ret = 0;
 
+	if (pipe_config->fec_enable &&
+	    !intel_dp_supports_fec(intel_dp, pipe_config))
+		return -EINVAL;
+
 	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
 				    adjusted_mode->crtc_clock))
 		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0b8a4bbef8f7d..29b46181fe64e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -132,6 +132,8 @@ static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 	return ~((1 << lane_count) - 1) & 0xf;
 }
 
+bool intel_dp_supports_fec(struct intel_dp *intel_dp,
+			   const struct intel_crtc_state *pipe_config);
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock);
 u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 97bf55f289478..3c9b3a2ac88a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -383,6 +383,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	bool dsc_needed;
 	int ret = 0;
 
+	if (pipe_config->fec_enable &&
+	    !intel_dp_supports_fec(intel_dp, pipe_config))
+		return -EINVAL;
+
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
@@ -504,6 +508,130 @@ intel_dp_mst_transcoder_mask(struct intel_atomic_state *state,
 	return transcoders;
 }
 
+static u8 get_pipes_downstream_of_mst_port(struct intel_atomic_state *state,
+					   struct drm_dp_mst_topology_mgr *mst_mgr,
+					   struct drm_dp_mst_port *parent_port)
+{
+	const struct intel_digital_connector_state *conn_state;
+	struct intel_connector *connector;
+	u8 mask = 0;
+	int i;
+
+	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
+		if (!conn_state->base.crtc)
+			continue;
+
+		if (&connector->mst_port->mst_mgr != mst_mgr)
+			continue;
+
+		if (connector->port != parent_port &&
+		    !drm_dp_mst_port_downstream_of_parent(mst_mgr,
+							  connector->port,
+							  parent_port))
+			continue;
+
+		mask |= BIT(to_intel_crtc(conn_state->base.crtc)->pipe);
+	}
+
+	return mask;
+}
+
+static int intel_dp_mst_check_fec_change(struct intel_atomic_state *state,
+					 struct drm_dp_mst_topology_mgr *mst_mgr,
+					 struct intel_link_bw_limits *limits)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc *crtc;
+	u8 mst_pipe_mask;
+	u8 fec_pipe_mask = 0;
+	int ret;
+
+	mst_pipe_mask = get_pipes_downstream_of_mst_port(state, mst_mgr, NULL);
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, mst_pipe_mask) {
+		struct intel_crtc_state *crtc_state =
+			intel_atomic_get_new_crtc_state(state, crtc);
+
+		/* Atomic connector check should've added all the MST CRTCs. */
+		if (drm_WARN_ON(&i915->drm, !crtc_state))
+			return -EINVAL;
+
+		if (crtc_state->fec_enable)
+			fec_pipe_mask |= BIT(crtc->pipe);
+	}
+
+	if (!fec_pipe_mask || mst_pipe_mask == fec_pipe_mask)
+		return 0;
+
+	limits->force_fec_pipes |= mst_pipe_mask;
+
+	ret = intel_modeset_pipes_in_mask(state, "MST FEC",
+					  mst_pipe_mask, false);
+
+	return ret ? : -EAGAIN;
+}
+
+static int intel_dp_mst_check_bw(struct intel_atomic_state *state,
+				 struct drm_dp_mst_topology_mgr *mst_mgr,
+				 struct drm_dp_mst_topology_state *mst_state,
+				 struct intel_link_bw_limits *limits)
+{
+	struct drm_dp_mst_port *mst_port;
+	u8 mst_port_pipes;
+	int ret;
+
+	ret = drm_dp_mst_atomic_check_mgr(&state->base, mst_mgr, mst_state, &mst_port);
+	if (ret != -ENOSPC)
+		return ret;
+
+	mst_port_pipes = get_pipes_downstream_of_mst_port(state, mst_mgr, mst_port);
+
+	ret = intel_atomic_reduce_link_bpp(state, limits,
+					   mst_port_pipes, "MST link BW");
+
+	return ret ? : -EAGAIN;
+}
+
+/**
+ * intel_dp_mst_atomic_check_link - check all modeset MST link configuration
+ * @state: intel atomic state
+ * @limits: link BW limits
+ *
+ * Check the link configuration for all modeset MST outputs. If the
+ * configuration is invalid @limits will be updated if possible to
+ * reduce the total BW, after which the configuration for all CRTCs in
+ * @state must be recomputed with the updated @limits.
+ *
+ * Returns:
+ *   - 0 if the confugration is valid
+ *   - %-EAGAIN, if the configuration is invalid and @limits got updated
+ *     with fallback values with which the configuration of all CRTCs in
+ *     @state must be recomputed
+ *   - Other negative error, if the configuration is invalid without a
+ *     fallback possibility, or the check failed for another reason
+ */
+int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
+				   struct intel_link_bw_limits *limits)
+{
+	struct drm_dp_mst_topology_mgr *mgr;
+	struct drm_dp_mst_topology_state *mst_state;
+	int ret;
+	int i;
+
+	for_each_new_mst_mgr_in_state(&state->base, mgr, mst_state, i) {
+		ret = intel_dp_mst_check_fec_change(state, mgr, limits);
+		if (ret)
+			return ret;
+
+		ret = intel_dp_mst_check_bw(state, mgr, mst_state,
+					    limits);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int intel_dp_mst_compute_config_late(struct intel_encoder *encoder,
 					    struct intel_crtc_state *crtc_state,
 					    struct drm_connector_state *conn_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index f1815bb722672..4e836b9ac6061 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -13,6 +13,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_dp;
+struct intel_link_bw_limits;
 
 int intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_id);
 void intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port);
@@ -22,5 +23,7 @@ bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
 int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
 					     struct intel_crtc *crtc);
+int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
+				   struct intel_link_bw_limits *limits);
 
 #endif /* __INTEL_DP_MST_H__ */
-- 
2.37.2

