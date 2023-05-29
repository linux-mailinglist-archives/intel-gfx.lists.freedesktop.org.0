Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 935A8714858
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 13:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4E8C10E281;
	Mon, 29 May 2023 11:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E511C10E27C
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 11:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685358558; x=1716894558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R56dXX2iFZ+grYeaJn7ziQa0fE7T3xgQ6OnzlQ8fkhw=;
 b=HzkhBvGClpF2hsaF+gku0eNKFq2UIfZ5MhuhUHiixiQmRHm/MNeQpYPJ
 S75I1Ku9li1aDsPD7g/NA3rlchoIuTkWj7qmwTq+tWQDR0KSJvjL3AJzP
 lfCC0yUQqzQx5sto6rt4idYzaCT/HaI639x+1qyTDP9E3Fy9PuEkeOOKt
 WrI0RExFHKOzaXLCo+7b0A1Icpt1zb+lWjRPLDC9WqFMK5lxctyGdsZNP
 aG8eSdIq46sWiv2xnJAESpeuddldZwOc8tQ6caGRogyHzf0Gu20OLFuTL
 JZYj0FdRuDKbGgkOAk2eelbdmmOz1KgmiU8x/kPsHYYSA0cxvpBEI0jG0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="382936217"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="382936217"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="709233411"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="709233411"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 29 May 2023 04:09:16 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 16:37:40 +0530
Message-Id: <20230529110740.1522985-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230529110740.1522985-1-suraj.kandpal@intel.com>
References: <20230529110740.1522985-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/3] drm/i915/hdcp: Rename comp_mutex to
 hdcp_mutex
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename comp_mutex to hdcp_mutex as it does not just
protect component related variables which was a terminology
used when hdcp was to be binded as a mei component from MTL
we use gsc cs which does not use the component binding path
for HDCP.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 94 +++++++++----------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  4 +-
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 4 files changed, 52 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 23957d80efe8..2209811eb29e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -404,8 +404,8 @@ struct intel_display {
 		 * this is only populated post Meteorlake
 		 */
 		struct intel_hdcp_gsc_message *hdcp_message;
-		/* Mutex to protect the above hdcp component related values. */
-		struct mutex comp_mutex;
+		/* Mutex to protect the above hdcp related values. */
+		struct mutex hdcp_mutex;
 	} hdcp;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index bf28c6f1d748..17542c28dfd5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -182,12 +182,12 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	}
 
 	/* MEI/GSC interface is solid depending on which is used */
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.arbiter) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return false;
 	}
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	/* Sink's capability for HDCP2.2 */
 	hdcp->shim->hdcp_2_2_capable(dig_port, &capable);
@@ -1117,11 +1117,11 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
@@ -1129,7 +1129,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 	if (ret)
 		drm_dbg_kms(&i915->drm, "Prepare_ake_init failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1147,11 +1147,11 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
@@ -1161,7 +1161,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&i915->drm, "Verify rx_cert failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1175,18 +1175,18 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->verify_hprime(arbiter->hdcp_dev, data, rx_hprime);
 	if (ret < 0)
 		drm_dbg_kms(&i915->drm, "Verify hprime failed. %d\n", ret);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1201,11 +1201,11 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
@@ -1213,7 +1213,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&i915->drm, "Store pairing info failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1228,11 +1228,11 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
@@ -1240,7 +1240,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&i915->drm, "Prepare lc_init failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1255,11 +1255,11 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
@@ -1267,7 +1267,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&i915->drm, "Verify L_Prime failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1281,11 +1281,11 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
@@ -1293,7 +1293,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&i915->drm, "Get session key failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1310,11 +1310,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
@@ -1325,7 +1325,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&i915->drm,
 			    "Verify rep topology failed. %d\n", ret);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1340,18 +1340,18 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->verify_mprime(arbiter->hdcp_dev, data, stream_ready);
 	if (ret < 0)
 		drm_dbg_kms(&i915->drm, "Verify mprime failed. %d\n", ret);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1364,11 +1364,11 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
@@ -1376,7 +1376,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	if (ret < 0)
 		drm_dbg_kms(&i915->drm, "Enable hdcp auth failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1388,17 +1388,17 @@ static int hdcp2_close_session(struct intel_connector *connector)
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
 					     &dig_port->hdcp_port_data);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -2108,10 +2108,10 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 
 	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	i915->display.hdcp.arbiter = (struct i915_hdcp_arbiter *)data;
 	i915->display.hdcp.arbiter->hdcp_dev = mei_kdev;
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return 0;
 }
@@ -2122,9 +2122,9 @@ static void i915_hdcp_component_unbind(struct device *i915_kdev,
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 
 	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	i915->display.hdcp.arbiter = NULL;
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 }
 
 static const struct component_ops i915_hdcp_ops = {
@@ -2214,11 +2214,11 @@ void intel_hdcp_component_init(struct drm_i915_private *i915)
 	if (!is_hdcp2_supported(i915))
 		return;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	drm_WARN_ON(&i915->drm, i915->display.hdcp.comp_added);
 
 	i915->display.hdcp.comp_added = true;
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 	if (intel_hdcp_gsc_cs_required(i915))
 		ret = intel_hdcp_gsc_init(i915);
 	else
@@ -2228,9 +2228,9 @@ void intel_hdcp_component_init(struct drm_i915_private *i915)
 	if (ret < 0) {
 		drm_dbg_kms(&i915->drm, "Failed at fw component add(%d)\n",
 			    ret);
-		mutex_lock(&i915->display.hdcp.comp_mutex);
+		mutex_lock(&i915->display.hdcp.hdcp_mutex);
 		i915->display.hdcp.comp_added = false;
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return;
 	}
 }
@@ -2500,14 +2500,14 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 
 void intel_hdcp_component_fini(struct drm_i915_private *i915)
 {
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	if (!i915->display.hdcp.comp_added) {
-		mutex_unlock(&i915->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 		return;
 	}
 
 	i915->display.hdcp.comp_added = false;
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	if (intel_hdcp_gsc_cs_required(i915))
 		intel_hdcp_gsc_fini(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 62e7bf0e1035..72573ce1d0e9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -704,12 +704,12 @@ int intel_hdcp_gsc_init(struct drm_i915_private *i915)
 	if (!data)
 		return -ENOMEM;
 
-	mutex_lock(&i915->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
 	i915->display.hdcp.arbiter = data;
 	i915->display.hdcp.arbiter->hdcp_dev = i915->drm.dev;
 	i915->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
 	ret = intel_hdcp_gsc_hdcp2_init(i915);
-	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 37532e55327d..c3ab5c32d492 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -222,7 +222,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	mutex_init(&dev_priv->display.audio.mutex);
 	mutex_init(&dev_priv->display.wm.wm_mutex);
 	mutex_init(&dev_priv->display.pps.mutex);
-	mutex_init(&dev_priv->display.hdcp.comp_mutex);
+	mutex_init(&dev_priv->display.hdcp.hdcp_mutex);
 
 	i915_memcpy_init_early(dev_priv);
 	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
-- 
2.25.1

