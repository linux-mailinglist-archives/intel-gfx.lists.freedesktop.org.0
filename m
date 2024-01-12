Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED86382BBEB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 08:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B5FA10EA7D;
	Fri, 12 Jan 2024 07:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01DEB10EA7C
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 07:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705045411; x=1736581411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X8EyKOgpByCciDb9uqxI6dhPRz8r6i9wRZQ2V5Aq8ko=;
 b=FpW/LBNx5kv9qEGwP19CgjtDPHg4ejbkbJ+xc8lSDwSAEBhun9c0wam3
 SS8/OeZ+2kVSDqsYMIP1jNqCbUgh/SX3q23zGmaI1MlSdq0F85bv/hcdY
 zI5MBEIkn70dgAUWAh0q4RI8eMGKKFqPi3VD5Etrcpyn2r7xWGg6rDvu4
 Wu6wk6fBZVHNirK039DSLfc4DQTKfz6TtidRbJHY1c2WniMDPilFz3Ps4
 UDpfAXlpigcAL/5eIJrD+DQ9/CgXNBayalmL2vVtY9wbXAf4QAX90MRyU
 s2f1ixykoEwLd+3uzJTeBJ3gcSfP54OytVUoVOoj7eDgUiLlmd1DhmqSD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5866991"
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; 
   d="scan'208";a="5866991"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 23:43:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; d="scan'208";a="17317582"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 11 Jan 2024 23:43:28 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915/hdcp: HDCP Capability for the downstream device
Date: Fri, 12 Jan 2024 13:11:15 +0530
Message-Id: <20240112074120.159797-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240112074120.159797-1-suraj.kandpal@intel.com>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
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

Currently we are only checking capability of remote device and not
immediate downstream device but during capability check we need are
concerned with only the HDCP capability of downstream device.
During i915_display_info reporting we need HDCP Capability for both
the monitors and downstream branch device if any this patch adds that.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 19 +++++++++++++++----
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  4 ++--
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +++---
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
 6 files changed, 23 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d951edb36687..457f13357fad 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -210,7 +210,8 @@ static void intel_panel_info(struct seq_file *m,
 }
 
 static void intel_hdcp_info(struct seq_file *m,
-			    struct intel_connector *intel_connector)
+			    struct intel_connector *intel_connector,
+			    bool remote_req)
 {
 	bool hdcp_cap, hdcp2_cap;
 
@@ -220,7 +221,7 @@ static void intel_hdcp_info(struct seq_file *m,
 	}
 
 	hdcp_cap = intel_hdcp_capable(intel_connector);
-	hdcp2_cap = intel_hdcp2_capable(intel_connector);
+	hdcp2_cap = intel_hdcp2_capable(intel_connector, remote_req);
 
 	if (hdcp_cap)
 		seq_puts(m, "HDCP1.4 ");
@@ -307,7 +308,12 @@ static void intel_connector_info(struct seq_file *m,
 	}
 
 	seq_puts(m, "\tHDCP version: ");
-	intel_hdcp_info(m, intel_connector);
+	intel_hdcp_info(m, intel_connector, true);
+
+	if (intel_encoder_is_mst(encoder)) {
+		seq_puts(m, "\tHDCP Branch Device version: ");
+		intel_hdcp_info(m, intel_connector, false);
+	}
 
 	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
 
@@ -1153,7 +1159,12 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 
 	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
 		   connector->base.base.id);
-	intel_hdcp_info(m, connector);
+	intel_hdcp_info(m, connector, true);
+
+	if (intel_encoder_is_mst(connector->encoder)) {
+		seq_puts(m, "\tHDCP Branch Device version: ");
+		intel_hdcp_info(m, connector, false);
+	}
 
 out:
 	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ae2e8cff9d69..aa559598f049 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -507,7 +507,7 @@ struct intel_hdcp_shim {
 
 	/* Detects whether sink is HDCP2.2 capable */
 	int (*hdcp_2_2_capable)(struct intel_connector *connector,
-				bool *capable);
+				bool *capable, bool remote_req);
 
 	/* Write HDCP2.2 messages */
 	int (*write_2_2_msg)(struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index bec49061b2e1..90b027ba3302 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -649,13 +649,13 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
 
 static
 int intel_dp_hdcp2_capable(struct intel_connector *connector,
-			   bool *capable)
+			   bool *capable, bool remote_req)
 {
 	struct drm_dp_aux *aux;
 	u8 rx_caps[3];
 	int ret;
 
-	aux = intel_dp_hdcp_get_aux(connector, true);
+	aux = intel_dp_hdcp_get_aux(connector, remote_req);
 
 	*capable = false;
 	ret = drm_dp_dpcd_read(aux,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c3e692e7f790..b88a4713e6a8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -161,7 +161,7 @@ bool intel_hdcp_capable(struct intel_connector *connector)
 }
 
 /* Is HDCP2.2 capable on Platform and Sink */
-bool intel_hdcp2_capable(struct intel_connector *connector)
+bool intel_hdcp2_capable(struct intel_connector *connector, bool remote_req)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
@@ -186,7 +186,7 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	/* Sink's capability for HDCP2.2 */
-	hdcp->shim->hdcp_2_2_capable(connector, &capable);
+	hdcp->shim->hdcp_2_2_capable(connector, &capable, remote_req);
 
 	return capable;
 }
@@ -2374,7 +2374,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
-	if (intel_hdcp2_capable(connector)) {
+	if (intel_hdcp2_capable(connector, false)) {
 		ret = intel_hdcp_set_streams(dig_port, state);
 		if (!ret) {
 			ret = _intel_hdcp2_enable(connector);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index a9c784fd9ba5..72268e593cec 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -39,7 +39,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 			    const struct drm_connector_state *conn_state);
 bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
 bool intel_hdcp_capable(struct intel_connector *connector);
-bool intel_hdcp2_capable(struct intel_connector *connector);
+bool intel_hdcp2_capable(struct intel_connector *connector, bool remote_req);
 void intel_hdcp_component_init(struct drm_i915_private *i915);
 void intel_hdcp_component_fini(struct drm_i915_private *i915);
 void intel_hdcp_cleanup(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7020e5806109..d7feef05bc47 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1733,7 +1733,7 @@ int intel_hdmi_hdcp2_check_link(struct intel_digital_port *dig_port,
 
 static
 int intel_hdmi_hdcp2_capable(struct intel_connector *connector,
-			     bool *capable)
+			     bool *capable, bool remote_req)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	u8 hdcp2_version;
-- 
2.25.1

