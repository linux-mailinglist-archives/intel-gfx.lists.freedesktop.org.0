Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E29D7E511C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 08:35:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3990C10E70B;
	Wed,  8 Nov 2023 07:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 650AE10E70A;
 Wed,  8 Nov 2023 07:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699428938; x=1730964938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ygA+7MpXBk8Z5wsxOpRw2alm+sJaqOSEB7oxBlynS3Y=;
 b=l0GfNIPAgNIDphux9hnM2umUcHLBjQvfA/xG+aDDoOEsM7/oTotY1ldK
 irQ/Nml0KwghxUOgD0gVzq0gbVXA8H9rUhV/3dIWmlYstaho6OY+Vz0Aj
 8WYnXS5qzHO4J3HTNOhoFBPqePJLJWc7c8aSZvpma72vtYuj/7UqGwyVB
 +szF0FapzNKzbjk+iNvLukX72tHGbno60jwDD0ah3ezsSH96xlNpuzP/l
 L54FcKWlxa9yE+NHo2MV6CUGQWpYXKijaVRdz46X0OxtLYGDioO4b492h
 N2Sj/IOtGV30FTgapiYtq4eP75SmqMMI7xCGr1NZ6RGeOr9uIeftAsQZf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="8360289"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; 
   d="scan'208";a="8360289"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 23:35:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="906689613"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; d="scan'208";a="906689613"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga001.fm.intel.com with ESMTP; 07 Nov 2023 23:35:36 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed,  8 Nov 2023 12:53:03 +0530
Message-Id: <20231108072303.3414118-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20231108072303.3414118-1-animesh.manna@intel.com>
References: <20231108072303.3414118-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 6/6] drm/i915/panelreplay: Debugfs support
 for panel replay
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

Add debugfs support which will print source and sink status
per connector basis. Existing i915_psr_status and
i915_psr_sink_status will be used to get the source and
sink status of panel replay.

v1: Initial version. [rb-ed by Arun]
v2: Added check for DP 2.0 and connector type in connector_debugfs_add().
v3: Optimization and cosmetic changes. [Jouni]

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 87 +++++++++++++++++-------
 1 file changed, 63 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ea292832ca47..b0e46fe4bfac 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2865,12 +2865,19 @@ static int psr_get_status_and_error_status(struct intel_dp *intel_dp,
 {
 	struct drm_dp_aux *aux = &intel_dp->aux;
 	int ret;
+	unsigned int offset;
 
-	ret = drm_dp_dpcd_readb(aux, DP_PSR_STATUS, status);
+	offset = intel_dp->psr.panel_replay_enabled ?
+		 DP_SINK_DEVICE_PR_AND_FRAME_LOCK_STATUS : DP_PSR_STATUS;
+
+	ret = drm_dp_dpcd_readb(aux, offset, status);
 	if (ret != 1)
 		return ret;
 
-	ret = drm_dp_dpcd_readb(aux, DP_PSR_ERROR_STATUS, error_status);
+	offset = intel_dp->psr.panel_replay_enabled ?
+		 DP_PANEL_REPLAY_ERROR_STATUS : DP_PSR_ERROR_STATUS;
+
+	ret = drm_dp_dpcd_readb(aux, offset, error_status);
 	if (ret != 1)
 		return ret;
 
@@ -3091,7 +3098,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 			status = live_status[status_val];
 	}
 
-	seq_printf(m, "Source PSR status: %s [0x%08x]\n", status, val);
+	seq_printf(m, "Source PSR/PanelReplay status: %s [0x%08x]\n", status, val);
 }
 
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
@@ -3104,18 +3111,22 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	bool enabled;
 	u32 val;
 
-	seq_printf(m, "Sink support: %s", str_yes_no(psr->sink_support));
+	seq_printf(m, "Sink support: PSR = %s",
+		   str_yes_no(psr->sink_support));
+
 	if (psr->sink_support)
 		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
-	seq_puts(m, "\n");
+	seq_printf(m, ", Panel Replay = %s\n", str_yes_no(psr->sink_panel_replay_support));
 
-	if (!psr->sink_support)
+	if (!(psr->sink_support || psr->sink_panel_replay_support))
 		return 0;
 
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 	mutex_lock(&psr->lock);
 
-	if (psr->enabled)
+	if (psr->panel_replay_enabled)
+		status = "Panel Replay Enabled";
+	else if (psr->enabled)
 		status = psr->psr2_enabled ? "PSR2 enabled" : "PSR1 enabled";
 	else
 		status = "disabled";
@@ -3128,14 +3139,17 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 		goto unlock;
 	}
 
-	if (psr->psr2_enabled) {
+	if (psr->panel_replay_enabled) {
+		val = intel_de_read(dev_priv, TRANS_DP2_CTL(cpu_transcoder));
+		enabled = val & TRANS_DP2_PANEL_REPLAY_ENABLE;
+	} else if (psr->psr2_enabled) {
 		val = intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder));
 		enabled = val & EDP_PSR2_ENABLE;
 	} else {
 		val = intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder));
 		enabled = val & EDP_PSR_ENABLE;
 	}
-	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
+	seq_printf(m, "Source PSR/PanelReplay ctl: %s [0x%08x]\n",
 		   str_enabled_disabled(enabled), val);
 	psr_source_status(intel_dp, m);
 	seq_printf(m, "Busy frontbuffer bits: 0x%08x\n",
@@ -3273,6 +3287,16 @@ void intel_psr_debugfs_register(struct drm_i915_private *i915)
 			    i915, &i915_edp_psr_status_fops);
 }
 
+static const char *psr_mode_str(struct intel_dp *intel_dp)
+{
+	if (intel_dp->psr.panel_replay_enabled)
+		return "PANEL-REPLAY";
+	else if (intel_dp->psr.enabled)
+		return "PSR";
+
+	return "unknown";
+}
+
 static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
@@ -3287,12 +3311,19 @@ static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 		"reserved",
 		"sink internal error",
 	};
+	static const char * const panel_replay_status[] = {
+		"Sink device frame is locked to the Source device",
+		"Sink device is coasting, using the VTotal target",
+		"Sink device is governing the frame rate (frame rate unlock is granted)",
+		"Sink device in the process of re-locking with the Source device",
+	};
 	const char *str;
 	int ret;
 	u8 status, error_status;
+	u32 idx;
 
-	if (!CAN_PSR(intel_dp)) {
-		seq_puts(m, "PSR Unsupported\n");
+	if (!(CAN_PSR(intel_dp) || CAN_PANEL_REPLAY(intel_dp))) {
+		seq_puts(m, "PSR/Panel-Replay Unsupported\n");
 		return -ENODEV;
 	}
 
@@ -3303,15 +3334,20 @@ static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 	if (ret)
 		return ret;
 
-	status &= DP_PSR_SINK_STATE_MASK;
-	if (status < ARRAY_SIZE(sink_status))
-		str = sink_status[status];
-	else
-		str = "unknown";
+	str = "unknown";
+	if (intel_dp->psr.panel_replay_enabled) {
+		idx = (status & DP_SINK_FRAME_LOCKED_MASK) >> DP_SINK_FRAME_LOCKED_SHIFT;
+		if (idx < ARRAY_SIZE(panel_replay_status))
+			str = panel_replay_status[idx];
+	} else if (intel_dp->psr.enabled) {
+		idx = status & DP_PSR_SINK_STATE_MASK;
+		if (idx < ARRAY_SIZE(sink_status))
+			str = sink_status[idx];
+	}
 
-	seq_printf(m, "Sink PSR status: 0x%x [%s]\n", status, str);
+	seq_printf(m, "Sink %s status: 0x%x [%s]\n", psr_mode_str(intel_dp), status, str);
 
-	seq_printf(m, "Sink PSR error status: 0x%x", error_status);
+	seq_printf(m, "Sink %s error status: 0x%x", psr_mode_str(intel_dp), error_status);
 
 	if (error_status & (DP_PSR_RFB_STORAGE_ERROR |
 			    DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR |
@@ -3320,11 +3356,11 @@ static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 	else
 		seq_puts(m, "\n");
 	if (error_status & DP_PSR_RFB_STORAGE_ERROR)
-		seq_puts(m, "\tPSR RFB storage error\n");
+		seq_printf(m, "\t%s RFB storage error\n", psr_mode_str(intel_dp));
 	if (error_status & DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR)
-		seq_puts(m, "\tPSR VSC SDP uncorrectable error\n");
+		seq_printf(m, "\t%s VSC SDP uncorrectable error\n", psr_mode_str(intel_dp));
 	if (error_status & DP_PSR_LINK_CRC_ERROR)
-		seq_puts(m, "\tPSR Link CRC error\n");
+		seq_printf(m, "\t%s Link CRC error\n", psr_mode_str(intel_dp));
 
 	return ret;
 }
@@ -3344,13 +3380,16 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct dentry *root = connector->base.debugfs_entry;
 
-	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
-		return;
+	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP) {
+		if (!(HAS_DP20(i915) &&
+		      connector->base.connector_type == DRM_MODE_CONNECTOR_DisplayPort))
+			return;
+	}
 
 	debugfs_create_file("i915_psr_sink_status", 0444, root,
 			    connector, &i915_psr_sink_status_fops);
 
-	if (HAS_PSR(i915))
+	if (HAS_PSR(i915) || HAS_DP20(i915))
 		debugfs_create_file("i915_psr_status", 0444, root,
 				    connector, &i915_psr_status_fops);
 }
-- 
2.29.0

