Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D9383EBA9
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jan 2024 08:19:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08BD410E5A2;
	Sat, 27 Jan 2024 07:18:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD9310E5A2
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jan 2024 07:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706339926; x=1737875926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LGPLnQyxBVrND0i52Uu5759O4OY2Q/ac00jJz2eavB8=;
 b=U8sCIZ9ln51Z5Zek4IO8+W7MrRsyyFx1oWILZuTjfu/ul5pBURJTcJDM
 INDCMYJnD5OLRKFH+szksbmWpd9JO772F7tkGlBjZTtfLregW0bfvHyqS
 5U/iqFA+KPhPwLwCRA/nNBZuscxkL7hyhDtUWCoNsnC6TueduHKLmQb5m
 tB74kFaVHXVgaYg20mwkHcRCAGNn3NGDAObZ62NPCPQs7uZkWF5bWwKiv
 VxTYRvJYVMQNzbW1VBQ23S2Zc5scnYiFgvm4/oAMw6UFOo3W8vkHKcEg2
 1Yg7M27+Yk64XvepJezlH8fIyb6eTWTsGQFyYkT4v7bYrkiy2I+3ae8oG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="2528285"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="2528285"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2024 23:18:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="2970486"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa004.jf.intel.com with ESMTP; 26 Jan 2024 23:18:44 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/6] drm/i915/hdcp: HDCP Capability for the downstream device
Date: Sat, 27 Jan 2024 12:46:36 +0530
Message-Id: <20240127071640.850392-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240127071640.850392-1-suraj.kandpal@intel.com>
References: <20240127071640.850392-1-suraj.kandpal@intel.com>
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

--v2
-Use MST Hub HDCP version [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 19 +++++++++++++++----
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  9 +++++++--
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +++---
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
 6 files changed, 28 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 6f2d13c8ccf7..69267d0c4021 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -188,7 +188,8 @@ static void intel_panel_info(struct seq_file *m,
 }
 
 static void intel_hdcp_info(struct seq_file *m,
-			    struct intel_connector *intel_connector)
+			    struct intel_connector *intel_connector,
+			    bool remote_req)
 {
 	bool hdcp_cap, hdcp2_cap;
 
@@ -198,7 +199,7 @@ static void intel_hdcp_info(struct seq_file *m,
 	}
 
 	hdcp_cap = intel_hdcp_capable(intel_connector);
-	hdcp2_cap = intel_hdcp2_capable(intel_connector);
+	hdcp2_cap = intel_hdcp2_capable(intel_connector, remote_req);
 
 	if (hdcp_cap)
 		seq_puts(m, "HDCP1.4 ");
@@ -285,7 +286,12 @@ static void intel_connector_info(struct seq_file *m,
 	}
 
 	seq_puts(m, "\tHDCP version: ");
-	intel_hdcp_info(m, intel_connector);
+	intel_hdcp_info(m, intel_connector, true);
+
+	if (intel_encoder_is_mst(encoder)) {
+		seq_puts(m, "\tMST Hub HDCP version: ");
+		intel_hdcp_info(m, intel_connector, false);
+	}
 
 	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
 
@@ -1131,7 +1137,12 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 
 	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
 		   connector->base.base.id);
-	intel_hdcp_info(m, connector);
+	intel_hdcp_info(m, connector, true);
+
+	if (intel_encoder_is_mst(connector->encoder)) {
+		seq_puts(m, "\tMST Hub HDCP version: ");
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
index defc90936317..4979c9e25cf0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -637,13 +637,18 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
 
 static
 int intel_dp_hdcp2_capable(struct intel_connector *connector,
-			   bool *capable)
+			   bool *capable, bool remote_req)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_dp_aux *aux = &dig_port->dp.aux;
+	struct drm_dp_aux *aux;
 	u8 rx_caps[3];
 	int ret;
 
+	if (remote_req)
+		aux = &connector->port->aux;
+	else
+		aux = &dig_port->dp.aux;
+
 	*capable = false;
 	ret = drm_dp_dpcd_read(aux,
 			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
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

