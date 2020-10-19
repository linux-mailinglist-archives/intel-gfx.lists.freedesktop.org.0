Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E35812925DA
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 12:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57AA16E90C;
	Mon, 19 Oct 2020 10:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40CBF6E90C
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 10:31:01 +0000 (UTC)
IronPort-SDR: 5WedcK5/iTvbgL014sjiRti+kUYsRDUcby+Lin1AKOeK4iXP8R9sXImeGhzzJ1QAzV+d/UOA0B
 uzuFHMCm5U2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="164389149"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="164389149"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 03:30:59 -0700
IronPort-SDR: AF1WDQT5ORDLT0Bb2C2rNZ8Jn4wVzly5qvY7OadaINY2PRX2pLwzLzElcnT9bRGf3prLvGfQrs
 4pl65OQjK4ww==
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="320226596"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 03:30:57 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Oct 2020 15:50:41 +0530
Message-Id: <20201019102041.26178-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201014045252.13608-10-anshuman.gupta@intel.com>
References: <20201014045252.13608-10-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/13] drm/i915/hdcp: mst streams support in
 hdcp port_data
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add support for multiple mst stream in hdcp port data
which will be used by RepeaterAuthStreamManage msg and
HDCP 2.2 security f/w for m' validation.

v2:
Init the hdcp port data k for HDMI/DP SST strem.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 92 ++++++++++++++++---
 drivers/misc/mei/hdcp/mei_hdcp.c              |  3 +-
 include/drm/drm_hdcp.h                        |  8 +-
 4 files changed, 87 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6633a546449d..79750daa83aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1446,10 +1446,12 @@ struct intel_digital_port {
 	enum phy_fia tc_phy_fia;
 	u8 tc_phy_fia_idx;
 
-	/* protects num_hdcp_streams reference count, port_data */
+	/* protects num_hdcp_streams reference count, port_data and port_auth */
 	struct mutex hdcp_mutex;
 	/* the number of pipes using HDCP signalling out of this port */
 	unsigned int num_hdcp_streams;
+	/* port HDCP auth status */
+	bool port_auth;
 	/* HDCP port data need to pass to security f/w */
 	struct hdcp_port_data port_data;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 1a6ac24efe2d..97d521b216a6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -26,6 +26,54 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
+static int intel_conn_to_vcpi(struct intel_connector *connector)
+{
+	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
+	return connector->port	? connector->port->vcpi.vcpi : 0;
+}
+
+static void
+intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
+{
+	struct drm_connector_list_iter conn_iter;
+	struct intel_digital_port *conn_dig_port;
+	struct intel_connector *connector;
+	struct intel_hdcp *hdcp;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct hdcp_port_data *data = &dig_port->port_data;
+	bool enforce_type0 = false;
+
+	if (dig_port->port_auth)
+		return;
+
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
+			continue;
+
+		conn_dig_port = intel_attached_dig_port(connector);
+		if (conn_dig_port != dig_port)
+			continue;
+
+		if (connector->base.status == connector_status_disconnected)
+			continue;
+
+		hdcp = &connector->hdcp;
+		if (hdcp->content_type && !intel_hdcp2_capable(connector))
+			enforce_type0 = true;
+
+		data->streams[data->k].stream_type =
+			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE1 : hdcp->content_type;
+		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
+		data->k++;
+
+		/* if there is only one active stream */
+		if (dig_port->dp.active_mst_links <= 1)
+			break;
+	}
+	drm_connector_list_iter_end(&conn_iter);
+}
+
 static
 bool intel_hdcp_is_ksv_valid(u8 *ksv)
 {
@@ -1296,6 +1344,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
 			    ret);
+
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1477,13 +1526,14 @@ static
 int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_rep_stream_manage stream_manage;
 		struct hdcp2_rep_stream_ready stream_ready;
 	} msgs;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
-	int ret;
+	int ret, streams_size_delta, i;
 
 	if (connector->hdcp.seq_num_m > HDCP_2_2_SEQ_NUM_MAX)
 		return -ERANGE;
@@ -1493,15 +1543,18 @@ int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	drm_hdcp_cpu_to_be24(msgs.stream_manage.seq_num_m, hdcp->seq_num_m);
 
 	/* K no of streams is fixed as 1. Stored as big-endian. */
-	msgs.stream_manage.k = cpu_to_be16(1);
+	msgs.stream_manage.k = cpu_to_be16(data->k);
 
-	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
-	msgs.stream_manage.streams[0].stream_id = 0;
-	msgs.stream_manage.streams[0].stream_type = hdcp->content_type;
+	for (i = 0; i < data->k; i++) {
+		msgs.stream_manage.streams[i].stream_id = data->streams[i].stream_id;
+		msgs.stream_manage.streams[i].stream_type = data->streams[i].stream_type;
+	}
 
+	streams_size_delta = HDCP_2_2_MAX_CONTENT_STREAMS_CNT *
+		sizeof(struct hdcp2_streamid_type) - data->k * sizeof(struct hdcp2_streamid_type);
 	/* Send it to Repeater */
 	ret = shim->write_2_2_msg(dig_port, &msgs.stream_manage,
-				  sizeof(msgs.stream_manage));
+				  sizeof(msgs.stream_manage) - streams_size_delta);
 	if (ret < 0)
 		goto out;
 
@@ -1510,8 +1563,7 @@ int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	if (ret < 0)
 		goto out;
 
-	dig_port->port_data.seq_num_m = hdcp->seq_num_m;
-	dig_port->port_data.streams[0].stream_type = hdcp->content_type;
+	data->seq_num_m = hdcp->seq_num_m;
 
 	ret = hdcp2_verify_mprime(connector, &msgs.stream_ready);
 
@@ -1672,6 +1724,7 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 						 port),
 				    LINK_ENCRYPTION_STATUS,
 				    HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
+	dig_port->port_auth = true;
 
 	return ret;
 }
@@ -1746,11 +1799,9 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct hdcp_port_data *data = &dig_port->port_data;
-	struct intel_hdcp *hdcp = &connector->hdcp;
-	int ret, i, tries = 3;
+	int ret = 0, i, tries = 3;
 
-	for (i = 0; i < tries; i++) {
+	for (i = 0; i < tries && !dig_port->port_auth; i++) {
 		ret = hdcp2_authenticate_sink(connector);
 		if (!ret) {
 			ret = hdcp2_propagate_stream_management_info(connector);
@@ -1760,7 +1811,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 					    ret);
 				break;
 			}
-			data->streams[0].stream_type = hdcp->content_type;
+
 			ret = hdcp2_authenticate_port(connector);
 			if (!ret)
 				break;
@@ -1795,7 +1846,9 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 
 static int _intel_hdcp2_enable(struct intel_connector *connector)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
@@ -1803,6 +1856,15 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 		    connector->base.name, connector->base.base.id,
 		    hdcp->content_type);
 
+	/* Stream which requires encryption */
+	if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
+		data->k = 1;
+	else
+		intel_hdcp_required_content_stream(dig_port);
+
+	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915)))
+		return -EINVAL;
+
 	ret = hdcp2_authenticate_and_encrypt(connector);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
@@ -1820,7 +1882,9 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 
 static int _intel_hdcp2_disable(struct intel_connector *connector)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	int ret;
 
 	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is being Disabled\n",
@@ -1832,6 +1896,8 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
 		drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
 
 	connector->hdcp.hdcp2_encrypted = false;
+	dig_port->port_auth = false;
+	data->k = 0;
 
 	return ret;
 }
diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
index 9ae9669e46ea..b10d266fb60a 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.c
+++ b/drivers/misc/mei/hdcp/mei_hdcp.c
@@ -569,8 +569,7 @@ static int mei_hdcp_verify_mprime(struct device *dev,
 	verify_mprime_in->header.api_version = HDCP_API_VERSION;
 	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
 	verify_mprime_in->header.status = ME_HDCP_STATUS_SUCCESS;
-	verify_mprime_in->header.buffer_len =
-			WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_MIN_IN;
+	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(struct hdcp_cmd_header);
 
 	verify_mprime_in->port.integrated_port_type = data->port_type;
 	verify_mprime_in->port.physical_port = (u8)data->fw_ddi;
diff --git a/include/drm/drm_hdcp.h b/include/drm/drm_hdcp.h
index fe58dbb46962..c8a37bb406b2 100644
--- a/include/drm/drm_hdcp.h
+++ b/include/drm/drm_hdcp.h
@@ -101,11 +101,11 @@
 
 /* Following Macros take a byte at a time for bit(s) masking */
 /*
- * TODO: This has to be changed for DP MST, as multiple stream on
- * same port is possible.
- * For HDCP2.2 on HDMI and DP SST this value is always 1.
+ * TODO: This is based upon actual H/W  MST streams capacity.
+ *
+ * This is should be moved out to platform specific header.
  */
-#define HDCP_2_2_MAX_CONTENT_STREAMS_CNT	1
+#define HDCP_2_2_MAX_CONTENT_STREAMS_CNT	4
 #define HDCP_2_2_TXCAP_MASK_LEN			2
 #define HDCP_2_2_RXCAPS_LEN			3
 #define HDCP_2_2_RX_REPEATER(x)			((x) & BIT(0))
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
