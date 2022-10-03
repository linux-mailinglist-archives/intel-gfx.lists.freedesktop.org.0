Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF085F2FB3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:33:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD4A10E329;
	Mon,  3 Oct 2022 11:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB15A10E327
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664796800; x=1696332800;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kk/jvENZbt3TXftWEgNIxb8QZxv7YSWdTD/ItvSSpBo=;
 b=THT+HoHxD9U9d9FpvvLobw0Vvx1o5ioltQ+r+xvHZJNPP1wJVEmSOYTR
 Nr8SxED3g2We/YAsnBpr4Co72w9Y49e9/7UZuN0ORlaTw2NoNQI9FDf+9
 HnfFdPvZEfrDZ5fqDX40gIOsAiwSanLbzLZbt1EF1PA/aXecYpEifCWjD
 WQPaksiHjYvP6BEmk0geItUr5mOQigJnnsHweTkkTv7qSKnYoSqetqHLs
 MZI9ZrL6MXQH5RrR9+JFtIDNbdH+OLprB5rOcg0CuMSjEiiChMr0HaanV
 ch/FHtgdCcD8vEOLZsfI736W+8fMAxljG+c0aj0jvbqRBm7S/4zsZQ00m w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="329005226"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="329005226"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618701064"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618701064"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Oct 2022 04:32:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 14:32:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 14:32:44 +0300
Message-Id: <20221003113249.16213-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
References: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/6] drm/i915: Move DRRS debugfs next to the
 implementation
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the DRRS debugfs stuff next to the actual implementation
so that it's easier to deal with the whole.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  96 +---------------
 drivers/gpu/drm/i915/display/intel_drrs.c     | 106 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_drrs.h     |   1 +
 3 files changed, 108 insertions(+), 95 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index c5f47df0f362..df5a217d46ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1023,52 +1023,6 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int i915_drrs_status(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct drm_connector_list_iter conn_iter;
-	struct intel_connector *connector;
-	struct intel_crtc *crtc;
-
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
-	for_each_intel_connector_iter(connector, &conn_iter) {
-		seq_printf(m, "[CONNECTOR:%d:%s] DRRS type: %s\n",
-			   connector->base.base.id, connector->base.name,
-			   intel_drrs_type_str(intel_panel_drrs_type(connector)));
-	}
-	drm_connector_list_iter_end(&conn_iter);
-
-	seq_puts(m, "\n");
-
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-
-		seq_printf(m, "[CRTC:%d:%s]:\n",
-			   crtc->base.base.id, crtc->base.name);
-
-		mutex_lock(&crtc->drrs.mutex);
-
-		/* DRRS Supported */
-		seq_printf(m, "\tDRRS Enabled: %s\n",
-			   str_yes_no(crtc_state->has_drrs));
-
-		seq_printf(m, "\tDRRS Active: %s\n",
-			   str_yes_no(intel_drrs_is_active(crtc)));
-
-		seq_printf(m, "\tBusy_frontbuffer_bits: 0x%X\n",
-			   crtc->drrs.busy_frontbuffer_bits);
-
-		seq_printf(m, "\tDRRS refresh rate: %s\n",
-			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
-			   "low" : "high");
-
-		mutex_unlock(&crtc->drrs.mutex);
-	}
-
-	return 0;
-}
-
 static bool
 intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
 			      enum i915_power_well_id power_well_id)
@@ -1567,53 +1521,6 @@ static const struct file_operations i915_cur_wm_latency_fops = {
 	.write = cur_wm_latency_write
 };
 
-static int i915_drrs_ctl_set(void *data, u64 val)
-{
-	struct drm_i915_private *dev_priv = data;
-	struct drm_device *dev = &dev_priv->drm;
-	struct intel_crtc *crtc;
-
-	for_each_intel_crtc(dev, crtc) {
-		struct intel_crtc_state *crtc_state;
-		struct drm_crtc_commit *commit;
-		int ret;
-
-		ret = drm_modeset_lock_single_interruptible(&crtc->base.mutex);
-		if (ret)
-			return ret;
-
-		crtc_state = to_intel_crtc_state(crtc->base.state);
-
-		if (!crtc_state->hw.active ||
-		    !crtc_state->has_drrs)
-			goto out;
-
-		commit = crtc_state->uapi.commit;
-		if (commit) {
-			ret = wait_for_completion_interruptible(&commit->hw_done);
-			if (ret)
-				goto out;
-		}
-
-		drm_dbg(&dev_priv->drm,
-			"Manually %sactivating DRRS\n", val ? "" : "de");
-
-		if (val)
-			intel_drrs_activate(crtc_state);
-		else
-			intel_drrs_deactivate(crtc_state);
-
-out:
-		drm_modeset_unlock(&crtc->base.mutex);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
-DEFINE_SIMPLE_ATTRIBUTE(i915_drrs_ctl_fops, NULL, i915_drrs_ctl_set, "%llu\n");
-
 static ssize_t
 i915_fifo_underrun_reset_write(struct file *filp,
 			       const char __user *ubuf,
@@ -1687,7 +1594,6 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
 	{"i915_ddb_info", i915_ddb_info, 0},
-	{"i915_drrs_status", i915_drrs_status, 0},
 	{"i915_lpsp_status", i915_lpsp_status, 0},
 };
 
@@ -1702,7 +1608,6 @@ static const struct {
 	{"i915_dp_test_data", &i915_displayport_test_data_fops},
 	{"i915_dp_test_type", &i915_displayport_test_type_fops},
 	{"i915_dp_test_active", &i915_displayport_test_active_fops},
-	{"i915_drrs_ctl", &i915_drrs_ctl_fops},
 	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
 };
 
@@ -1724,6 +1629,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 				 minor->debugfs_root, minor);
 
 	intel_dmc_debugfs_register(i915);
+	intel_drrs_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 	intel_hpd_debugfs_register(i915);
 	skl_watermark_ipc_debugfs_register(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 7da4a9cbe4ba..030a3566538a 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -297,3 +297,109 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
 	mutex_init(&crtc->drrs.mutex);
 	crtc->drrs.cpu_transcoder = INVALID_TRANSCODER;
 }
+
+static int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = m->private;
+	struct drm_connector_list_iter conn_iter;
+	struct intel_connector *connector;
+	struct intel_crtc *crtc;
+
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		seq_printf(m, "[CONNECTOR:%d:%s] DRRS type: %s\n",
+			   connector->base.base.id, connector->base.name,
+			   intel_drrs_type_str(intel_panel_drrs_type(connector)));
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	seq_puts(m, "\n");
+
+	for_each_intel_crtc(&i915->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		seq_printf(m, "[CRTC:%d:%s]:\n",
+			   crtc->base.base.id, crtc->base.name);
+
+		mutex_lock(&crtc->drrs.mutex);
+
+		/* DRRS Supported */
+		seq_printf(m, "\tDRRS Enabled: %s\n",
+			   str_yes_no(crtc_state->has_drrs));
+
+		seq_printf(m, "\tDRRS Active: %s\n",
+			   str_yes_no(intel_drrs_is_active(crtc)));
+
+		seq_printf(m, "\tBusy_frontbuffer_bits: 0x%X\n",
+			   crtc->drrs.busy_frontbuffer_bits);
+
+		seq_printf(m, "\tDRRS refresh rate: %s\n",
+			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
+			   "low" : "high");
+
+		mutex_unlock(&crtc->drrs.mutex);
+	}
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(intel_drrs_debugfs_status);
+
+static int intel_drrs_debugfs_ctl_set(void *data, u64 val)
+{
+	struct drm_i915_private *i915 = data;
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(&i915->drm, crtc) {
+		struct intel_crtc_state *crtc_state;
+		struct drm_crtc_commit *commit;
+		int ret;
+
+		ret = drm_modeset_lock_single_interruptible(&crtc->base.mutex);
+		if (ret)
+			return ret;
+
+		crtc_state = to_intel_crtc_state(crtc->base.state);
+
+		if (!crtc_state->hw.active ||
+		    !crtc_state->has_drrs)
+			goto out;
+
+		commit = crtc_state->uapi.commit;
+		if (commit) {
+			ret = wait_for_completion_interruptible(&commit->hw_done);
+			if (ret)
+				goto out;
+		}
+
+		drm_dbg(&i915->drm,
+			"Manually %sactivating DRRS\n", val ? "" : "de");
+
+		if (val)
+			intel_drrs_activate(crtc_state);
+		else
+			intel_drrs_deactivate(crtc_state);
+
+out:
+		drm_modeset_unlock(&crtc->base.mutex);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(intel_drrs_debugfs_ctl_fops,
+			NULL, intel_drrs_debugfs_ctl_set, "%llu\n");
+
+void intel_drrs_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_drrs_status", 0444, minor->debugfs_root,
+			    i915, &intel_drrs_debugfs_status_fops);
+
+	debugfs_create_file("i915_drrs_ctl", 0644, minor->debugfs_root,
+			    i915, &intel_drrs_debugfs_ctl_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 3ad1be1ad9c1..052055988341 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -24,5 +24,6 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits);
 void intel_crtc_drrs_init(struct intel_crtc *crtc);
+void intel_drrs_debugfs_register(struct drm_i915_private *i915);
 
 #endif /* __INTEL_DRRS_H__ */
-- 
2.35.1

