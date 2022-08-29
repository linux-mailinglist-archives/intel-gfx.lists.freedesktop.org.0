Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB525A4DA0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81FBA10F274;
	Mon, 29 Aug 2022 13:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9487110F1E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779119; x=1693315119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KsWmQ9T6wHCJYr86XHKLG6GDsev7Uy4dz1FMzk72l7A=;
 b=fsiWEvirRPNA3+PKrMP8MltrqgsrbQO12mHsp3FwVfX78eP3wZx3q5r+
 L0GyYDv21epmM6TfFkuiozKeU6HPAfmjjNaNshG+UA4OVL7aHQC3GkCdz
 tKgM9gpGo2F2J4Vdfld3zRQVXY5vH35z53koqo2cdNkZTI7GtyOUcqAzC
 Q7zB9miqvfAt5UoRKq6PSOjgsQune6j6B/zRlRR3rLX1F430YEwFwtaOI
 /feS6GGQ1N+23G3NoUtzYl+x9/S9GsyCmbeVY4Nl9ze7YIiqy2dorEG1C
 3POIW6V7QNjFRFTbtXX864gWFlztNQrc7eltFK4YlEMi7icGUCs3r3YNo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="281861625"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="281861625"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:18:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="640934039"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:18:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:18:08 +0300
Message-Id: <1083f5a58cce1507bd19bf7f98bf85e9351b741e.1661779055.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
References: <cover.1661779055.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/18] drm/i915: move and group hdcp under
 display.hdcp
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display hdcp related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   9 ++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 134 +++++++++---------
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   6 -
 4 files changed, 77 insertions(+), 74 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fbe329e90c1e..4a184eac57c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -19,6 +19,7 @@
 
 struct drm_i915_private;
 struct i915_audio_component;
+struct i915_hdcp_comp_master;
 struct intel_atomic_state;
 struct intel_audio_funcs;
 struct intel_cdclk_funcs;
@@ -231,6 +232,14 @@ struct intel_display {
 		wait_queue_head_t wait_queue;
 	} gmbus;
 
+	struct {
+		struct i915_hdcp_comp_master *master;
+		bool comp_added;
+
+		/* Mutex to protect the above hdcp component related values. */
+		struct mutex comp_mutex;
+	} hdcp;
+
 	struct {
 		u32 mmio_base;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 638495991c49..6406fd487ee5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -210,12 +210,12 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 		return false;
 
 	/* MEI interface is solid */
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	if (!dev_priv->hdcp_comp_added ||  !dev_priv->hdcp_master) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	if (!dev_priv->display.hdcp.comp_added ||  !dev_priv->display.hdcp.master) {
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return false;
 	}
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	/* Sink's capability for HDCP2.2 */
 	hdcp->shim->hdcp_2_2_capable(dig_port, &capable);
@@ -1146,11 +1146,11 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
@@ -1158,7 +1158,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 	if (ret)
 		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1176,11 +1176,11 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
@@ -1190,7 +1190,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify rx_cert failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1204,18 +1204,18 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n", ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1230,11 +1230,11 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
@@ -1242,7 +1242,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1257,11 +1257,11 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
@@ -1269,7 +1269,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1284,11 +1284,11 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
@@ -1296,7 +1296,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1310,11 +1310,11 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
@@ -1322,7 +1322,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1339,11 +1339,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
@@ -1353,7 +1353,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Verify rep topology failed. %d\n", ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1368,18 +1368,18 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = comp->ops->verify_mprime(comp->mei_dev, data, stream_ready);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n", ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1392,11 +1392,11 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
@@ -1404,7 +1404,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1416,17 +1416,17 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
 	struct i915_hdcp_comp_master *comp;
 	int ret;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	comp = dev_priv->hdcp_master;
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	comp = dev_priv->display.hdcp.master;
 
 	if (!comp || !comp->ops) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = comp->ops->close_hdcp_session(comp->mei_dev,
 					     &dig_port->hdcp_port_data);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -2144,10 +2144,10 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
 	struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);
 
 	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	dev_priv->hdcp_master = (struct i915_hdcp_comp_master *)data;
-	dev_priv->hdcp_master->mei_dev = mei_kdev;
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	dev_priv->display.hdcp.master = (struct i915_hdcp_comp_master *)data;
+	dev_priv->display.hdcp.master->mei_dev = mei_kdev;
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return 0;
 }
@@ -2158,9 +2158,9 @@ static void i915_hdcp_component_unbind(struct device *i915_kdev,
 	struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);
 
 	drm_dbg(&dev_priv->drm, "I915 HDCP comp unbind\n");
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	dev_priv->hdcp_master = NULL;
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	dev_priv->display.hdcp.master = NULL;
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 }
 
 static const struct component_ops i915_hdcp_component_ops = {
@@ -2251,19 +2251,19 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
 	if (!is_hdcp2_supported(dev_priv))
 		return;
 
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	drm_WARN_ON(&dev_priv->drm, dev_priv->hdcp_comp_added);
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	drm_WARN_ON(&dev_priv->drm, dev_priv->display.hdcp.comp_added);
 
-	dev_priv->hdcp_comp_added = true;
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	dev_priv->display.hdcp.comp_added = true;
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 	ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_component_ops,
 				  I915_COMPONENT_HDCP);
 	if (ret < 0) {
 		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
 			    ret);
-		mutex_lock(&dev_priv->hdcp_comp_mutex);
-		dev_priv->hdcp_comp_added = false;
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+		dev_priv->display.hdcp.comp_added = false;
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return;
 	}
 }
@@ -2476,14 +2476,14 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 
 void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
 {
-	mutex_lock(&dev_priv->hdcp_comp_mutex);
-	if (!dev_priv->hdcp_comp_added) {
-		mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
+	if (!dev_priv->display.hdcp.comp_added) {
+		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return;
 	}
 
-	dev_priv->hdcp_comp_added = false;
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	dev_priv->display.hdcp.comp_added = false;
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 053a7dab5506..e1f77b0973d7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -338,7 +338,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	mutex_init(&dev_priv->display.audio.mutex);
 	mutex_init(&dev_priv->display.wm.wm_mutex);
 	mutex_init(&dev_priv->display.pps.mutex);
-	mutex_init(&dev_priv->hdcp_comp_mutex);
+	mutex_init(&dev_priv->display.hdcp.comp_mutex);
 
 	i915_memcpy_init_early(dev_priv);
 	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 443ed6dac92a..51afb5e744d7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -538,12 +538,6 @@ struct drm_i915_private {
 
 	struct i915_drm_clients clients;
 
-	struct i915_hdcp_comp_master *hdcp_master;
-	bool hdcp_comp_added;
-
-	/* Mutex to protect the above hdcp component related values. */
-	struct mutex hdcp_comp_mutex;
-
 	/* The TTM device structure. */
 	struct ttm_device bdev;
 
-- 
2.34.1

