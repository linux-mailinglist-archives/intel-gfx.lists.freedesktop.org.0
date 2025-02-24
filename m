Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E2AA42174
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E3C610E516;
	Mon, 24 Feb 2025 13:42:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B/sRAUp4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B98B10E120;
 Mon, 24 Feb 2025 10:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740392078; x=1771928078;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DENpzAoU7i2zHVLA5AAqSfOlZ1/3M+e9XO8nR1ieA9I=;
 b=B/sRAUp47RniSBjjWtMU4F37Fw4pcsrvByxbVEhEIDVLVOyxZsbvZs56
 XSAqUC28LHngovpEfGWMcWBJKifv7fCAkXzzTQVHGooENJI11xIT7/3ri
 d7Ogszq5/C8yGTASRo/T+gABqG5cGWPWtIKivkLipDLPz1EYoGxNXiRdo
 t+CjM32I3iNkVgh7B2YWbKIv5EipJJKkPLpz5ti1yWxmA0rdhbAdj0ivB
 hFUx9d0CeMwDoJhgp33dxwOWJgU7jdpqncRHbTiFUkkGsjacnfNsUW72t
 tL8t8XnTAlOktEMfq8z3hFXJqfDopSkhxlNPLlyOxR2RAaPs2Fd6XZRM6 w==;
X-CSE-ConnectionGUID: g60FqQUhRYCWcuPNMV7pGg==
X-CSE-MsgGUID: LO9b8AcRRuiG14dBaJAopA==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="51778909"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="51778909"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:14:38 -0800
X-CSE-ConnectionGUID: YzmZu6ePQWqzODsMbIbY2w==
X-CSE-MsgGUID: /bi+1he9TeCohUD8tK2x+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="153219315"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:14:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [RFC] drm/i915/hdcp: switch to guard and scoped guard for mutexes
Date: Mon, 24 Feb 2025 12:14:28 +0200
Message-Id: <20250224101428.204519-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

scoped_guard() and guard() provide automatic unlocking for locks, with
cleaner function return paths for both happy and rainy day
scenarios. Switch HDCP over as a first experiment for i915 display.

Leave intel_hdcp_disable() be for now, as two nested scoped guards are a
bit much, but also can't use just guard() due to the work cancel.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 203 +++++++++-------------
 1 file changed, 80 insertions(+), 123 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 7063e3f5c538..f641e0e05b1d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -254,14 +254,9 @@ static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
 	}
 
 	/* MEI/GSC interface is solid depending on which is used */
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	if (!display->hdcp.comp_added || !display->hdcp.arbiter) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
-		return false;
-	}
-	mutex_unlock(&display->hdcp.hdcp_mutex);
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	return true;
+	return display->hdcp.comp_added && display->hdcp.arbiter;
 }
 
 /* Is HDCP2.2 capable on Platform and Sink */
@@ -1121,8 +1116,8 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 	enum transcoder cpu_transcoder;
 	int ret = 0;
 
-	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	guard(mutex)(&hdcp->mutex);
+	guard(mutex)(&dig_port->hdcp_mutex);
 
 	cpu_transcoder = hdcp->cpu_transcoder;
 
@@ -1177,8 +1172,6 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 	}
 
 out:
-	mutex_unlock(&dig_port->hdcp_mutex);
-	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
 
@@ -1190,18 +1183,18 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 	struct intel_display *display = to_intel_display(connector);
 
 	drm_modeset_lock(&display->drm->mode_config.connection_mutex, NULL);
-	mutex_lock(&hdcp->mutex);
 
 	/*
 	 * This worker is only used to flip between ENABLED/DESIRED. Either of
 	 * those to UNDESIRED is handled by core. If value == UNDESIRED,
 	 * we're running just after hdcp has been disabled, so just exit
 	 */
-	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
-		drm_hdcp_update_content_protection(&connector->base,
-						   hdcp->value);
+	scoped_guard(mutex, &hdcp->mutex) {
+		if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
+			drm_hdcp_update_content_protection(&connector->base,
+							   hdcp->value);
+	}
 
-	mutex_unlock(&hdcp->mutex);
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	drm_connector_put(&connector->base);
@@ -1223,19 +1216,16 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->initiate_hdcp2_session(arbiter->hdcp_dev, data, ake_data);
 	if (ret)
 		drm_dbg_kms(display->drm, "Prepare_ake_init failed. %d\n",
 			    ret);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1253,13 +1243,11 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->verify_receiver_cert_prepare_km(arbiter->hdcp_dev, data,
 							 rx_cert, paired,
@@ -1267,7 +1255,6 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(display->drm, "Verify rx_cert failed. %d\n",
 			    ret);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1281,18 +1268,15 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->verify_hprime(arbiter->hdcp_dev, data, rx_hprime);
 	if (ret < 0)
 		drm_dbg_kms(display->drm, "Verify hprime failed. %d\n", ret);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1307,19 +1291,16 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->store_pairing_info(arbiter->hdcp_dev, data, pairing_info);
 	if (ret < 0)
 		drm_dbg_kms(display->drm, "Store pairing info failed. %d\n",
 			    ret);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1334,19 +1315,16 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->initiate_locality_check(arbiter->hdcp_dev, data, lc_init);
 	if (ret < 0)
 		drm_dbg_kms(display->drm, "Prepare lc_init failed. %d\n",
 			    ret);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1361,19 +1339,16 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->verify_lprime(arbiter->hdcp_dev, data, rx_lprime);
 	if (ret < 0)
 		drm_dbg_kms(display->drm, "Verify L_Prime failed. %d\n",
 			    ret);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1387,19 +1362,16 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->get_session_key(arbiter->hdcp_dev, data, ske_data);
 	if (ret < 0)
 		drm_dbg_kms(display->drm, "Get session key failed. %d\n",
 			    ret);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1416,13 +1388,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->repeater_check_flow_prepare_ack(arbiter->hdcp_dev,
 							    data,
@@ -1431,7 +1401,6 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(display->drm,
 			    "Verify rep topology failed. %d\n", ret);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1446,18 +1415,15 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->verify_mprime(arbiter->hdcp_dev, data, stream_ready);
 	if (ret < 0)
 		drm_dbg_kms(display->drm, "Verify mprime failed. %d\n", ret);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1470,19 +1436,16 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->enable_hdcp_authentication(arbiter->hdcp_dev, data);
 	if (ret < 0)
 		drm_dbg_kms(display->drm, "Enable hdcp auth failed. %d\n",
 			    ret);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1494,17 +1457,14 @@ static int hdcp2_close_session(struct intel_connector *connector)
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	arbiter = display->hdcp.arbiter;
+	guard(mutex)(&display->hdcp.hdcp_mutex);
 
-	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
+	if (!arbiter || !arbiter->ops)
 		return -EINVAL;
-	}
 
 	ret = arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
 					     &dig_port->hdcp_port_data);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -2149,8 +2109,9 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 	enum transcoder cpu_transcoder;
 	int ret = 0;
 
-	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	guard(mutex)(&hdcp->mutex);
+	guard(mutex)(&dig_port->hdcp_mutex);
+
 	cpu_transcoder = hdcp->cpu_transcoder;
 
 	/* hdcp2_check_link is expected only when HDCP2.2 is Enabled */
@@ -2221,8 +2182,6 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 	intel_hdcp_update_value(connector,
 				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
 out:
-	mutex_unlock(&dig_port->hdcp_mutex);
-	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
 
@@ -2252,10 +2211,11 @@ static int i915_hdcp_component_bind(struct device *drv_kdev,
 	struct intel_display *display = to_intel_display(drv_kdev);
 
 	drm_dbg(display->drm, "I915 HDCP comp bind\n");
-	mutex_lock(&display->hdcp.hdcp_mutex);
+
+	guard(mutex)(&display->hdcp.hdcp_mutex);
+
 	display->hdcp.arbiter = (struct i915_hdcp_arbiter *)data;
 	display->hdcp.arbiter->hdcp_dev = mei_kdev;
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return 0;
 }
@@ -2266,9 +2226,10 @@ static void i915_hdcp_component_unbind(struct device *drv_kdev,
 	struct intel_display *display = to_intel_display(drv_kdev);
 
 	drm_dbg(display->drm, "I915 HDCP comp unbind\n");
-	mutex_lock(&display->hdcp.hdcp_mutex);
+
+	guard(mutex)(&display->hdcp.hdcp_mutex);
+
 	display->hdcp.arbiter = NULL;
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 }
 
 static const struct component_ops i915_hdcp_ops = {
@@ -2358,11 +2319,12 @@ void intel_hdcp_component_init(struct intel_display *display)
 	if (!is_hdcp2_supported(display))
 		return;
 
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	drm_WARN_ON(display->drm, display->hdcp.comp_added);
+	scoped_guard(mutex, &display->hdcp.hdcp_mutex) {
+		drm_WARN_ON(display->drm, display->hdcp.comp_added);
+
+		display->hdcp.comp_added = true;
+	}
 
-	display->hdcp.comp_added = true;
-	mutex_unlock(&display->hdcp.hdcp_mutex);
 	if (intel_hdcp_gsc_cs_required(display))
 		ret = intel_hdcp_gsc_init(display);
 	else
@@ -2372,10 +2334,8 @@ void intel_hdcp_component_init(struct intel_display *display)
 	if (ret < 0) {
 		drm_dbg_kms(display->drm, "Failed at fw component add(%d)\n",
 			    ret);
-		mutex_lock(&display->hdcp.hdcp_mutex);
-		display->hdcp.comp_added = false;
-		mutex_unlock(&display->hdcp.hdcp_mutex);
-		return;
+		scoped_guard(mutex, &display->hdcp.hdcp_mutex)
+			display->hdcp.comp_added = false;
 	}
 }
 
@@ -2450,8 +2410,9 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 		return -ENODEV;
 	}
 
-	mutex_lock(&hdcp->mutex);
-	mutex_lock(&dig_port->hdcp_mutex);
+	guard(mutex)(&hdcp->mutex);
+	guard(mutex)(&dig_port->hdcp_mutex);
+
 	drm_WARN_ON(display->drm,
 		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
 	hdcp->content_type = (u8)conn_state->hdcp_content_type;
@@ -2499,8 +2460,6 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 					true);
 	}
 
-	mutex_unlock(&dig_port->hdcp_mutex);
-	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
 
@@ -2587,21 +2546,22 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 	 * change procedure.
 	 */
 	if (content_protection_type_changed) {
-		mutex_lock(&hdcp->mutex);
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
-		drm_connector_get(&connector->base);
-		if (!queue_work(i915->unordered_wq, &hdcp->prop_work))
-			drm_connector_put(&connector->base);
-		mutex_unlock(&hdcp->mutex);
+		scoped_guard(mutex, &hdcp->mutex) {
+			hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
+			drm_connector_get(&connector->base);
+			if (!queue_work(i915->unordered_wq, &hdcp->prop_work))
+				drm_connector_put(&connector->base);
+		}
 	}
 
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_DESIRED) {
-		mutex_lock(&hdcp->mutex);
-		/* Avoid enabling hdcp, if it already ENABLED */
-		desired_and_not_enabled =
-			hdcp->value != DRM_MODE_CONTENT_PROTECTION_ENABLED;
-		mutex_unlock(&hdcp->mutex);
+		scoped_guard(mutex, &hdcp->mutex) {
+			/* Avoid enabling hdcp, if it already ENABLED */
+			desired_and_not_enabled =
+				hdcp->value != DRM_MODE_CONTENT_PROTECTION_ENABLED;
+		}
+
 		/*
 		 * If HDCP already ENABLED and CP property is DESIRED, schedule
 		 * prop_work to update correct CP property to user space.
@@ -2629,14 +2589,12 @@ void intel_hdcp_cancel_works(struct intel_connector *connector)
 
 void intel_hdcp_component_fini(struct intel_display *display)
 {
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	if (!display->hdcp.comp_added) {
-		mutex_unlock(&display->hdcp.hdcp_mutex);
-		return;
-	}
+	scoped_guard(mutex, &display->hdcp.hdcp_mutex) {
+		if (!display->hdcp.comp_added)
+			return;
 
-	display->hdcp.comp_added = false;
-	mutex_unlock(&display->hdcp.hdcp_mutex);
+		display->hdcp.comp_added = false;
+	}
 
 	if (intel_hdcp_gsc_cs_required(display))
 		intel_hdcp_gsc_fini(display);
@@ -2675,9 +2633,8 @@ void intel_hdcp_cleanup(struct intel_connector *connector)
 	 */
 	drm_WARN_ON(connector->base.dev, work_pending(&hdcp->prop_work));
 
-	mutex_lock(&hdcp->mutex);
-	hdcp->shim = NULL;
-	mutex_unlock(&hdcp->mutex);
+	scoped_guard(mutex, &hdcp->mutex)
+		hdcp->shim = NULL;
 }
 
 void intel_hdcp_atomic_check(struct drm_connector *connector,
-- 
2.39.5

