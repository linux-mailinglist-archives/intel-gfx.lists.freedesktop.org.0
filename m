Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5AF65AD46
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 06:42:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4385710E190;
	Mon,  2 Jan 2023 05:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8293710E189
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 05:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672638131; x=1704174131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LUeLzf7gGj7gAB/pPLsSrylI8h4Lg0T0o7Bn7t7pYk8=;
 b=DzhYvC+65253BPMTfsKB72YwR19PNTY56lTMSk67yuwkH/TY9WKVjh8c
 crKHxp02syl5xXl9AO8+klumA+co8pGGUbcwgiUluXTNxR5jM2sviSLn9
 abFBUOZ7xEFxsuPJxmsX8FVDaDJK4u1bJMsVLgx94HP3ukMPLENp2iFKR
 hhj5EThF8OgDleJPrhcNgthpO8GgcqqboPLvXDQJt2ei7UYo6ZhVMNTnt
 56fy7BsiyWvbKkHZoAQDW4GihxIzpdxtVeFm56vMxv+JymeOKISy3HKg6
 NCyt9c7MfkzTuNu9ggy5nYgQDEM9/+zMZes/kU/y68/9yFPDy3mMFSReJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="301124342"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="301124342"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 21:42:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="828472824"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="828472824"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 01 Jan 2023 21:42:08 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Jan 2023 11:10:43 +0530
Message-Id: <20230102054047.124624-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230102054047.124624-1-suraj.kandpal@intel.com>
References: <20230102054047.124624-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/7] i915/hdcp: HDCP2.x Refactoring to
 agnostic hdcp
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As now we have more then one type of content protection
secrity firmware. Let change the i915_cp_fw_hdcp_interface.h
header naming convention to suit generic f/w type.
%s/MEI_/HDCP_
%s/mei_dev/hdcp_dev

As interface to CP FW can be either a non i915 component or
i915 intergral component, change structure name Accordingly.
%s/i915_hdcp_comp_master/i915_hdcp_master
%s/i915_hdcp_component_ops/i915_hdcp_ops

--v3
-Changing names to drop cp_fw to make naming more agnostic[Jani]

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 79 ++++++++++---------
 drivers/misc/mei/hdcp/mei_hdcp.c              | 56 ++++++-------
 3 files changed, 70 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 57ddce3ba02b..132e9134ba05 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -15,6 +15,7 @@
 
 #include <drm/drm_connector.h>
 #include <drm/drm_modeset_lock.h>
+#include <drm/i915_hdcp_interface.h>
 
 #include "intel_cdclk.h"
 #include "intel_display.h"
@@ -368,7 +369,7 @@ struct intel_display {
 	} gmbus;
 
 	struct {
-		struct i915_hdcp_comp_master *master;
+		struct i915_hdcp_master *master;
 		bool comp_added;
 
 		/* Mutex to protect the above hdcp component related values. */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 6406fd487ee5..a0f978e56879 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1143,7 +1143,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1154,7 +1154,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	ret = comp->ops->initiate_hdcp2_session(comp->mei_dev, data, ake_data);
+	ret = comp->ops->initiate_hdcp2_session(comp->hdcp_dev, data, ake_data);
 	if (ret)
 		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
 			    ret);
@@ -1173,7 +1173,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1184,7 +1184,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	ret = comp->ops->verify_receiver_cert_prepare_km(comp->mei_dev, data,
+	ret = comp->ops->verify_receiver_cert_prepare_km(comp->hdcp_dev, data,
 							 rx_cert, paired,
 							 ek_pub_km, msg_sz);
 	if (ret < 0)
@@ -1201,7 +1201,7 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1212,7 +1212,7 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	ret = comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
+	ret = comp->ops->verify_hprime(comp->hdcp_dev, data, rx_hprime);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n", ret);
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
@@ -1227,7 +1227,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1238,7 +1238,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	ret = comp->ops->store_pairing_info(comp->mei_dev, data, pairing_info);
+	ret = comp->ops->store_pairing_info(comp->hdcp_dev, data, pairing_info);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
 			    ret);
@@ -1254,7 +1254,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1265,7 +1265,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	ret = comp->ops->initiate_locality_check(comp->mei_dev, data, lc_init);
+	ret = comp->ops->initiate_locality_check(comp->hdcp_dev, data, lc_init);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
 			    ret);
@@ -1281,7 +1281,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1292,7 +1292,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	ret = comp->ops->verify_lprime(comp->mei_dev, data, rx_lprime);
+	ret = comp->ops->verify_lprime(comp->hdcp_dev, data, rx_lprime);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
 			    ret);
@@ -1307,7 +1307,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1318,7 +1318,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	ret = comp->ops->get_session_key(comp->mei_dev, data, ske_data);
+	ret = comp->ops->get_session_key(comp->hdcp_dev, data, ske_data);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
 			    ret);
@@ -1336,7 +1336,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1347,7 +1347,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	ret = comp->ops->repeater_check_flow_prepare_ack(comp->mei_dev, data,
+	ret = comp->ops->repeater_check_flow_prepare_ack(comp->hdcp_dev, data,
 							 rep_topology,
 							 rep_send_ack);
 	if (ret < 0)
@@ -1365,7 +1365,7 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1376,7 +1376,7 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	ret = comp->ops->verify_mprime(comp->mei_dev, data, stream_ready);
+	ret = comp->ops->verify_mprime(comp->hdcp_dev, data, stream_ready);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n", ret);
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
@@ -1389,7 +1389,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1400,7 +1400,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 		return -EINVAL;
 	}
 
-	ret = comp->ops->enable_hdcp_authentication(comp->mei_dev, data);
+	ret = comp->ops->enable_hdcp_authentication(comp->hdcp_dev, data);
 	if (ret < 0)
 		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
 			    ret);
@@ -1409,11 +1409,11 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	return ret;
 }
 
-static int hdcp2_close_mei_session(struct intel_connector *connector)
+static int hdcp2_close_session(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct i915_hdcp_comp_master *comp;
+	struct i915_hdcp_master *comp;
 	int ret;
 
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
@@ -1424,7 +1424,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
 		return -EINVAL;
 	}
 
-	ret = comp->ops->close_hdcp_session(comp->mei_dev,
+	ret = comp->ops->close_hdcp_session(comp->hdcp_dev,
 					     &dig_port->hdcp_port_data);
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
@@ -1433,7 +1433,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
 
 static int hdcp2_deauthenticate_port(struct intel_connector *connector)
 {
-	return hdcp2_close_mei_session(connector);
+	return hdcp2_close_session(connector);
 }
 
 /* Authentication flow starts from here */
@@ -2145,8 +2145,8 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
 
 	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	dev_priv->display.hdcp.master = (struct i915_hdcp_comp_master *)data;
-	dev_priv->display.hdcp.master->mei_dev = mei_kdev;
+	dev_priv->display.hdcp.master = (struct i915_hdcp_master *)data;
+	dev_priv->display.hdcp.master->hdcp_dev = mei_kdev;
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	return 0;
@@ -2168,25 +2168,25 @@ static const struct component_ops i915_hdcp_component_ops = {
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
 
@@ -2200,20 +2200,20 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
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
@@ -2350,7 +2350,8 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 12)
-		dig_port->hdcp_port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
+		dig_port->hdcp_port_data.hdcp_transcoder =
+			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
 
 	/*
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
index cbad27511899..0ff0bd07e385 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.c
+++ b/drivers/misc/mei/hdcp/mei_hdcp.c
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
@@ -735,13 +735,13 @@ static const struct i915_hdcp_component_ops mei_hdcp_ops = {
 static int mei_component_master_bind(struct device *dev)
 {
 	struct mei_cl_device *cldev = to_mei_cl_device(dev);
-	struct i915_hdcp_comp_master *comp_master =
+	struct i915_hdcp_master *comp_master =
 						mei_cldev_get_drvdata(cldev);
 	int ret;
 
 	dev_dbg(dev, "%s\n", __func__);
 	comp_master->ops = &mei_hdcp_ops;
-	comp_master->mei_dev = dev;
+	comp_master->hdcp_dev = dev;
 	ret = component_bind_all(dev, comp_master);
 	if (ret < 0)
 		return ret;
@@ -752,7 +752,7 @@ static int mei_component_master_bind(struct device *dev)
 static void mei_component_master_unbind(struct device *dev)
 {
 	struct mei_cl_device *cldev = to_mei_cl_device(dev);
-	struct i915_hdcp_comp_master *comp_master =
+	struct i915_hdcp_master *comp_master =
 						mei_cldev_get_drvdata(cldev);
 
 	dev_dbg(dev, "%s\n", __func__);
@@ -801,7 +801,7 @@ static int mei_hdcp_component_match(struct device *dev, int subcomponent,
 static int mei_hdcp_probe(struct mei_cl_device *cldev,
 			  const struct mei_cl_device_id *id)
 {
-	struct i915_hdcp_comp_master *comp_master;
+	struct i915_hdcp_master *comp_master;
 	struct component_match *master_match;
 	int ret;
 
@@ -846,7 +846,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev,
 
 static void mei_hdcp_remove(struct mei_cl_device *cldev)
 {
-	struct i915_hdcp_comp_master *comp_master =
+	struct i915_hdcp_master *comp_master =
 						mei_cldev_get_drvdata(cldev);
 	int ret;
 
-- 
2.25.1

