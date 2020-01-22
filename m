Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8001465A5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 11:23:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044E26FBC3;
	Thu, 23 Jan 2020 10:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38BC56F4B3;
 Wed, 22 Jan 2020 11:09:10 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id p17so6724896wma.1;
 Wed, 22 Jan 2020 03:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L8QlLByNZoVMqrVSWmRZzb0sTN23P9teM+46fpk6ArE=;
 b=a9ni0ERCrlp6ckVc7x24Zozqlqoc7dKL3Ge/87Zr3YG+4sc0KaTaJRLBtg+CHUgY06
 +GyQ2E1CoHD21q0vtxL5NBLjggBrTgmQQeZXPs3trLA/unvxxGZwZ05xdTmp8926sjY3
 UPRTlltLGs4WOAPwpiWjrYvH+bqo9lsAVlrVxp7blfd4GyuLhwRFdTvbfqkK3rxL2e4R
 GQwXlus83Jr3GsvUvq6kr55s37ERYekhNXFwmHA5MEpXSF/c98L1q52DEizJHmoFotN1
 G3OHWk7ysRVfITyhfcavCJOrbzs0MrITDGk+P1DeeTEYfro+f3W0hkazA2pIvrgURXAy
 GJuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L8QlLByNZoVMqrVSWmRZzb0sTN23P9teM+46fpk6ArE=;
 b=Vg5o3+ziRHS9dejUR5yLcNK+6567DIFTBVt6ncRG4+gACS2PeZ9aEqI/J1vRUw6jYz
 IB7rLxqSEq5g+joeSE5rvZFxnRpTxtxfUbl24I1jtUnl7MfFQDKmuZCPdLNQpbhSOOm2
 MjqczWGKsJtQoLQ6ZhV3Bf1VB1OlO7ZB36zspvaDbpw6WFKVyr2rxwOSWNMBnG4BGoVF
 O93wSLEv3a8Fpkl34oFJhLxChfav8EDW2oOjjysfeGlzcnrwLi+Lai3vJnXzTWaZsdc/
 H4NIpKy0bSUhQ30p6sswfC3JH1V1zFfG4zjM3Woyu02OrGth1jDao+4qNpNiYrx8jCRS
 3vlw==
X-Gm-Message-State: APjAAAU+FaFFl0YAZsl0FSf/llHSFHm1724IKdjbI725Jzk8iPAkddkn
 hfjkADwoPoyFl8gyn8QOLdi26MAtjWQ=
X-Google-Smtp-Source: APXvYqz4UKbkRWK8pRjgZ5FJvDrm7tMJFc8TSMllBBu1rpWli1/zHoT9494zxSTTFcOIfsAyXsagPw==
X-Received: by 2002:a1c:9c4c:: with SMTP id f73mr2328082wme.125.1579691348644; 
 Wed, 22 Jan 2020 03:09:08 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id l3sm52454380wrt.29.2020.01.22.03.09.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 03:09:08 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 22 Jan 2020 14:08:44 +0300
Message-Id: <20200122110844.2022-7-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122110844.2022-1-wambui.karugax@gmail.com>
References: <20200122110844.2022-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 23 Jan 2020 10:23:15 +0000
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915/hdcp: conversion to struct
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Converts various instances of the printk based logging macros in
i915/display/intel_hdcp.c with the struct drm_device based macros using
coccinelle. The script matches based on the existence of an existing
struct drm_i915_private device:
@rule1@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@rule2@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

New checkpatch warnings were addressed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 138 +++++++++++++---------
 1 file changed, 81 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 3454a913dca8..33dc40a63fce 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -217,8 +217,9 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 		ret = sandybridge_pcode_write(dev_priv,
 					      SKL_PCODE_LOAD_HDCP_KEYS, 1);
 		if (ret) {
-			DRM_ERROR("Failed to initiate HDCP key load (%d)\n",
-			          ret);
+			drm_err(&dev_priv->drm,
+				"Failed to initiate HDCP key load (%d)\n",
+				ret);
 			return ret;
 		}
 	} else {
@@ -245,7 +246,7 @@ static int intel_write_sha_text(struct drm_i915_private *dev_priv, u32 sha_text)
 {
 	I915_WRITE(HDCP_SHA_TEXT, sha_text);
 	if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL, HDCP_SHA1_READY, 1)) {
-		DRM_ERROR("Timed out waiting for SHA1 ready\n");
+		drm_err(&dev_priv->drm, "Timed out waiting for SHA1 ready\n");
 		return -ETIMEDOUT;
 	}
 	return 0;
@@ -270,7 +271,8 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *dev_priv,
 			return HDCP_TRANSD_REP_PRESENT |
 			       HDCP_TRANSD_SHA1_M0;
 		default:
-			DRM_ERROR("Unknown transcoder %d\n", cpu_transcoder);
+			drm_err(&dev_priv->drm, "Unknown transcoder %d\n",
+				cpu_transcoder);
 			return -EINVAL;
 		}
 	}
@@ -287,7 +289,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *dev_priv,
 	case PORT_E:
 		return HDCP_DDIE_REP_PRESENT | HDCP_DDIE_SHA1_M0;
 	default:
-		DRM_ERROR("Unknown port %d\n", port);
+		drm_err(&dev_priv->drm, "Unknown port %d\n", port);
 		return -EINVAL;
 	}
 }
@@ -756,25 +758,26 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
-	DRM_DEBUG_KMS("[%s:%d] HDCP is being disabled...\n",
-		      connector->base.name, connector->base.base.id);
+	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being disabled...\n",
+		    connector->base.name, connector->base.base.id);
 
 	hdcp->hdcp_encrypted = false;
 	I915_WRITE(HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
 	if (intel_de_wait_for_clear(dev_priv,
 				    HDCP_STATUS(dev_priv, cpu_transcoder, port),
 				    ~0, ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
-		DRM_ERROR("Failed to disable HDCP, timeout clearing status\n");
+		drm_err(&dev_priv->drm,
+			"Failed to disable HDCP, timeout clearing status\n");
 		return -ETIMEDOUT;
 	}
 
 	ret = hdcp->shim->toggle_signalling(intel_dig_port, false);
 	if (ret) {
-		DRM_ERROR("Failed to disable HDCP signalling\n");
+		drm_err(&dev_priv->drm, "Failed to disable HDCP signalling\n");
 		return ret;
 	}
 
-	DRM_DEBUG_KMS("HDCP is disabled\n");
+	drm_dbg_kms(&dev_priv->drm, "HDCP is disabled\n");
 	return 0;
 }
 
@@ -784,11 +787,11 @@ static int _intel_hdcp_enable(struct intel_connector *connector)
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int i, ret, tries = 3;
 
-	DRM_DEBUG_KMS("[%s:%d] HDCP is being enabled...\n",
-		      connector->base.name, connector->base.base.id);
+	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being enabled...\n",
+		    connector->base.name, connector->base.base.id);
 
 	if (!hdcp_key_loadable(dev_priv)) {
-		DRM_ERROR("HDCP key Load is not possible\n");
+		drm_err(&dev_priv->drm, "HDCP key Load is not possible\n");
 		return -ENXIO;
 	}
 
@@ -799,7 +802,8 @@ static int _intel_hdcp_enable(struct intel_connector *connector)
 		intel_hdcp_clear_keys(dev_priv);
 	}
 	if (ret) {
-		DRM_ERROR("Could not load HDCP keys, (%d)\n", ret);
+		drm_err(&dev_priv->drm, "Could not load HDCP keys, (%d)\n",
+			ret);
 		return ret;
 	}
 
@@ -811,13 +815,14 @@ static int _intel_hdcp_enable(struct intel_connector *connector)
 			return 0;
 		}
 
-		DRM_DEBUG_KMS("HDCP Auth failure (%d)\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "HDCP Auth failure (%d)\n", ret);
 
 		/* Ensuring HDCP encryption and signalling are stopped. */
 		_intel_hdcp_disable(connector);
 	}
 
-	DRM_DEBUG_KMS("HDCP authentication failed (%d tries/%d)\n", tries, ret);
+	drm_dbg_kms(&dev_priv->drm,
+		    "HDCP authentication failed (%d tries/%d)\n", tries, ret);
 	return ret;
 }
 
@@ -848,10 +853,11 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 	}
 
 	if (WARN_ON(!intel_hdcp_in_use(dev_priv, cpu_transcoder, port))) {
-		DRM_ERROR("%s:%d HDCP link stopped encryption,%x\n",
-			  connector->base.name, connector->base.base.id,
-			  I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder,
-						port)));
+		drm_err(&dev_priv->drm,
+			"%s:%d HDCP link stopped encryption,%x\n",
+			connector->base.name, connector->base.base.id,
+			I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder,
+					      port)));
 		ret = -ENXIO;
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		schedule_work(&hdcp->prop_work);
@@ -866,12 +872,13 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	DRM_DEBUG_KMS("[%s:%d] HDCP link failed, retrying authentication\n",
-		      connector->base.name, connector->base.base.id);
+	drm_dbg_kms(&dev_priv->drm,
+		    "[%s:%d] HDCP link failed, retrying authentication\n",
+		    connector->base.name, connector->base.base.id);
 
 	ret = _intel_hdcp_disable(connector);
 	if (ret) {
-		DRM_ERROR("Failed to disable hdcp (%d)\n", ret);
+		drm_err(&dev_priv->drm, "Failed to disable hdcp (%d)\n", ret);
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		schedule_work(&hdcp->prop_work);
 		goto out;
@@ -879,7 +886,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 
 	ret = _intel_hdcp_enable(connector);
 	if (ret) {
-		DRM_ERROR("Failed to enable hdcp (%d)\n", ret);
+		drm_err(&dev_priv->drm, "Failed to enable hdcp (%d)\n", ret);
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		schedule_work(&hdcp->prop_work);
 		goto out;
@@ -938,7 +945,8 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 
 	ret = comp->ops->initiate_hdcp2_session(comp->mei_dev, data, ake_data);
 	if (ret)
-		DRM_DEBUG_KMS("Prepare_ake_init failed. %d\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
+			    ret);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -968,7 +976,8 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 							 rx_cert, paired,
 							 ek_pub_km, msg_sz);
 	if (ret < 0)
-		DRM_DEBUG_KMS("Verify rx_cert failed. %d\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Verify rx_cert failed. %d\n",
+			    ret);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -992,7 +1001,7 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 
 	ret = comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
 	if (ret < 0)
-		DRM_DEBUG_KMS("Verify hprime failed. %d\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n", ret);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1017,7 +1026,8 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 
 	ret = comp->ops->store_pairing_info(comp->mei_dev, data, pairing_info);
 	if (ret < 0)
-		DRM_DEBUG_KMS("Store pairing info failed. %d\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
+			    ret);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1042,7 +1052,8 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 
 	ret = comp->ops->initiate_locality_check(comp->mei_dev, data, lc_init);
 	if (ret < 0)
-		DRM_DEBUG_KMS("Prepare lc_init failed. %d\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
+			    ret);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1067,7 +1078,8 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 
 	ret = comp->ops->verify_lprime(comp->mei_dev, data, rx_lprime);
 	if (ret < 0)
-		DRM_DEBUG_KMS("Verify L_Prime failed. %d\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
+			    ret);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1091,7 +1103,8 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 
 	ret = comp->ops->get_session_key(comp->mei_dev, data, ske_data);
 	if (ret < 0)
-		DRM_DEBUG_KMS("Get session key failed. %d\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
+			    ret);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1120,7 +1133,8 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 							 rep_topology,
 							 rep_send_ack);
 	if (ret < 0)
-		DRM_DEBUG_KMS("Verify rep topology failed. %d\n", ret);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Verify rep topology failed. %d\n", ret);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1145,7 +1159,7 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 
 	ret = comp->ops->verify_mprime(comp->mei_dev, data, stream_ready);
 	if (ret < 0)
-		DRM_DEBUG_KMS("Verify mprime failed. %d\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n", ret);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1168,7 +1182,8 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 
 	ret = comp->ops->enable_hdcp_authentication(comp->mei_dev, data);
 	if (ret < 0)
-		DRM_DEBUG_KMS("Enable hdcp auth failed. %d\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
+			    ret);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1532,8 +1547,9 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 	if (hdcp->shim->toggle_signalling) {
 		ret = hdcp->shim->toggle_signalling(intel_dig_port, true);
 		if (ret) {
-			DRM_ERROR("Failed to enable HDCP signalling. %d\n",
-				  ret);
+			drm_err(&dev_priv->drm,
+				"Failed to enable HDCP signalling. %d\n",
+				ret);
 			return ret;
 		}
 	}
@@ -1578,13 +1594,14 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 				      LINK_ENCRYPTION_STATUS,
 				      ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
 	if (ret == -ETIMEDOUT)
-		DRM_DEBUG_KMS("Disable Encryption Timedout");
+		drm_dbg_kms(&dev_priv->drm, "Disable Encryption Timedout");
 
 	if (hdcp->shim->toggle_signalling) {
 		ret = hdcp->shim->toggle_signalling(intel_dig_port, false);
 		if (ret) {
-			DRM_ERROR("Failed to disable HDCP signalling. %d\n",
-				  ret);
+			drm_err(&dev_priv->drm,
+				"Failed to disable HDCP signalling. %d\n",
+				ret);
 			return ret;
 		}
 	}
@@ -1687,9 +1704,10 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 	}
 
 	if (WARN_ON(!intel_hdcp2_in_use(dev_priv, cpu_transcoder, port))) {
-		DRM_ERROR("HDCP2.2 link stopped the encryption, %x\n",
-			  I915_READ(HDCP2_STATUS(dev_priv, cpu_transcoder,
-						 port)));
+		drm_err(&dev_priv->drm,
+			"HDCP2.2 link stopped the encryption, %x\n",
+			I915_READ(HDCP2_STATUS(dev_priv, cpu_transcoder,
+					       port)));
 		ret = -ENXIO;
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		schedule_work(&hdcp->prop_work);
@@ -1709,25 +1727,29 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
 			goto out;
 
-		DRM_DEBUG_KMS("HDCP2.2 Downstream topology change\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "HDCP2.2 Downstream topology change\n");
 		ret = hdcp2_authenticate_repeater_topology(connector);
 		if (!ret) {
 			hdcp->value = DRM_MODE_CONTENT_PROTECTION_ENABLED;
 			schedule_work(&hdcp->prop_work);
 			goto out;
 		}
-		DRM_DEBUG_KMS("[%s:%d] Repeater topology auth failed.(%d)\n",
-			      connector->base.name, connector->base.base.id,
-			      ret);
+		drm_dbg_kms(&dev_priv->drm,
+			    "[%s:%d] Repeater topology auth failed.(%d)\n",
+			    connector->base.name, connector->base.base.id,
+			    ret);
 	} else {
-		DRM_DEBUG_KMS("[%s:%d] HDCP2.2 link failed, retrying auth\n",
-			      connector->base.name, connector->base.base.id);
+		drm_dbg_kms(&dev_priv->drm,
+			    "[%s:%d] HDCP2.2 link failed, retrying auth\n",
+			    connector->base.name, connector->base.base.id);
 	}
 
 	ret = _intel_hdcp2_disable(connector);
 	if (ret) {
-		DRM_ERROR("[%s:%d] Failed to disable hdcp2.2 (%d)\n",
-			  connector->base.name, connector->base.base.id, ret);
+		drm_err(&dev_priv->drm,
+			"[%s:%d] Failed to disable hdcp2.2 (%d)\n",
+			connector->base.name, connector->base.base.id, ret);
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		schedule_work(&hdcp->prop_work);
 		goto out;
@@ -1735,9 +1757,10 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 
 	ret = _intel_hdcp2_enable(connector);
 	if (ret) {
-		DRM_DEBUG_KMS("[%s:%d] Failed to enable hdcp2.2 (%d)\n",
-			      connector->base.name, connector->base.base.id,
-			      ret);
+		drm_dbg_kms(&dev_priv->drm,
+			    "[%s:%d] Failed to enable hdcp2.2 (%d)\n",
+			    connector->base.name, connector->base.base.id,
+			    ret);
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		schedule_work(&hdcp->prop_work);
 		goto out;
@@ -1768,7 +1791,7 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);
 
-	DRM_DEBUG("I915 HDCP comp bind\n");
+	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
 	mutex_lock(&dev_priv->hdcp_comp_mutex);
 	dev_priv->hdcp_master = (struct i915_hdcp_comp_master *)data;
 	dev_priv->hdcp_master->mei_dev = mei_kdev;
@@ -1782,7 +1805,7 @@ static void i915_hdcp_component_unbind(struct device *i915_kdev,
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);
 
-	DRM_DEBUG("I915 HDCP comp unbind\n");
+	drm_dbg(&dev_priv->drm, "I915 HDCP comp unbind\n");
 	mutex_lock(&dev_priv->hdcp_comp_mutex);
 	dev_priv->hdcp_master = NULL;
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
@@ -1850,7 +1873,7 @@ static inline int initialize_hdcp_port_data(struct intel_connector *connector,
 					sizeof(struct hdcp2_streamid_type),
 					GFP_KERNEL);
 	if (!data->streams) {
-		DRM_ERROR("Out of Memory\n");
+		drm_err(&dev_priv->drm, "Out of Memory\n");
 		return -ENOMEM;
 	}
 
@@ -1884,7 +1907,8 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
 	ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_component_ops,
 				  I915_COMPONENT_HDCP);
 	if (ret < 0) {
-		DRM_DEBUG_KMS("Failed at component add(%d)\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
+			    ret);
 		mutex_lock(&dev_priv->hdcp_comp_mutex);
 		dev_priv->hdcp_comp_added = false;
 		mutex_unlock(&dev_priv->hdcp_comp_mutex);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
