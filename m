Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B49341869
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 10:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D29A6E0D7;
	Fri, 19 Mar 2021 09:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0B16E0D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 09:32:48 +0000 (UTC)
IronPort-SDR: B5JXK9nZsEquBwRO/u/0Hj68f/UiHi4vVUlkI7y+GLLdLRAJc9zAM3nADohCTar7+niUjCgvxt
 iml04kFe0BCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="189953533"
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="189953533"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 02:32:47 -0700
IronPort-SDR: +MlG/f/Ti4+UbNFVbyqUc5sNM9Nku8BvtjVdjEpov9IfgxrVrSopQVR2Lze3nqRPiLW7MV1/Qz
 AnG/B0BdKPNw==
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="406714842"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 02:32:45 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 14:47:32 +0530
Message-Id: <20210319091732.17547-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127100051.30595-1-anshuman.gupta@intel.com>
References: <20210127100051.30595-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: mst streams type1 capability
 check
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
Cc: Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It requires to check streams type1 capability in mst topology
by checking Rxinfo instead connector HDCP2.x capability in
order to enforce type0 stream encryption in a mix of
HDCP {1.x,2.x} mst topology.
Rxcaps always shows HDCP 2.x capability of immediate downstream
connector. Let's use Rxinfo HDCP1_DEVICE_DOWNSTREAM bit to
detect a HDCP {1.x,2.x} mix mst topology.

Cc: Sean Paul <seanpaul@chromium.org>
Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  4 ++
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 39 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 17 +++++++-
 3 files changed, 59 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8d9113fa82c7..6a0274d6a106 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -380,6 +380,10 @@ struct intel_hdcp_shim {
 	int (*hdcp_2_2_capable)(struct intel_digital_port *dig_port,
 				bool *capable);
 
+	/* Detects whether a HDCP 1.4 sink connected in MST topology */
+	int (*streams_type1_capable)(struct intel_connector *connector,
+				     bool *capable);
+
 	/* Write HDCP2.2 messages */
 	int (*write_2_2_msg)(struct intel_digital_port *dig_port,
 			     void *buf, size_t size);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 40c516e90193..d8b2960578ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -478,6 +478,23 @@ int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
 	return size;
 }
 
+static int
+get_rxinfo_hdcp_1_dev_downstream(struct intel_digital_port *dig_port, bool *hdcp_1_x)
+{
+	u8 rx_info[HDCP_2_2_RXINFO_LEN];
+	int ret;
+
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
+			       DP_HDCP_2_2_REG_RXINFO_OFFSET,
+			       (void *)rx_info, HDCP_2_2_RXINFO_LEN);
+
+	if (ret != HDCP_2_2_RXINFO_LEN)
+		return ret >= 0 ? -EIO : ret;
+
+	*hdcp_1_x = HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) ? true : false;
+	return 0;
+}
+
 static
 ssize_t get_receiver_id_list_size(struct intel_digital_port *dig_port)
 {
@@ -626,6 +643,27 @@ int intel_dp_hdcp2_capable(struct intel_digital_port *dig_port,
 	return 0;
 }
 
+static
+int intel_dp_mst_streams_type1_capable(struct intel_connector *connector,
+				       bool *capable)
+{
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	int ret;
+	bool hdcp_1_x;
+
+	ret = get_rxinfo_hdcp_1_dev_downstream(dig_port, &hdcp_1_x);
+	if (ret) {
+		drm_dbg_kms(&i915->drm,
+			    "[%s:%d] failed to read RxInfo ret=%d\n",
+			    connector->base.name, connector->base.base.id, ret);
+		return ret;
+	}
+
+	*capable = !hdcp_1_x;
+	return 0;
+}
+
 static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
 	.read_bksv = intel_dp_hdcp_read_bksv,
@@ -774,6 +812,7 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
 	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
 	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
+	.streams_type1_capable = intel_dp_mst_streams_type1_capable,
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ae1371c36a32..5b2e2625779b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -32,6 +32,21 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 	return connector->port	? connector->port->vcpi.vcpi : 0;
 }
 
+static bool
+intel_streams_type1_capable(struct intel_connector *connector)
+{
+	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
+	bool capable = false;
+
+	if (!shim)
+		return capable;
+
+	if (shim->streams_type1_capable)
+		shim->streams_type1_capable(connector, &capable);
+
+	return capable;
+}
+
 /*
  * intel_hdcp_required_content_stream selects the most highest common possible HDCP
  * content_type for all streams in DP MST topology because security f/w doesn't
@@ -70,7 +85,7 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 		if (conn_dig_port != dig_port)
 			continue;
 
-		if (!enforce_type0 && !intel_hdcp2_capable(connector))
+		if (!enforce_type0 && !intel_streams_type1_capable(connector))
 			enforce_type0 = true;
 
 		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
