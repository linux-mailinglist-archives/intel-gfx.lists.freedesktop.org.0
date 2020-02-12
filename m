Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F60915A92C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 13:29:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87286EA99;
	Wed, 12 Feb 2020 12:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB4D892D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 12:29:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 04:29:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="227810940"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga008.fm.intel.com with ESMTP; 12 Feb 2020 04:29:51 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed, 12 Feb 2020 18:00:07 +0530
Message-Id: <20200212123007.6659-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/hdcp: conversion to struct
 drm_device based logging macros.
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

Converts remaining instances of the printk based logging macros in
i915/display/intel_hdcp.c with the struct drm_device based macros
manually.

This is continuation of commit 65833c463886 ("drm/i915/hdcp: conversion
to struct drm_device based logging macros.")

v2:
  i915_dev_priv is used instead of drm_device for reusability [JaniN]
v3:
  Made it independent from the series.
  once instance of dev_priv naming is changed to i915 [Jani N]

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 109 ++++++++++++----------
 1 file changed, 62 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 30e0a3aa9d57..a5b2163b28a0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -43,6 +43,7 @@ static
 int intel_hdcp_read_valid_bksv(struct intel_digital_port *intel_dig_port,
 			       const struct intel_hdcp_shim *shim, u8 *bksv)
 {
+	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
 	int ret, i, tries = 2;
 
 	/* HDCP spec states that we must retry the bksv if it is invalid */
@@ -54,7 +55,7 @@ int intel_hdcp_read_valid_bksv(struct intel_digital_port *intel_dig_port,
 			break;
 	}
 	if (i == tries) {
-		DRM_DEBUG_KMS("Bksv is invalid\n");
+		drm_dbg_kms(&i915->drm, "Bksv is invalid\n");
 		return -ENODEV;
 	}
 
@@ -485,8 +486,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 			return ret;
 		sha_idx += sizeof(sha_text);
 	} else {
-		DRM_DEBUG_KMS("Invalid number of leftovers %d\n",
-			      sha_leftovers);
+		drm_dbg_kms(&dev_priv->drm, "Invalid number of leftovers %d\n",
+			    sha_leftovers);
 		return -EINVAL;
 	}
 
@@ -514,11 +515,11 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		       rep_ctl | HDCP_SHA1_COMPLETE_HASH);
 	if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL,
 				  HDCP_SHA1_COMPLETE, 1)) {
-		DRM_ERROR("Timed out waiting for SHA1 complete\n");
+		drm_err(&dev_priv->drm, "Timed out waiting for SHA1 complete\n");
 		return -ETIMEDOUT;
 	}
 	if (!(intel_de_read(dev_priv, HDCP_REP_CTL) & HDCP_SHA1_V_MATCH)) {
-		DRM_DEBUG_KMS("SHA-1 mismatch, HDCP failed\n");
+		drm_dbg_kms(&dev_priv->drm, "SHA-1 mismatch, HDCP failed\n");
 		return -ENXIO;
 	}
 
@@ -537,7 +538,8 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 
 	ret = intel_hdcp_poll_ksv_fifo(intel_dig_port, shim);
 	if (ret) {
-		DRM_DEBUG_KMS("KSV list failed to become ready (%d)\n", ret);
+		drm_dbg_kms(&dev_priv->drm,
+			    "KSV list failed to become ready (%d)\n", ret);
 		return ret;
 	}
 
@@ -547,7 +549,7 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 
 	if (DRM_HDCP_MAX_DEVICE_EXCEEDED(bstatus[0]) ||
 	    DRM_HDCP_MAX_CASCADE_EXCEEDED(bstatus[1])) {
-		DRM_DEBUG_KMS("Max Topology Limit Exceeded\n");
+		drm_dbg_kms(&dev_priv->drm, "Max Topology Limit Exceeded\n");
 		return -EPERM;
 	}
 
@@ -560,13 +562,14 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 	 */
 	num_downstream = DRM_HDCP_NUM_DOWNSTREAM(bstatus[0]);
 	if (num_downstream == 0) {
-		DRM_DEBUG_KMS("Repeater with zero downstream devices\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Repeater with zero downstream devices\n");
 		return -EINVAL;
 	}
 
 	ksv_fifo = kcalloc(DRM_HDCP_KSV_LEN, num_downstream, GFP_KERNEL);
 	if (!ksv_fifo) {
-		DRM_DEBUG_KMS("Out of mem: ksv_fifo\n");
+		drm_dbg_kms(&dev_priv->drm, "Out of mem: ksv_fifo\n");
 		return -ENOMEM;
 	}
 
@@ -576,7 +579,7 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 
 	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm, ksv_fifo,
 					num_downstream)) {
-		DRM_ERROR("Revoked Ksv(s) in ksv_fifo\n");
+		drm_err(&dev_priv->drm, "Revoked Ksv(s) in ksv_fifo\n");
 		ret = -EPERM;
 		goto err;
 	}
@@ -594,12 +597,13 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 	}
 
 	if (i == tries) {
-		DRM_DEBUG_KMS("V Prime validation failed.(%d)\n", ret);
+		drm_dbg_kms(&dev_priv->drm,
+			    "V Prime validation failed.(%d)\n", ret);
 		goto err;
 	}
 
-	DRM_DEBUG_KMS("HDCP is enabled (%d downstream devices)\n",
-		      num_downstream);
+	drm_dbg_kms(&dev_priv->drm, "HDCP is enabled (%d downstream devices)\n",
+		    num_downstream);
 	ret = 0;
 err:
 	kfree(ksv_fifo);
@@ -642,7 +646,8 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		if (ret)
 			return ret;
 		if (!hdcp_capable) {
-			DRM_DEBUG_KMS("Panel is not HDCP capable\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "Panel is not HDCP capable\n");
 			return -EINVAL;
 		}
 	}
@@ -659,7 +664,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	if (intel_de_wait_for_set(dev_priv,
 				  HDCP_STATUS(dev_priv, cpu_transcoder, port),
 				  HDCP_STATUS_AN_READY, 1)) {
-		DRM_ERROR("Timed out waiting for An\n");
+		drm_err(&dev_priv->drm, "Timed out waiting for An\n");
 		return -ETIMEDOUT;
 	}
 
@@ -680,7 +685,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		return ret;
 
 	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm, bksv.shim, 1)) {
-		DRM_ERROR("BKSV is revoked\n");
+		drm_err(&dev_priv->drm, "BKSV is revoked\n");
 		return -EPERM;
 	}
 
@@ -706,7 +711,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	/* Wait for R0 ready */
 	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
 		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
-		DRM_ERROR("Timed out waiting for R0 ready\n");
+		drm_err(&dev_priv->drm, "Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
 	}
 
@@ -743,8 +748,10 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	}
 
 	if (i == tries) {
-		DRM_DEBUG_KMS("Timed out waiting for Ri prime match (%x)\n",
-			      intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
+		drm_dbg_kms(&dev_priv->drm,
+			    "Timed out waiting for Ri prime match (%x)\n",
+			    intel_de_read(dev_priv, HDCP_STATUS(dev_priv,
+					  cpu_transcoder, port)));
 		return -ETIMEDOUT;
 	}
 
@@ -753,7 +760,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 				  HDCP_STATUS(dev_priv, cpu_transcoder, port),
 				  HDCP_STATUS_ENC,
 				  ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
-		DRM_ERROR("Timed out waiting for encryption\n");
+		drm_err(&dev_priv->drm, "Timed out waiting for encryption\n");
 		return -ETIMEDOUT;
 	}
 
@@ -765,7 +772,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	if (repeater_present)
 		return intel_hdcp_auth_downstream(connector);
 
-	DRM_DEBUG_KMS("HDCP is enabled (no repeater present)\n");
+	drm_dbg_kms(&dev_priv->drm, "HDCP is enabled (no repeater present)\n");
 	return 0;
 }
 
@@ -1270,7 +1277,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 		return ret;
 
 	if (msgs.send_cert.rx_caps[0] != HDCP_2_2_RX_CAPS_VERSION_VAL) {
-		DRM_DEBUG_KMS("cert.rx_caps dont claim HDCP2.2\n");
+		drm_dbg_kms(&dev_priv->drm, "cert.rx_caps dont claim HDCP2.2\n");
 		return -EINVAL;
 	}
 
@@ -1279,7 +1286,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm,
 					msgs.send_cert.cert_rx.receiver_id,
 					1)) {
-		DRM_ERROR("Receiver ID is revoked\n");
+		drm_err(&dev_priv->drm, "Receiver ID is revoked\n");
 		return -EPERM;
 	}
 
@@ -1454,7 +1461,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 
 	if (HDCP_2_2_MAX_CASCADE_EXCEEDED(rx_info[1]) ||
 	    HDCP_2_2_MAX_DEVS_EXCEEDED(rx_info[1])) {
-		DRM_DEBUG_KMS("Topology Max Size Exceeded\n");
+		drm_dbg_kms(&dev_priv->drm, "Topology Max Size Exceeded\n");
 		return -EINVAL;
 	}
 
@@ -1464,7 +1471,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 
 	if (seq_num_v < hdcp->seq_num_v) {
 		/* Roll over of the seq_num_v from repeater. Reauthenticate. */
-		DRM_DEBUG_KMS("Seq_num_v roll over.\n");
+		drm_dbg_kms(&dev_priv->drm, "Seq_num_v roll over.\n");
 		return -EINVAL;
 	}
 
@@ -1473,7 +1480,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm,
 					msgs.recvid_list.receiver_ids,
 					device_cnt)) {
-		DRM_ERROR("Revoked receiver ID(s) is in list\n");
+		drm_err(&dev_priv->drm, "Revoked receiver ID(s) is in list\n");
 		return -EPERM;
 	}
 
@@ -1506,25 +1513,27 @@ static int hdcp2_authenticate_repeater(struct intel_connector *connector)
 static int hdcp2_authenticate_sink(struct intel_connector *connector)
 {
 	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	int ret;
 
 	ret = hdcp2_authentication_key_exchange(connector);
 	if (ret < 0) {
-		DRM_DEBUG_KMS("AKE Failed. Err : %d\n", ret);
+		drm_dbg_kms(&i915->drm, "AKE Failed. Err : %d\n", ret);
 		return ret;
 	}
 
 	ret = hdcp2_locality_check(connector);
 	if (ret < 0) {
-		DRM_DEBUG_KMS("Locality Check failed. Err : %d\n", ret);
+		drm_dbg_kms(&i915->drm,
+			    "Locality Check failed. Err : %d\n", ret);
 		return ret;
 	}
 
 	ret = hdcp2_session_key_exchange(connector);
 	if (ret < 0) {
-		DRM_DEBUG_KMS("SKE Failed. Err : %d\n", ret);
+		drm_dbg_kms(&i915->drm, "SKE Failed. Err : %d\n", ret);
 		return ret;
 	}
 
@@ -1539,7 +1548,8 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 	if (hdcp->is_repeater) {
 		ret = hdcp2_authenticate_repeater(connector);
 		if (ret < 0) {
-			DRM_DEBUG_KMS("Repeater Auth Failed. Err: %d\n", ret);
+			drm_dbg_kms(&i915->drm,
+				    "Repeater Auth Failed. Err: %d\n", ret);
 			return ret;
 		}
 	}
@@ -1628,6 +1638,7 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 
 static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int ret, i, tries = 3;
 
 	for (i = 0; i < tries; i++) {
@@ -1636,10 +1647,10 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 			break;
 
 		/* Clearing the mei hdcp session */
-		DRM_DEBUG_KMS("HDCP2.2 Auth %d of %d Failed.(%d)\n",
-			      i + 1, tries, ret);
+		drm_dbg_kms(&i915->drm, "HDCP2.2 Auth %d of %d Failed.(%d)\n",
+			    i + 1, tries, ret);
 		if (hdcp2_deauthenticate_port(connector) < 0)
-			DRM_DEBUG_KMS("Port deauth failed.\n");
+			drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
 	}
 
 	if (i != tries) {
@@ -1650,9 +1661,10 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 		msleep(HDCP_2_2_DELAY_BEFORE_ENCRYPTION_EN);
 		ret = hdcp2_enable_encryption(connector);
 		if (ret < 0) {
-			DRM_DEBUG_KMS("Encryption Enable Failed.(%d)\n", ret);
+			drm_dbg_kms(&i915->drm,
+				    "Encryption Enable Failed.(%d)\n", ret);
 			if (hdcp2_deauthenticate_port(connector) < 0)
-				DRM_DEBUG_KMS("Port deauth failed.\n");
+				drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
 		}
 	}
 
@@ -1661,23 +1673,24 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 
 static int _intel_hdcp2_enable(struct intel_connector *connector)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
-	DRM_DEBUG_KMS("[%s:%d] HDCP2.2 is being enabled. Type: %d\n",
-		      connector->base.name, connector->base.base.id,
-		      hdcp->content_type);
+	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is being enabled. Type: %d\n",
+		    connector->base.name, connector->base.base.id,
+		    hdcp->content_type);
 
 	ret = hdcp2_authenticate_and_encrypt(connector);
 	if (ret) {
-		DRM_DEBUG_KMS("HDCP2 Type%d  Enabling Failed. (%d)\n",
-			      hdcp->content_type, ret);
+		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
+			    hdcp->content_type, ret);
 		return ret;
 	}
 
-	DRM_DEBUG_KMS("[%s:%d] HDCP2.2 is enabled. Type %d\n",
-		      connector->base.name, connector->base.base.id,
-		      hdcp->content_type);
+	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is enabled. Type %d\n",
+		    connector->base.name, connector->base.base.id,
+		    hdcp->content_type);
 
 	hdcp->hdcp2_encrypted = true;
 	return 0;
@@ -1685,15 +1698,16 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 
 static int _intel_hdcp2_disable(struct intel_connector *connector)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int ret;
 
-	DRM_DEBUG_KMS("[%s:%d] HDCP2.2 is being Disabled\n",
-		      connector->base.name, connector->base.base.id);
+	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is being Disabled\n",
+		    connector->base.name, connector->base.base.id);
 
 	ret = hdcp2_disable_encryption(connector);
 
 	if (hdcp2_deauthenticate_port(connector) < 0)
-		DRM_DEBUG_KMS("Port deauth failed.\n");
+		drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
 
 	connector->hdcp.hdcp2_encrypted = false;
 
@@ -1935,12 +1949,13 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
 static void intel_hdcp2_init(struct intel_connector *connector,
 			     const struct intel_hdcp_shim *shim)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
 	ret = initialize_hdcp_port_data(connector, shim);
 	if (ret) {
-		DRM_DEBUG_KMS("Mei hdcp data init failed\n");
+		drm_dbg_kms(&i915->drm, "Mei hdcp data init failed\n");
 		return;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
