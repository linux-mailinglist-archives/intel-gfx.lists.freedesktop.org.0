Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B10178ECF
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 11:47:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D936EB1B;
	Wed,  4 Mar 2020 10:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532F66EB1B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 10:47:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 02:47:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,513,1574150400"; d="scan'208";a="413107951"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga005.jf.intel.com with ESMTP; 04 Mar 2020 02:47:37 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed,  4 Mar 2020 16:17:37 +0530
Message-Id: <20200304104738.5398-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200304104738.5398-1-ramalingam.c@intel.com>
References: <20200304104738.5398-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915: terminate reauth at stream
 management failure
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per the HDCP2.2 compliance test 1B-10 expectation, when stream
management for a repeater fails, we retry thrice and when it fails
in all retries, HDCP2.2 reauthentication aborted at kernel.

v2:
  seq_num_m++ is extended for steam management failures too.[Anshuman]
v3:
  use drm_dbg_kms instead of DRM_DEBUG_KMS [Anshuman]
v4:
  dev_priv is used as i915 [JaniN]
v5:
  Few improvisements are done [Sean]

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Tested-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 76 ++++++++++++++---------
 1 file changed, 47 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ee0f27ea2810..85e1e8cf16c7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1388,7 +1388,7 @@ static int hdcp2_session_key_exchange(struct intel_connector *connector)
 }
 
 static
-int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
+int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 {
 	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
@@ -1414,28 +1414,25 @@ int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	ret = shim->write_2_2_msg(intel_dig_port, &msgs.stream_manage,
 				  sizeof(msgs.stream_manage));
 	if (ret < 0)
-		return ret;
+		goto out;
 
 	ret = shim->read_2_2_msg(intel_dig_port, HDCP_2_2_REP_STREAM_READY,
 				 &msgs.stream_ready, sizeof(msgs.stream_ready));
 	if (ret < 0)
-		return ret;
+		goto out;
 
 	hdcp->port_data.seq_num_m = hdcp->seq_num_m;
 	hdcp->port_data.streams[0].stream_type = hdcp->content_type;
-
 	ret = hdcp2_verify_mprime(connector, &msgs.stream_ready);
-	if (ret < 0)
-		return ret;
 
+out:
 	hdcp->seq_num_m++;
-
 	if (hdcp->seq_num_m > HDCP_2_2_SEQ_NUM_MAX) {
 		DRM_DEBUG_KMS("seq_num_m roll over.\n");
-		return -1;
+		ret = -ERANGE;
 	}
 
-	return 0;
+	return ret;
 }
 
 static
@@ -1506,17 +1503,6 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 	return 0;
 }
 
-static int hdcp2_authenticate_repeater(struct intel_connector *connector)
-{
-	int ret;
-
-	ret = hdcp2_authenticate_repeater_topology(connector);
-	if (ret < 0)
-		return ret;
-
-	return hdcp2_propagate_stream_management_info(connector);
-}
-
 static int hdcp2_authenticate_sink(struct intel_connector *connector)
 {
 	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
@@ -1553,7 +1539,7 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 	}
 
 	if (hdcp->is_repeater) {
-		ret = hdcp2_authenticate_repeater(connector);
+		ret = hdcp2_authenticate_repeater_topology(connector);
 		if (ret < 0) {
 			drm_dbg_kms(&i915->drm,
 				    "Repeater Auth Failed. Err: %d\n", ret);
@@ -1561,11 +1547,6 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 		}
 	}
 
-	hdcp->port_data.streams[0].stream_type = hdcp->content_type;
-	ret = hdcp2_authenticate_port(connector);
-	if (ret < 0)
-		return ret;
-
 	return ret;
 }
 
@@ -1644,15 +1625,52 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 	return ret;
 }
 
+static int
+hdcp2_propagate_stream_management_info(struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	int i, tries = 3, ret;
+
+	if (!connector->hdcp.is_repeater)
+		return 0;
+
+	for (i = 0; i < tries; i++) {
+		ret = _hdcp2_propagate_stream_management_info(connector);
+		if (!ret)
+			break;
+
+		drm_dbg_kms(&i915->drm,
+			    "HDCP2 stream management %d of %d Failed.(%d)\n",
+			    i + 1, tries, ret);
+	}
+
+	return ret;
+}
+
 static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret, i, tries = 3;
 
 	for (i = 0; i < tries; i++) {
 		ret = hdcp2_authenticate_sink(connector);
-		if (!ret)
-			break;
+		if (!ret) {
+			ret = hdcp2_propagate_stream_management_info(connector);
+			if (ret) {
+				drm_dbg_kms(&i915->drm,
+					    "Stream management failed.(%d)\n",
+					    ret);
+				break;
+			}
+			hdcp->port_data.streams[0].stream_type =
+							hdcp->content_type;
+			ret = hdcp2_authenticate_port(connector);
+			if (!ret)
+				break;
+			drm_dbg_kms(&i915->drm, "HDCP2 port auth failed.(%d)\n",
+				    ret);
+		}
 
 		/* Clearing the mei hdcp session */
 		drm_dbg_kms(&i915->drm, "HDCP2.2 Auth %d of %d Failed.(%d)\n",
@@ -1661,7 +1679,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 			drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
 	}
 
-	if (i != tries) {
+	if (!ret) {
 		/*
 		 * Ensuring the required 200mSec min time interval between
 		 * Session Key Exchange and encryption.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
