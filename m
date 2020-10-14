Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3AA28D96E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 07:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 081C86E9CB;
	Wed, 14 Oct 2020 05:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF04B6E9CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 05:03:45 +0000 (UTC)
IronPort-SDR: SReDRf+dCzg0eA52cnd9VZTzUoHQ1pbNMoWmgGaGDnmESQ9zK9SDb12wYDDficc/Rj+q0/XzgN
 c4Y3srlwbEwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="166099981"
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="166099981"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:45 -0700
IronPort-SDR: nI11lEJhRPoqAf+UW9FsNIbBnsSZGgWbvz32hUYe8zkO6tUYmlsU/otZgCOPmfTll9QAnNChcg
 wG/lIHYKQ9EQ==
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="351376377"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:43 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 10:22:47 +0530
Message-Id: <20201014045252.13608-9-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201014045252.13608-1-anshuman.gupta@intel.com>
References: <20201014045252.13608-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/hdcp: Encapsulate hdcp_port_data
 to dig_port
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
 .../drm/i915/display/intel_display_types.h    |  5 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 58 ++++++++++++-------
 2 files changed, 39 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 83a9690964a1..6633a546449d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -402,7 +402,6 @@ struct intel_hdcp {
 	 * content can flow only through a link protected by HDCP2.2.
 	 */
 	u8 content_type;
-	struct hdcp_port_data port_data;
 
 	bool is_paired;
 	bool is_repeater;
@@ -1447,10 +1446,12 @@ struct intel_digital_port {
 	enum phy_fia tc_phy_fia;
 	u8 tc_phy_fia_idx;
 
-	/* protects num_hdcp_streams reference count */
+	/* protects num_hdcp_streams reference count, port_data */
 	struct mutex hdcp_mutex;
 	/* the number of pipes using HDCP signalling out of this port */
 	unsigned int num_hdcp_streams;
+	/* HDCP port data need to pass to security f/w */
+	struct hdcp_port_data port_data;
 
 	void (*write_infoframe)(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index a48765e5e783..1a6ac24efe2d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -15,6 +15,7 @@
 #include <drm/drm_hdcp.h>
 #include <drm/i915_component.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
@@ -1031,7 +1032,8 @@ static int
 hdcp2_prepare_ake_init(struct intel_connector *connector,
 		       struct hdcp2_ake_init *ake_data)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1060,7 +1062,8 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 				struct hdcp2_ake_no_stored_km *ek_pub_km,
 				size_t *msg_sz)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1087,7 +1090,8 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 static int hdcp2_verify_hprime(struct intel_connector *connector,
 			       struct hdcp2_ake_send_hprime *rx_hprime)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1112,7 +1116,8 @@ static int
 hdcp2_store_pairing_info(struct intel_connector *connector,
 			 struct hdcp2_ake_send_pairing_info *pairing_info)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1138,7 +1143,8 @@ static int
 hdcp2_prepare_lc_init(struct intel_connector *connector,
 		      struct hdcp2_lc_init *lc_init)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1164,7 +1170,8 @@ static int
 hdcp2_verify_lprime(struct intel_connector *connector,
 		    struct hdcp2_lc_send_lprime *rx_lprime)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1189,7 +1196,8 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 static int hdcp2_prepare_skey(struct intel_connector *connector,
 			      struct hdcp2_ske_send_eks *ske_data)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1217,7 +1225,8 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 								*rep_topology,
 				      struct hdcp2_rep_send_ack *rep_send_ack)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1245,7 +1254,8 @@ static int
 hdcp2_verify_mprime(struct intel_connector *connector,
 		    struct hdcp2_rep_stream_ready *stream_ready)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1268,7 +1278,8 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 
 static int hdcp2_authenticate_port(struct intel_connector *connector)
 {
-	struct hdcp_port_data *data = &connector->hdcp.port_data;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1292,6 +1303,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 
 static int hdcp2_close_mei_session(struct intel_connector *connector)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct i915_hdcp_comp_master *comp;
 	int ret;
@@ -1305,7 +1317,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
 	}
 
 	ret = comp->ops->close_hdcp_session(comp->mei_dev,
-					     &connector->hdcp.port_data);
+					     &dig_port->port_data);
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	return ret;
@@ -1498,8 +1510,9 @@ int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	if (ret < 0)
 		goto out;
 
-	hdcp->port_data.seq_num_m = hdcp->seq_num_m;
-	hdcp->port_data.streams[0].stream_type = hdcp->content_type;
+	dig_port->port_data.seq_num_m = hdcp->seq_num_m;
+	dig_port->port_data.streams[0].stream_type = hdcp->content_type;
+
 	ret = hdcp2_verify_mprime(connector, &msgs.stream_ready);
 
 out:
@@ -1731,7 +1744,9 @@ hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 
 static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret, i, tries = 3;
 
@@ -1745,8 +1760,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 					    ret);
 				break;
 			}
-			hdcp->port_data.streams[0].stream_type =
-							hdcp->content_type;
+			data->streams[0].stream_type = hdcp->content_type;
 			ret = hdcp2_authenticate_port(connector);
 			if (!ret)
 				break;
@@ -1989,8 +2003,8 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 				     const struct intel_hdcp_shim *shim)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct hdcp_port_data *data = &dig_port->port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	struct hdcp_port_data *data = &hdcp->port_data;
 	enum port port = dig_port->base.port;
 
 	if (INTEL_GEN(dev_priv) < 12)
@@ -2012,16 +2026,15 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 	data->port_type = (u8)HDCP_PORT_TYPE_INTEGRATED;
 	data->protocol = (u8)shim->protocol;
 
-	data->k = 1;
 	if (!data->streams)
-		data->streams = kcalloc(data->k,
+		data->streams = kcalloc(INTEL_NUM_PIPES(dev_priv),
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
 
@@ -2100,7 +2113,7 @@ int intel_hdcp_init(struct intel_connector *connector,
 							 hdcp->hdcp2_supported);
 	if (ret) {
 		hdcp->hdcp2_supported = false;
-		kfree(hdcp->port_data.streams);
+		kfree(dig_port->port_data.streams);
 		return ret;
 	}
 
@@ -2140,7 +2153,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	}
 
 	if (INTEL_GEN(dev_priv) >= 12)
-		hdcp->port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
+		dig_port->port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
 
 	/*
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
@@ -2275,6 +2288,7 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
 
 void intel_hdcp_cleanup(struct intel_connector *connector)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	if (!hdcp->shim)
@@ -2305,7 +2319,7 @@ void intel_hdcp_cleanup(struct intel_connector *connector)
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
