Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 940ED2758CE
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 15:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9486E15D;
	Wed, 23 Sep 2020 13:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD306E0D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 13:35:33 +0000 (UTC)
IronPort-SDR: +g2hafcuumV56N7kiCrLqvP05hNsxJ/oAFYXBy+1iDK+vcjXFdEnRN/zGfofmPzelDiQ5EgPUk
 GMmbwEkDHgzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="148628192"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="148628192"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 06:35:33 -0700
IronPort-SDR: j1aguUSggIc9yCCnQl9+ASV/NiNlmDSdqcQ31/v3NjtsHvJ9NMVrFDjTcY71V0prFpu+/+/LXB
 tKqbih7mFUTg==
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="454916534"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 06:35:32 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Sep 2020 18:54:34 +0530
Message-Id: <20200923132435.17039-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200923132435.17039-1-anshuman.gupta@intel.com>
References: <20200923132435.17039-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915: terminate reauth at stream
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

From: Ramalingam C <ramalingam.c@intel.com>

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
index 5492076d1ae0..d750bb57f252 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1445,7 +1445,7 @@ static int hdcp2_session_key_exchange(struct intel_connector *connector)
 }
 
 static
-int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
+int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -1472,28 +1472,25 @@ int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	ret = shim->write_2_2_msg(dig_port, &msgs.stream_manage,
 				  sizeof(msgs.stream_manage));
 	if (ret < 0)
-		return ret;
+		goto out;
 
 	ret = shim->read_2_2_msg(dig_port, HDCP_2_2_REP_STREAM_READY,
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
 		drm_dbg_kms(&i915->drm, "seq_num_m roll over.\n");
-		return -1;
+		return -ERANGE;
 	}
 
-	return 0;
+	return ret;
 }
 
 static
@@ -1564,17 +1561,6 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
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
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
@@ -1611,7 +1597,7 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 	}
 
 	if (hdcp->is_repeater) {
-		ret = hdcp2_authenticate_repeater(connector);
+		ret = hdcp2_authenticate_repeater_topology(connector);
 		if (ret < 0) {
 			drm_dbg_kms(&i915->drm,
 				    "Repeater Auth Failed. Err: %d\n", ret);
@@ -1619,11 +1605,6 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 		}
 	}
 
-	hdcp->port_data.streams[0].stream_type = hdcp->content_type;
-	ret = hdcp2_authenticate_port(connector);
-	if (ret < 0)
-		return ret;
-
 	return ret;
 }
 
@@ -1704,15 +1685,52 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
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
@@ -1721,7 +1739,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 			drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
 	}
 
-	if (i != tries) {
+	if (!ret) {
 		/*
 		 * Ensuring the required 200mSec min time interval between
 		 * Session Key Exchange and encryption.
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
