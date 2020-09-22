Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4F7274277
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 14:51:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36B36E860;
	Tue, 22 Sep 2020 12:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D031E6E85D
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 12:51:39 +0000 (UTC)
IronPort-SDR: 7iqwmhn+SlWgdS/9RR2vvUXnmdPIi3r/auARN8DKkVzTc53JBQ0rhgpZkR+v9bIzc7d3sHdG5O
 rsSb+w1xw3ug==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="148342827"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="148342827"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:39 -0700
IronPort-SDR: Av1O8FBi/vCFRADd42985CfMgz/bb1NRE7C85HCzAQcOgAonYBRGFLPc7H7I50n9g7Bhdr6GyN
 ZOAu5+8YiPEw==
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="309485658"
Received: from ideak-desk.fi.intel.com (HELO localhost) ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:38 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Sep 2020 15:51:06 +0300
Message-Id: <20200922125106.30540-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922125106.30540-1-imre.deak@intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Switch to LTTPR non-transparent
 mode link training
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

The DP Standard's recommendation is to use the LTTPR non-transparent
mode link training if LTTPRs are detected, so let's do this.

Besides power-saving, the advantages of this are that the maximum number
of LTTPRs can only be used in non-transparent mode (the limit is 5-8 in
transparent mode), and it provides a way to narrow down the reason for a
link training failure to a given link segment. Non-transparent mode is
probably also the mode that was tested the most by the industry.

The changes in this patchset:
- Pass the DP PHY that is currently link trained to all LT helpers, so
  that these can access the correct LTTPR/DPRX DPCD registers.
- During LT take into account the LTTPR common lane rate/count and the
  per LTTPR-PHY vswing/pre-emph limits.
- Switch to LTTPR non-transparent LT mode and train each link segment
  according to the sequence in DP Standard v2.0 (complete CR/EQ for
  each segment before continuing with the next segment).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  14 +-
 .../drm/i915/display/intel_dp_link_training.c | 374 +++++++++++++++---
 .../drm/i915/display/intel_dp_link_training.h |  10 +-
 4 files changed, 327 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b04921eba73b..2fb4e9a6a316 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1281,6 +1281,7 @@ struct intel_dp {
 	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
 	u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
 	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
+	u8 lttpr_phy_caps[DP_MAX_LTTPR_COUNT][DP_LTTPR_PHY_CAP_SIZE];
 	u8 fec_capable;
 	/* source rates */
 	int num_source_rates;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d88f327aa9ef..54ad31044eef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -161,6 +161,7 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 		162000, 270000, 540000, 810000
 	};
 	int i, max_rate;
+	int max_lttpr_rate;
 
 	if (drm_dp_has_quirk(&intel_dp->desc, 0,
 			     DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS)) {
@@ -174,6 +175,9 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 	}
 
 	max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
+	max_lttpr_rate = drm_dp_lttpr_max_link_rate(intel_dp->lttpr_common_caps);
+	if (max_lttpr_rate)
+		max_rate = min(max_rate, max_lttpr_rate);
 
 	for (i = 0; i < ARRAY_SIZE(dp_rates); i++) {
 		if (dp_rates[i] > max_rate)
@@ -219,6 +223,10 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	int source_max = dig_port->max_lanes;
 	int sink_max = drm_dp_max_lane_count(intel_dp->dpcd);
 	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
+	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
+
+	if (lttpr_max)
+		sink_max = min(sink_max, lttpr_max);
 
 	return min3(source_max, sink_max, fia_max);
 }
@@ -5540,13 +5548,13 @@ void intel_dp_process_phy_request(struct intel_dp *intel_dp)
 		&intel_dp->compliance.test_data.phytest;
 	u8 link_status[DP_LINK_STATUS_SIZE];
 
-	if (!intel_dp_get_link_status(intel_dp, link_status)) {
+	if (!intel_dp_get_link_status(intel_dp, DP_PHY_DPRX, link_status)) {
 		DRM_DEBUG_KMS("failed to get link status\n");
 		return;
 	}
 
 	/* retrieve vswing & pre-emphasis setting */
-	intel_dp_get_adjust_train(intel_dp, link_status);
+	intel_dp_get_adjust_train(intel_dp, DP_PHY_DPRX, link_status);
 
 	intel_dp_autotest_phy_ddi_disable(intel_dp);
 
@@ -5701,7 +5709,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_psr_enabled(intel_dp))
 		return false;
 
-	if (!intel_dp_get_link_status(intel_dp, link_status))
+	if (!intel_dp_get_link_status(intel_dp, DP_PHY_DPRX, link_status))
 		return false;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1485602659be..3aa685a9aa2a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -25,6 +25,8 @@
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 
+#define DP_PHY_LTTPR(i)		(DP_PHY_LTTPR1 + (i))
+
 static void
 intel_dp_dump_link_status(const u8 link_status[DP_LINK_STATUS_SIZE])
 {
@@ -35,37 +37,140 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK_STATUS_SIZE])
 }
 
 /**
- * intel_dp_get_link_status - get the link status information for the DPRX
+ * intel_dp_get_link_status - get the link status information for a DP PHY
  * @intel_dp: DP struct
+ * @dp_phy: the DP PHY to get the link status for
  * @link_status: buffer to return the status in
  *
- * Fetch the AUX DPCD registers for the DPRX link status.
+ * Fetch the AUX DPCD registers for the DPRX or an LTTPR PHY link status. The
+ * layout of the returned @link_status matches the DPCD register layout of the
+ * DPRX PHY link status.
  *
  * Returns true if the information was read successfully, false otherwise.
  */
 bool
-intel_dp_get_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
+intel_dp_get_link_status(struct intel_dp *intel_dp,
+			 enum drm_dp_phy dp_phy,
+			 u8 link_status[DP_LINK_STATUS_SIZE])
 {
-	return drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS, link_status,
-				DP_LINK_STATUS_SIZE) == DP_LINK_STATUS_SIZE;
+	u8 lttpr_status[DP_LINK_STATUS_SIZE - 1];
+
+	if (dp_phy == DP_PHY_DPRX)
+		return drm_dp_dpcd_read(&intel_dp->aux,
+					DP_LANE0_1_STATUS,
+					link_status,
+					DP_LINK_STATUS_SIZE) == DP_LINK_STATUS_SIZE;
+
+	if (drm_dp_dpcd_read(&intel_dp->aux,
+			     DP_LANE0_1_STATUS_PHY_REPEATER(dp_phy),
+			     lttpr_status,
+			     sizeof(lttpr_status)) != sizeof(lttpr_status))
+			return false;
+
+#define link_reg(reg)	link_status[(reg) - DP_LANE0_1_STATUS]
+#define lttpr_reg(reg)	lttpr_status[(reg) - DP_LANE0_1_STATUS_PHY_REPEATER1]
+
+	/* Convert the LTTPR to the sink PHY link status layout */
+	link_reg(DP_LANE0_1_STATUS) = lttpr_reg(DP_LANE0_1_STATUS_PHY_REPEATER1);
+	link_reg(DP_LANE2_3_STATUS) = lttpr_reg(DP_LANE2_3_STATUS_PHY_REPEATER1);
+	link_reg(DP_LANE_ALIGN_STATUS_UPDATED) =
+		lttpr_reg(DP_LANE_ALIGN_STATUS_UPDATED_PHY_REPEATER1);
+	link_reg(DP_SINK_STATUS) = 0;
+	link_reg(DP_ADJUST_REQUEST_LANE0_1) =
+		lttpr_reg(DP_ADJUST_REQUEST_LANE0_1_PHY_REPEATER1);
+	link_reg(DP_ADJUST_REQUEST_LANE2_3) =
+		lttpr_reg(DP_ADJUST_REQUEST_LANE2_3_PHY_REPEATER1);
+
+#undef link_reg
+#undef lttpr_reg
+
+	return true;
+}
+
+static int intel_dp_lttpr_count(struct intel_dp *intel_dp)
+{
+	int count = drm_dp_lttpr_count(intel_dp->lttpr_common_caps);
+
+	/*
+	 * Pretend no LTTPRs in case of LTTPR detection error, or
+	 * if too many (>8) LTTPRs are detected. This translates to link
+	 * training in transparent mode.
+	 */
+	return count <= 0 ? 0 : count;
+}
+
+static const char *intel_dp_phy_name(enum drm_dp_phy dp_phy,
+				     char *buf, size_t buf_size)
+{
+	if (dp_phy == DP_PHY_DPRX)
+		snprintf(buf, buf_size, "DPRX");
+	else
+		snprintf(buf, buf_size, "LTTPR %d", dp_phy - DP_PHY_LTTPR1 + 1);
+
+	return buf;
+}
+
+static uint8_t *intel_dp_lttpr_phy_caps(struct intel_dp *intel_dp,
+					enum drm_dp_phy dp_phy)
+{
+	return &intel_dp->lttpr_phy_caps[dp_phy - DP_PHY_LTTPR1][0];
 }
 
 /**
- * intel_dp_read_lttpr_caps - read the LTTPR common capabilities
+ * intel_dp_read_lttpr_caps - read the LTTPR common and per-PHY capabilities
  * @intel_dp: Intel DP struct
  *
- * Read the LTTPR common capabilities.
+ * Read the LTTPR common capabilities and the PHY capabilities for all
+ * detected LTTPRs. In case of an LTTPR detection error or if the number of
+ * LTTPRs is more than is supported (8), fall back to the no-LTTPR,
+ * transparent mode link training mode.
  */
 void intel_dp_read_lttpr_caps(struct intel_dp *intel_dp)
 {
+	int lttpr_count;
+	int i;
+
 	if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
-					  intel_dp->lttpr_common_caps) < 0)
+					  intel_dp->lttpr_common_caps) < 0) {
+		memset(intel_dp->lttpr_common_caps, 0,
+		       sizeof(intel_dp->lttpr_common_caps));
 		return;
+	}
 
 	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
 		    "LTTPR common capabilities: %*ph\n",
 		    (int)sizeof(intel_dp->lttpr_common_caps),
 		    intel_dp->lttpr_common_caps);
+
+	lttpr_count = intel_dp_lttpr_count(intel_dp);
+	/*
+	 * In case of unsupported number of LTTPRs fall-back to transparent
+	 * link training mode, still taking into account any LTTPR common
+	 * lane- rate/count limits.
+	 */
+	if (lttpr_count <= 0)
+		return;
+
+	for (i = 0; i < lttpr_count; i++) {
+		enum drm_dp_phy dp_phy = DP_PHY_LTTPR(i);
+		uint8_t *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);
+		char phy_name[10];
+
+		intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
+
+		if (drm_dp_read_lttpr_phy_caps(&intel_dp->aux, dp_phy, phy_caps) < 0) {
+			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+				    "failed to read the PHY caps for %s\n",
+				    phy_name);
+			continue;
+		}
+
+		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			    "%s PHY capabilities: %*ph\n",
+			    phy_name,
+			    (int)sizeof(intel_dp->lttpr_phy_caps[0]),
+			    phy_caps);
+	}
 }
 
 static u8 dp_voltage_max(u8 preemph)
@@ -83,10 +188,78 @@ static u8 dp_voltage_max(u8 preemph)
 	}
 }
 
+static u8 intel_dp_lttpr_voltage_max(struct intel_dp *intel_dp,
+				     enum drm_dp_phy dp_phy)
+{
+	const uint8_t *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);
+
+	if (drm_dp_lttpr_voltage_swing_level_3_supported(phy_caps))
+		return DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
+	else
+		return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
+}
+
+static u8 intel_dp_lttpr_preemph_max(struct intel_dp *intel_dp,
+				     enum drm_dp_phy dp_phy)
+{
+	const uint8_t *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);
+
+	if (drm_dp_lttpr_pre_emphasis_level_3_supported(phy_caps))
+		return DP_TRAIN_PRE_EMPH_LEVEL_3;
+	else
+		return DP_TRAIN_PRE_EMPH_LEVEL_2;
+}
+
+static u8 intel_dp_phy_voltage_max(struct intel_dp *intel_dp,
+				    enum drm_dp_phy dp_phy)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int lttpr_count = intel_dp_lttpr_count(intel_dp);
+	u8 voltage_max;
+
+	/*
+	 * Get voltage_max from the DPTX_PHY (source or LTTPR) upstream from
+	 * the DPRX_PHY we train.
+	 */
+	if (lttpr_count == 0 || dp_phy == DP_PHY_LTTPR(lttpr_count - 1))
+		voltage_max = intel_dp->voltage_max(intel_dp);
+	else
+		voltage_max = intel_dp_lttpr_voltage_max(intel_dp, dp_phy + 1);
+
+	drm_WARN_ON_ONCE(&i915->drm,
+			 voltage_max != DP_TRAIN_VOLTAGE_SWING_LEVEL_2 &&
+			 voltage_max != DP_TRAIN_VOLTAGE_SWING_LEVEL_3);
+
+	return voltage_max;
+}
+
+static u8 intel_dp_phy_preemph_max(struct intel_dp *intel_dp,
+				   enum drm_dp_phy dp_phy)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int lttpr_count = intel_dp_lttpr_count(intel_dp);
+	u8 preemph_max;
+
+	/*
+	 * Get preemph_max from the DPTX_PHY (source or LTTPR) upstream from
+	 * the DPRX_PHY we train.
+	 */
+	if (lttpr_count == 0 || dp_phy == DP_PHY_LTTPR(lttpr_count - 1))
+		preemph_max = intel_dp->preemph_max(intel_dp);
+	else
+		preemph_max = intel_dp_lttpr_preemph_max(intel_dp, dp_phy + 1);
+
+	drm_WARN_ON_ONCE(&i915->drm,
+			 preemph_max != DP_TRAIN_PRE_EMPH_LEVEL_2 &&
+			 preemph_max != DP_TRAIN_PRE_EMPH_LEVEL_3);
+
+	return preemph_max;
+}
+
 void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
+			       enum drm_dp_phy dp_phy,
 			       const u8 link_status[DP_LINK_STATUS_SIZE])
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 v = 0;
 	u8 p = 0;
 	int lane;
@@ -98,21 +271,13 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 		p = max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane));
 	}
 
-	preemph_max = intel_dp->preemph_max(intel_dp);
-	drm_WARN_ON_ONCE(&i915->drm,
-			 preemph_max != DP_TRAIN_PRE_EMPH_LEVEL_2 &&
-			 preemph_max != DP_TRAIN_PRE_EMPH_LEVEL_3);
-
+	preemph_max = intel_dp_phy_preemph_max(intel_dp, dp_phy);
 	if (p >= preemph_max)
 		p = preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
 
 	v = min(v, dp_voltage_max(p));
 
-	voltage_max = intel_dp->voltage_max(intel_dp);
-	drm_WARN_ON_ONCE(&i915->drm,
-			 voltage_max != DP_TRAIN_VOLTAGE_SWING_LEVEL_2 &&
-			 voltage_max != DP_TRAIN_VOLTAGE_SWING_LEVEL_3);
-
+	voltage_max = intel_dp_phy_voltage_max(intel_dp, dp_phy);
 	if (v >= voltage_max)
 		v = voltage_max | DP_TRAIN_MAX_SWING_REACHED;
 
@@ -120,17 +285,24 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 		intel_dp->train_set[lane] = v | p;
 }
 
-static bool intel_dp_disable_dpcd_training_pattern(struct intel_dp *intel_dp)
+static bool intel_dp_disable_dpcd_training_pattern(struct intel_dp *intel_dp,
+						   enum drm_dp_phy dp_phy)
 {
+	int reg = dp_phy == DP_PHY_DPRX ?
+		DP_TRAINING_PATTERN_SET :
+		DP_TRAINING_PATTERN_SET_PHY_REPEATER(dp_phy);
 	u8 val = DP_TRAINING_PATTERN_DISABLE;
 
-	return drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET, &val, 1) == 1;
+	return drm_dp_dpcd_write(&intel_dp->aux, reg, &val, 1) == 1;
 }
 
 static bool
-intel_dp_set_link_train(struct intel_dp *intel_dp,
+intel_dp_set_link_train(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
 			u8 dp_train_pat)
 {
+	int reg = dp_phy == DP_PHY_DPRX ?
+		DP_TRAINING_PATTERN_SET :
+		DP_TRAINING_PATTERN_SET_PHY_REPEATER(dp_phy);
 	u8 buf[sizeof(intel_dp->train_set) + 1];
 	int len;
 
@@ -139,34 +311,36 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
 	if ((dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) ==
 	    DP_TRAINING_PATTERN_DISABLE)
 		/* don't write DP_TRAINING_LANEx_SET on disable */
-		return intel_dp_disable_dpcd_training_pattern(intel_dp);
+		return intel_dp_disable_dpcd_training_pattern(intel_dp, dp_phy);
 
 	buf[0] = dp_train_pat;
 	/* DP_TRAINING_LANEx_SET follow DP_TRAINING_PATTERN_SET */
 	memcpy(buf + 1, intel_dp->train_set, intel_dp->lane_count);
 	len = intel_dp->lane_count + 1;
 
-	return drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
-				 buf, len) == len;
+	return drm_dp_dpcd_write(&intel_dp->aux, reg, buf, len) == len;
 }
 
 static bool
-intel_dp_reset_link_train(struct intel_dp *intel_dp,
+intel_dp_reset_link_train(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
 			u8 dp_train_pat)
 {
 	memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
 	intel_dp_set_signal_levels(intel_dp);
-	return intel_dp_set_link_train(intel_dp, dp_train_pat);
+	return intel_dp_set_link_train(intel_dp, dp_phy, dp_train_pat);
 }
 
 static bool
-intel_dp_update_link_train(struct intel_dp *intel_dp)
+intel_dp_update_link_train(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy)
 {
+	int reg = dp_phy == DP_PHY_DPRX ?
+		DP_TRAINING_LANE0_SET :
+		DP_TRAINING_LANE0_SET_PHY_REPEATER(dp_phy);
 	int ret;
 
 	intel_dp_set_signal_levels(intel_dp);
 
-	ret = drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
+	ret = drm_dp_dpcd_write(&intel_dp->aux, reg,
 				intel_dp->train_set, intel_dp->lane_count);
 
 	return ret == intel_dp->lane_count;
@@ -226,9 +400,22 @@ static void intel_dp_prepare_link_train(struct intel_dp *intel_dp)
 	intel_dp->DP |= DP_PORT_EN;
 }
 
-/* Perform the link training clock recovery phase using training pattern 1. */
+static void intel_dp_link_training_clock_recovery_delay(struct intel_dp *intel_dp,
+							enum drm_dp_phy dp_phy)
+{
+	if (dp_phy == DP_PHY_DPRX)
+		drm_dp_link_train_clock_recovery_delay(intel_dp->dpcd);
+	else
+		drm_dp_lttpr_link_train_clock_recovery_delay();
+}
+
+/*
+ * Perform the link training clock recovery phase on the given DP PHY using
+ * training pattern 1.
+ */
 static bool
-intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
+intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
+				      enum drm_dp_phy dp_phy)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 voltage;
@@ -236,7 +423,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
 	bool max_vswing_reached = false;
 
 	/* clock recovery */
-	if (!intel_dp_reset_link_train(intel_dp,
+	if (!intel_dp_reset_link_train(intel_dp, dp_phy,
 				       DP_TRAINING_PATTERN_1 |
 				       DP_LINK_SCRAMBLING_DISABLE)) {
 		drm_err(&i915->drm, "failed to enable link training\n");
@@ -260,9 +447,9 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
 	for (cr_tries = 0; cr_tries < max_cr_tries; ++cr_tries) {
 		u8 link_status[DP_LINK_STATUS_SIZE];
 
-		drm_dp_link_train_clock_recovery_delay(intel_dp->dpcd);
+		intel_dp_link_training_clock_recovery_delay(intel_dp, dp_phy);
 
-		if (!intel_dp_get_link_status(intel_dp, link_status)) {
+		if (!intel_dp_get_link_status(intel_dp, dp_phy, link_status)) {
 			drm_err(&i915->drm, "failed to get link status\n");
 			return false;
 		}
@@ -286,8 +473,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
 		voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;
 
 		/* Update training set as requested by target */
-		intel_dp_get_adjust_train(intel_dp, link_status);
-		if (!intel_dp_update_link_train(intel_dp)) {
+		intel_dp_get_adjust_train(intel_dp, dp_phy, link_status);
+		if (!intel_dp_update_link_train(intel_dp, dp_phy)) {
 			drm_err(&i915->drm,
 				"failed to update link training\n");
 			return false;
@@ -313,7 +500,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
  * or for 1.4 devices that support it, training Pattern 3 for HBR2
  * or 1.2 devices that support it, Training Pattern 2 otherwise.
  */
-static u32 intel_dp_training_pattern(struct intel_dp *intel_dp)
+static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
+				     enum drm_dp_phy dp_phy)
 {
 	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
 
@@ -322,9 +510,11 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp)
 	 * for all downstream devices that support HBR3. There are no known eDP
 	 * panels that support TPS4 as of Feb 2018 as per VESA eDP_v1.4b_E1
 	 * specification.
+	 * LTTPRs must support TPS4.
 	 */
 	source_tps4 = intel_dp_source_supports_hbr3(intel_dp);
-	sink_tps4 = drm_dp_tps4_supported(intel_dp->dpcd);
+	sink_tps4 = dp_phy != DP_PHY_DPRX ||
+		    drm_dp_tps4_supported(intel_dp->dpcd);
 	if (source_tps4 && sink_tps4) {
 		return DP_TRAINING_PATTERN_4;
 	} else if (intel_dp->link_rate == 810000) {
@@ -341,7 +531,8 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp)
 	 * all sinks follow the spec.
 	 */
 	source_tps3 = intel_dp_source_supports_hbr2(intel_dp);
-	sink_tps3 = drm_dp_tps3_supported(intel_dp->dpcd);
+	sink_tps3 = dp_phy != DP_PHY_DPRX ||
+		    drm_dp_tps3_supported(intel_dp->dpcd);
 	if (source_tps3 && sink_tps3) {
 		return  DP_TRAINING_PATTERN_3;
 	} else if (intel_dp->link_rate >= 540000) {
@@ -356,12 +547,27 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp)
 	return DP_TRAINING_PATTERN_2;
 }
 
+static void
+intel_dp_link_training_channel_equalization_delay(struct intel_dp *intel_dp,
+						  enum drm_dp_phy dp_phy)
+{
+	if (dp_phy == DP_PHY_DPRX) {
+		drm_dp_link_train_channel_eq_delay(intel_dp->dpcd);
+	} else {
+		const uint8_t *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);
+
+		drm_dp_lttpr_link_train_channel_eq_delay(phy_caps);
+	}
+}
+
 /*
- * Perform the link training channel equalization phase using one of training
- * pattern 2, 3 or 4 depending on the the source and sink capabilities.
+ * Perform the link training channel equalization phase on the given DP PHY
+ * using one of training pattern 2, 3 or 4 depending on the the source and
+ * sink capabilities.
  */
 static bool
-intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
+intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
+					    enum drm_dp_phy dp_phy)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int tries;
@@ -369,22 +575,21 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
 	u8 link_status[DP_LINK_STATUS_SIZE];
 	bool channel_eq = false;
 
-	training_pattern = intel_dp_training_pattern(intel_dp);
+	training_pattern = intel_dp_training_pattern(intel_dp, dp_phy);
 	/* Scrambling is disabled for TPS2/3 and enabled for TPS4 */
 	if (training_pattern != DP_TRAINING_PATTERN_4)
 		training_pattern |= DP_LINK_SCRAMBLING_DISABLE;
 
 	/* channel equalization */
-	if (!intel_dp_set_link_train(intel_dp,
-				     training_pattern)) {
+	if (!intel_dp_set_link_train(intel_dp, dp_phy, training_pattern)) {
 		drm_err(&i915->drm, "failed to start channel equalization\n");
 		return false;
 	}
 
 	for (tries = 0; tries < 5; tries++) {
-
-		drm_dp_link_train_channel_eq_delay(intel_dp->dpcd);
-		if (!intel_dp_get_link_status(intel_dp, link_status)) {
+		intel_dp_link_training_channel_equalization_delay(intel_dp,
+								  dp_phy);
+		if (!intel_dp_get_link_status(intel_dp, dp_phy, link_status)) {
 			drm_err(&i915->drm,
 				"failed to get link status\n");
 			break;
@@ -409,8 +614,8 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
 		}
 
 		/* Update training set as requested by target */
-		intel_dp_get_adjust_train(intel_dp, link_status);
-		if (!intel_dp_update_link_train(intel_dp)) {
+		intel_dp_get_adjust_train(intel_dp, dp_phy, link_status);
+		if (!intel_dp_update_link_train(intel_dp, dp_phy)) {
 			drm_err(&i915->drm,
 				"failed to update link training\n");
 			break;
@@ -424,8 +629,6 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
 			    "Channel equalization failed 5 times\n");
 	}
 
-	intel_dp_set_idle_link_train(intel_dp);
-
 	return channel_eq;
 
 }
@@ -442,34 +645,33 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
 void intel_dp_stop_link_train(struct intel_dp *intel_dp)
 {
 	intel_dp->link_trained = true;
-
-	intel_dp_set_link_train(intel_dp,
+	intel_dp_set_link_train(intel_dp, DP_PHY_DPRX,
 				DP_TRAINING_PATTERN_DISABLE);
 }
 
 static bool
-intel_dp_link_train(struct intel_dp *intel_dp)
+intel_dp_link_train_phy(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy)
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	char phy_name[10];
 	bool ret = false;
 
-	intel_dp_prepare_link_train(intel_dp);
-
-	if (!intel_dp_link_training_clock_recovery(intel_dp))
+	if (!intel_dp_link_training_clock_recovery(intel_dp, dp_phy))
 		goto out;
 
-	if (!intel_dp_link_training_channel_equalization(intel_dp))
+	if (!intel_dp_link_training_channel_equalization(intel_dp, dp_phy))
 		goto out;
 
 	ret = true;
 
 out:
 	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-		    "[CONNECTOR:%d:%s] Link Training %s at Link Rate = %d, Lane count = %d",
+		    "[CONNECTOR:%d:%s] Link Training %s at Link Rate = %d, Lane count = %d, at %s",
 		    intel_connector->base.base.id,
 		    intel_connector->base.name,
 		    ret ? "passed" : "failed",
-		    intel_dp->link_rate, intel_dp->lane_count);
+		    intel_dp->link_rate, intel_dp->lane_count,
+		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
 
 	return ret;
 }
@@ -492,6 +694,33 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp)
 	schedule_work(&intel_connector->modeset_retry_work);
 }
 
+/* Perform the link training on all LTTPRs and the DPRX on a link. */
+static bool
+intel_dp_link_train_all_phys(struct intel_dp *intel_dp, int lttpr_count)
+{
+	bool ret = true;
+	int i;
+
+	intel_dp_prepare_link_train(intel_dp);
+
+	for (i = lttpr_count - 1; i >= 0; i--) {
+		enum drm_dp_phy dp_phy = DP_PHY_LTTPR(i);
+
+		ret = intel_dp_link_train_phy(intel_dp, dp_phy);
+		intel_dp_disable_dpcd_training_pattern(intel_dp, dp_phy);
+
+		if (!ret)
+			break;
+	}
+
+	if (ret)
+		intel_dp_link_train_phy(intel_dp, DP_PHY_DPRX);
+
+	intel_dp_set_idle_link_train(intel_dp);
+
+	return ret;
+}
+
 static bool
 intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
 {
@@ -501,10 +730,12 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
 	return drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) == 1;
 }
 
-static void intel_dp_init_lttpr_mode(struct intel_dp *intel_dp)
+static int intel_dp_init_lttpr_mode(struct intel_dp *intel_dp)
 {
+	int lttpr_count;
+
 	if (intel_dp_is_edp(intel_dp))
-		return;
+		return 0;
 
 	/*
 	 * TODO: the following re-reading of LTTPR caps can be removed
@@ -512,6 +743,19 @@ static void intel_dp_init_lttpr_mode(struct intel_dp *intel_dp)
 	 */
 	intel_dp_read_lttpr_caps(intel_dp);
 	intel_dp_set_lttpr_transparent_mode(intel_dp, true);
+
+	lttpr_count = intel_dp_lttpr_count(intel_dp);
+	if (lttpr_count) {
+		/*
+		 * If we can't set non-transparent mode fall-back to
+		 * transparent mode, still taking into account any LTTPR
+		 * common lane rate and count limits.
+		 */
+		if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false))
+			lttpr_count = 0;
+	}
+
+	return lttpr_count;
 }
 
 /**
@@ -525,8 +769,8 @@ static void intel_dp_init_lttpr_mode(struct intel_dp *intel_dp)
  */
 void intel_dp_start_link_train(struct intel_dp *intel_dp)
 {
-	intel_dp_init_lttpr_mode(intel_dp);
+	int lttpr_count = intel_dp_init_lttpr_mode(intel_dp);
 
-	if (!intel_dp_link_train(intel_dp))
+	if (!intel_dp_link_train_all_phys(intel_dp, lttpr_count))
 		intel_dp_schedule_fallback_link_training(intel_dp);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index c0be3ff709a0..d0393b76ffc1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -10,12 +10,14 @@
 
 struct intel_dp;
 
-bool intel_dp_get_link_status(struct intel_dp *intel_dp,
-			      u8 link_status[DP_LINK_STATUS_SIZE]);
+bool
+intel_dp_get_link_status(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
+			 u8 link_status[DP_LINK_STATUS_SIZE]);
 void intel_dp_read_lttpr_caps(struct intel_dp *intel_dp);
 
-void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
-			       const u8 link_status[DP_LINK_STATUS_SIZE]);
+void
+intel_dp_get_adjust_train(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
+			  const u8 link_status[DP_LINK_STATUS_SIZE]);
 void intel_dp_start_link_train(struct intel_dp *intel_dp);
 void intel_dp_stop_link_train(struct intel_dp *intel_dp);
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
