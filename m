Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1856C6FEB6F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 07:58:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC8B10E5A3;
	Thu, 11 May 2023 05:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6400510E5A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 05:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683784730; x=1715320730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0C1C0UPejc3+hR8ciO3x9Ex5P250p1DJmxyzDVGy6uI=;
 b=QYO5lU6IFRK6LNha2juEXD28DuX2yf+xXDfqhWquePh0DeHzJP0r4fvU
 WJtwnDCAWwwjdsH2tuvelQ3Y6sc2/OATepQ8i4CvZ0QF9UwCbu6BFosN3
 nHUu7jWPS3cc7Lbm9OFFvSjf3Wgumwu/9TVPOB4aXSLc5OS8KFTAOPWfd
 Yq193VYjaYZ+jE1sxwr/EmaO0Mf1ywUj2TI9VIWX1nD/Xgs/+70W7Jz9u
 xNx8fNk14Ncimg9BizI+HIySXd8PpPw/Mg9xJJJXnl4cpUINmoxmIFtpX
 r827dUDKnb6vJ5wwdR7PdS66haCfIAs8YXQApSabmwK3rTwS8IfuPZbBV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="334881320"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="334881320"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 22:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="946004150"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="946004150"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 10 May 2023 22:58:48 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 11:27:05 +0530
Message-Id: <20230511055705.611809-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230511055705.611809-1-suraj.kandpal@intel.com>
References: <20230511055705.611809-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Fix modeset locking issue in
 hdcp mst
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

Since topology state is being added to drm_atomic_state now all
drm_modeset_lock required are being taken from core this raises
an issue when we try to loop over connector and assign vcpi id to
our streams as we did not have atomic state to derive acquire_ctx
from hence we fill in stream info if dpmst encoder is found before
enabling hdcp.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 26 ++++++++++---------
 2 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 35c260bd1461..aecd84b66735 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1813,6 +1813,8 @@ struct intel_digital_port {
 	struct hdcp_port_data hdcp_port_data;
 	/* Whether the MST topology supports HDCP Type 1 Content */
 	bool hdcp_mst_type1_capable;
+	/* If streams for HDCP MST are assigned with vcpi id and stream type */
+	int hdcp_mst_streams_ready;
 
 	void (*write_infoframe)(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 1928c80cb6a2..d2874431c9d3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,7 +30,8 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-static int intel_conn_to_vcpi(struct intel_connector *connector)
+static int intel_conn_to_vcpi(struct drm_atomic_state *state,
+			      struct intel_connector *connector)
 {
 	struct drm_dp_mst_topology_mgr *mgr;
 	struct drm_dp_mst_atomic_payload *payload;
@@ -42,7 +43,7 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 		return 0;
 	mgr = connector->port->mgr;
 
-	drm_modeset_lock(&mgr->base.lock, NULL);
+	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
 	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
 	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
 	if (drm_WARN_ON(mgr->dev, !payload))
@@ -54,7 +55,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 		goto out;
 	}
 out:
-	drm_modeset_unlock(&mgr->base.lock);
 	return vcpi;
 }
 
@@ -69,7 +69,8 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
  * policy to mark different content_types for different streams.
  */
 static int
-intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
+intel_hdcp_required_content_stream(struct intel_digital_port *dig_port,
+				   struct intel_atomic_state *state)
 {
 	struct drm_connector_list_iter conn_iter;
 	struct intel_digital_port *conn_dig_port;
@@ -81,9 +82,6 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 
 	data->k = 0;
 
-	if (dig_port->hdcp_auth_status)
-		return 0;
-
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		if (connector->base.status == connector_status_disconnected)
@@ -99,7 +97,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 		if (!enforce_type0 && !dig_port->hdcp_mst_type1_capable)
 			enforce_type0 = true;
 
-		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
+		data->streams[data->k].stream_id =
+			intel_conn_to_vcpi(&state->base, connector);
 		data->k++;
 
 		/* if there is only one active stream */
@@ -127,15 +126,12 @@ static int intel_hdcp_prepare_streams(struct intel_connector *connector)
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	int ret;
 
 	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
 		data->k = 1;
 		data->streams[0].stream_type = hdcp->content_type;
 	} else {
-		ret = intel_hdcp_required_content_stream(dig_port);
-		if (ret)
-			return ret;
+		return dig_port->hdcp_mst_streams_ready;
 	}
 
 	return 0;
@@ -2373,6 +2369,12 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
 	if (intel_hdcp2_capable(connector)) {
+		if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
+			dig_port->hdcp_mst_streams_ready =
+				intel_hdcp_required_content_stream(dig_port,
+								   state);
+		}
+
 		ret = _intel_hdcp2_enable(connector);
 		if (!ret)
 			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
-- 
2.25.1

