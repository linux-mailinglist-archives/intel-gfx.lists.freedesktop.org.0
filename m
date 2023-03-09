Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5876B1D0F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 08:55:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674C310E7AD;
	Thu,  9 Mar 2023 07:55:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB1E10E7A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 07:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678348526; x=1709884526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hUzWJFjiZtoggGHCw2OPg3Lqk15Ka++5mN3Di4NA68c=;
 b=UKqKVBBb2DmXGOeemU/Npti6N31oLVrv+tLJkXk7a+DDZbcNJSWTLQ3h
 hn7OUnCrKWObUTj028yZNqkiyewkO2KZjAuRyh5cj4zxpvAxSKcfeRVwg
 QkMizUCGwemAXWTEsYBBrUTlMhYd2lE00BynJmt2uggBtvC99C0qojIZG
 x090vpdOWmGQauTbFxTx3QCCGm6sBJO2mLVRAVUKQYKBq3FFd1EqEZYle
 tQU+qhCqZrRpySAb7NsWL3XCPkfXd7ZF2aAtbiznnA27m8m9X7NiEZeW2
 40rhW5IfpW2a6RQxzgZT8Ux0OQsIKJ0iRWFXH8Jz+0/xEYGXWtywEgbEm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="398960446"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="398960446"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 23:55:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="707510429"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="707510429"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 08 Mar 2023 23:55:23 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Mar 2023 13:24:19 +0530
Message-Id: <20230309075423.409402-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230309075423.409402-1-suraj.kandpal@intel.com>
References: <20230309075423.409402-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 2/6] drm/i915/hdcp: Use generic names for
 HDCP helpers and structs
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anshuman Gupta <anshuman.gupta@intel.com>

pre MTL we interact with mei interface to talk to
firmware and enable CP but going forward we will talk to gsc cs
because of which we are making all names for HDCP helpers and
structures generic as either mei or gsc cs maybe used.

Change the include/drm/i915_mei_hdcp_interface.h to
include/drm/i915_hdcp_interface.h

Change the i915_hdcp_interface.h header naming convention to
suit generic f/w type.
%s/MEI_/HDCP_
%s/mei_dev/hdcp_dev

Change structure name Accordingly.
%s/i915_hdcp_comp_master/i915_hdcp_master
%s/i915_hdcp_component_ops/i915_hdcp_ops

--v6
-make each patch build individually [Jani]

--v8
-change ME FW to ME/GSC FW [Ankit]
-fix formatting issue [Ankit]

--v9
-fix commit message and header [Uma]

--v10
-rename comp variable [Uma]

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Acked-by: Tomas Winkler <tomas.winkler@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   2 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 130 +++++++++---------
 drivers/misc/mei/hdcp/mei_hdcp.c              |  61 ++++----
 ...hdcp_interface.h => i915_hdcp_interface.h} |  94 ++++++-------
 5 files changed, 144 insertions(+), 145 deletions(-)
 rename include/drm/{i915_mei_hdcp_interface.h => i915_hdcp_interface.h} (71%)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fdab7bb93a7d..d7cb649be915 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -384,7 +384,7 @@ struct intel_display {
 	} gmbus;
 
 	struct {
-		struct i915_hdcp_comp_master *master;
+		struct i915_hdcp_master *master;
 		bool comp_added;
 
 		/* Mutex to protect the above hdcp component related values. */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c32bfba06ca1..cc98a7ad548e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -43,7 +43,7 @@
 #include <drm/drm_rect.h>
 #include <drm/drm_vblank.h>
 #include <drm/drm_vblank_work.h>
-#include <drm/i915_mei_hdcp_interface.h>
+#include <drm/i915_hdcp_interface.h>
 #include <media/cec-notifier.h>
 
 #include "i915_vma.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2984d2810e42..1ae0882dc1d4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1142,18 +1142,18 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->initiate_hdcp2_session(comp->mei_dev, data, ake_data);
+	ret = arbiter->ops->initiate_hdcp2_session(arbiter->hdcp_dev, data, ake_data);
 	if (ret)
 		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
 			    ret);
@@ -1172,18 +1172,18 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->verify_receiver_cert_prepare_km(comp->mei_dev, data,
+	ret = arbiter->ops->verify_receiver_cert_prepare_km(arbiter->hdcp_dev, data,
 							 rx_cert, paired,
 							 ek_pub_km, msg_sz);
 	if (ret < 0)
@@ -1200,18 +1200,18 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
+	ret = arbiter->ops->verify_hprime(arbiter->hdcp_dev, data, rx_hprime);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n", ret);
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
@@ -1226,18 +1226,18 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->store_pairing_info(comp->mei_dev, data, pairing_info);
+	ret = arbiter->ops->store_pairing_info(arbiter->hdcp_dev, data, pairing_info);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
 			    ret);
@@ -1253,18 +1253,18 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->initiate_locality_check(comp->mei_dev, data, lc_init);
+	ret = arbiter->ops->initiate_locality_check(arbiter->hdcp_dev, data, lc_init);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
 			    ret);
@@ -1280,18 +1280,18 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->verify_lprime(comp->mei_dev, data, rx_lprime);
+	ret = arbiter->ops->verify_lprime(arbiter->hdcp_dev, data, rx_lprime);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
 			    ret);
@@ -1306,18 +1306,18 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->get_session_key(comp->mei_dev, data, ske_data);
+	ret = arbiter->ops->get_session_key(arbiter->hdcp_dev, data, ske_data);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
 			    ret);
@@ -1335,20 +1335,21 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->repeater_check_flow_prepare_ack(comp->mei_dev, data,
-							 rep_topology,
-							 rep_send_ack);
+	ret = arbiter->ops->repeater_check_flow_prepare_ack(arbiter->hdcp_dev,
+							    data,
+							    rep_topology,
+							    rep_send_ack);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Verify rep topology failed. %d\n", ret);
@@ -1364,18 +1365,18 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->verify_mprime(comp->mei_dev, data, stream_ready);
+	ret = arbiter->ops->verify_mprime(arbiter->hdcp_dev, data, stream_ready);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n", ret);
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
@@ -1388,18 +1389,18 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->enable_hdcp_authentication(comp->mei_dev, data);
+	ret = arbiter->ops->enable_hdcp_authentication(arbiter->hdcp_dev, data);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
 			    ret);
@@ -1412,18 +1413,18 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *arbiter;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	comp = dev_priv->display.hdcp.master;
+	arbiter = dev_priv->display.hdcp.master;
 
-	if (!comp || !comp->ops) {
+	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
-	ret = comp->ops->close_hdcp_session(comp->mei_dev,
+	ret = arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
 					     &dig_port->hdcp_port_data);
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
@@ -2142,8 +2143,8 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
 
 	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	dev_priv->display.hdcp.master = (struct i915_hdcp_comp_master *)data;
-	dev_priv->display.hdcp.master->mei_dev = mei_kdev;
+	dev_priv->display.hdcp.master = (struct i915_hdcp_master *)data;
+	dev_priv->display.hdcp.master->hdcp_dev = mei_kdev;
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return 0;
@@ -2160,30 +2161,30 @@ static void i915_hdcp_component_unbind(struct device *i915_kdev,
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 }
 
-static const struct component_ops i915_hdcp_component_ops = {
+static const struct component_ops i915_hdcp_ops = {
 	.bind   = i915_hdcp_component_bind,
 	.unbind = i915_hdcp_component_unbind,
 };
 
-static enum mei_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
+static enum hdcp_ddi intel_get_hdcp_ddi_index(enum port port)
 {
 	switch (port) {
 	case PORT_A:
-		return MEI_DDI_A;
+		return HDCP_DDI_A;
 	case PORT_B ... PORT_F:
-		return (enum mei_fw_ddi)port;
+		return (enum hdcp_ddi)port;
 	default:
-		return MEI_DDI_INVALID_PORT;
+		return HDCP_DDI_INVALID_PORT;
 	}
 }
 
-static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
+static enum hdcp_transcoder intel_get_hdcp_transcoder(enum transcoder cpu_transcoder)
 {
 	switch (cpu_transcoder) {
 	case TRANSCODER_A ... TRANSCODER_D:
-		return (enum mei_fw_tc)(cpu_transcoder | 0x10);
+		return (enum hdcp_transcoder)(cpu_transcoder | 0x10);
 	default: /* eDP, DSI TRANSCODERS are non HDCP capable */
-		return MEI_INVALID_TRANSCODER;
+		return HDCP_INVALID_TRANSCODER;
 	}
 }
 
@@ -2197,20 +2198,20 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 	enum port port = dig_port->base.port;
 
 	if (DISPLAY_VER(dev_priv) < 12)
-		data->fw_ddi = intel_get_mei_fw_ddi_index(port);
+		data->hdcp_ddi = intel_get_hdcp_ddi_index(port);
 	else
 		/*
-		 * As per ME FW API expectation, for GEN 12+, fw_ddi is filled
+		 * As per ME FW API expectation, for GEN 12+, hdcp_ddi is filled
 		 * with zero(INVALID PORT index).
 		 */
-		data->fw_ddi = MEI_DDI_INVALID_PORT;
+		data->hdcp_ddi = HDCP_DDI_INVALID_PORT;
 
 	/*
-	 * As associated transcoder is set and modified at modeset, here fw_tc
+	 * As associated transcoder is set and modified at modeset, here hdcp_transcoder
 	 * is initialized to zero (invalid transcoder index). This will be
 	 * retained for <Gen12 forever.
 	 */
-	data->fw_tc = MEI_INVALID_TRANSCODER;
+	data->hdcp_transcoder = HDCP_INVALID_TRANSCODER;
 
 	data->port_type = (u8)HDCP_PORT_TYPE_INTEGRATED;
 	data->protocol = (u8)shim->protocol;
@@ -2253,7 +2254,7 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
 
 	dev_priv->display.hdcp.comp_added = true;
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
-	ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_component_ops,
+	ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
 				  I915_COMPONENT_HDCP);
 	if (ret < 0) {
 		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
@@ -2347,7 +2348,8 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 12)
-		dig_port->hdcp_port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
+		dig_port->hdcp_port_data.hdcp_transcoder =
+			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
 
 	/*
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
@@ -2482,7 +2484,7 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
 	dev_priv->display.hdcp.comp_added = false;
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
-	component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
+	component_del(dev_priv->drm.dev, &i915_hdcp_ops);
 }
 
 void intel_hdcp_cleanup(struct intel_connector *connector)
diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
index e0dcd5c114db..9e85bf916091 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.c
+++ b/drivers/misc/mei/hdcp/mei_hdcp.c
@@ -23,7 +23,7 @@
 #include <linux/component.h>
 #include <drm/drm_connector.h>
 #include <drm/i915_component.h>
-#include <drm/i915_mei_hdcp_interface.h>
+#include <drm/i915_hdcp_interface.h>
 
 #include "mei_hdcp.h"
 
@@ -57,8 +57,8 @@ mei_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
 				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
 
 	session_init_in.port.integrated_port_type = data->port_type;
-	session_init_in.port.physical_port = (u8)data->fw_ddi;
-	session_init_in.port.attached_transcoder = (u8)data->fw_tc;
+	session_init_in.port.physical_port = (u8)data->hdcp_ddi;
+	session_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 	session_init_in.protocol = data->protocol;
 
 	byte = mei_cldev_send(cldev, (u8 *)&session_init_in,
@@ -127,8 +127,8 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
 				WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
 
 	verify_rxcert_in.port.integrated_port_type = data->port_type;
-	verify_rxcert_in.port.physical_port = (u8)data->fw_ddi;
-	verify_rxcert_in.port.attached_transcoder = (u8)data->fw_tc;
+	verify_rxcert_in.port.physical_port = (u8)data->hdcp_ddi;
+	verify_rxcert_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
 	verify_rxcert_in.cert_rx = rx_cert->cert_rx;
 	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
@@ -198,8 +198,8 @@ mei_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 	send_hprime_in.header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
 
 	send_hprime_in.port.integrated_port_type = data->port_type;
-	send_hprime_in.port.physical_port = (u8)data->fw_ddi;
-	send_hprime_in.port.attached_transcoder = (u8)data->fw_tc;
+	send_hprime_in.port.physical_port = (u8)data->hdcp_ddi;
+	send_hprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
 	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
 	       HDCP_2_2_H_PRIME_LEN);
@@ -256,8 +256,8 @@ mei_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
 					WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
 
 	pairing_info_in.port.integrated_port_type = data->port_type;
-	pairing_info_in.port.physical_port = (u8)data->fw_ddi;
-	pairing_info_in.port.attached_transcoder = (u8)data->fw_tc;
+	pairing_info_in.port.physical_port = (u8)data->hdcp_ddi;
+	pairing_info_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
 	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
 	       HDCP_2_2_E_KH_KM_LEN);
@@ -315,8 +315,8 @@ mei_hdcp_initiate_locality_check(struct device *dev,
 	lc_init_in.header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
 
 	lc_init_in.port.integrated_port_type = data->port_type;
-	lc_init_in.port.physical_port = (u8)data->fw_ddi;
-	lc_init_in.port.attached_transcoder = (u8)data->fw_tc;
+	lc_init_in.port.physical_port = (u8)data->hdcp_ddi;
+	lc_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
 	byte = mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init_in));
 	if (byte < 0) {
@@ -371,8 +371,8 @@ mei_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 					WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
 
 	verify_lprime_in.port.integrated_port_type = data->port_type;
-	verify_lprime_in.port.physical_port = (u8)data->fw_ddi;
-	verify_lprime_in.port.attached_transcoder = (u8)data->fw_tc;
+	verify_lprime_in.port.physical_port = (u8)data->hdcp_ddi;
+	verify_lprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
 	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
 	       HDCP_2_2_L_PRIME_LEN);
@@ -429,8 +429,8 @@ static int mei_hdcp_get_session_key(struct device *dev,
 	get_skey_in.header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
 
 	get_skey_in.port.integrated_port_type = data->port_type;
-	get_skey_in.port.physical_port = (u8)data->fw_ddi;
-	get_skey_in.port.attached_transcoder = (u8)data->fw_tc;
+	get_skey_in.port.physical_port = (u8)data->hdcp_ddi;
+	get_skey_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
 	byte = mei_cldev_send(cldev, (u8 *)&get_skey_in, sizeof(get_skey_in));
 	if (byte < 0) {
@@ -494,8 +494,8 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
 					WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
 
 	verify_repeater_in.port.integrated_port_type = data->port_type;
-	verify_repeater_in.port.physical_port = (u8)data->fw_ddi;
-	verify_repeater_in.port.attached_transcoder = (u8)data->fw_tc;
+	verify_repeater_in.port.physical_port = (u8)data->hdcp_ddi;
+	verify_repeater_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
 	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
 	       HDCP_2_2_RXINFO_LEN);
@@ -572,8 +572,8 @@ static int mei_hdcp_verify_mprime(struct device *dev,
 	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
 
 	verify_mprime_in->port.integrated_port_type = data->port_type;
-	verify_mprime_in->port.physical_port = (u8)data->fw_ddi;
-	verify_mprime_in->port.attached_transcoder = (u8)data->fw_tc;
+	verify_mprime_in->port.physical_port = (u8)data->hdcp_ddi;
+	verify_mprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
 
 	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime, HDCP_2_2_MPRIME_LEN);
 	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data->seq_num_m);
@@ -634,8 +634,8 @@ static int mei_hdcp_enable_authentication(struct device *dev,
 	enable_auth_in.header.buffer_len = WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
 
 	enable_auth_in.port.integrated_port_type = data->port_type;
-	enable_auth_in.port.physical_port = (u8)data->fw_ddi;
-	enable_auth_in.port.attached_transcoder = (u8)data->fw_tc;
+	enable_auth_in.port.physical_port = (u8)data->hdcp_ddi;
+	enable_auth_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 	enable_auth_in.stream_type = data->streams[0].stream_type;
 
 	byte = mei_cldev_send(cldev, (u8 *)&enable_auth_in,
@@ -689,8 +689,8 @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
 				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
 
 	session_close_in.port.integrated_port_type = data->port_type;
-	session_close_in.port.physical_port = (u8)data->fw_ddi;
-	session_close_in.port.attached_transcoder = (u8)data->fw_tc;
+	session_close_in.port.physical_port = (u8)data->hdcp_ddi;
+	session_close_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
 	byte = mei_cldev_send(cldev, (u8 *)&session_close_in,
 			      sizeof(session_close_in));
@@ -715,7 +715,7 @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
 	return 0;
 }
 
-static const struct i915_hdcp_component_ops mei_hdcp_ops = {
+static const struct i915_hdcp_ops mei_hdcp_ops = {
 	.owner = THIS_MODULE,
 	.initiate_hdcp2_session = mei_hdcp_initiate_session,
 	.verify_receiver_cert_prepare_km =
@@ -735,13 +735,12 @@ static const struct i915_hdcp_component_ops mei_hdcp_ops = {
 static int mei_component_master_bind(struct device *dev)
 {
 	struct mei_cl_device *cldev = to_mei_cl_device(dev);
-	struct i915_hdcp_comp_master *comp_master =
-						mei_cldev_get_drvdata(cldev);
+	struct i915_hdcp_master *comp_master = mei_cldev_get_drvdata(cldev);
 	int ret;
 
 	dev_dbg(dev, "%s\n", __func__);
 	comp_master->ops = &mei_hdcp_ops;
-	comp_master->mei_dev = dev;
+	comp_master->hdcp_dev = dev;
 	ret = component_bind_all(dev, comp_master);
 	if (ret < 0)
 		return ret;
@@ -752,8 +751,7 @@ static int mei_component_master_bind(struct device *dev)
 static void mei_component_master_unbind(struct device *dev)
 {
 	struct mei_cl_device *cldev = to_mei_cl_device(dev);
-	struct i915_hdcp_comp_master *comp_master =
-						mei_cldev_get_drvdata(cldev);
+	struct i915_hdcp_master *comp_master = mei_cldev_get_drvdata(cldev);
 
 	dev_dbg(dev, "%s\n", __func__);
 	component_unbind_all(dev, comp_master);
@@ -801,7 +799,7 @@ static int mei_hdcp_component_match(struct device *dev, int subcomponent,
 static int mei_hdcp_probe(struct mei_cl_device *cldev,
 			  const struct mei_cl_device_id *id)
 {
-	struct i915_hdcp_comp_master *comp_master;
+	struct i915_hdcp_master *comp_master;
 	struct component_match *master_match;
 	int ret;
 
@@ -846,8 +844,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev,
 
 static void mei_hdcp_remove(struct mei_cl_device *cldev)
 {
-	struct i915_hdcp_comp_master *comp_master =
-						mei_cldev_get_drvdata(cldev);
+	struct i915_hdcp_master *comp_master = mei_cldev_get_drvdata(cldev);
 	int ret;
 
 	component_master_del(&cldev->dev, &mei_component_master_ops);
diff --git a/include/drm/i915_mei_hdcp_interface.h b/include/drm/i915_hdcp_interface.h
similarity index 71%
rename from include/drm/i915_mei_hdcp_interface.h
rename to include/drm/i915_hdcp_interface.h
index f441cbcd95a4..0bf5c385050b 100644
--- a/include/drm/i915_mei_hdcp_interface.h
+++ b/include/drm/i915_hdcp_interface.h
@@ -6,15 +6,15 @@
  * Ramalingam C <ramalingam.c@intel.com>
  */
 
-#ifndef _I915_MEI_HDCP_INTERFACE_H_
-#define _I915_MEI_HDCP_INTERFACE_H_
+#ifndef _I915_HDCP_INTERFACE_H_
+#define _I915_HDCP_INTERFACE_H_
 
 #include <linux/mutex.h>
 #include <linux/device.h>
 #include <drm/display/drm_hdcp.h>
 
 /**
- * enum hdcp_port_type - HDCP port implementation type defined by ME FW
+ * enum hdcp_port_type - HDCP port implementation type defined by ME/GSC FW
  * @HDCP_PORT_TYPE_INVALID: Invalid hdcp port type
  * @HDCP_PORT_TYPE_INTEGRATED: In-Host HDCP2.x port
  * @HDCP_PORT_TYPE_LSPCON: HDCP2.2 discrete wired Tx port with LSPCON
@@ -41,46 +41,46 @@ enum hdcp_wired_protocol {
 	HDCP_PROTOCOL_DP
 };
 
-enum mei_fw_ddi {
-	MEI_DDI_INVALID_PORT = 0x0,
+enum hdcp_ddi {
+	HDCP_DDI_INVALID_PORT = 0x0,
 
-	MEI_DDI_B = 1,
-	MEI_DDI_C,
-	MEI_DDI_D,
-	MEI_DDI_E,
-	MEI_DDI_F,
-	MEI_DDI_A = 7,
-	MEI_DDI_RANGE_END = MEI_DDI_A,
+	HDCP_DDI_B = 1,
+	HDCP_DDI_C,
+	HDCP_DDI_D,
+	HDCP_DDI_E,
+	HDCP_DDI_F,
+	HDCP_DDI_A = 7,
+	HDCP_DDI_RANGE_END = HDCP_DDI_A,
 };
 
 /**
- * enum mei_fw_tc - ME Firmware defined index for transcoders
- * @MEI_INVALID_TRANSCODER: Index for Invalid transcoder
- * @MEI_TRANSCODER_EDP: Index for EDP Transcoder
- * @MEI_TRANSCODER_DSI0: Index for DSI0 Transcoder
- * @MEI_TRANSCODER_DSI1: Index for DSI1 Transcoder
- * @MEI_TRANSCODER_A: Index for Transcoder A
- * @MEI_TRANSCODER_B: Index for Transcoder B
- * @MEI_TRANSCODER_C: Index for Transcoder C
- * @MEI_TRANSCODER_D: Index for Transcoder D
+ * enum hdcp_tc - ME/GSC Firmware defined index for transcoders
+ * @HDCP_INVALID_TRANSCODER: Index for Invalid transcoder
+ * @HDCP_TRANSCODER_EDP: Index for EDP Transcoder
+ * @HDCP_TRANSCODER_DSI0: Index for DSI0 Transcoder
+ * @HDCP_TRANSCODER_DSI1: Index for DSI1 Transcoder
+ * @HDCP_TRANSCODER_A: Index for Transcoder A
+ * @HDCP_TRANSCODER_B: Index for Transcoder B
+ * @HDCP_TRANSCODER_C: Index for Transcoder C
+ * @HDCP_TRANSCODER_D: Index for Transcoder D
  */
-enum mei_fw_tc {
-	MEI_INVALID_TRANSCODER = 0x00,
-	MEI_TRANSCODER_EDP,
-	MEI_TRANSCODER_DSI0,
-	MEI_TRANSCODER_DSI1,
-	MEI_TRANSCODER_A = 0x10,
-	MEI_TRANSCODER_B,
-	MEI_TRANSCODER_C,
-	MEI_TRANSCODER_D
+enum hdcp_transcoder {
+	HDCP_INVALID_TRANSCODER = 0x00,
+	HDCP_TRANSCODER_EDP,
+	HDCP_TRANSCODER_DSI0,
+	HDCP_TRANSCODER_DSI1,
+	HDCP_TRANSCODER_A = 0x10,
+	HDCP_TRANSCODER_B,
+	HDCP_TRANSCODER_C,
+	HDCP_TRANSCODER_D
 };
 
 /**
  * struct hdcp_port_data - intel specific HDCP port data
- * @fw_ddi: ddi index as per ME FW
- * @fw_tc: transcoder index as per ME FW
- * @port_type: HDCP port type as per ME FW classification
- * @protocol: HDCP adaptation as per ME FW
+ * @hdcp_ddi: ddi index as per ME/GSC FW
+ * @hdcp_transcoder: transcoder index as per ME/GSC FW
+ * @port_type: HDCP port type as per ME/GSC FW classification
+ * @protocol: HDCP adaptation as per ME/GSC FW
  * @k: No of streams transmitted on a port. Only on DP MST this is != 1
  * @seq_num_m: Count of RepeaterAuth_Stream_Manage msg propagated.
  *	       Initialized to 0 on AKE_INIT. Incremented after every successful
@@ -90,8 +90,8 @@ enum mei_fw_tc {
  *	     streams
  */
 struct hdcp_port_data {
-	enum mei_fw_ddi fw_ddi;
-	enum mei_fw_tc fw_tc;
+	enum hdcp_ddi hdcp_ddi;
+	enum hdcp_transcoder hdcp_transcoder;
 	u8 port_type;
 	u8 protocol;
 	u16 k;
@@ -100,7 +100,7 @@ struct hdcp_port_data {
 };
 
 /**
- * struct i915_hdcp_component_ops- ops for HDCP2.2 services.
+ * struct i915_hdcp_ops- ops for HDCP2.2 services.
  * @owner: Module providing the ops
  * @initiate_hdcp2_session: Initiate a Wired HDCP2.2 Tx Session.
  *			    And Prepare AKE_Init.
@@ -119,9 +119,9 @@ struct hdcp_port_data {
  * @close_hdcp_session: Close the Wired HDCP Tx session per port.
  *			This also disables the authenticated state of the port.
  */
-struct i915_hdcp_component_ops {
+struct i915_hdcp_ops {
 	/**
-	 * @owner: mei_hdcp module
+	 * @owner: hdcp module
 	 */
 	struct module *owner;
 
@@ -168,17 +168,17 @@ struct i915_hdcp_component_ops {
 };
 
 /**
- * struct i915_hdcp_component_master - Used for communication between i915
- * and mei_hdcp drivers for the HDCP2.2 services
- * @mei_dev: device that provide the HDCP2.2 service from MEI Bus.
- * @hdcp_ops: Ops implemented by mei_hdcp driver, used by i915 driver.
+ * struct i915_hdcp_master - Used for communication between i915
+ * and hdcp drivers for the HDCP2.2 services
+ * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
+ * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used by i915 driver.
  */
-struct i915_hdcp_comp_master {
-	struct device *mei_dev;
-	const struct i915_hdcp_component_ops *ops;
+struct i915_hdcp_master {
+	struct device *hdcp_dev;
+	const struct i915_hdcp_ops *ops;
 
 	/* To protect the above members. */
 	struct mutex mutex;
 };
 
-#endif /* _I915_MEI_HDCP_INTERFACE_H_ */
+#endif /* _I915_HDCP_INTERFACE_H_ */
-- 
2.25.1

