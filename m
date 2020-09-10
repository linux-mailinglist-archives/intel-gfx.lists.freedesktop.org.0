Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA0F263FBB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 10:29:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF11F6E2BE;
	Thu, 10 Sep 2020 08:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22E896E2BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 08:29:03 +0000 (UTC)
IronPort-SDR: nds71OzyBJwHSnJs5PZ92BngAoQvpUUvNlnvYrjgGmaaGuIubkr3WpI+drKLPDo3/XvxZjhWk4
 7p8ODowBmDQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="157772107"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="157772107"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:29:02 -0700
IronPort-SDR: WjwUXqHhHO8q1g9x1HWSBC4aiQzk79eh9oXoLo0efeWGei+ZeXBLJ0tIZ8TsiCXHfIxjCh9JYO
 G/tG1c5Or8zA==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="505043815"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:29:01 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Sep 2020 13:47:23 +0530
Message-Id: <20200910081727.4505-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200910081727.4505-1-anshuman.gupta@intel.com>
References: <20200910081727.4505-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/6] drm/i915/hdcp: mst streams support in hdcp
 port_data
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
HDCP 2.2 csme/gsc f/w for m' validation.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 43 +++++++++++++++++------
 drivers/misc/mei/hdcp/mei_hdcp.c          |  2 +-
 include/drm/drm_hdcp.h                    |  8 ++---
 3 files changed, 38 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index eac91c0d2159..ed455fbb4c71 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -26,6 +26,12 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
+static u8 intel_conn_to_vcpi(struct intel_connector *connector)
+{
+	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
+	return connector->port	? connector->port->vcpi.vcpi : 0;
+}
+
 static
 bool intel_hdcp_is_ksv_valid(u8 *ksv)
 {
@@ -1469,6 +1475,7 @@ static
 int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
@@ -1476,22 +1483,28 @@ int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 		struct hdcp2_rep_stream_ready stream_ready;
 	} msgs;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
-	int ret;
+	int ret, streams_size_delta, i;
+
+	data->streams[data->k - 1].stream_type = hdcp->content_type;
+	data->streams[data->k - 1].stream_id = intel_conn_to_vcpi(connector);
 
 	/* Prepare RepeaterAuth_Stream_Manage msg */
 	msgs.stream_manage.msg_id = HDCP_2_2_REP_STREAM_MANAGE;
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
 		return ret;
 
@@ -1500,8 +1513,7 @@ int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	dig_port->port_data.seq_num_m = hdcp->seq_num_m;
-	dig_port->port_data.streams[0].stream_type = hdcp->content_type;
+	data->seq_num_m = hdcp->seq_num_m;
 
 	ret = hdcp2_verify_mprime(connector, &msgs.stream_ready);
 	if (ret < 0)
@@ -1641,7 +1653,7 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 		}
 	}
 
-	data->streams[0].stream_type = hdcp->content_type;
+	data->streams[data->k - 1].stream_type = hdcp->content_type;
 	ret = hdcp2_authenticate_port(connector);
 	if (ret < 0)
 		return ret;
@@ -1765,6 +1777,7 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
@@ -1772,6 +1785,11 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 		    connector->base.name, connector->base.base.id,
 		    hdcp->content_type);
 
+	/* Stream which requires encryption */
+	data->k++;
+	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915)))
+		return -EINVAL;
+
 	ret = hdcp2_authenticate_and_encrypt(connector);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
@@ -1789,11 +1807,16 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 
 static int _intel_hdcp2_disable(struct intel_connector *connector)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	int ret;
 
 	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is being Disabled\n",
 		    connector->base.name, connector->base.base.id);
+	data->k--;
+	if (drm_WARN_ON(&i915->drm, data->k < 0))
+		return -EINVAL;
 
 	ret = hdcp2_disable_encryption(connector);
 
@@ -1996,7 +2019,7 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 	data->protocol = (u8)shim->protocol;
 
 	if (!data->streams)
-		data->streams = kcalloc(INTEL_NUM_PIPES,
+		data->streams = kcalloc(INTEL_NUM_PIPES(dev_priv),
 					sizeof(struct hdcp2_streamid_type),
 					GFP_KERNEL);
 	if (!data->streams) {
diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
index 9ae9669e46ea..02c4bb5e93ab 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.c
+++ b/drivers/misc/mei/hdcp/mei_hdcp.c
@@ -637,7 +637,7 @@ static int mei_hdcp_enable_authentication(struct device *dev,
 	enable_auth_in.port.integrated_port_type = data->port_type;
 	enable_auth_in.port.physical_port = (u8)data->fw_ddi;
 	enable_auth_in.port.attached_transcoder = (u8)data->fw_tc;
-	enable_auth_in.stream_type = data->streams[0].stream_type;
+	enable_auth_in.stream_type = data->streams[data->k - 1].stream_type;
 
 	byte = mei_cldev_send(cldev, (u8 *)&enable_auth_in,
 			      sizeof(enable_auth_in));
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
