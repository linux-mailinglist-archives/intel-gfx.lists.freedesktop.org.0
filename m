Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1560C58FEF2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABD3B3D6B;
	Thu, 11 Aug 2022 15:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACBBEB3D57
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230812; x=1691766812;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RUn/rR12sbgFwX4wWbEtrHhprhG2lvtLcJkZr/qVP7E=;
 b=FgUyhoGjWXA2x7NrInDgHq2Un6aWo+Yxf7onovoPgx5Pu4n5QwQgaslF
 mmcg69T6T67zwuxGUPYhqlI2tIuBryS6K4/pewpVUCNvn5lvdIMya0TgW
 e1gdSe2xI0oZtgVyAwtAf17ueiyAHlecbWfZ3woZUPxPWrZBCn8t4rVOO
 3dLPDlzCho4rU3BsEi0ild7crVuawZz+MALTnP0V4q8KuOkkswNiKfb9W
 LtkQg094oq0EwBwcgE7PaMb08VDHrq0QekZ+h35CmTsrxtoDchsZU2VL8
 Qcr1yl/NApTRPb/XNZHD4fcO9NxHoKz7VbXhc7hTC2ftH3qBQWgxF/1Vl w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="353113943"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="353113943"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="638534234"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:27 +0300
Message-Id: <ca70c87d2e5995555376279fe82a9caeba8f65bf.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/39] drm/i915: move and group hdcp under
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   9 ++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 134 +++++++++---------
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   6 -
 4 files changed, 77 insertions(+), 74 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index c2a79e487ee9..8ac63352b27b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -19,6 +19,7 @@
 
 struct drm_i915_private;
 struct i915_audio_component;
+struct i915_hdcp_comp_master;
 struct intel_atomic_state;
 struct intel_audio_funcs;
 struct intel_cdclk_funcs;
@@ -193,6 +194,14 @@ struct intel_display {
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
index c5e9e86bb4cb..6f04dd69087e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -188,12 +188,12 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
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
@@ -1124,11 +1124,11 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
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
 
@@ -1136,7 +1136,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 	if (ret)
 		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1154,11 +1154,11 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
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
 
@@ -1168,7 +1168,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify rx_cert failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1182,18 +1182,18 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
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
@@ -1208,11 +1208,11 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
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
 
@@ -1220,7 +1220,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1235,11 +1235,11 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
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
 
@@ -1247,7 +1247,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1262,11 +1262,11 @@ hdcp2_verify_lprime(struct intel_connector *connector,
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
 
@@ -1274,7 +1274,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1288,11 +1288,11 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
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
 
@@ -1300,7 +1300,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1317,11 +1317,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
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
 
@@ -1331,7 +1331,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Verify rep topology failed. %d\n", ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1346,18 +1346,18 @@ hdcp2_verify_mprime(struct intel_connector *connector,
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
@@ -1370,11 +1370,11 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
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
 
@@ -1382,7 +1382,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->hdcp_comp_mutex);
+	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1394,17 +1394,17 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
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
@@ -2122,10 +2122,10 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
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
@@ -2136,9 +2136,9 @@ static void i915_hdcp_component_unbind(struct device *i915_kdev,
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
@@ -2229,19 +2229,19 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
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
@@ -2454,14 +2454,14 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 
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
index f6841c1e5f0f..8841ec398b07 100644
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
index 9ee08e80f0aa..a0af8190ed87 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -588,12 +588,6 @@ struct drm_i915_private {
 
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

