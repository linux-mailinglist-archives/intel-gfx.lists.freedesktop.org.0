Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1701E9DC2B6
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 12:20:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E19510E200;
	Fri, 29 Nov 2024 11:20:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gsbaQ0G0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FCB10E200;
 Fri, 29 Nov 2024 11:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732879222; x=1764415222;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sz8zrF2DKKGRjPwQY0L0UW5eYb/erZ5NXcA7toZPUwM=;
 b=gsbaQ0G0GFf/prM/orU37GO1XrHODsvtKuI6hBBOmHMpt8Z55SPHDV1d
 arjRYlGm5f0EvrVhJjWLsQw55oGfdfQus3tR32LL1DiguiGhkthfosWKn
 xOHwrdBJP1L0pg1H512euvzL6p67zriDLUORkb5oEXbXGWKAHCQX6Si4F
 2it0F3LPG26hi2bc4Bw+eIeIrHdqPjJQk6Mely7FdaNB7AwQ2OUzY+1Dc
 vECxwrOq9waDmvmy49xX0JU9hn4zxSbsfe3vBrLkY9geW81kdtABw4tNw
 bIl3qEZEhh9yFi1TmnKLPxzbYfB6EiQ3qDmDyjy1SxuWpeB84Y+JwixJC A==;
X-CSE-ConnectionGUID: Mcx5jl/WTnu3ObWChwfvgA==
X-CSE-MsgGUID: HEEJykh7Q6qJ7PpnopLkPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44169055"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="44169055"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 03:20:22 -0800
X-CSE-ConnectionGUID: /Dan8SkWQZq8l27EaeZk6Q==
X-CSE-MsgGUID: FUrdaChXQWW89a2ewZQLWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="97507340"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.241])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 03:20:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/display: add hdcp sub-struct to struct
 intel_digital_port
Date: Fri, 29 Nov 2024 13:20:11 +0200
Message-Id: <20241129112012.474228-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Add some structure into the struct intel_digital_port hdcp related
members by putting them into a sub-struct.

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
index 4fbec065d53e..b1ba56b96afa 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1297,7 +1297,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 
 	intel_encoder->devdata = devdata;
 
-	mutex_init(&dig_port->hdcp_mutex);
+	mutex_init(&dig_port->hdcp.mutex);
 
 	if (drm_encoder_init(display->drm, &intel_encoder->base,
 			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index d1a7d0d57c6b..ba8f8499a959 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -720,7 +720,7 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	intel_encoder->devdata = devdata;
 
-	mutex_init(&dig_port->hdcp_mutex);
+	mutex_init(&dig_port->hdcp.mutex);
 
 	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
 			 &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7d37ddd9ad12..d61895b9f591 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4501,7 +4501,7 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 	intel_display_power_flush_work(i915);
 
 	drm_encoder_cleanup(encoder);
-	kfree(dig_port->hdcp_port_data.streams);
+	kfree(dig_port->hdcp.port_data.streams);
 	kfree(dig_port);
 }
 
@@ -5096,8 +5096,8 @@ void intel_ddi_init(struct intel_display *display,
 
 	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
 
-	mutex_init(&dig_port->hdcp_mutex);
-	dig_port->num_hdcp_streams = 0;
+	mutex_init(&dig_port->hdcp.mutex);
+	dig_port->hdcp.num_streams = 0;
 
 	encoder->hotplug = intel_ddi_hotplug;
 	encoder->compute_output_type = intel_ddi_compute_output_type;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ec68bbfed442..a24f11f5a71f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1829,16 +1829,18 @@ struct intel_digital_port {
 
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
index 00c493cc8a4b..5492d14a91e6 100644
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
index b368584f481d..ac5d00f8c953 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -106,16 +106,16 @@ intel_hdcp_required_content_stream(struct intel_atomic_state *state,
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
@@ -158,7 +158,7 @@ static int intel_hdcp_prepare_streams(struct intel_atomic_state *state,
 				      struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	if (intel_encoder_is_mst(intel_attached_encoder(connector)))
@@ -1000,7 +1000,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 		 * don't disable it until it disabled HDCP encryption for
 		 * all connectors in MST topology.
 		 */
-		if (dig_port->num_hdcp_streams > 0)
+		if (dig_port->hdcp.num_streams > 0)
 			return 0;
 	}
 
@@ -1093,13 +1093,13 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
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
@@ -1121,7 +1121,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 	int ret = 0;
 
 	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	mutex_lock(&dig_port->hdcp.mutex);
 
 	cpu_transcoder = hdcp->cpu_transcoder;
 
@@ -1170,7 +1170,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 				DRM_MODE_CONTENT_PROTECTION_DESIRED,
 				true);
 out:
-	mutex_unlock(&dig_port->hdcp_mutex);
+	mutex_unlock(&dig_port->hdcp.mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
@@ -1212,7 +1212,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1242,7 +1242,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1270,7 +1270,7 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1296,7 +1296,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1323,7 +1323,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1350,7 +1350,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1376,7 +1376,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1405,7 +1405,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1435,7 +1435,7 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1459,7 +1459,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
@@ -1496,7 +1496,7 @@ static int hdcp2_close_session(struct intel_connector *connector)
 	}
 
 	ret = arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
-					     &dig_port->hdcp_port_data);
+					     &dig_port->hdcp.port_data);
 	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
@@ -1684,7 +1684,7 @@ static
 int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_rep_stream_manage stream_manage;
@@ -1762,11 +1762,11 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
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
@@ -1862,7 +1862,7 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	enum port port = dig_port->base.port;
@@ -1893,7 +1893,7 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 	if (hdcp2_deauthenticate_port(connector) < 0)
 		drm_dbg_kms(display->drm, "Port deauth failed.\n");
 
-	dig_port->hdcp_auth_status = false;
+	dig_port->hdcp.auth_status = false;
 	data->k = 0;
 
 	return ret;
@@ -1933,7 +1933,7 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 						 port),
 				    LINK_ENCRYPTION_STATUS,
 				    HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
-	dig_port->hdcp_auth_status = true;
+	dig_port->hdcp.auth_status = true;
 
 	return ret;
 }
@@ -2012,7 +2012,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	int ret = 0, i, tries = 3;
 
-	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
+	for (i = 0; i < tries && !dig_port->hdcp.auth_status; i++) {
 		ret = hdcp2_authenticate_sink(connector);
 		if (!ret) {
 			ret = intel_hdcp_prepare_streams(state, connector);
@@ -2045,7 +2045,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
 			drm_dbg_kms(display->drm, "Port deauth failed.\n");
 	}
 
-	if (!ret && !dig_port->hdcp_auth_status) {
+	if (!ret && !dig_port->hdcp.auth_status) {
 		/*
 		 * Ensuring the required 200mSec min time interval between
 		 * Session Key Exchange and encryption.
@@ -2099,7 +2099,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
@@ -2116,7 +2116,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 		drm_dbg_kms(display->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
 			    transcoder_name(hdcp->stream_transcoder));
 
-		if (dig_port->num_hdcp_streams > 0 && !hdcp2_link_recovery)
+		if (dig_port->hdcp.num_streams > 0 && !hdcp2_link_recovery)
 			return 0;
 	}
 
@@ -2126,7 +2126,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 		drm_dbg_kms(display->drm, "Port deauth failed.\n");
 
 	connector->hdcp.hdcp2_encrypted = false;
-	dig_port->hdcp_auth_status = false;
+	dig_port->hdcp.auth_status = false;
 	data->k = 0;
 
 	return ret;
@@ -2143,7 +2143,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 	int ret = 0;
 
 	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	mutex_lock(&dig_port->hdcp.mutex);
 	cpu_transcoder = hdcp->cpu_transcoder;
 
 	/* hdcp2_check_link is expected only when HDCP2.2 is Enabled */
@@ -2201,7 +2201,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 	intel_hdcp_update_value(connector,
 				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
 out:
-	mutex_unlock(&dig_port->hdcp_mutex);
+	mutex_unlock(&dig_port->hdcp.mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
@@ -2283,7 +2283,7 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 				     const struct intel_hdcp_shim *shim)
 {
 	struct intel_display *display = to_intel_display(connector);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
 	enum port port = dig_port->base.port;
 
 	if (DISPLAY_VER(display) < 12)
@@ -2396,7 +2396,7 @@ int intel_hdcp_init(struct intel_connector *connector,
 							       hdcp->hdcp2_supported);
 	if (ret) {
 		hdcp->hdcp2_supported = false;
-		kfree(dig_port->hdcp_port_data.streams);
+		kfree(dig_port->hdcp.port_data.streams);
 		return ret;
 	}
 
@@ -2433,7 +2433,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	}
 
 	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	mutex_lock(&dig_port->hdcp.mutex);
 	drm_WARN_ON(display->drm,
 		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
 	hdcp->content_type = (u8)conn_state->hdcp_content_type;
@@ -2447,7 +2447,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	}
 
 	if (DISPLAY_VER(display) >= 12)
-		dig_port->hdcp_port_data.hdcp_transcoder =
+		dig_port->hdcp.port_data.hdcp_transcoder =
 			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
 
 	/*
@@ -2478,7 +2478,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 					true);
 	}
 
-	mutex_unlock(&dig_port->hdcp_mutex);
+	mutex_unlock(&dig_port->hdcp.mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
@@ -2514,7 +2514,7 @@ int intel_hdcp_disable(struct intel_connector *connector)
 		return -ENOENT;
 
 	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	mutex_lock(&dig_port->hdcp.mutex);
 
 	if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
 		goto out;
@@ -2527,7 +2527,7 @@ int intel_hdcp_disable(struct intel_connector *connector)
 		ret = _intel_hdcp_disable(connector);
 
 out:
-	mutex_unlock(&dig_port->hdcp_mutex);
+	mutex_unlock(&dig_port->hdcp.mutex);
 	mutex_unlock(&hdcp->mutex);
 	cancel_delayed_work_sync(&hdcp->check_work);
 	return ret;
-- 
2.39.5

