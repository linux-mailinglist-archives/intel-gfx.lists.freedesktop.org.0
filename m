Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF84541EE12
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 15:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 148276ECB5;
	Fri,  1 Oct 2021 13:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C596ECB5
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 13:02:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="222226086"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="222226086"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 06:01:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="619077234"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 01 Oct 2021 06:01:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 16:01:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Fri,  1 Oct 2021 16:01:06 +0300
Message-Id: <20211001130107.1746-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
References: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/10] drm/i915: Prepare link training for
 per-lane drive settings
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Adjust the link training code to accommodate per-lane drive settings,
if supported by the platform. Actually enabling this will involve
some changes to each platform's .set_signal_level() implementation,
so for the moment all supported platforms will keep using the current
codepath that just uses the same drive settings for all the lanes.

v2: Fix min() vs. max() fumble
v3: Compact the debug print to a single line

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 78 ++++++++++++++-----
 1 file changed, 60 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 62d5c6cf60ee..6e9232126788 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -301,21 +301,33 @@ static u8 intel_dp_phy_preemph_max(struct intel_dp *intel_dp,
 	return preemph_max;
 }
 
-void
-intel_dp_get_adjust_train(struct intel_dp *intel_dp,
-			  const struct intel_crtc_state *crtc_state,
-			  enum drm_dp_phy dp_phy,
-			  const u8 link_status[DP_LINK_STATUS_SIZE])
+static bool has_per_lane_signal_levels(struct intel_dp *intel_dp,
+				       enum drm_dp_phy dp_phy)
+{
+	return false;
+}
+
+static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
+					 const struct intel_crtc_state *crtc_state,
+					 enum drm_dp_phy dp_phy,
+					 const u8 link_status[DP_LINK_STATUS_SIZE],
+					 int lane)
 {
 	u8 v = 0;
 	u8 p = 0;
-	int lane;
 	u8 voltage_max;
 	u8 preemph_max;
 
-	for (lane = 0; lane < crtc_state->lane_count; lane++) {
-		v = max(v, drm_dp_get_adjust_request_voltage(link_status, lane));
-		p = max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane));
+	if (has_per_lane_signal_levels(intel_dp, dp_phy)) {
+		lane = min(lane, crtc_state->lane_count - 1);
+
+		v = drm_dp_get_adjust_request_voltage(link_status, lane);
+		p = drm_dp_get_adjust_request_pre_emphasis(link_status, lane);
+	} else {
+		for (lane = 0; lane < crtc_state->lane_count; lane++) {
+			v = max(v, drm_dp_get_adjust_request_voltage(link_status, lane));
+			p = max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane));
+		}
 	}
 
 	preemph_max = intel_dp_phy_preemph_max(intel_dp, dp_phy);
@@ -328,8 +340,21 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 	if (v >= voltage_max)
 		v = voltage_max | DP_TRAIN_MAX_SWING_REACHED;
 
+	return v | p;
+}
+
+void
+intel_dp_get_adjust_train(struct intel_dp *intel_dp,
+			  const struct intel_crtc_state *crtc_state,
+			  enum drm_dp_phy dp_phy,
+			  const u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	int lane;
+
 	for (lane = 0; lane < 4; lane++)
-		intel_dp->train_set[lane] = v | p;
+		intel_dp->train_set[lane] =
+			intel_dp_get_lane_adjust_train(intel_dp, crtc_state,
+						       dp_phy, link_status, lane);
 }
 
 static int intel_dp_training_pattern_set_reg(struct intel_dp *intel_dp,
@@ -394,22 +419,39 @@ intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 	intel_dp->set_link_train(intel_dp, crtc_state, dp_train_pat);
 }
 
+#define TRAIN_SET_FMT "%d%s/%d%s/%d%s/%d%s"
+#define _TRAIN_SET_VSWING_ARGS(train_set) \
+	((train_set) & DP_TRAIN_VOLTAGE_SWING_MASK) >> DP_TRAIN_VOLTAGE_SWING_SHIFT, \
+	(train_set) & DP_TRAIN_MAX_SWING_REACHED ? "(max)" : ""
+#define TRAIN_SET_VSWING_ARGS(train_set) \
+	_TRAIN_SET_VSWING_ARGS((train_set)[0]), \
+	_TRAIN_SET_VSWING_ARGS((train_set)[1]), \
+	_TRAIN_SET_VSWING_ARGS((train_set)[2]), \
+	_TRAIN_SET_VSWING_ARGS((train_set)[3])
+#define _TRAIN_SET_PREEMPH_ARGS(train_set) \
+	((train_set) & DP_TRAIN_PRE_EMPHASIS_MASK) >> DP_TRAIN_PRE_EMPHASIS_SHIFT, \
+	(train_set) & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ? "(max)" : ""
+#define TRAIN_SET_PREEMPH_ARGS(train_set) \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[0]), \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[1]), \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[2]), \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[3])
+
 void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 				const struct intel_crtc_state *crtc_state,
 				enum drm_dp_phy dp_phy)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u8 train_set = intel_dp->train_set[0];
 	char phy_name[10];
 
-	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s, pre-emphasis level %d%s, at %s\n",
-		    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
-		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "",
-		    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
-		    DP_TRAIN_PRE_EMPHASIS_SHIFT,
-		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
-		    " (max)" : "",
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] lanes: %d, "
+		    "vswing levels: " TRAIN_SET_FMT ", "
+		    "pre-emphasis levels: " TRAIN_SET_FMT ", at %s\n",
+		    encoder->base.base.id, encoder->base.name,
+		    crtc_state->lane_count,
+		    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
+		    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set),
 		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
 
 	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
-- 
2.32.0

