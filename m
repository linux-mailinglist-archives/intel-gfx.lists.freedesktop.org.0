Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD968C5B9D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD1A210EB2F;
	Tue, 14 May 2024 19:14:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kDjG1hH3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C23410EB2F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714072; x=1747250072;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=A40nFo0iP8g3DpeMuz2MV91dcXZByM3TXHr/iEiPRkA=;
 b=kDjG1hH3JNpWnscCvF1q3iGfeH1EO6J6pQU6EIco9vavKW6cj2Bno0m2
 J3HoBAt0LZHXM9RItHyx+yt6Pn7dlxEAUXDNFQ9Uf33FdEChYV35vE/qn
 nwGgVe+t8Ym0vRjvocuLBtGoM5wd6HwWlv8wVHodT15wuNfnPaEAKIBQK
 lhqnxZ1o+a45MUqTWThBTTCuq7k8SnsjSZ0+Rl5OSQPX79xulDPYoUOz/
 hK9uRiXJlpUuQobGTPLukbOB7CFs76mXxurKhC3LyFil570YqhppfVYeW
 FaN4W/6E9eUA4c7KEg1oRkTH69itCpS8oa5Nu/TaFKselv2WuOseBKW7r A==;
X-CSE-ConnectionGUID: 1EZe++xiSc+GTngbSucYsA==
X-CSE-MsgGUID: ultf+L1+ROeRB3xqMRmBxA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23125001"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23125001"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:32 -0700
X-CSE-ConnectionGUID: N9DinnUASwOvcQ6ZgIGovg==
X-CSE-MsgGUID: Cxsx/bO9TcG5CL8ImdMfmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724641"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 17/20] drm/i915/dp: Add debugfs entries to set a target link
 rate/lane count
Date: Tue, 14 May 2024 22:14:15 +0300
Message-ID: <20240514191418.2863344-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
MIME-Version: 1.0
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

Add connector debugfs entries to set a target link rate/lane count to be
used by a link training afterwards. After setting a target link
rate/lane count reset the link training parameters and for a non-auto
target disable reducing the link parameters via the fallback logic.  The
former one can be used after testing link training failure scenarios
- via debugfs entries added later - to reset the reduced link parameters
after the test.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 218 ++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  63 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 .../drm/i915/display/intel_dp_link_training.c |   6 +
 5 files changed, 282 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 35f9f86ef70f4..521721a20358f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1316,6 +1316,215 @@ static const struct file_operations i915_dsc_bpc_fops = {
 	.write = i915_dsc_bpc_write
 };
 
+static struct intel_dp *intel_connector_to_intel_dp(struct intel_connector *connector)
+{
+	if (connector->mst_port)
+		return connector->mst_port;
+	else
+		return enc_to_intel_dp(intel_attached_encoder(connector));
+}
+
+static int i915_dp_requested_link_rate_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp;
+	int ret;
+	int i;
+
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	intel_dp = intel_connector_to_intel_dp(connector);
+
+	seq_printf(m, "%sauto%s",
+		   intel_dp->requested_link_rate == 0 ? "[" : "",
+		   intel_dp->requested_link_rate == 0 ? "]" : "");
+
+	for (i = 0; i < intel_dp->num_source_rates; i++)
+		seq_printf(m, " %s%d%s%s",
+			   intel_dp->source_rates[i] == intel_dp->requested_link_rate ? "[" : "",
+			   intel_dp->source_rates[i],
+			   intel_dp->link_trained &&
+				intel_dp->source_rates[i] == intel_dp->link_rate ? "*" : "",
+			   intel_dp->source_rates[i] == intel_dp->requested_link_rate ? "]" : "");
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	seq_putc(m, '\n');
+
+	return 0;
+}
+
+static int parse_link_rate(struct intel_dp *intel_dp, const char __user *ubuf, size_t len)
+{
+	char *kbuf;
+	const char *p;
+	int rate;
+	int ret = 0;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	p = strim(kbuf);
+
+	if (!strcmp(p, "auto")) {
+		rate = 0;
+	} else {
+		ret = kstrtoint(p, 0, &rate);
+		if (ret < 0)
+			goto out_free;
+
+		if (intel_dp_rate_index(intel_dp->source_rates,
+					intel_dp->num_source_rates,
+					rate) < 0)
+			ret = -EINVAL;
+	}
+
+out_free:
+	kfree(kbuf);
+
+	return ret < 0 ? ret : rate;
+}
+
+static ssize_t i915_dp_requested_link_rate_write(struct file *file,
+						 const char __user *ubuf,
+						 size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	int rate;
+	int ret;
+
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	intel_dp = intel_connector_to_intel_dp(connector);
+
+	rate = parse_link_rate(intel_dp, ubuf, len);
+	if (rate < 0) {
+		drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+		return rate;
+	}
+
+	intel_dp_reset_link_train_params(intel_dp);
+	intel_dp->requested_link_rate = rate;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_requested_link_rate);
+
+static int i915_dp_requested_lane_count_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp;
+	int ret;
+	int i;
+
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	intel_dp = intel_connector_to_intel_dp(connector);
+
+	seq_printf(m, "%sauto%s",
+		   intel_dp->requested_lane_count == 0 ? "[" : "",
+		   intel_dp->requested_lane_count == 0 ? "]" : "");
+
+	for (i = 1; i <= 4; i <<= 1)
+		seq_printf(m, " %s%d%s%s",
+			   i == intel_dp->requested_lane_count ? "[" : "",
+			   i,
+			   intel_dp->link_trained &&
+				i == intel_dp->lane_count ? "*" : "",
+			   i == intel_dp->requested_lane_count ? "]" : "");
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	seq_putc(m, '\n');
+
+	return 0;
+}
+
+static int parse_lane_count(const char __user *ubuf, size_t len)
+{
+	char *kbuf;
+	const char *p;
+	int lane_count;
+	int ret = 0;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	p = strim(kbuf);
+
+	if (!strcmp(p, "auto")) {
+		lane_count = 0;
+	} else {
+		ret = kstrtoint(p, 0, &lane_count);
+		if (ret < 0)
+			goto out_free;
+
+		switch (lane_count) {
+		case 1:
+		case 2:
+		case 4:
+			break;
+		default:
+			ret = -EINVAL;
+		}
+	}
+
+out_free:
+	kfree(kbuf);
+
+	return ret < 0 ? ret : lane_count;
+}
+
+static ssize_t i915_dp_requested_lane_count_write(struct file *file,
+						  const char __user *ubuf,
+						  size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp;
+	int lane_count;
+	int ret;
+
+	lane_count = parse_lane_count(ubuf, len);
+	if (lane_count < 0)
+		return lane_count;
+
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	intel_dp = intel_connector_to_intel_dp(connector);
+
+	intel_dp_reset_link_train_params(intel_dp);
+	intel_dp->requested_lane_count = lane_count;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_requested_lane_count);
+
 static int i915_dsc_output_format_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
@@ -1523,6 +1732,15 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 				    connector, &i915_hdcp_sink_capability_fops);
 	}
 
+	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	    connector_type == DRM_MODE_CONNECTOR_eDP) {
+		debugfs_create_file("i915_dp_link_rate", 0644, root,
+				    connector, &i915_dp_requested_link_rate_fops);
+
+		debugfs_create_file("i915_dp_lane_count", 0644, root,
+				    connector, &i915_dp_requested_lane_count_fops);
+	}
+
 	if (DISPLAY_VER(i915) >= 11 &&
 	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst_port) ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index fb71bc7eb3d9a..351c445d3cb5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1758,6 +1758,8 @@ struct intel_dp {
 	/* intersection of source and sink rates */
 	int num_common_rates;
 	int common_rates[DP_MAX_SUPPORTED_RATES];
+	int requested_link_rate;
+	int requested_lane_count;
 	struct {
 		/* Max lane count for the current link */
 		int max_lane_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5eafda7175e2a..367970f956863 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -345,7 +345,7 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
 }
 
-static int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
+int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 {
 	int vbt_max_lanes = intel_bios_dp_max_lane_count(dig_port->base.devdata);
 	int max_lanes = dig_port->max_lanes;
@@ -371,19 +371,39 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	return min3(source_max, sink_max, lane_max);
 }
 
+static int requested_lane_count(struct intel_dp *intel_dp)
+{
+	return clamp(intel_dp->requested_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
+}
+
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
-	switch (intel_dp->link_train.max_lane_count) {
+	int lane_count;
+
+	if (intel_dp->requested_lane_count)
+		lane_count = requested_lane_count(intel_dp);
+	else
+		lane_count = intel_dp->link_train.max_lane_count;
+
+	switch (lane_count) {
 	case 1:
 	case 2:
 	case 4:
-		return intel_dp->link_train.max_lane_count;
+		return lane_count;
 	default:
-		MISSING_CASE(intel_dp->link_train.max_lane_count);
+		MISSING_CASE(lane_count);
 		return 1;
 	}
 }
 
+static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
+{
+	if (intel_dp->requested_lane_count)
+		return requested_lane_count(intel_dp);
+
+	return 1;
+}
+
 /*
  * The required data bandwidth for a mode with given pixel clock and bpp. This
  * is the required net bandwidth independent of the data bandwidth efficiency.
@@ -1306,16 +1326,38 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 	drm_dbg_kms(&i915->drm, "common rates: %s\n", str);
 }
 
+static int requested_rate(struct intel_dp *intel_dp)
+{
+	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->requested_link_rate);
+
+	if (len == 0)
+		return intel_dp_common_rate(intel_dp, 0);
+
+	return intel_dp_common_rate(intel_dp, len - 1);
+}
+
 int
 intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
 	int len;
 
+	if (intel_dp->requested_link_rate)
+		return requested_rate(intel_dp);
+
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link_train.max_rate);
 
 	return intel_dp_common_rate(intel_dp, len - 1);
 }
 
+static int
+intel_dp_min_link_rate(struct intel_dp *intel_dp)
+{
+	if (intel_dp->requested_link_rate)
+		return requested_rate(intel_dp);
+
+	return intel_dp_common_rate(intel_dp, 0);
+}
+
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -2285,13 +2327,14 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       bool dsc,
 			       struct link_config_limits *limits)
 {
-	limits->min_rate = intel_dp_common_rate(intel_dp, 0);
+	limits->min_rate = intel_dp_min_link_rate(intel_dp);
 	limits->max_rate = intel_dp_max_link_rate(intel_dp);
 
 	/* FIXME 128b/132b SST support missing */
 	limits->max_rate = min(limits->max_rate, 810000);
+	limits->min_rate = min(limits->min_rate, limits->max_rate);
 
-	limits->min_lane_count = 1;
+	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
 	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
 
 	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
@@ -2307,8 +2350,10 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 		 * configuration, and typically on older panels these
 		 * values correspond to the native resolution of the panel.
 		 */
-		limits->min_lane_count = limits->max_lane_count;
-		limits->min_rate = limits->max_rate;
+		if (intel_dp->requested_lane_count == 0)
+			limits->min_lane_count = limits->max_lane_count;
+		if (intel_dp->requested_link_rate == 0)
+			limits->min_rate = limits->max_rate;
 	}
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
@@ -2947,7 +2992,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 	intel_dp->lane_count = lane_count;
 }
 
-static void intel_dp_reset_link_train_params(struct intel_dp *intel_dp)
+void intel_dp_reset_link_train_params(struct intel_dp *intel_dp)
 {
 	intel_dp->link_train.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link_train.max_rate = intel_dp_max_common_rate(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 7c938327fc725..2b639bb2f56ed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -95,6 +95,7 @@ void intel_edp_backlight_off(const struct drm_connector_state *conn_state);
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
 void intel_dp_mst_suspend(struct drm_i915_private *dev_priv);
 void intel_dp_mst_resume(struct drm_i915_private *dev_priv);
+int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port);
 int intel_dp_max_link_rate(struct intel_dp *intel_dp);
 int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
@@ -104,6 +105,7 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_rate_index(const int *rates, int len, int rate);
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
+void intel_dp_reset_link_train_params(struct intel_dp *intel_dp);
 
 void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 			   u8 *link_bw, u8 *rate_select);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index b80fb25b9204d..352c77f46015e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1114,6 +1114,9 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 	int rate_index;
 	int new_rate;
 
+	if (intel_dp->requested_link_rate)
+		return -1;
+
 	rate_index = intel_dp_rate_index(intel_dp->common_rates,
 					 intel_dp->num_common_rates,
 					 current_rate);
@@ -1132,6 +1135,9 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 
 static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
 {
+	if (intel_dp->requested_lane_count)
+		return -1;
+
 	if (current_lane_count > 1)
 		return current_lane_count >> 1;
 
-- 
2.43.3

