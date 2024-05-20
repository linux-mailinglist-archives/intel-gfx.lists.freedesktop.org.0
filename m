Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D1D8CA269
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2A5B10E8AC;
	Mon, 20 May 2024 18:58:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UkiwxgPV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3D210E863
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231516; x=1747767516;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8yvJk7ZgPVuak9IOYlayX8FTEczVQ6jI4zzI4MSAtDQ=;
 b=UkiwxgPVwNXdMU0MbY1gu6vMM3blOOjG8booWk9SgkS944nqYM0C6Km5
 XYhbSQlHwf8vnfY0DLKLGPn9yxoZ2uvVkee0eUykIiAp7Pz79k15Jk7j8
 7ZWPcbwwOydsrkhWu/K2jSslRNtW53swX37B61y7syKO/MGD0Ce3iBVlt
 5IZHnKuSW3L8TlzVn0gVpoJUX4/oqPSOmxxb1aj1KPoWUUkgPBwlmlJpL
 cv8ENBmZBCiee7D6HMn2xB5oVtTCoeyMAScF/oSvsg0zEQBe6WQnZv6Y2
 KiDK4qM6pVEPaN0Vm76esq4yBxK4b8Mw4PSDmTwtszkGMngM/UZEYLge6 g==;
X-CSE-ConnectionGUID: M1D7HuJOQriJ246JAIkG6w==
X-CSE-MsgGUID: Zygu2YrHQIGbYFeFvRLJ8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218552"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218552"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:36 -0700
X-CSE-ConnectionGUID: AGdnRQVVSsyy7JfJ2u+Bmg==
X-CSE-MsgGUID: q8cXyhR5TnW0ACGskQlWhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213892"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:35 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 17/21] drm/i915/dp: Add debugfs entries to set a target
 link rate/lane count
Date: Mon, 20 May 2024 21:58:15 +0300
Message-ID: <20240520185822.3725844-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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

v2:
- Add the entries from intel_dp_link_training.c (Jani)
- Rename the entries to i915_dp_set_link_rate/lane_count.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  63 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 .../drm/i915/display/intel_dp_link_training.c | 230 ++++++++++++++++++
 .../drm/i915/display/intel_dp_link_training.h |   4 +
 6 files changed, 294 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 35f9f86ef70f4..f83ffa2534925 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -23,6 +23,7 @@
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
+#include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_drrs.h"
 #include "intel_fbc.h"
@@ -1515,6 +1516,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	intel_drrs_connector_debugfs_add(connector);
 	intel_pps_connector_debugfs_add(connector);
 	intel_psr_connector_debugfs_add(connector);
+	intel_dp_link_training_debugfs_add(connector);
 
 	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index eb0cac3e27acf..e1c41cece249d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1765,6 +1765,8 @@ struct intel_dp {
 		int max_lane_count;
 		/* Max rate for the current link */
 		int max_rate;
+		int requested_lane_count;
+		int requested_rate;
 		bool retrain_disabled;
 		/* Sequential link training failures after a passing LT */
 		int seq_train_failures;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c8d940a2ef7af..cf4a768fccd15 100644
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
+	return clamp(intel_dp->link.requested_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
+}
+
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
-	switch (intel_dp->link.max_lane_count) {
+	int lane_count;
+
+	if (intel_dp->link.requested_lane_count)
+		lane_count = requested_lane_count(intel_dp);
+	else
+		lane_count = intel_dp->link.max_lane_count;
+
+	switch (lane_count) {
 	case 1:
 	case 2:
 	case 4:
-		return intel_dp->link.max_lane_count;
+		return lane_count;
 	default:
-		MISSING_CASE(intel_dp->link.max_lane_count);
+		MISSING_CASE(lane_count);
 		return 1;
 	}
 }
 
+static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
+{
+	if (intel_dp->link.requested_lane_count)
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
+	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.requested_rate);
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
 
+	if (intel_dp->link.requested_rate)
+		return requested_rate(intel_dp);
+
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
 
 	return intel_dp_common_rate(intel_dp, len - 1);
 }
 
+static int
+intel_dp_min_link_rate(struct intel_dp *intel_dp)
+{
+	if (intel_dp->link.requested_rate)
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
+		if (intel_dp->link.requested_lane_count == 0)
+			limits->min_lane_count = limits->max_lane_count;
+		if (intel_dp->link.requested_rate == 0)
+			limits->min_rate = limits->max_rate;
 	}
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
@@ -2946,7 +2991,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 	intel_dp->lane_count = lane_count;
 }
 
-static void intel_dp_reset_link_params(struct intel_dp *intel_dp)
+void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
 	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3fa53ac601d58..79914e5080251 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -99,6 +99,7 @@ void intel_edp_backlight_off(const struct drm_connector_state *conn_state);
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
 void intel_dp_mst_suspend(struct drm_i915_private *dev_priv);
 void intel_dp_mst_resume(struct drm_i915_private *dev_priv);
+int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port);
 int intel_dp_max_link_rate(struct intel_dp *intel_dp);
 int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
@@ -108,6 +109,7 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_rate_index(const int *rates, int len, int rate);
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
+void intel_dp_reset_link_params(struct intel_dp *intel_dp);
 
 void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 			   u8 *link_bw, u8 *rate_select);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9a59a28ca36d2..a6021e17cc1ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1115,6 +1115,9 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 	int rate_index;
 	int new_rate;
 
+	if (intel_dp->link.requested_rate)
+		return -1;
+
 	rate_index = intel_dp_rate_index(intel_dp->common_rates,
 					 intel_dp->num_common_rates,
 					 current_rate);
@@ -1133,6 +1136,9 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 
 static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
 {
+	if (intel_dp->link.requested_lane_count)
+		return -1;
+
 	if (current_lane_count > 1)
 		return current_lane_count >> 1;
 
@@ -1543,3 +1549,227 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 
 	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b enabled\n");
 }
+
+static struct intel_dp *intel_connector_to_intel_dp(struct intel_connector *connector)
+{
+	if (connector->mst_port)
+		return connector->mst_port;
+	else
+		return enc_to_intel_dp(intel_attached_encoder(connector));
+}
+
+static int i915_dp_set_link_rate_show(struct seq_file *m, void *data)
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
+		   intel_dp->link.requested_rate == 0 ? "[" : "",
+		   intel_dp->link.requested_rate == 0 ? "]" : "");
+
+	for (i = 0; i < intel_dp->num_source_rates; i++)
+		seq_printf(m, " %s%d%s%s",
+			   intel_dp->source_rates[i] == intel_dp->link.requested_rate ? "[" : "",
+			   intel_dp->source_rates[i],
+			   intel_dp->link_trained &&
+				intel_dp->source_rates[i] == intel_dp->link_rate ? "*" : "",
+			   intel_dp->source_rates[i] == intel_dp->link.requested_rate ? "]" : "");
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
+static ssize_t i915_dp_set_link_rate_write(struct file *file,
+					   const char __user *ubuf,
+					   size_t len, loff_t *offp)
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
+	intel_dp_reset_link_params(intel_dp);
+	intel_dp->link.requested_rate = rate;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_set_link_rate);
+
+static int i915_dp_set_lane_count_show(struct seq_file *m, void *data)
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
+		   intel_dp->link.requested_lane_count == 0 ? "[" : "",
+		   intel_dp->link.requested_lane_count == 0 ? "]" : "");
+
+	for (i = 1; i <= 4; i <<= 1)
+		seq_printf(m, " %s%d%s%s",
+			   i == intel_dp->link.requested_lane_count ? "[" : "",
+			   i,
+			   intel_dp->link_trained &&
+				i == intel_dp->lane_count ? "*" : "",
+			   i == intel_dp->link.requested_lane_count ? "]" : "");
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
+static ssize_t i915_dp_set_lane_count_write(struct file *file,
+					    const char __user *ubuf,
+					    size_t len, loff_t *offp)
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
+	intel_dp_reset_link_params(intel_dp);
+	intel_dp->link.requested_lane_count = lane_count;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_set_lane_count);
+
+void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
+{
+	struct dentry *root = connector->base.debugfs_entry;
+
+	if (connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort &&
+	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
+		return;
+
+	debugfs_create_file("i915_dp_set_link_rate", 0644, root,
+			    connector, &i915_dp_set_link_rate_fops);
+
+	debugfs_create_file("i915_dp_set_lane_count", 0644, root,
+			    connector, &i915_dp_set_lane_count_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index f658230960333..42e7fc6cb171a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -9,6 +9,7 @@
 #include <drm/display/drm_dp_helper.h>
 
 struct intel_atomic_state;
+struct intel_connector;
 struct intel_crtc_state;
 struct intel_dp;
 
@@ -44,4 +45,7 @@ static inline u8 intel_dp_training_pattern_symbol(u8 pattern)
 
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
+
+void intel_dp_link_training_debugfs_add(struct intel_connector *connector);
+
 #endif /* __INTEL_DP_LINK_TRAINING_H__ */
-- 
2.43.3

