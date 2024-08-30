Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 078CA965E65
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC5610EA4C;
	Fri, 30 Aug 2024 10:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZInFOyhu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE9610E9D7;
 Fri, 30 Aug 2024 10:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725012988; x=1756548988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h9U8O25zxojfHWyAc+QrW6N7pO/taY8CKxpga83CqLw=;
 b=ZInFOyhuHlzY5ay2MmnqIcEYDJaL89zVO58PZKT5ngRmB7U/1AD6q82W
 muFOsVQuTf+rk+3rJ1Or6WuOin7fEdMwd7AZWyPWFLa8ZZ1Ujs2+SSdMq
 gTeMtu/0RkR1FySgaGz52s0SB/bBIh3+NIqWkHqCAoWqaKJ4DK7EpF1Hj
 x4Lyj55h+dnZJP3S8A6In0+aFdkRPCet8RYrSunnGw+WZv78WWxpCHaVq
 mBqrhjcseURPTx17syXNL1FhV4RgKTvuSDES3W+YxOBVoAdG1g0r11c25
 IpnU4YTSsTG47J/H63myDReSmTxPnWrPTsvHTi6eVHlE24BmAqzdMlFpL Q==;
X-CSE-ConnectionGUID: jxuLorqzQw6tPyckxEMOXg==
X-CSE-MsgGUID: AiY8+ysWRp+fecwp3iquHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="13295704"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="13295704"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:27 -0700
X-CSE-ConnectionGUID: H6zQScgeQDOoyIA9+RO4yA==
X-CSE-MsgGUID: Ei9Ayg1LSrqTq7kIUYm3nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68516165"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/11] drm/i915/dp: convert intel_dp_link_training.[ch] to
 struct intel_display
Date: Fri, 30 Aug 2024 13:15:43 +0300
Message-Id: <72b202e75f5a7ecc84a906f1c49d21dbe24fb7c2.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_dp_link_training.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 105 +++++++++---------
 1 file changed, 55 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9c8738295106..40bedc31d6bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -39,13 +39,13 @@
 					drm_dp_phy_name(_dp_phy)
 
 #define lt_dbg(_intel_dp, _dp_phy, _format, ...) \
-	drm_dbg_kms(&dp_to_i915(_intel_dp)->drm, \
+	drm_dbg_kms(to_intel_display(_intel_dp)->drm, \
 		    LT_MSG_PREFIX _format, \
 		    LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__)
 
 #define lt_err(_intel_dp, _dp_phy, _format, ...) do { \
 	if (intel_digital_port_connected(&dp_to_dig_port(_intel_dp)->base)) \
-		drm_err(&dp_to_i915(_intel_dp)->drm, \
+		drm_err(to_intel_display(_intel_dp)->drm, \
 			LT_MSG_PREFIX _format, \
 			LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__); \
 	else \
@@ -216,7 +216,8 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
 
 int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (intel_dp_is_edp(intel_dp))
 		return 0;
@@ -225,7 +226,7 @@ int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_S
 	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
 	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
 	 */
-	if (DISPLAY_VER(i915) >= 10 && !IS_GEMINILAKE(i915))
+	if (DISPLAY_VER(display) >= 10 && !IS_GEMINILAKE(i915))
 		if (drm_dp_dpcd_probe(&intel_dp->aux,
 				      DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV))
 			return -EIO;
@@ -256,7 +257,8 @@ int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_S
  */
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int lttpr_count = 0;
 
 	/*
@@ -264,7 +266,7 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
 	 */
 	if (!intel_dp_is_edp(intel_dp) &&
-	    (DISPLAY_VER(i915) >= 10 && !IS_GEMINILAKE(i915))) {
+	    (DISPLAY_VER(display) >= 10 && !IS_GEMINILAKE(i915))) {
 		u8 dpcd[DP_RECEIVER_CAP_SIZE];
 		int err = intel_dp_read_dprx_caps(intel_dp, dpcd);
 
@@ -327,10 +329,11 @@ static bool
 intel_dp_phy_is_downstream_of_source(struct intel_dp *intel_dp,
 				     enum drm_dp_phy dp_phy)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int lttpr_count = drm_dp_lttpr_count(intel_dp->lttpr_common_caps);
 
-	drm_WARN_ON_ONCE(&i915->drm, lttpr_count <= 0 && dp_phy != DP_PHY_DPRX);
+	drm_WARN_ON_ONCE(display->drm,
+			 lttpr_count <= 0 && dp_phy != DP_PHY_DPRX);
 
 	return lttpr_count <= 0 || dp_phy == DP_PHY_LTTPR(lttpr_count - 1);
 }
@@ -339,7 +342,7 @@ static u8 intel_dp_phy_voltage_max(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state,
 				   enum drm_dp_phy dp_phy)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 voltage_max;
 
 	/*
@@ -351,7 +354,7 @@ static u8 intel_dp_phy_voltage_max(struct intel_dp *intel_dp,
 	else
 		voltage_max = intel_dp_lttpr_voltage_max(intel_dp, dp_phy + 1);
 
-	drm_WARN_ON_ONCE(&i915->drm,
+	drm_WARN_ON_ONCE(display->drm,
 			 voltage_max != DP_TRAIN_VOLTAGE_SWING_LEVEL_2 &&
 			 voltage_max != DP_TRAIN_VOLTAGE_SWING_LEVEL_3);
 
@@ -361,7 +364,7 @@ static u8 intel_dp_phy_voltage_max(struct intel_dp *intel_dp,
 static u8 intel_dp_phy_preemph_max(struct intel_dp *intel_dp,
 				   enum drm_dp_phy dp_phy)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 preemph_max;
 
 	/*
@@ -373,7 +376,7 @@ static u8 intel_dp_phy_preemph_max(struct intel_dp *intel_dp,
 	else
 		preemph_max = intel_dp_lttpr_preemph_max(intel_dp, dp_phy + 1);
 
-	drm_WARN_ON_ONCE(&i915->drm,
+	drm_WARN_ON_ONCE(display->drm,
 			 preemph_max != DP_TRAIN_PRE_EMPH_LEVEL_2 &&
 			 preemph_max != DP_TRAIN_PRE_EMPH_LEVEL_3);
 
@@ -383,10 +386,11 @@ static u8 intel_dp_phy_preemph_max(struct intel_dp *intel_dp,
 static bool has_per_lane_signal_levels(struct intel_dp *intel_dp,
 				       enum drm_dp_phy dp_phy)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	return !intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy) ||
-		DISPLAY_VER(i915) >= 10 || IS_BROXTON(i915);
+		DISPLAY_VER(display) >= 10 || IS_BROXTON(i915);
 }
 
 /* 128b/132b */
@@ -950,7 +954,8 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
 				     enum drm_dp_phy dp_phy)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
 
 	/* UHBR+ use separate 128b/132b TPS2 */
@@ -1586,7 +1591,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 			       struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	bool passed;
@@ -1631,7 +1636,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	 * For test cases which rely on the link training or processing of HPDs
 	 * ignore_long_hpd flag can unset from the testcase.
 	 */
-	if (i915->display.hotplug.ignore_long_hpd) {
+	if (display->hotplug.ignore_long_hpd) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Ignore the link failure\n");
 		return;
 	}
@@ -1683,14 +1688,14 @@ static struct intel_dp *intel_connector_to_intel_dp(struct intel_connector *conn
 static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int current_rate = -1;
 	int force_rate;
 	int err;
 	int i;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
@@ -1698,7 +1703,7 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 		current_rate = intel_dp->link_rate;
 	force_rate = intel_dp->link.force_rate;
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	seq_printf(m, "%sauto%s",
 		   force_rate == 0 ? "[" : "",
@@ -1754,7 +1759,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct intel_connector *connector = to_intel_connector(m->private);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int rate;
 	int err;
@@ -1763,14 +1768,14 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	if (rate < 0)
 		return rate;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
 	intel_dp_reset_link_params(intel_dp);
 	intel_dp->link.force_rate = rate;
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	*offp += len;
 
@@ -1781,14 +1786,14 @@ DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_link_rate);
 static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int current_lane_count = -1;
 	int force_lane_count;
 	int err;
 	int i;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
@@ -1796,7 +1801,7 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 		current_lane_count = intel_dp->lane_count;
 	force_lane_count = intel_dp->link.force_lane_count;
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	seq_printf(m, "%sauto%s",
 		   force_lane_count == 0 ? "[" : "",
@@ -1856,7 +1861,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct intel_connector *connector = to_intel_connector(m->private);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int lane_count;
 	int err;
@@ -1865,14 +1870,14 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	if (lane_count < 0)
 		return lane_count;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
 	intel_dp_reset_link_params(intel_dp);
 	intel_dp->link.force_lane_count = lane_count;
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	*offp += len;
 
@@ -1883,17 +1888,17 @@ DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_lane_count);
 static int i915_dp_max_link_rate_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int err;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
 	*val = intel_dp->link.max_rate;
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	return 0;
 }
@@ -1902,17 +1907,17 @@ DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_rate_show,
 static int i915_dp_max_lane_count_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int err;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
 	*val = intel_dp->link.max_lane_count;
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	return 0;
 }
@@ -1921,17 +1926,17 @@ DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_sho
 static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int err;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
 	*val = intel_dp->link.force_train_failure;
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	return 0;
 }
@@ -1939,20 +1944,20 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 static int i915_dp_force_link_training_failure_write(void *data, u64 val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int err;
 
 	if (val > 2)
 		return -EINVAL;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
 	intel_dp->link.force_train_failure = val;
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	return 0;
 }
@@ -1963,17 +1968,17 @@ DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_training_failure_fops,
 static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int err;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
 	*val = intel_dp->link.force_retrain;
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	return 0;
 }
@@ -1981,17 +1986,17 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 static int i915_dp_force_link_retrain_write(void *data, u64 val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int err;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
 	intel_dp->link.force_retrain = val;
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	intel_hpd_trigger_irq(dp_to_dig_port(intel_dp));
 
@@ -2004,17 +2009,17 @@ DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_retrain_fops,
 static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
 	int err;
 
-	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (err)
 		return err;
 
 	seq_printf(m, "%s\n", str_yes_no(intel_dp->link.retrain_disabled));
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	return 0;
 }
-- 
2.39.2

