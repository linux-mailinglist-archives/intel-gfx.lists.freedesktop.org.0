Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 072CEA499D2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 13:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A370110EC9B;
	Fri, 28 Feb 2025 12:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K6HiRBxp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8197810EC9B;
 Fri, 28 Feb 2025 12:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740746990; x=1772282990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4ZJshDC9lT3w9J4ZYlngkAqE+DjS2Bh9SNlYFnTwWEY=;
 b=K6HiRBxpMMyNdp4lgZ7JMC1VeVjsszGjCv0Xhj2vZkgp1/Yr17VSsl/P
 RrBvnpBF33k4DhVOp2pgww1/aZBjDjsBpTlDr6aBC2qFKVtnhXeet+Egu
 Xh201FdkgDmDm/CPBHHm1dXHJqVHJEP0wvIjZbWz2zoh4gFygEKLs+d/2
 ZNqM63ecJLEd5IKcveTOf3kfvL7P/OrcP1goUMxEI0cqgJu9AyNiMn+6T
 9QQgqrmWXEcVoSbQt48HA2sRBTKIKUXfeYdEAYw6VzUDd9GZKeIxe4xBH
 P2GDBiV5VnSF1VsqB7eQnZXWYmdOKHTw79zKeb1CZThgIoR6+CCuFxB1G A==;
X-CSE-ConnectionGUID: i9iUE8oWTiufsjhPbxxPgQ==
X-CSE-MsgGUID: UyVthBNKTDKVoG1R/ojXsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="67051294"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="67051294"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 04:49:50 -0800
X-CSE-ConnectionGUID: 7kiI049lS9ubmgrRepsJdA==
X-CSE-MsgGUID: 7GRycnCQRm+yI3gVY6fM4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="117512973"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.24])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 04:49:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/3] drm/i915/hdcp: add hdcp sub-struct to struct
 intel_digital_port
Date: Fri, 28 Feb 2025 14:49:31 +0200
Message-Id: <9da4be57b068acd06dec8b93977f0a70627103d4.1740746939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740746939.git.jani.nikula@intel.com>
References: <cover.1740746939.git.jani.nikula@intel.com>
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

Move hdcp_mutex, num_hdcp_streams, hdcp_auth_status, hdcp_port_data, and
hdcp_mst_type1_capable members of struct intel_digital_port under an
hdcp sub-struct to group hdcp related things together.

Rename them mutex, num_streams, auth_status, port_data, and
mst_type1_capable for clarity.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +-
 .../drm/i915/display/intel_display_types.h    | 22 ++---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 84 +++++++++----------
 6 files changed, 60 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 372c3683c193..55b9e9bfcc4d 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1311,7 +1311,7 @@ bool g4x_dp_init(struct intel_display *display,
 
 	intel_encoder->devdata = devdata;
 
-	mutex_init(&dig_port->hdcp_mutex);
+	mutex_init(&dig_port->hdcp.mutex);
 
 	if (drm_encoder_init(display->drm, &intel_encoder->base,
 			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index d9d1304dcc36..3dc2c59a3df0 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -715,7 +715,7 @@ bool g4x_hdmi_init(struct intel_display *display,
 
 	intel_encoder->devdata = devdata;
 
-	mutex_init(&dig_port->hdcp_mutex);
+	mutex_init(&dig_port->hdcp.mutex);
 
 	if (drm_encoder_init(display->drm, &intel_encoder->base,
 			     &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ca7983ef373d..20fc258a4d6d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4582,7 +4582,7 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 	intel_display_power_flush_work(display);
 
 	drm_encoder_cleanup(encoder);
-	kfree(dig_port->hdcp_port_data.streams);
+	kfree(dig_port->hdcp.port_data.streams);
 	kfree(dig_port);
 }
 
@@ -5187,8 +5187,8 @@ void intel_ddi_init(struct intel_display *display,
 
 	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
 
-	mutex_init(&dig_port->hdcp_mutex);
-	dig_port->num_hdcp_streams = 0;
+	mutex_init(&dig_port->hdcp.mutex);
+	dig_port->hdcp.num_streams = 0;
 
 	encoder->hotplug = intel_ddi_hotplug;
 	encoder->compute_output_type = intel_ddi_compute_output_type;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b52fca816591..053be62a5be1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1849,16 +1849,18 @@ struct intel_digital_port {
 
 	struct intel_tc_port *tc;
 
-	/* protects num_hdcp_streams reference count, hdcp_port_data and hdcp_auth_status */
-	struct mutex hdcp_mutex;
-	/* the number of pipes using HDCP signalling out of this port */
-	unsigned int num_hdcp_streams;
-	/* port HDCP auth status */
-	bool hdcp_auth_status;
-	/* HDCP port data need to pass to security f/w */
-	struct hdcp_port_data hdcp_port_data;
-	/* Whether the MST topology supports HDCP Type 1 Content */
-	bool hdcp_mst_type1_capable;
+	struct {
+		/* protects num_streams reference count, port_data and auth_status */
+		struct mutex mutex;
+		/* the number of pipes using HDCP signalling out of this port */
+		unsigned int num_streams;
+		/* port HDCP auth status */
+		bool auth_status;
+		/* HDCP port data need to pass to security f/w */
+		struct hdcp_port_data port_data;
+		/* Whether the MST topology supports HDCP Type 1 Content */
+		bool mst_type1_capable;
+	} hdcp;
 
 	void (*write_infoframe)(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 4c9481124c90..cc312596fb77 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -799,7 +799,7 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum transcoder cpu_transcoder = hdcp->stream_transcoder;
 	enum pipe pipe = (enum pipe)cpu_transcoder;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 46f53ade432e..1bf424a822f3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -107,16 +107,16 @@ intel_hdcp_required_content_stream(struct intel_atomic_state *state,
 	struct drm_connector_list_iter conn_iter;
 	struct intel_digital_port *conn_dig_port;
 	struct intel_connector *connector;
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	bool enforce_type0 = false;
 	int k;
 
-	if (dig_port->hdcp_auth_status)
+	if (dig_port->hdcp.auth_status)
 		return 0;
 
 	data->k = 0;
 
-	if (!dig_port->hdcp_mst_type1_capable)
+	if (!dig_port->hdcp.mst_type1_capable)
 		enforce_type0 = true;
 
 	drm_connector_list_iter_begin(display->drm, &conn_iter);
@@ -159,7 +159,7 @@ static int intel_hdcp_prepare_streams(struct intel_atomic_state *state,
 				      struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	if (intel_encoder_is_mst(intel_attached_encoder(connector)))
@@ -1001,7 +1001,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 		 * don't disable it until it disabled HDCP encryption for
 		 * all connectors in MST topology.
 		 */
-		if (dig_port->num_hdcp_streams > 0)
+		if (dig_port->hdcp.num_streams > 0)
 			return 0;
 	}
 
@@ -1094,13 +1094,13 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 	if (hdcp->value == value)
 		return;
 
-	drm_WARN_ON(display->drm, !mutex_is_locked(&dig_port->hdcp_mutex));
+	drm_WARN_ON(display->drm, !mutex_is_locked(&dig_port->hdcp.mutex));
 
 	if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED) {
-		if (!drm_WARN_ON(display->drm, dig_port->num_hdcp_streams == 0))
-			dig_port->num_hdcp_streams--;
+		if (!drm_WARN_ON(display->drm, dig_port->hdcp.num_streams == 0))
+			dig_port->hdcp.num_streams--;
 	} else if (value == DRM_MODE_CONTENT_PROTECTION_ENABLED) {
-		dig_port->num_hdcp_streams++;
+		dig_port->hdcp.num_streams++;
 	}
 
 	hdcp->value = value;
@@ -1122,7 +1122,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 	int ret = 0;
 
 	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	mutex_lock(&dig_port->hdcp.mutex);
 
 	cpu_transcoder = hdcp->cpu_transcoder;
 
@@ -1177,7 +1177,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 	}
 
 out:
-	mutex_unlock(&dig_port->hdcp_mutex);
+	mutex_unlock(&dig_port->hdcp.mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
@@ -1219,7 +1219,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1249,7 +1249,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1277,7 +1277,7 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1303,7 +1303,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1330,7 +1330,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1357,7 +1357,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1383,7 +1383,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1412,7 +1412,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1442,7 +1442,7 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1466,7 +1466,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1503,7 +1503,7 @@ static int hdcp2_close_session(struct intel_connector *connector)
 	}
 
 	ret = arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
-					     &dig_port->hdcp_port_data);
+					     &dig_port->hdcp.port_data);
 	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
@@ -1691,7 +1691,7 @@ static
 int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_rep_stream_manage stream_manage;
@@ -1769,11 +1769,11 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 	 * MST topology is not Type 1 capable if it contains a downstream
 	 * device that is only HDCP 1.x or Legacy HDCP 2.0/2.1 compliant.
 	 */
-	dig_port->hdcp_mst_type1_capable =
+	dig_port->hdcp.mst_type1_capable =
 		!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&
 		!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
 
-	if (!dig_port->hdcp_mst_type1_capable && hdcp->content_type) {
+	if (!dig_port->hdcp.mst_type1_capable && hdcp->content_type) {
 		drm_dbg_kms(display->drm,
 			    "HDCP1.x or 2.0 Legacy Device Downstream\n");
 		return -EINVAL;
@@ -1869,7 +1869,7 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	enum port port = dig_port->base.port;
@@ -1900,7 +1900,7 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 	if (hdcp2_deauthenticate_port(connector) < 0)
 		drm_dbg_kms(display->drm, "Port deauth failed.\n");
 
-	dig_port->hdcp_auth_status = false;
+	dig_port->hdcp.auth_status = false;
 	data->k = 0;
 
 	return ret;
@@ -1940,7 +1940,7 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 						 port),
 				    LINK_ENCRYPTION_STATUS,
 				    HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
-	dig_port->hdcp_auth_status = true;
+	dig_port->hdcp.auth_status = true;
 
 	return ret;
 }
@@ -2019,7 +2019,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	int ret = 0, i, tries = 3;
 
-	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
+	for (i = 0; i < tries && !dig_port->hdcp.auth_status; i++) {
 		ret = hdcp2_authenticate_sink(connector);
 		if (!ret) {
 			ret = intel_hdcp_prepare_streams(state, connector);
@@ -2052,7 +2052,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
 			drm_dbg_kms(display->drm, "Port deauth failed.\n");
 	}
 
-	if (!ret && !dig_port->hdcp_auth_status) {
+	if (!ret && !dig_port->hdcp.auth_status) {
 		/*
 		 * Ensuring the required 200mSec min time interval between
 		 * Session Key Exchange and encryption.
@@ -2106,7 +2106,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
@@ -2123,7 +2123,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 		drm_dbg_kms(display->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
 			    transcoder_name(hdcp->stream_transcoder));
 
-		if (dig_port->num_hdcp_streams > 0 && !hdcp2_link_recovery)
+		if (dig_port->hdcp.num_streams > 0 && !hdcp2_link_recovery)
 			return 0;
 	}
 
@@ -2133,7 +2133,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 		drm_dbg_kms(display->drm, "Port deauth failed.\n");
 
 	connector->hdcp.hdcp2_encrypted = false;
-	dig_port->hdcp_auth_status = false;
+	dig_port->hdcp.auth_status = false;
 	data->k = 0;
 
 	return ret;
@@ -2150,7 +2150,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 	int ret = 0;
 
 	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	mutex_lock(&dig_port->hdcp.mutex);
 	cpu_transcoder = hdcp->cpu_transcoder;
 
 	/* hdcp2_check_link is expected only when HDCP2.2 is Enabled */
@@ -2221,7 +2221,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 	intel_hdcp_update_value(connector,
 				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
 out:
-	mutex_unlock(&dig_port->hdcp_mutex);
+	mutex_unlock(&dig_port->hdcp.mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
@@ -2303,7 +2303,7 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 				     const struct intel_hdcp_shim *shim)
 {
 	struct intel_display *display = to_intel_display(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	enum port port = dig_port->base.port;
 
 	if (DISPLAY_VER(display) < 12)
@@ -2414,7 +2414,7 @@ int intel_hdcp_init(struct intel_connector *connector,
 							       hdcp->hdcp2_supported);
 	if (ret) {
 		hdcp->hdcp2_supported = false;
-		kfree(dig_port->hdcp_port_data.streams);
+		kfree(dig_port->hdcp.port_data.streams);
 		return ret;
 	}
 
@@ -2451,7 +2451,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	}
 
 	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	mutex_lock(&dig_port->hdcp.mutex);
 	drm_WARN_ON(display->drm,
 		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
 	hdcp->content_type = (u8)conn_state->hdcp_content_type;
@@ -2465,7 +2465,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	}
 
 	if (DISPLAY_VER(display) >= 12)
-		dig_port->hdcp_port_data.hdcp_transcoder =
+		dig_port->hdcp.port_data.hdcp_transcoder =
 			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
 
 	/*
@@ -2499,7 +2499,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 					true);
 	}
 
-	mutex_unlock(&dig_port->hdcp_mutex);
+	mutex_unlock(&dig_port->hdcp.mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
@@ -2535,7 +2535,7 @@ int intel_hdcp_disable(struct intel_connector *connector)
 		return -ENOENT;
 
 	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	mutex_lock(&dig_port->hdcp.mutex);
 
 	if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
 		goto out;
@@ -2548,7 +2548,7 @@ int intel_hdcp_disable(struct intel_connector *connector)
 		ret = _intel_hdcp_disable(connector);
 
 out:
-	mutex_unlock(&dig_port->hdcp_mutex);
+	mutex_unlock(&dig_port->hdcp.mutex);
 	mutex_unlock(&hdcp->mutex);
 	cancel_delayed_work_sync(&hdcp->check_work);
 	return ret;
-- 
2.39.5

