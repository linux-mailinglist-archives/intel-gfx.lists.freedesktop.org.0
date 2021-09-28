Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FB241B92D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 23:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575456E10A;
	Tue, 28 Sep 2021 21:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E4FF6E10A
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 21:22:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="224877391"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="224877391"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 14:22:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="554311976"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 28 Sep 2021 14:22:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Sep 2021 00:22:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 00:22:53 +0300
Message-Id: <20210928212253.15531-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210927182455.27119-9-ville.syrjala@linux.intel.com>
References: <20210927182455.27119-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915: Prepare link training for
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 68 +++++++++++++------
 1 file changed, 49 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index d52929855cd0..5452f777afac 100644
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
+static bool has_per_lane_signal_levels(struct drm_i915_private *i915,
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
+	if (has_per_lane_signal_levels(dp_to_i915(intel_dp), dp_phy)) {
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
@@ -400,17 +425,22 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u8 train_set = intel_dp->train_set[0];
 	char phy_name[10];
+	int lane;
 
-	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s, pre-emphasis level %d%s, at %s\n",
-		    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
-		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "",
-		    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
-		    DP_TRAIN_PRE_EMPHASIS_SHIFT,
-		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
-		    " (max)" : "",
-		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
+	for (lane = 0; lane < crtc_state->lane_count; lane++) {
+		u8 train_set = intel_dp->train_set[lane];
+
+		drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s lane %d, vswing level %d%s, pre-emphasis level %d%s\n",
+			    encoder->base.base.id, encoder->base.name,
+			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    lane, train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
+			    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "",
+			    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
+			    DP_TRAIN_PRE_EMPHASIS_SHIFT,
+			    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
+			    " (max)" : "");
+	}
 
 	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
 		encoder->set_signal_levels(encoder, crtc_state);
-- 
2.32.0

