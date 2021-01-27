Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7963057FD
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 11:15:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2CA96E423;
	Wed, 27 Jan 2021 10:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78446E423
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 10:15:12 +0000 (UTC)
IronPort-SDR: y9A36Y+DuHmqXBdD1roL1a8N1UV6WoG10LcdPS2WaHX+OzfSdcgbjVo8JU0b9oaW0EX4aMgNrh
 QSIvekVyuoyQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="198851901"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="198851901"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 02:15:12 -0800
IronPort-SDR: LR3AkMCx5kn9dFC3JkZwrzzCWtrR0X/T6CoWxa/Q7OzMRzCLvCAZAhD276Lg5Dmvoq9iyPw0Ny
 ZzIBdYgv2Ffw==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="504870449"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 02:15:10 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 15:30:51 +0530
Message-Id: <20210127100051.30595-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
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
---
 .../drm/i915/display/intel_display_types.h    |  4 ++
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 39 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 17 +++++++-
 3 files changed, 59 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 39397748b4b0..cfc9ec82f117 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -373,6 +373,10 @@ struct intel_hdcp_shim {
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
index f372e25edab4..35e3b0e4c740 100644
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
@@ -813,6 +851,7 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
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
