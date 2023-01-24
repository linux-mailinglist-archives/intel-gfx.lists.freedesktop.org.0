Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE751679472
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 10:43:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2380210E641;
	Tue, 24 Jan 2023 09:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87AE10E641
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674553433; x=1706089433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X9eL+wms8O21TC/3XIZzMqB2cgOmLvZ+exq2sa5LNZc=;
 b=ABaNp6cXjCDM01qkqXduYPrBPYqDuKFjc+e1ce8Q9BDpAsy2AO58n8P1
 C7DRq01FpvTEUrRizYlpyrNs+GBJ8PiNHWkvcJUWtE+gPMJGRBZTgfCvn
 LuA4X//W2LvubIsb/wWQcBQhY6BzzUdwnzXNxxJVv33Aexj+hP3+C6v0B
 PNcgj6jfk5LFGSJeXN/rXSuPL9Zui+z6RKdAAPY43A9hOd8I4dGMlbFA1
 hHRlSLq6FEyBznjLZZc+L5fRWoqt950rFZXUcWL2hgyyOo3cSiwxS9Q84
 hrEJ/Z3MbwkXbYzoh1GBO+T1piRbnP3h1YwxMhvKW/yHV9CjvVJqad3s5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="309835493"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="309835493"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 01:43:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="730618337"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="730618337"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jan 2023 01:43:50 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 15:12:24 +0530
Message-Id: <20230124094224.2714023-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230124094224.2714023-1-suraj.kandpal@intel.com>
References: <20230124094224.2714023-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 6/6] drm/i915/mtl: Add HDCP GSC interface
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

MTL uses GSC command streamer i.e gsc cs to send HDCP/PXP commands
to GSC f/w. It requires to keep hdcp display driver
agnostic to content protection f/w (ME/GSC fw) in the form of
i915_hdcp_fw_ops generic ops.

Adding HDCP GSC CS interface by leveraging the i915_hdcp_fw_ops generic
ops instead of I915_HDCP_COMPONENT as integral part of i915.

Adding checks to see if GSC is loaded and proxy is setup

--v6
-dont change the license date in same patch series [Jani]
-fix the license year {Jani]

--v8
-remove stale comment [Ankit]
-get headers in alphabetical order [Ankit]
-fix hdcp2_supported check [Ankit]

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  31 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 631 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   3 +
 3 files changed, 657 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c578fcc34bfd..ddae476e4371 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -204,13 +204,20 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct intel_gt *gt = dev_priv->media_gt;
+	struct intel_gsc_uc *gsc = &gt->uc.gsc;
 	bool capable = false;
 
 	/* I915 support for HDCP2.2 */
 	if (!hdcp->hdcp2_supported)
 		return false;
 
-	/* MEI interface is solid */
+	/* If MTL+ make sure gsc is loaded and proxy is setup */
+	if (intel_hdcp_gsc_cs_required(dev_priv))
+		if (!intel_uc_fw_is_running(&gsc->fw))
+			return false;
+
+	/* MEI/GSC interface is solid depending on which is used */
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
 	if (!dev_priv->display.hdcp.comp_added ||  !dev_priv->display.hdcp.master) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
@@ -1974,7 +1981,7 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 		    connector->base.name, connector->base.base.id,
 		    hdcp->content_type);
 
-	if (DISPLAY_VER(i915) >= 14) {
+	if (intel_hdcp_gsc_cs_required(i915)) {
 		hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
 
 		if (!hdcp_message)
@@ -2035,7 +2042,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 	if (hdcp2_deauthenticate_port(connector) < 0)
 		drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (intel_hdcp_gsc_cs_required(i915))
 		intel_hdcp_gsc_free_message(i915);
 
 	connector->hdcp.hdcp2_encrypted = false;
@@ -2255,6 +2262,9 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 
 static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
 {
+	if (intel_hdcp_gsc_cs_required(dev_priv))
+		return true;
+
 	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
 		return false;
 
@@ -2276,10 +2286,14 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
 
 	dev_priv->display.hdcp.comp_added = true;
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
-	ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
-				  I915_COMPONENT_HDCP);
+	if (intel_hdcp_gsc_cs_required(dev_priv))
+		ret = intel_hdcp_gsc_init(dev_priv);
+	else
+		ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
+					  I915_COMPONENT_HDCP);
+
 	if (ret < 0) {
-		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
+		drm_dbg_kms(&dev_priv->drm, "Failed at fw component add(%d)\n",
 			    ret);
 		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
 		dev_priv->display.hdcp.comp_added = false;
@@ -2506,7 +2520,10 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
 	dev_priv->display.hdcp.comp_added = false;
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
-	component_del(dev_priv->drm.dev, &i915_hdcp_ops);
+	if (intel_hdcp_gsc_cs_required(dev_priv))
+		intel_hdcp_gsc_fini(dev_priv);
+	else
+		component_del(dev_priv->drm.dev, &i915_hdcp_ops);
 }
 
 void intel_hdcp_cleanup(struct intel_connector *connector)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 8da4faf9b10c..fb6042684014 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -3,12 +3,640 @@
  * Copyright 2023, Intel Corporation.
  */
 
+#include <drm/i915_hdcp_interface.h>
+
 #include "display/intel_hdcp_gsc.h"
 #include "gem/i915_gem_region.h"
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 #include "i915_drv.h"
 #include "i915_utils.h"
 
+bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
+{
+	return DISPLAY_VER(i915) >= 14;
+}
+
+static int
+gsc_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
+			  struct hdcp2_ake_init *ake_data)
+{
+	struct wired_cmd_initiate_hdcp2_session_in session_init_in = { { 0 } };
+	struct wired_cmd_initiate_hdcp2_session_out
+						session_init_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+
+	if (!dev || !data || !ake_data)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	session_init_in.header.api_version = HDCP_API_VERSION;
+	session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
+	session_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
+	session_init_in.header.buffer_len =
+				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
+
+	session_init_in.port.integrated_port_type = data->port_type;
+	session_init_in.port.physical_port = (u8)data->hdcp_ddi;
+	session_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
+	session_init_in.protocol = data->protocol;
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&session_init_in,
+				       sizeof(session_init_in),
+				       (u8 *)&session_init_out,
+				       sizeof(session_init_out));
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	if (session_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
+			    WIRED_INITIATE_HDCP2_SESSION,
+			    session_init_out.header.status);
+		return -EIO;
+	}
+
+	ake_data->msg_id = HDCP_2_2_AKE_INIT;
+	ake_data->tx_caps = session_init_out.tx_caps;
+	memcpy(ake_data->r_tx, session_init_out.r_tx, HDCP_2_2_RTX_LEN);
+
+	return 0;
+}
+
+static int
+gsc_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
+					 struct hdcp_port_data *data,
+					 struct hdcp2_ake_send_cert *rx_cert,
+					 bool *km_stored,
+					 struct hdcp2_ake_no_stored_km
+								*ek_pub_km,
+					 size_t *msg_sz)
+{
+	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in = { { 0 } };
+	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+
+	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	verify_rxcert_in.header.api_version = HDCP_API_VERSION;
+	verify_rxcert_in.header.command_id = WIRED_VERIFY_RECEIVER_CERT;
+	verify_rxcert_in.header.status = FW_HDCP_STATUS_SUCCESS;
+	verify_rxcert_in.header.buffer_len =
+				WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
+
+	verify_rxcert_in.port.integrated_port_type = data->port_type;
+	verify_rxcert_in.port.physical_port = (u8)data->hdcp_ddi;
+	verify_rxcert_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	verify_rxcert_in.cert_rx = rx_cert->cert_rx;
+	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
+	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps, HDCP_2_2_RXCAPS_LEN);
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_rxcert_in,
+				       sizeof(verify_rxcert_in),
+				       (u8 *)&verify_rxcert_out,
+				       sizeof(verify_rxcert_out));
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed: %zd\n", byte);
+		return byte;
+	}
+
+	if (verify_rxcert_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
+			    WIRED_VERIFY_RECEIVER_CERT,
+			    verify_rxcert_out.header.status);
+		return -EIO;
+	}
+
+	*km_stored = !!verify_rxcert_out.km_stored;
+	if (verify_rxcert_out.km_stored) {
+		ek_pub_km->msg_id = HDCP_2_2_AKE_STORED_KM;
+		*msg_sz = sizeof(struct hdcp2_ake_stored_km);
+	} else {
+		ek_pub_km->msg_id = HDCP_2_2_AKE_NO_STORED_KM;
+		*msg_sz = sizeof(struct hdcp2_ake_no_stored_km);
+	}
+
+	memcpy(ek_pub_km->e_kpub_km, &verify_rxcert_out.ekm_buff,
+	       sizeof(verify_rxcert_out.ekm_buff));
+
+	return 0;
+}
+
+static int
+gsc_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
+		       struct hdcp2_ake_send_hprime *rx_hprime)
+{
+	struct wired_cmd_ake_send_hprime_in send_hprime_in = { { 0 } };
+	struct wired_cmd_ake_send_hprime_out send_hprime_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+
+	if (!dev || !data || !rx_hprime)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	send_hprime_in.header.api_version = HDCP_API_VERSION;
+	send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
+	send_hprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
+	send_hprime_in.header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
+
+	send_hprime_in.port.integrated_port_type = data->port_type;
+	send_hprime_in.port.physical_port = (u8)data->hdcp_ddi;
+	send_hprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
+	       HDCP_2_2_H_PRIME_LEN);
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&send_hprime_in,
+				       sizeof(send_hprime_in),
+				       (u8 *)&send_hprime_out,
+				       sizeof(send_hprime_out));
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	if (send_hprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
+			    WIRED_AKE_SEND_HPRIME, send_hprime_out.header.status);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int
+gsc_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
+			    struct hdcp2_ake_send_pairing_info *pairing_info)
+{
+	struct wired_cmd_ake_send_pairing_info_in pairing_info_in = { { 0 } };
+	struct wired_cmd_ake_send_pairing_info_out pairing_info_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+
+	if (!dev || !data || !pairing_info)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	pairing_info_in.header.api_version = HDCP_API_VERSION;
+	pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
+	pairing_info_in.header.status = FW_HDCP_STATUS_SUCCESS;
+	pairing_info_in.header.buffer_len =
+					WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
+
+	pairing_info_in.port.integrated_port_type = data->port_type;
+	pairing_info_in.port.physical_port = (u8)data->hdcp_ddi;
+	pairing_info_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
+	       HDCP_2_2_E_KH_KM_LEN);
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&pairing_info_in,
+				       sizeof(pairing_info_in),
+				       (u8 *)&pairing_info_out,
+				       sizeof(pairing_info_out));
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	if (pairing_info_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. Status: 0x%X\n",
+			    WIRED_AKE_SEND_PAIRING_INFO,
+			    pairing_info_out.header.status);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int
+gsc_hdcp_initiate_locality_check(struct device *dev,
+				 struct hdcp_port_data *data,
+				 struct hdcp2_lc_init *lc_init_data)
+{
+	struct wired_cmd_init_locality_check_in lc_init_in = { { 0 } };
+	struct wired_cmd_init_locality_check_out lc_init_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+
+	if (!dev || !data || !lc_init_data)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	lc_init_in.header.api_version = HDCP_API_VERSION;
+	lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
+	lc_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
+	lc_init_in.header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
+
+	lc_init_in.port.integrated_port_type = data->port_type;
+	lc_init_in.port.physical_port = (u8)data->hdcp_ddi;
+	lc_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in, sizeof(lc_init_in),
+				       (u8 *)&lc_init_out, sizeof(lc_init_out));
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	if (lc_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. status: 0x%X\n",
+			    WIRED_INIT_LOCALITY_CHECK, lc_init_out.header.status);
+		return -EIO;
+	}
+
+	lc_init_data->msg_id = HDCP_2_2_LC_INIT;
+	memcpy(lc_init_data->r_n, lc_init_out.r_n, HDCP_2_2_RN_LEN);
+
+	return 0;
+}
+
+static int
+gsc_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
+		       struct hdcp2_lc_send_lprime *rx_lprime)
+{
+	struct wired_cmd_validate_locality_in verify_lprime_in = { { 0 } };
+	struct wired_cmd_validate_locality_out verify_lprime_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+
+	if (!dev || !data || !rx_lprime)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	verify_lprime_in.header.api_version = HDCP_API_VERSION;
+	verify_lprime_in.header.command_id = WIRED_VALIDATE_LOCALITY;
+	verify_lprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
+	verify_lprime_in.header.buffer_len =
+					WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
+
+	verify_lprime_in.port.integrated_port_type = data->port_type;
+	verify_lprime_in.port.physical_port = (u8)data->hdcp_ddi;
+	verify_lprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
+	       HDCP_2_2_L_PRIME_LEN);
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_lprime_in,
+				       sizeof(verify_lprime_in),
+				       (u8 *)&verify_lprime_out,
+				       sizeof(verify_lprime_out));
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	if (verify_lprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
+			    WIRED_VALIDATE_LOCALITY,
+			    verify_lprime_out.header.status);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int gsc_hdcp_get_session_key(struct device *dev,
+				    struct hdcp_port_data *data,
+				    struct hdcp2_ske_send_eks *ske_data)
+{
+	struct wired_cmd_get_session_key_in get_skey_in = { { 0 } };
+	struct wired_cmd_get_session_key_out get_skey_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+
+	if (!dev || !data || !ske_data)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	get_skey_in.header.api_version = HDCP_API_VERSION;
+	get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
+	get_skey_in.header.status = FW_HDCP_STATUS_SUCCESS;
+	get_skey_in.header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
+
+	get_skey_in.port.integrated_port_type = data->port_type;
+	get_skey_in.port.physical_port = (u8)data->hdcp_ddi;
+	get_skey_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in, sizeof(get_skey_in),
+				       (u8 *)&get_skey_out, sizeof(get_skey_out));
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	if (get_skey_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
+			    WIRED_GET_SESSION_KEY, get_skey_out.header.status);
+		return -EIO;
+	}
+
+	ske_data->msg_id = HDCP_2_2_SKE_SEND_EKS;
+	memcpy(ske_data->e_dkey_ks, get_skey_out.e_dkey_ks,
+	       HDCP_2_2_E_DKEY_KS_LEN);
+	memcpy(ske_data->riv, get_skey_out.r_iv, HDCP_2_2_RIV_LEN);
+
+	return 0;
+}
+
+static int
+gsc_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
+					 struct hdcp_port_data *data,
+					 struct hdcp2_rep_send_receiverid_list
+							*rep_topology,
+					 struct hdcp2_rep_send_ack
+							*rep_send_ack)
+{
+	struct wired_cmd_verify_repeater_in verify_repeater_in = { { 0 } };
+	struct wired_cmd_verify_repeater_out verify_repeater_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+
+	if (!dev || !rep_topology || !rep_send_ack || !data)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	verify_repeater_in.header.api_version = HDCP_API_VERSION;
+	verify_repeater_in.header.command_id = WIRED_VERIFY_REPEATER;
+	verify_repeater_in.header.status = FW_HDCP_STATUS_SUCCESS;
+	verify_repeater_in.header.buffer_len =
+					WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
+
+	verify_repeater_in.port.integrated_port_type = data->port_type;
+	verify_repeater_in.port.physical_port = (u8)data->hdcp_ddi;
+	verify_repeater_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
+	       HDCP_2_2_RXINFO_LEN);
+	memcpy(verify_repeater_in.seq_num_v, rep_topology->seq_num_v,
+	       HDCP_2_2_SEQ_NUM_LEN);
+	memcpy(verify_repeater_in.v_prime, rep_topology->v_prime,
+	       HDCP_2_2_V_PRIME_HALF_LEN);
+	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
+	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_repeater_in,
+				       sizeof(verify_repeater_in),
+				       (u8 *)&verify_repeater_out,
+				       sizeof(verify_repeater_out));
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	if (verify_repeater_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
+			    WIRED_VERIFY_REPEATER,
+			    verify_repeater_out.header.status);
+		return -EIO;
+	}
+
+	memcpy(rep_send_ack->v, verify_repeater_out.v,
+	       HDCP_2_2_V_PRIME_HALF_LEN);
+	rep_send_ack->msg_id = HDCP_2_2_REP_SEND_ACK;
+
+	return 0;
+}
+
+static int gsc_hdcp_verify_mprime(struct device *dev,
+				  struct hdcp_port_data *data,
+				  struct hdcp2_rep_stream_ready *stream_ready)
+{
+	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
+	struct wired_cmd_repeater_auth_stream_req_out
+					verify_mprime_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+	size_t cmd_size;
+
+	if (!dev || !stream_ready || !data)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	cmd_size = struct_size(verify_mprime_in, streams, data->k);
+	if (cmd_size == SIZE_MAX)
+		return -EINVAL;
+
+	verify_mprime_in = kzalloc(cmd_size, GFP_KERNEL);
+	if (!verify_mprime_in)
+		return -ENOMEM;
+
+	verify_mprime_in->header.api_version = HDCP_API_VERSION;
+	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
+	verify_mprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
+
+	verify_mprime_in->port.integrated_port_type = data->port_type;
+	verify_mprime_in->port.physical_port = (u8)data->hdcp_ddi;
+	verify_mprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime, HDCP_2_2_MPRIME_LEN);
+	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data->seq_num_m);
+
+	memcpy(verify_mprime_in->streams, data->streams,
+	       array_size(data->k, sizeof(*data->streams)));
+
+	verify_mprime_in->k = cpu_to_be16(data->k);
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)verify_mprime_in, cmd_size,
+				       (u8 *)&verify_mprime_out,
+				       sizeof(verify_mprime_out));
+	kfree(verify_mprime_in);
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	if (verify_mprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
+			    WIRED_REPEATER_AUTH_STREAM_REQ,
+			    verify_mprime_out.header.status);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int gsc_hdcp_enable_authentication(struct device *dev,
+					  struct hdcp_port_data *data)
+{
+	struct wired_cmd_enable_auth_in enable_auth_in = { { 0 } };
+	struct wired_cmd_enable_auth_out enable_auth_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+
+	if (!dev || !data)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	enable_auth_in.header.api_version = HDCP_API_VERSION;
+	enable_auth_in.header.command_id = WIRED_ENABLE_AUTH;
+	enable_auth_in.header.status = FW_HDCP_STATUS_SUCCESS;
+	enable_auth_in.header.buffer_len = WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
+
+	enable_auth_in.port.integrated_port_type = data->port_type;
+	enable_auth_in.port.physical_port = (u8)data->hdcp_ddi;
+	enable_auth_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
+	enable_auth_in.stream_type = data->streams[0].stream_type;
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&enable_auth_in,
+				       sizeof(enable_auth_in),
+				       (u8 *)&enable_auth_out,
+				       sizeof(enable_auth_out));
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	if (enable_auth_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
+			    WIRED_ENABLE_AUTH, enable_auth_out.header.status);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int
+gsc_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
+{
+	struct wired_cmd_close_session_in session_close_in = { { 0 } };
+	struct wired_cmd_close_session_out session_close_out = { { 0 } };
+	struct drm_i915_private *i915;
+	ssize_t byte;
+
+	if (!dev || !data)
+		return -EINVAL;
+
+	i915 = kdev_to_i915(dev);
+	if (!i915) {
+		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
+		return -ENODEV;
+	}
+
+	session_close_in.header.api_version = HDCP_API_VERSION;
+	session_close_in.header.command_id = WIRED_CLOSE_SESSION;
+	session_close_in.header.status = FW_HDCP_STATUS_SUCCESS;
+	session_close_in.header.buffer_len =
+				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
+
+	session_close_in.port.integrated_port_type = data->port_type;
+	session_close_in.port.physical_port = (u8)data->hdcp_ddi;
+	session_close_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&session_close_in,
+				       sizeof(session_close_in),
+				       (u8 *)&session_close_out,
+				       sizeof(session_close_out));
+	if (byte < 0) {
+		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	if (session_close_out.header.status != FW_HDCP_STATUS_SUCCESS) {
+		drm_dbg_kms(&i915->drm, "Session Close Failed. status: 0x%X\n",
+			    session_close_out.header.status);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static const struct i915_hdcp_ops gsc_hdcp_ops = {
+	.initiate_hdcp2_session = gsc_hdcp_initiate_session,
+	.verify_receiver_cert_prepare_km =
+				gsc_hdcp_verify_receiver_cert_prepare_km,
+	.verify_hprime = gsc_hdcp_verify_hprime,
+	.store_pairing_info = gsc_hdcp_store_pairing_info,
+	.initiate_locality_check = gsc_hdcp_initiate_locality_check,
+	.verify_lprime = gsc_hdcp_verify_lprime,
+	.get_session_key = gsc_hdcp_get_session_key,
+	.repeater_check_flow_prepare_ack =
+				gsc_hdcp_repeater_check_flow_prepare_ack,
+	.verify_mprime = gsc_hdcp_verify_mprime,
+	.enable_hdcp_authentication = gsc_hdcp_enable_authentication,
+	.close_hdcp_session = gsc_hdcp_close_session,
+};
+
+int intel_hdcp_gsc_init(struct drm_i915_private *i915)
+{
+	struct i915_hdcp_master *data;
+
+	data = kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	i915->display.hdcp.master = data;
+	i915->display.hdcp.master->hdcp_dev = i915->drm.dev;
+	i915->display.hdcp.master->ops = &gsc_hdcp_ops;
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
+
+	return 0;
+}
+
+int intel_hdcp_gsc_fini(struct drm_i915_private *i915)
+{
+	kfree(i915->display.hdcp.master);
+	return 0;
+}
+
 /*This function helps allocate memory for the command that we will send to gsc cs */
 int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 				      struct intel_hdcp_gsc_message *hdcp_message)
@@ -120,7 +748,8 @@ static int intel_gsc_send_sync(struct drm_i915_private *i915,
  * will follow
  */
 ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
-				size_t msg_in_len, u8 *msg_out, size_t msg_out_len)
+				size_t msg_in_len, u8 *msg_out,
+				size_t msg_out_len)
 {
 	struct intel_gt *gt = i915->media_gt;
 	struct intel_gsc_mtl_header *header;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index 8352b31a7e4a..af29baf1d558 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -20,8 +20,11 @@ struct intel_hdcp_gsc_message {
 int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 				      struct intel_hdcp_gsc_message *hdcp_message);
 void intel_hdcp_gsc_free_message(struct drm_i915_private *i915);
+bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
 ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_in_len, u8 *msg_out,
 				size_t msg_out_len);
+int intel_hdcp_gsc_init(struct drm_i915_private *i915);
+int intel_hdcp_gsc_fini(struct drm_i915_private *i915);
 
 #endif /* __INTEL_HDCP_GCS_H__ */
-- 
2.25.1

