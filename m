Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D468B263FBA
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 10:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B2266E2EA;
	Thu, 10 Sep 2020 08:29:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B05426E2BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 08:29:01 +0000 (UTC)
IronPort-SDR: /SsSAPX2Jtqw3nyQUlgydmEvJZ/fLdkQWJGM+2xRUifhCVfalHcMWS9t2gtPmd7Jm0SiQgtu1L
 ArJ+H5EkEpVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="157772104"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="157772104"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:29:01 -0700
IronPort-SDR: 3+xlAOfIa1euCUW3bSI9TPgWqE/zH9FjSu9pTTgmXrIjyN1smdEaIpUpYOCf2so9uJFXK+aGUL
 II6kXI6e7lkA==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="505043801"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:28:59 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Sep 2020 13:47:22 +0530
Message-Id: <20200910081727.4505-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200910081727.4505-1-anshuman.gupta@intel.com>
References: <20200910081727.4505-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 1/6] drm/i915/hdcp: Encapsulate hdcp_port_data to
 dig_port
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

hdcp_port_data is specific to a port on which HDCP
encryption is getting enabled, so encapsulate it to
intel_digital_port.
This will be required to enable HDCP 2.2 stream encryption.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 58 ++++++++++++-------
 2 files changed, 38 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 63d83b75f89d..2239ab6bd823 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -380,7 +380,6 @@ struct intel_hdcp {
 	 * content can flow only through a link protected by HDCP2.2.
 	 */
 	u8 content_type;
-	struct hdcp_port_data port_data;
 
 	bool is_paired;
 	bool is_repeater;
@@ -1427,6 +1426,7 @@ struct intel_digital_port {
 	struct mutex hdcp_mutex;
 	/* the number of pipes using HDCP signalling out of this port */
 	unsigned int num_hdcp_streams;
+	struct hdcp_port_data port_data;
 
 	void (*write_infoframe)(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 64dbd3cb0571..eac91c0d2159 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -15,6 +15,7 @@
 #include <drm/drm_hdcp.h>
 #include <drm/i915_component.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
@@ -1023,7 +1024,8 @@ static int
 hdcp2_prepare_ake_init(struct intel_connector *connector,
 		       struct hdcp2_ake_init *ake_data)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1052,7 +1054,8 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 				struct hdcp2_ake_no_stored_km *ek_pub_km,
 				size_t *msg_sz)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1079,7 +1082,8 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 static int hdcp2_verify_hprime(struct intel_connector *connector,
 			       struct hdcp2_ake_send_hprime *rx_hprime)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1104,7 +1108,8 @@ static int
 hdcp2_store_pairing_info(struct intel_connector *connector,
 			 struct hdcp2_ake_send_pairing_info *pairing_info)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1130,7 +1135,8 @@ static int
 hdcp2_prepare_lc_init(struct intel_connector *connector,
 		      struct hdcp2_lc_init *lc_init)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1156,7 +1162,8 @@ static int
 hdcp2_verify_lprime(struct intel_connector *connector,
 		    struct hdcp2_lc_send_lprime *rx_lprime)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1181,7 +1188,8 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 static int hdcp2_prepare_skey(struct intel_connector *connector,
 			      struct hdcp2_ske_send_eks *ske_data)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1209,7 +1217,8 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 								*rep_topology,
 				      struct hdcp2_rep_send_ack *rep_send_ack)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1237,7 +1246,8 @@ static int
 hdcp2_verify_mprime(struct intel_connector *connector,
 		    struct hdcp2_rep_stream_ready *stream_ready)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1260,7 +1270,8 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 
 static int hdcp2_authenticate_port(struct intel_connector *connector)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1284,6 +1295,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 
 static int hdcp2_close_mei_session(struct intel_connector *connector)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1297,7 +1309,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
 	}
 
 	ret = comp->ops->close_hdcp_session(comp->mei_dev,
-					     &connector->hdcp.port_data);
+					     &dig_port->port_data);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1488,8 +1500,8 @@ int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	hdcp->port_data.seq_num_m = hdcp->seq_num_m;
-	hdcp->port_data.streams[0].stream_type = hdcp->content_type;
+	dig_port->port_data.seq_num_m = hdcp->seq_num_m;
+	dig_port->port_data.streams[0].stream_type = hdcp->content_type;
 
 	ret = hdcp2_verify_mprime(connector, &msgs.stream_ready);
 	if (ret < 0)
@@ -1588,6 +1600,7 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	int ret;
@@ -1628,7 +1641,7 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 		}
 	}
 
-	hdcp->port_data.streams[0].stream_type = hdcp->content_type;
+	data->streams[0].stream_type = hdcp->content_type;
 	ret = hdcp2_authenticate_port(connector);
 	if (ret < 0)
 		return ret;
@@ -1750,6 +1763,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 
 static int _intel_hdcp2_enable(struct intel_connector *connector)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
@@ -1957,9 +1971,10 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 				     enum port port,
 				     const struct intel_hdcp_shim *shim)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	struct hdcp_port_data *data = &hdcp->port_data;
+	struct hdcp_port_data *data = &dig_port->port_data;
 
 	if (INTEL_GEN(dev_priv) < 12)
 		data->fw_ddi = intel_get_mei_fw_ddi_index(port);
@@ -1980,16 +1995,15 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 	data->port_type = (u8)HDCP_PORT_TYPE_INTEGRATED;
 	data->protocol = (u8)shim->protocol;
 
-	data->k = 1;
 	if (!data->streams)
-		data->streams = kcalloc(data->k,
+		data->streams = kcalloc(INTEL_NUM_PIPES,
 					sizeof(struct hdcp2_streamid_type),
 					GFP_KERNEL);
 	if (!data->streams) {
 		drm_err(&dev_priv->drm, "Out of Memory\n");
 		return -ENOMEM;
 	}
-
+	/* For SST */
 	data->streams[0].stream_id = 0;
 	data->streams[0].stream_type = hdcp->content_type;
 
@@ -2052,6 +2066,7 @@ int intel_hdcp_init(struct intel_connector *connector,
 		    enum port port,
 		    const struct intel_hdcp_shim *shim)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
@@ -2067,7 +2082,7 @@ int intel_hdcp_init(struct intel_connector *connector,
 							 hdcp->hdcp2_supported);
 	if (ret) {
 		hdcp->hdcp2_supported = false;
-		kfree(hdcp->port_data.streams);
+		kfree(dig_port->port_data.streams);
 		return ret;
 	}
 
@@ -2107,7 +2122,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	}
 
 	if (INTEL_GEN(dev_priv) >= 12)
-		hdcp->port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
+		dig_port->port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
 
 	/*
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
@@ -2238,6 +2253,7 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
 
 void intel_hdcp_cleanup(struct intel_connector *connector)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	if (!hdcp->shim)
@@ -2268,7 +2284,7 @@ void intel_hdcp_cleanup(struct intel_connector *connector)
 	drm_WARN_ON(connector->base.dev, work_pending(&hdcp->prop_work));
 
 	mutex_lock(&hdcp->mutex);
-	kfree(hdcp->port_data.streams);
+	kfree(dig_port->port_data.streams);
 	hdcp->shim = NULL;
 	mutex_unlock(&hdcp->mutex);
 }
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
