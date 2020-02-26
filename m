Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A88D16FBBD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:12:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959AC6E459;
	Wed, 26 Feb 2020 10:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B65F6E45D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:12:10 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id w12so2247293wrt.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xTj36J/rESxCsPM/2ZokEGkWMZfRjI3rjcvqHCDqheY=;
 b=RNo3JtUJhtd9CZvYgSvo0qIFHWd2ecEMc0D5+jou6y6xF1TwD6i0h+0tJIKhoxjmzU
 9SS6OnEnwOYNytnIpqqqzsaoxUGRQWsBlMnEEDF5lOnKUQkzNNOmaanODufyPCCZqvYy
 As8ofrj4T1Q9xzasRZETm/ex/AVZssEZEQs6kdTpcrfUrlzlJjtqr7iwGChOqsoV0LJE
 DXp4WwMsNNh66toJUx5EiMqo2DdUWOGRmK8CaFrs9OXkbq4MKYfe2AJMiBdNEtf9rLJd
 7ndIDptgDKxjYDfp2gmQ71E3dHKvBenoNsgja0rLCUIj7ym9g87MS9t7SOYdBBawFoaJ
 KfOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xTj36J/rESxCsPM/2ZokEGkWMZfRjI3rjcvqHCDqheY=;
 b=TJWJ5mpU67RW9LvgZ9CO/3T4JeXHUxtAzih+mmEQ6uG3uPHALMqJfso1ITGpVtlESx
 vmxZoTlFcVIS51bZSvG5CenG3TVt6lUcXv8Jm3PdMUzUdgpCUyKHd1YCYuwKBEvY8ZKT
 bTeagy8gVQEij3UqX4xqr2eOwqLuzNREr6Xo2pRAR9p6q5puHosTky2f/ywGxLLT87mx
 weV7IE9CZmPAImXeV3n6LT6o+7kLvrai3K4/s1uY2tNVxuDFIoYmdATtRmreKvdjDNAZ
 cI4bpdgvNrzv2u9b/6PhooW6ReNiypcDR5TUK6kv/rZhuXDWxHBy71/7uq2rkgw7Hy4X
 ZMWg==
X-Gm-Message-State: APjAAAXsHKLJ5nOPaktOh/1VLarKMhKYi0ie1FzOKE91UNLH0zRH09Dx
 qvUpxW+j4vQU/MguVAYUAzI=
X-Google-Smtp-Source: APXvYqzkZmJqzbNMUjgBvf5IKHyq3Qfb1LkHuQqpEbTUUTrAJLbyHBGLWh9D5bKd4G98oFYRydh8zw==
X-Received: by 2002:adf:9521:: with SMTP id 30mr4504114wrs.349.1582711928996; 
 Wed, 26 Feb 2020 02:12:08 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.12.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:12:08 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:34 +0300
Message-Id: <20200226101138.15435-7-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/10] drm/i915/hdcp: convert to struct
 drm_device based logging.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Converts various instances of the printk based drm logging macros to the
struct drm_device based logging macros in i915/display/intel_hdcp.c.
This also involves extracting the drm_i915_private device from the
intel_connector type for use in the macros.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 114 +++++++++++++---------
 1 file changed, 67 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 229b4e329864..7eaf1f0917d1 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -485,8 +485,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 			return ret;
 		sha_idx += sizeof(sha_text);
 	} else {
-		DRM_DEBUG_KMS("Invalid number of leftovers %d\n",
-			      sha_leftovers);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Invalid number of leftovers %d\n", sha_leftovers);
 		return -EINVAL;
 	}
 
@@ -514,11 +514,12 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		       rep_ctl | HDCP_SHA1_COMPLETE_HASH);
 	if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL,
 				  HDCP_SHA1_COMPLETE, 1)) {
-		DRM_ERROR("Timed out waiting for SHA1 complete\n");
+		drm_err(&dev_priv->drm,
+			"Timed out waiting for SHA1 complete\n");
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
@@ -594,12 +597,14 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 	}
 
 	if (i == tries) {
-		DRM_DEBUG_KMS("V Prime validation failed.(%d)\n", ret);
+		drm_dbg_kms(&dev_priv->drm,
+			    "V Prime validation failed.(%d)\n", ret);
 		goto err;
 	}
 
-	DRM_DEBUG_KMS("HDCP is enabled (%d downstream devices)\n",
-		      num_downstream);
+	drm_dbg_kms(&dev_priv->drm,
+		    "HDCP is enabled (%d downstream devices)\n",
+		    num_downstream);
 	ret = 0;
 err:
 	kfree(ksv_fifo);
@@ -642,7 +647,8 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		if (ret)
 			return ret;
 		if (!hdcp_capable) {
-			DRM_DEBUG_KMS("Panel is not HDCP capable\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "Panel is not HDCP capable\n");
 			return -EINVAL;
 		}
 	}
@@ -659,7 +665,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	if (intel_de_wait_for_set(dev_priv,
 				  HDCP_STATUS(dev_priv, cpu_transcoder, port),
 				  HDCP_STATUS_AN_READY, 1)) {
-		DRM_ERROR("Timed out waiting for An\n");
+		drm_err(&dev_priv->drm, "Timed out waiting for An\n");
 		return -ETIMEDOUT;
 	}
 
@@ -680,7 +686,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		return ret;
 
 	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm, bksv.shim, 1)) {
-		DRM_ERROR("BKSV is revoked\n");
+		drm_err(&dev_priv->drm, "BKSV is revoked\n");
 		return -EPERM;
 	}
 
@@ -706,7 +712,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	/* Wait for R0 ready */
 	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
 		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
-		DRM_ERROR("Timed out waiting for R0 ready\n");
+		drm_err(&dev_priv->drm, "Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
 	}
 
@@ -743,8 +749,9 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	}
 
 	if (i == tries) {
-		DRM_DEBUG_KMS("Timed out waiting for Ri prime match (%x)\n",
-			      intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
+		drm_dbg_kms(&dev_priv->drm,
+			    "Timed out waiting for Ri prime match (%x)\n",
+			    intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
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
 
@@ -1271,7 +1278,8 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 		return ret;
 
 	if (msgs.send_cert.rx_caps[0] != HDCP_2_2_RX_CAPS_VERSION_VAL) {
-		DRM_DEBUG_KMS("cert.rx_caps dont claim HDCP2.2\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "cert.rx_caps dont claim HDCP2.2\n");
 		return -EINVAL;
 	}
 
@@ -1280,7 +1288,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm,
 					msgs.send_cert.cert_rx.receiver_id,
 					1)) {
-		DRM_ERROR("Receiver ID is revoked\n");
+		drm_err(&dev_priv->drm, "Receiver ID is revoked\n");
 		return -EPERM;
 	}
 
@@ -1384,6 +1392,7 @@ static
 int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 {
 	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_rep_stream_manage stream_manage;
@@ -1424,7 +1433,7 @@ int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	hdcp->seq_num_m++;
 
 	if (hdcp->seq_num_m > HDCP_2_2_SEQ_NUM_MAX) {
-		DRM_DEBUG_KMS("seq_num_m roll over.\n");
+		drm_dbg_kms(&i915->drm, "seq_num_m roll over.\n");
 		return -1;
 	}
 
@@ -1455,7 +1464,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 
 	if (HDCP_2_2_MAX_CASCADE_EXCEEDED(rx_info[1]) ||
 	    HDCP_2_2_MAX_DEVS_EXCEEDED(rx_info[1])) {
-		DRM_DEBUG_KMS("Topology Max Size Exceeded\n");
+		drm_dbg_kms(&dev_priv->drm, "Topology Max Size Exceeded\n");
 		return -EINVAL;
 	}
 
@@ -1465,7 +1474,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 
 	if (seq_num_v < hdcp->seq_num_v) {
 		/* Roll over of the seq_num_v from repeater. Reauthenticate. */
-		DRM_DEBUG_KMS("Seq_num_v roll over.\n");
+		drm_dbg_kms(&dev_priv->drm, "Seq_num_v roll over.\n");
 		return -EINVAL;
 	}
 
@@ -1474,7 +1483,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm,
 					msgs.recvid_list.receiver_ids,
 					device_cnt)) {
-		DRM_ERROR("Revoked receiver ID(s) is in list\n");
+		drm_err(&dev_priv->drm, "Revoked receiver ID(s) is in list\n");
 		return -EPERM;
 	}
 
@@ -1507,25 +1516,27 @@ static int hdcp2_authenticate_repeater(struct intel_connector *connector)
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
+		drm_dbg_kms(&i915->drm, "Locality Check failed. Err : %d\n",
+			    ret);
 		return ret;
 	}
 
 	ret = hdcp2_session_key_exchange(connector);
 	if (ret < 0) {
-		DRM_DEBUG_KMS("SKE Failed. Err : %d\n", ret);
+		drm_dbg_kms(&i915->drm, "SKE Failed. Err : %d\n", ret);
 		return ret;
 	}
 
@@ -1540,7 +1551,8 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 	if (hdcp->is_repeater) {
 		ret = hdcp2_authenticate_repeater(connector);
 		if (ret < 0) {
-			DRM_DEBUG_KMS("Repeater Auth Failed. Err: %d\n", ret);
+			drm_dbg_kms(&i915->drm,
+				    "Repeater Auth Failed. Err: %d\n", ret);
 			return ret;
 		}
 	}
@@ -1630,6 +1642,7 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 
 static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int ret, i, tries = 3;
 
 	for (i = 0; i < tries; i++) {
@@ -1638,10 +1651,10 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
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
@@ -1652,9 +1665,11 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 		msleep(HDCP_2_2_DELAY_BEFORE_ENCRYPTION_EN);
 		ret = hdcp2_enable_encryption(connector);
 		if (ret < 0) {
-			DRM_DEBUG_KMS("Encryption Enable Failed.(%d)\n", ret);
+			drm_dbg_kms(&i915->drm,
+				    "Encryption Enable Failed.(%d)\n", ret);
 			if (hdcp2_deauthenticate_port(connector) < 0)
-				DRM_DEBUG_KMS("Port deauth failed.\n");
+				drm_dbg_kms(&i915->drm,
+					    "Port deauth failed.\n");
 		}
 	}
 
@@ -1664,22 +1679,25 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 static int _intel_hdcp2_enable(struct intel_connector *connector)
 {
 	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int ret;
 
-	DRM_DEBUG_KMS("[%s:%d] HDCP2.2 is being enabled. Type: %d\n",
-		      connector->base.name, connector->base.base.id,
-		      hdcp->content_type);
+	drm_dbg_kms(&i915->drm,
+		    "[%s:%d] HDCP2.2 is being enabled. Type: %d\n",
+		    connector->base.name, connector->base.base.id,
+		    hdcp->content_type);
 
 	ret = hdcp2_authenticate_and_encrypt(connector);
 	if (ret) {
-		DRM_DEBUG_KMS("HDCP2 Type%d  Enabling Failed. (%d)\n",
-			      hdcp->content_type, ret);
+		drm_dbg_kms(&i915->drm,
+			    "HDCP2 Type%d  Enabling Failed. (%d)\n",
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
@@ -1687,15 +1705,16 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 
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
 
@@ -1938,12 +1957,13 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
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
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
