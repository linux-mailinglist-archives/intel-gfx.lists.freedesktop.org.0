Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC10263FBF
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 10:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9C26E31C;
	Thu, 10 Sep 2020 08:29:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C45376E320
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 08:29:08 +0000 (UTC)
IronPort-SDR: 3WEbEHxl+2ENag0b8qaRP+CpNp1s2wD3QPQJtp0Qsp//Twv05JGqjyHf2hyMYKtNQ96oi3mf3M
 +hIgg+qAiWIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="157772115"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="157772115"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:29:08 -0700
IronPort-SDR: AWYCRPtvLT6ZocISDv+NCOJ0j0pIHJ9aBRcxaESICPKrWFnfCFW0TWmiom7/oz56mLz7RjU9ll
 ODbFR/YyfgEA==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="505043865"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:29:07 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Sep 2020 13:47:26 +0530
Message-Id: <20200910081727.4505-6-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200910081727.4505-1-anshuman.gupta@intel.com>
References: <20200910081727.4505-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 5/6] drm/i915/hdcp: Support for HDCP 2.2 MST shim
 callbacks
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

Add support for HDCP 2.2 DP MST shim callback.
This adds existing DP HDCP shim callback for Link Authentication
and Encryption and HDCP 2.2 stream encryption
callback.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  4 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 81 +++++++++++++++++--
 2 files changed, 77 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ccb2d3ef4cea..a168e5c32773 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -352,6 +352,10 @@ struct intel_hdcp_shim {
 	int (*config_stream_type)(struct intel_digital_port *dig_port,
 				  bool is_repeater, u8 type);
 
+	/* Enable/Disable HDCP 2.2 stream encryption on DP MST Transport Link */
+	int (*stream_2_2_encryption)(struct intel_digital_port *dig_port,
+				     bool enable);
+
 	/* HDCP2.2 Link Integrity Check */
 	int (*check_2_2_link)(struct intel_digital_port *dig_port,
 			      struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index d0fd02c37f75..4453228a6568 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -698,18 +698,14 @@ intel_dp_mst_hdcp_strem_encryption(struct intel_digital_port *dig_port,
 	return 0;
 }
 
-static
-bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
-				  struct intel_connector *connector)
+static bool intel_dp_mst_get_qses_status(struct intel_digital_port *dig_port,
+					 struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_dp *intel_dp = &dig_port->dp;
 	struct drm_dp_query_stream_enc_status_ack_reply reply;
+	struct intel_dp *intel_dp = &dig_port->dp;
 	int ret;
 
-	if (!intel_dp_hdcp_check_link(dig_port, connector))
-		return false;
-
 	ret = drm_dp_send_query_stream_enc_status(&intel_dp->mst_mgr,
 						  connector->port, &reply);
 	if (ret) {
@@ -722,6 +718,70 @@ bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
 	return reply.auth_completed && reply.encryption_enabled;
 }
 
+static
+bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
+				  struct intel_connector *connector)
+{
+	if (!intel_dp_hdcp_check_link(dig_port, connector))
+		return false;
+
+	return intel_dp_mst_get_qses_status(dig_port, connector);
+}
+
+static int
+intel_dp_mst_hdcp2_strem_encryption(struct intel_digital_port *dig_port,
+				    bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_dp *dp = &dig_port->dp;
+	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
+	enum port port = dig_port->base.port;
+	/* HDCP2.x register uses stream transcoder */
+	enum transcoder cpu_transcoder = hdcp->stream_transcoder;
+	int ret;
+
+	if (enable && (intel_de_read(i915, HDCP2_AUTH_STREAM(i915, cpu_transcoder, port)) &
+	    AUTH_STREAM_TYPE) != hdcp->content_type) {
+		drm_err(&i915->drm, "Seurity f/w didn't set correct auth strem_type\n");
+		return -EINVAL;
+	}
+
+	ret = intel_dp_mst_toggle_select_hdcp_stream(dig_port, enable);
+	if (ret)
+		return ret;
+
+	/* Wait for encryption confirmation */
+	if (intel_de_wait_for_register(i915,
+				       HDCP2_STREAM_STATUS(i915, cpu_transcoder, port),
+				       STREAM_ENCRYPTION_STATUS,
+				       enable ? STREAM_ENCRYPTION_STATUS : 0,
+				       HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
+		drm_err(&i915->drm, "Timed out waiting for stream encryption %s\n",
+			enable ? "enabled" : "disabled");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+/*
+ * DP v2.0 I.3.3 ignore the stream signature L' is QSES reply msg reply.
+ * I.3.5 MST source device may use a QSES msg to query downstream status
+ * for a particular stream.
+ */
+static
+int intel_dp_mst_hdcp2_check_link(struct intel_digital_port *dig_port,
+				  struct intel_connector *connector)
+{
+	int ret;
+
+	ret = intel_dp_hdcp2_check_link(dig_port, connector);
+	if (ret)
+		return ret;
+
+	return intel_dp_mst_get_qses_status(dig_port, connector) ? 0 : -EINVAL;
+}
+
 static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
 	.read_bksv = intel_dp_hdcp_read_bksv,
@@ -735,7 +795,12 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.stream_encryption = intel_dp_mst_hdcp_strem_encryption,
 	.check_link = intel_dp_mst_hdcp_check_link,
 	.hdcp_capable = intel_dp_hdcp_capable,
-
+	.write_2_2_msg = intel_dp_hdcp2_write_msg,
+	.read_2_2_msg = intel_dp_hdcp2_read_msg,
+	.config_stream_type = intel_dp_hdcp2_config_stream_type,
+	.stream_2_2_encryption = intel_dp_mst_hdcp2_strem_encryption,
+	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
+	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
