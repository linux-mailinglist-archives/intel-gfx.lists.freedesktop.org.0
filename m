Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E712085F20E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 08:46:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 157E010E8A1;
	Thu, 22 Feb 2024 07:46:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OECgskHC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF15C10E895
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 07:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708587965; x=1740123965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s2Oh54NlfJ4Z4WcHxd6lEAorUHHYSMGaCXK5lkOQI5I=;
 b=OECgskHCJMna05psnntfMbXI+nEtx667eCC5JQFhGkUPe3sGtk5kd3qu
 PJ2wLPJduC4YeLWsi6Y8KzpS+AUcRdBj78PlQBHhNjimZo8OrTWa9cSoT
 NV7c5zpn7UA8IBvX92unTThd/QjCzNN0heJr0QjSU1g/ZjZNFGgNW+J4l
 izkbls/p0qOd2KJ+R/SC/e+E9BR9mW95/B4wfNLEfZgqbbGzvDz/hkXuq
 L/+i63M4fqmES70ZTEFj4DPyuZmQilnnfpzPoXqLkXj6LA+/tCHmyQDV7
 y+5cSbydfBRl6GQPgtnGnoVyt2SUadugiLL6e+Y7KKELPy/RwhF6T5jHh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2906034"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2906034"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 23:46:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5354148"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Feb 2024 23:46:03 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 05/13] drm/i915/hdcp: Rename hdcp capable functions
Date: Thu, 22 Feb 2024 13:13:46 +0530
Message-ID: <20240222074353.1568904-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222074353.1568904-2-suraj.kandpal@intel.com>
References: <20240222074353.1568904-2-suraj.kandpal@intel.com>
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

Rename hdcp_capable and hdcp_2_2_capable to hdcp_get_capability
and hdcp_2_2_get_capability to properly reflect what these functions
are doing.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  4 ++--
 .../drm/i915/display/intel_display_types.h    |  8 +++----
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 22 +++++++++----------
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 18 +++++++--------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  4 ++--
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  6 ++---
 6 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index a962b48bcf13..d8f1a23ac2b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -197,8 +197,8 @@ static void intel_hdcp_info(struct seq_file *m,
 		goto out;
 	}
 
-	hdcp_cap = intel_hdcp_capable(intel_connector);
-	hdcp2_cap = intel_hdcp2_capable(intel_connector);
+	hdcp_cap = intel_hdcp_get_capability(intel_connector);
+	hdcp2_cap = intel_hdcp2_get_capability(intel_connector);
 
 	if (hdcp_cap)
 		seq_puts(m, "HDCP1.4 ");
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 578763e202c0..b6f86129c0bc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -498,15 +498,15 @@ struct intel_hdcp_shim {
 			   struct intel_connector *connector);
 
 	/* Detects panel's hdcp capability. This is optional for HDMI. */
-	int (*hdcp_capable)(struct intel_digital_port *dig_port,
-			    bool *hdcp_capable);
+	int (*hdcp_get_capability)(struct intel_digital_port *dig_port,
+				   bool *hdcp_capable);
 
 	/* HDCP adaptation(DP/HDMI) required on the port */
 	enum hdcp_wired_protocol protocol;
 
 	/* Detects whether sink is HDCP2.2 capable */
-	int (*hdcp_2_2_capable)(struct intel_connector *connector,
-				bool *capable);
+	int (*hdcp_2_2_get_capability)(struct intel_connector *connector,
+				       bool *capable);
 
 	/* Write HDCP2.2 messages */
 	int (*write_2_2_msg)(struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 5394391acbe1..bf90e9024feb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -269,8 +269,8 @@ bool intel_dp_hdcp_check_link(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp_capable(struct intel_digital_port *dig_port,
-			  bool *hdcp_capable)
+int intel_dp_hdcp_get_capability(struct intel_digital_port *dig_port,
+				 bool *hdcp_capable)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
@@ -642,8 +642,8 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
 }
 
 static
-int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
-			    bool *capable)
+int _intel_dp_hdcp2_get_capability(struct drm_dp_aux *aux,
+				   bool *capable)
 {
 	u8 rx_caps[3];
 	int ret;
@@ -663,13 +663,13 @@ int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
 }
 
 static
-int intel_dp_hdcp2_capable(struct intel_connector *connector,
-			   bool *capable)
+int intel_dp_hdcp2_get_capability(struct intel_connector *connector,
+				  bool *capable)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_dp_aux *aux = &dig_port->dp.aux;
 
-	return _intel_dp_hdcp2_capable(aux, capable);
+	return _intel_dp_hdcp2_get_capability(aux, capable);
 }
 
 static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
@@ -683,12 +683,12 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.read_v_prime_part = intel_dp_hdcp_read_v_prime_part,
 	.toggle_signalling = intel_dp_hdcp_toggle_signalling,
 	.check_link = intel_dp_hdcp_check_link,
-	.hdcp_capable = intel_dp_hdcp_capable,
+	.hdcp_get_capability = intel_dp_hdcp_get_capability,
 	.write_2_2_msg = intel_dp_hdcp2_write_msg,
 	.read_2_2_msg = intel_dp_hdcp2_read_msg,
 	.config_stream_type = intel_dp_hdcp2_config_stream_type,
 	.check_2_2_link = intel_dp_hdcp2_check_link,
-	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
+	.hdcp_2_2_get_capability = intel_dp_hdcp2_get_capability,
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
@@ -813,13 +813,13 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.toggle_signalling = intel_dp_hdcp_toggle_signalling,
 	.stream_encryption = intel_dp_mst_hdcp_stream_encryption,
 	.check_link = intel_dp_hdcp_check_link,
-	.hdcp_capable = intel_dp_hdcp_capable,
+	.hdcp_get_capability = intel_dp_hdcp_get_capability,
 	.write_2_2_msg = intel_dp_hdcp2_write_msg,
 	.read_2_2_msg = intel_dp_hdcp2_read_msg,
 	.config_stream_type = intel_dp_hdcp2_config_stream_type,
 	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
 	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
-	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
+	.hdcp_2_2_get_capability = intel_dp_hdcp2_get_capability,
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 4593ac10e2fa..c1a32f9f1199 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -140,7 +140,7 @@ int intel_hdcp_read_valid_bksv(struct intel_digital_port *dig_port,
 }
 
 /* Is HDCP1.4 capable on Platform and Sink */
-bool intel_hdcp_capable(struct intel_connector *connector)
+bool intel_hdcp_get_capability(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
@@ -150,8 +150,8 @@ bool intel_hdcp_capable(struct intel_connector *connector)
 	if (!shim)
 		return capable;
 
-	if (shim->hdcp_capable) {
-		shim->hdcp_capable(dig_port, &capable);
+	if (shim->hdcp_get_capability) {
+		shim->hdcp_get_capability(dig_port, &capable);
 	} else {
 		if (!intel_hdcp_read_valid_bksv(dig_port, shim, bksv))
 			capable = true;
@@ -191,7 +191,7 @@ static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
 }
 
 /* Is HDCP2.2 capable on Platform and Sink */
-bool intel_hdcp2_capable(struct intel_connector *connector)
+bool intel_hdcp2_get_capability(struct intel_connector *connector)
 {
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	bool capable = false;
@@ -200,7 +200,7 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 		return false;
 
 	/* Sink's capability for HDCP2.2 */
-	hdcp->shim->hdcp_2_2_capable(connector, &capable);
+	hdcp->shim->hdcp_2_2_get_capability(connector, &capable);
 
 	return capable;
 }
@@ -740,8 +740,8 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	 * whether the display supports HDCP before we write An. For HDMI
 	 * displays, this is not necessary.
 	 */
-	if (shim->hdcp_capable) {
-		ret = shim->hdcp_capable(dig_port, &hdcp_capable);
+	if (shim->hdcp_get_capability) {
+		ret = shim->hdcp_get_capability(dig_port, &hdcp_capable);
 		if (ret)
 			return ret;
 		if (!hdcp_capable) {
@@ -2388,7 +2388,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
-	if (intel_hdcp2_capable(connector)) {
+	if (intel_hdcp2_get_capability(connector)) {
 		ret = intel_hdcp_set_streams(dig_port, state);
 		if (!ret) {
 			ret = _intel_hdcp2_enable(connector);
@@ -2406,7 +2406,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	 * When HDCP2.2 fails and Content Type is not Type1, HDCP1.4 will
 	 * be attempted.
 	 */
-	if (ret && intel_hdcp_capable(connector) &&
+	if (ret && intel_hdcp_get_capability(connector) &&
 	    hdcp->content_type != DRM_MODE_HDCP_CONTENT_TYPE1) {
 		ret = intel_hdcp1_enable(connector);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index a9c784fd9ba5..aeefb3c13d2c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -38,8 +38,8 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
 bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
-bool intel_hdcp_capable(struct intel_connector *connector);
-bool intel_hdcp2_capable(struct intel_connector *connector);
+bool intel_hdcp_get_capability(struct intel_connector *connector);
+bool intel_hdcp2_get_capability(struct intel_connector *connector);
 void intel_hdcp_component_init(struct drm_i915_private *i915);
 void intel_hdcp_component_fini(struct drm_i915_private *i915);
 void intel_hdcp_cleanup(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7020e5806109..90d2236fede3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1732,8 +1732,8 @@ int intel_hdmi_hdcp2_check_link(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_hdmi_hdcp2_capable(struct intel_connector *connector,
-			     bool *capable)
+int intel_hdmi_hdcp2_get_capability(struct intel_connector *connector,
+				    bool *capable)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	u8 hdcp2_version;
@@ -1762,7 +1762,7 @@ static const struct intel_hdcp_shim intel_hdmi_hdcp_shim = {
 	.write_2_2_msg = intel_hdmi_hdcp2_write_msg,
 	.read_2_2_msg = intel_hdmi_hdcp2_read_msg,
 	.check_2_2_link	= intel_hdmi_hdcp2_check_link,
-	.hdcp_2_2_capable = intel_hdmi_hdcp2_capable,
+	.hdcp_2_2_get_capability = intel_hdmi_hdcp2_get_capability,
 	.protocol = HDCP_PROTOCOL_HDMI,
 };
 
-- 
2.43.2

