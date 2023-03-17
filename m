Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CB46BEA55
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 14:41:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18EA810E38A;
	Fri, 17 Mar 2023 13:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45E810E111
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 13:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679060512; x=1710596512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SGLPwY/5OCnXxsq9tjHU9CfptNBDv/IQvjpVEJybimI=;
 b=lQe/ELPpYKUgKBOiQ2QFFssxEgEBQ9yj4aF2BKXyTeiF1NJSU1fa6ui+
 UkHeWrja63Gw3uWL7Rm8zGS045nyhk9YijszaZBiF/9bFsgBDXJFyku0G
 BpykUjzmlO+o0xuSE8GqnqxLmBRtj7PJ1ommqkFFnBz2NorR5vCg11phG
 Mbc3F30dZ99WdSlwH1Dzzv5e9GxOMkFcGxjmGDNqdLUdSy0y3XyQfrF2X
 ZWZV5id0gskhuv4ZVWUF579grm0fzUKIqVEAEuf7G7rr7l64g9LnLyYhs
 rgigcxK+GDXvxqCWzemg3o2nzRfdXzBuG4bWOCMy2xoPR8SiI7Aq7RNRr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="318658876"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="318658876"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 06:41:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="804099319"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="804099319"
Received: from shuchen-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.191])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 06:41:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 15:41:42 +0200
Message-Id: <20230317134144.223936-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/psr: move PSR debugfs to
 intel_psr.c
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the debugfs next to the implementation.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 288 +----------------
 drivers/gpu/drm/i915/display/intel_psr.c      | 302 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h      |   3 +
 3 files changed, 308 insertions(+), 285 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 65585f19c6c8..4d8ebf3fed11 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -142,269 +142,6 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
 	return 0;
 }
 
-static int i915_psr_sink_status_show(struct seq_file *m, void *data)
-{
-	u8 val;
-	static const char * const sink_status[] = {
-		"inactive",
-		"transition to active, capture and display",
-		"active, display from RFB",
-		"active, capture and display on sink device timings",
-		"transition to inactive, capture and display, timing re-sync",
-		"reserved",
-		"reserved",
-		"sink internal error",
-	};
-	struct drm_connector *connector = m->private;
-	struct intel_dp *intel_dp =
-		intel_attached_dp(to_intel_connector(connector));
-	int ret;
-
-	if (!CAN_PSR(intel_dp)) {
-		seq_puts(m, "PSR Unsupported\n");
-		return -ENODEV;
-	}
-
-	if (connector->status != connector_status_connected)
-		return -ENODEV;
-
-	ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_PSR_STATUS, &val);
-
-	if (ret == 1) {
-		const char *str = "unknown";
-
-		val &= DP_PSR_SINK_STATE_MASK;
-		if (val < ARRAY_SIZE(sink_status))
-			str = sink_status[val];
-		seq_printf(m, "Sink PSR status: 0x%x [%s]\n", val, str);
-	} else {
-		return ret;
-	}
-
-	return 0;
-}
-DEFINE_SHOW_ATTRIBUTE(i915_psr_sink_status);
-
-static void
-psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	const char *status = "unknown";
-	u32 val, status_val;
-
-	if (intel_dp->psr.psr2_enabled) {
-		static const char * const live_status[] = {
-			"IDLE",
-			"CAPTURE",
-			"CAPTURE_FS",
-			"SLEEP",
-			"BUFON_FW",
-			"ML_UP",
-			"SU_STANDBY",
-			"FAST_SLEEP",
-			"DEEP_SLEEP",
-			"BUF_ON",
-			"TG_ON"
-		};
-		val = intel_de_read(dev_priv,
-				    EDP_PSR2_STATUS(intel_dp->psr.transcoder));
-		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
-		if (status_val < ARRAY_SIZE(live_status))
-			status = live_status[status_val];
-	} else {
-		static const char * const live_status[] = {
-			"IDLE",
-			"SRDONACK",
-			"SRDENT",
-			"BUFOFF",
-			"BUFON",
-			"AUXACK",
-			"SRDOFFACK",
-			"SRDENT_ON",
-		};
-		val = intel_de_read(dev_priv,
-				    EDP_PSR_STATUS(intel_dp->psr.transcoder));
-		status_val = (val & EDP_PSR_STATUS_STATE_MASK) >>
-			      EDP_PSR_STATUS_STATE_SHIFT;
-		if (status_val < ARRAY_SIZE(live_status))
-			status = live_status[status_val];
-	}
-
-	seq_printf(m, "Source PSR status: %s [0x%08x]\n", status, val);
-}
-
-static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_psr *psr = &intel_dp->psr;
-	intel_wakeref_t wakeref;
-	const char *status;
-	bool enabled;
-	u32 val;
-
-	seq_printf(m, "Sink support: %s", str_yes_no(psr->sink_support));
-	if (psr->sink_support)
-		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
-	seq_puts(m, "\n");
-
-	if (!psr->sink_support)
-		return 0;
-
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-	mutex_lock(&psr->lock);
-
-	if (psr->enabled)
-		status = psr->psr2_enabled ? "PSR2 enabled" : "PSR1 enabled";
-	else
-		status = "disabled";
-	seq_printf(m, "PSR mode: %s\n", status);
-
-	if (!psr->enabled) {
-		seq_printf(m, "PSR sink not reliable: %s\n",
-			   str_yes_no(psr->sink_not_reliable));
-
-		goto unlock;
-	}
-
-	if (psr->psr2_enabled) {
-		val = intel_de_read(dev_priv,
-				    EDP_PSR2_CTL(intel_dp->psr.transcoder));
-		enabled = val & EDP_PSR2_ENABLE;
-	} else {
-		val = intel_de_read(dev_priv,
-				    EDP_PSR_CTL(intel_dp->psr.transcoder));
-		enabled = val & EDP_PSR_ENABLE;
-	}
-	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
-		   str_enabled_disabled(enabled), val);
-	psr_source_status(intel_dp, m);
-	seq_printf(m, "Busy frontbuffer bits: 0x%08x\n",
-		   psr->busy_frontbuffer_bits);
-
-	/*
-	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
-	 */
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		val = intel_de_read(dev_priv,
-				    EDP_PSR_PERF_CNT(intel_dp->psr.transcoder));
-		val &= EDP_PSR_PERF_CNT_MASK;
-		seq_printf(m, "Performance counter: %u\n", val);
-	}
-
-	if (psr->debug & I915_PSR_DEBUG_IRQ) {
-		seq_printf(m, "Last attempted entry at: %lld\n",
-			   psr->last_entry_attempt);
-		seq_printf(m, "Last exit at: %lld\n", psr->last_exit);
-	}
-
-	if (psr->psr2_enabled) {
-		u32 su_frames_val[3];
-		int frame;
-
-		/*
-		 * Reading all 3 registers before hand to minimize crossing a
-		 * frame boundary between register reads
-		 */
-		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
-			val = intel_de_read(dev_priv,
-					    PSR2_SU_STATUS(intel_dp->psr.transcoder, frame));
-			su_frames_val[frame / 3] = val;
-		}
-
-		seq_puts(m, "Frame:\tPSR2 SU blocks:\n");
-
-		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame++) {
-			u32 su_blocks;
-
-			su_blocks = su_frames_val[frame / 3] &
-				    PSR2_SU_STATUS_MASK(frame);
-			su_blocks = su_blocks >> PSR2_SU_STATUS_SHIFT(frame);
-			seq_printf(m, "%d\t%d\n", frame, su_blocks);
-		}
-
-		seq_printf(m, "PSR2 selective fetch: %s\n",
-			   str_enabled_disabled(psr->psr2_sel_fetch_enabled));
-	}
-
-unlock:
-	mutex_unlock(&psr->lock);
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
-
-	return 0;
-}
-
-static int i915_edp_psr_status(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct intel_dp *intel_dp = NULL;
-	struct intel_encoder *encoder;
-
-	if (!HAS_PSR(dev_priv))
-		return -ENODEV;
-
-	/* Find the first EDP which supports PSR */
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
-		intel_dp = enc_to_intel_dp(encoder);
-		break;
-	}
-
-	if (!intel_dp)
-		return -ENODEV;
-
-	return intel_psr_status(m, intel_dp);
-}
-
-static int
-i915_edp_psr_debug_set(void *data, u64 val)
-{
-	struct drm_i915_private *dev_priv = data;
-	struct intel_encoder *encoder;
-	intel_wakeref_t wakeref;
-	int ret = -ENODEV;
-
-	if (!HAS_PSR(dev_priv))
-		return ret;
-
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
-		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
-		drm_dbg_kms(&dev_priv->drm, "Setting PSR debug to %llx\n", val);
-
-		wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-
-		// TODO: split to each transcoder's PSR debug state
-		ret = intel_psr_debug_set(intel_dp, val);
-
-		intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
-	}
-
-	return ret;
-}
-
-static int
-i915_edp_psr_debug_get(void *data, u64 *val)
-{
-	struct drm_i915_private *dev_priv = data;
-	struct intel_encoder *encoder;
-
-	if (!HAS_PSR(dev_priv))
-		return -ENODEV;
-
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
-		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
-		// TODO: split to each transcoder's PSR debug state
-		*val = READ_ONCE(intel_dp->psr.debug);
-		return 0;
-	}
-
-	return -ENODEV;
-}
-
-DEFINE_SIMPLE_ATTRIBUTE(i915_edp_psr_debug_fops,
-			i915_edp_psr_debug_get, i915_edp_psr_debug_set,
-			"%llu\n");
-
 static int i915_power_domain_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
@@ -1320,7 +1057,6 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_opregion", i915_opregion, 0},
 	{"i915_vbt", i915_vbt, 0},
 	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
-	{"i915_edp_psr_status", i915_edp_psr_status, 0},
 	{"i915_power_domain_info", i915_power_domain_info, 0},
 	{"i915_display_info", i915_display_info, 0},
 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
@@ -1337,7 +1073,6 @@ static const struct {
 	{"i915_dp_test_data", &i915_displayport_test_data_fops},
 	{"i915_dp_test_type", &i915_displayport_test_type_fops},
 	{"i915_dp_test_active", &i915_displayport_test_active_fops},
-	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
 };
 
 void intel_display_debugfs_register(struct drm_i915_private *i915)
@@ -1361,6 +1096,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 	intel_hpd_debugfs_register(i915);
+	intel_psr_debugfs_register(i915);
 	intel_wm_debugfs_register(i915);
 }
 
@@ -1413,16 +1149,6 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
 
-static int i915_psr_status_show(struct seq_file *m, void *data)
-{
-	struct drm_connector *connector = m->private;
-	struct intel_dp *intel_dp =
-		intel_attached_dp(to_intel_connector(connector));
-
-	return intel_psr_status(m, intel_dp);
-}
-DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
-
 static int i915_lpsp_capability_show(struct seq_file *m, void *data)
 {
 	struct drm_connector *connector = m->private;
@@ -1675,19 +1401,11 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
 		return;
 
 	intel_drrs_connector_debugfs_add(intel_connector);
+	intel_psr_connector_debugfs_add(intel_connector);
 
-	if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
+	if (connector->connector_type == DRM_MODE_CONNECTOR_eDP)
 		debugfs_create_file("i915_panel_timings", S_IRUGO, root,
 				    connector, &i915_panel_fops);
-		debugfs_create_file("i915_psr_sink_status", S_IRUGO, root,
-				    connector, &i915_psr_sink_status_fops);
-	}
-
-	if (HAS_PSR(dev_priv) &&
-	    connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
-		debugfs_create_file("i915_psr_status", 0444, root,
-				    connector, &i915_psr_status_fops);
-	}
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 44610b20cd29..9d3205d99b54 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2644,3 +2644,305 @@ void intel_psr_unlock(const struct intel_crtc_state *crtc_state)
 		break;
 	}
 }
+
+static void
+psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	const char *status = "unknown";
+	u32 val, status_val;
+
+	if (intel_dp->psr.psr2_enabled) {
+		static const char * const live_status[] = {
+			"IDLE",
+			"CAPTURE",
+			"CAPTURE_FS",
+			"SLEEP",
+			"BUFON_FW",
+			"ML_UP",
+			"SU_STANDBY",
+			"FAST_SLEEP",
+			"DEEP_SLEEP",
+			"BUF_ON",
+			"TG_ON"
+		};
+		val = intel_de_read(dev_priv,
+				    EDP_PSR2_STATUS(intel_dp->psr.transcoder));
+		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
+		if (status_val < ARRAY_SIZE(live_status))
+			status = live_status[status_val];
+	} else {
+		static const char * const live_status[] = {
+			"IDLE",
+			"SRDONACK",
+			"SRDENT",
+			"BUFOFF",
+			"BUFON",
+			"AUXACK",
+			"SRDOFFACK",
+			"SRDENT_ON",
+		};
+		val = intel_de_read(dev_priv,
+				    EDP_PSR_STATUS(intel_dp->psr.transcoder));
+		status_val = (val & EDP_PSR_STATUS_STATE_MASK) >>
+			      EDP_PSR_STATUS_STATE_SHIFT;
+		if (status_val < ARRAY_SIZE(live_status))
+			status = live_status[status_val];
+	}
+
+	seq_printf(m, "Source PSR status: %s [0x%08x]\n", status, val);
+}
+
+static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+	intel_wakeref_t wakeref;
+	const char *status;
+	bool enabled;
+	u32 val;
+
+	seq_printf(m, "Sink support: %s", str_yes_no(psr->sink_support));
+	if (psr->sink_support)
+		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
+	seq_puts(m, "\n");
+
+	if (!psr->sink_support)
+		return 0;
+
+	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	mutex_lock(&psr->lock);
+
+	if (psr->enabled)
+		status = psr->psr2_enabled ? "PSR2 enabled" : "PSR1 enabled";
+	else
+		status = "disabled";
+	seq_printf(m, "PSR mode: %s\n", status);
+
+	if (!psr->enabled) {
+		seq_printf(m, "PSR sink not reliable: %s\n",
+			   str_yes_no(psr->sink_not_reliable));
+
+		goto unlock;
+	}
+
+	if (psr->psr2_enabled) {
+		val = intel_de_read(dev_priv,
+				    EDP_PSR2_CTL(intel_dp->psr.transcoder));
+		enabled = val & EDP_PSR2_ENABLE;
+	} else {
+		val = intel_de_read(dev_priv,
+				    EDP_PSR_CTL(intel_dp->psr.transcoder));
+		enabled = val & EDP_PSR_ENABLE;
+	}
+	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
+		   str_enabled_disabled(enabled), val);
+	psr_source_status(intel_dp, m);
+	seq_printf(m, "Busy frontbuffer bits: 0x%08x\n",
+		   psr->busy_frontbuffer_bits);
+
+	/*
+	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
+	 */
+	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
+		val = intel_de_read(dev_priv,
+				    EDP_PSR_PERF_CNT(intel_dp->psr.transcoder));
+		val &= EDP_PSR_PERF_CNT_MASK;
+		seq_printf(m, "Performance counter: %u\n", val);
+	}
+
+	if (psr->debug & I915_PSR_DEBUG_IRQ) {
+		seq_printf(m, "Last attempted entry at: %lld\n",
+			   psr->last_entry_attempt);
+		seq_printf(m, "Last exit at: %lld\n", psr->last_exit);
+	}
+
+	if (psr->psr2_enabled) {
+		u32 su_frames_val[3];
+		int frame;
+
+		/*
+		 * Reading all 3 registers before hand to minimize crossing a
+		 * frame boundary between register reads
+		 */
+		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
+			val = intel_de_read(dev_priv,
+					    PSR2_SU_STATUS(intel_dp->psr.transcoder, frame));
+			su_frames_val[frame / 3] = val;
+		}
+
+		seq_puts(m, "Frame:\tPSR2 SU blocks:\n");
+
+		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame++) {
+			u32 su_blocks;
+
+			su_blocks = su_frames_val[frame / 3] &
+				    PSR2_SU_STATUS_MASK(frame);
+			su_blocks = su_blocks >> PSR2_SU_STATUS_SHIFT(frame);
+			seq_printf(m, "%d\t%d\n", frame, su_blocks);
+		}
+
+		seq_printf(m, "PSR2 selective fetch: %s\n",
+			   str_enabled_disabled(psr->psr2_sel_fetch_enabled));
+	}
+
+unlock:
+	mutex_unlock(&psr->lock);
+	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+
+	return 0;
+}
+
+static int i915_edp_psr_status_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = m->private;
+	struct intel_dp *intel_dp = NULL;
+	struct intel_encoder *encoder;
+
+	if (!HAS_PSR(dev_priv))
+		return -ENODEV;
+
+	/* Find the first EDP which supports PSR */
+	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+		intel_dp = enc_to_intel_dp(encoder);
+		break;
+	}
+
+	if (!intel_dp)
+		return -ENODEV;
+
+	return intel_psr_status(m, intel_dp);
+}
+DEFINE_SHOW_ATTRIBUTE(i915_edp_psr_status);
+
+static int
+i915_edp_psr_debug_set(void *data, u64 val)
+{
+	struct drm_i915_private *dev_priv = data;
+	struct intel_encoder *encoder;
+	intel_wakeref_t wakeref;
+	int ret = -ENODEV;
+
+	if (!HAS_PSR(dev_priv))
+		return ret;
+
+	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		drm_dbg_kms(&dev_priv->drm, "Setting PSR debug to %llx\n", val);
+
+		wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+
+		// TODO: split to each transcoder's PSR debug state
+		ret = intel_psr_debug_set(intel_dp, val);
+
+		intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+	}
+
+	return ret;
+}
+
+static int
+i915_edp_psr_debug_get(void *data, u64 *val)
+{
+	struct drm_i915_private *dev_priv = data;
+	struct intel_encoder *encoder;
+
+	if (!HAS_PSR(dev_priv))
+		return -ENODEV;
+
+	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		// TODO: split to each transcoder's PSR debug state
+		*val = READ_ONCE(intel_dp->psr.debug);
+		return 0;
+	}
+
+	return -ENODEV;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(i915_edp_psr_debug_fops,
+			i915_edp_psr_debug_get, i915_edp_psr_debug_set,
+			"%llu\n");
+
+void intel_psr_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_edp_psr_debug", 0644, minor->debugfs_root,
+			    i915, &i915_edp_psr_debug_fops);
+
+	debugfs_create_file("i915_edp_psr_status", 0444, minor->debugfs_root,
+			    i915, &i915_edp_psr_status_fops);
+}
+
+static int i915_psr_sink_status_show(struct seq_file *m, void *data)
+{
+	u8 val;
+	static const char * const sink_status[] = {
+		"inactive",
+		"transition to active, capture and display",
+		"active, display from RFB",
+		"active, capture and display on sink device timings",
+		"transition to inactive, capture and display, timing re-sync",
+		"reserved",
+		"reserved",
+		"sink internal error",
+	};
+	struct drm_connector *connector = m->private;
+	struct intel_dp *intel_dp =
+		intel_attached_dp(to_intel_connector(connector));
+	int ret;
+
+	if (!CAN_PSR(intel_dp)) {
+		seq_puts(m, "PSR Unsupported\n");
+		return -ENODEV;
+	}
+
+	if (connector->status != connector_status_connected)
+		return -ENODEV;
+
+	ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_PSR_STATUS, &val);
+
+	if (ret == 1) {
+		const char *str = "unknown";
+
+		val &= DP_PSR_SINK_STATE_MASK;
+		if (val < ARRAY_SIZE(sink_status))
+			str = sink_status[val];
+		seq_printf(m, "Sink PSR status: 0x%x [%s]\n", val, str);
+	} else {
+		return ret;
+	}
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(i915_psr_sink_status);
+
+static int i915_psr_status_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+	struct intel_dp *intel_dp =
+		intel_attached_dp(to_intel_connector(connector));
+
+	return intel_psr_status(m, intel_dp);
+}
+DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
+
+void intel_psr_connector_debugfs_add(struct intel_connector *intel_connector)
+{
+	struct drm_connector *connector = &intel_connector->base;
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct dentry *root = connector->debugfs_entry;
+
+	if (connector->connector_type != DRM_MODE_CONNECTOR_eDP)
+		return;
+
+	debugfs_create_file("i915_psr_sink_status", 0444, root,
+			    connector, &i915_psr_sink_status_fops);
+
+	if (HAS_PSR(i915))
+		debugfs_create_file("i915_psr_status", 0444, root,
+				    connector, &i915_psr_status_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 7a38a9e7fa5b..0b95e8aa615f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -13,6 +13,7 @@ struct drm_connector;
 struct drm_connector_state;
 struct drm_i915_private;
 struct intel_atomic_state;
+struct intel_connector;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dp;
@@ -61,5 +62,7 @@ void intel_psr_resume(struct intel_dp *intel_dp);
 
 void intel_psr_lock(const struct intel_crtc_state *crtc_state);
 void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
+void intel_psr_connector_debugfs_add(struct intel_connector *connector);
+void intel_psr_debugfs_register(struct drm_i915_private *i915);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.39.2

