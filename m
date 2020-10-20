Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75354293DB4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 15:50:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CCD86ECB7;
	Tue, 20 Oct 2020 13:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7D286ECB8;
 Tue, 20 Oct 2020 13:49:57 +0000 (UTC)
IronPort-SDR: 1Ap4FITQlypVEUfQGEu+n2fE78mGuasOWxrIZqzPOpzwv0AKzMYnBINgRLiQ6xDnNfXsO1Jr6C
 XTX9LKzDEwaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="184837532"
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="184837532"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 06:49:57 -0700
IronPort-SDR: nuOeM/c5hVTzwrG4TJ6Lc7C4hUpqZUaDbU8m6QtsOtysUxxbDTdh+dDiG5ZMjr9shcVV1Sw4dy
 D+e8GnU4KbkQ==
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="465934997"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 06:49:54 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 20 Oct 2020 19:08:58 +0530
Message-Id: <20201020133906.23710-8-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201020133906.23710-1-anshuman.gupta@intel.com>
References: <20201020133906.23710-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/15] drm/i915/hdcp: Pass dig_port to
 intel_hdcp_init
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
Cc: jani.nikula@intel.com, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pass dig_port as an argument to intel_hdcp_init()
and intel_hdcp2_init().
This will be required for HDCP 2.2 stream encryption.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_hdcp.c    | 12 +++++++-----
 drivers/gpu/drm/i915/display/intel_hdcp.h    |  4 +++-
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  2 +-
 4 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 652d4645f255..384e384cb9e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -751,10 +751,10 @@ int intel_dp_init_hdcp(struct intel_digital_port *dig_port,
 		return 0;
 
 	if (intel_connector->mst_port)
-		return intel_hdcp_init(intel_connector, port,
+		return intel_hdcp_init(intel_connector, dig_port,
 				       &intel_dp_mst_hdcp_shim);
 	else if (!intel_dp_is_edp(intel_dp))
-		return intel_hdcp_init(intel_connector, port,
+		return intel_hdcp_init(intel_connector, dig_port,
 				       &intel_dp_hdcp_shim);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 636e08b3c0ac..a48765e5e783 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1985,12 +1985,13 @@ static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
 }
 
 static int initialize_hdcp_port_data(struct intel_connector *connector,
-				     enum port port,
+				     struct intel_digital_port *dig_port,
 				     const struct intel_hdcp_shim *shim)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	struct hdcp_port_data *data = &hdcp->port_data;
+	enum port port = dig_port->base.port;
 
 	if (INTEL_GEN(dev_priv) < 12)
 		data->fw_ddi = intel_get_mei_fw_ddi_index(port);
@@ -2063,14 +2064,15 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
 	}
 }
 
-static void intel_hdcp2_init(struct intel_connector *connector, enum port port,
+static void intel_hdcp2_init(struct intel_connector *connector,
+			     struct intel_digital_port *dig_port,
 			     const struct intel_hdcp_shim *shim)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
-	ret = initialize_hdcp_port_data(connector, port, shim);
+	ret = initialize_hdcp_port_data(connector, dig_port, shim);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "Mei hdcp data init failed\n");
 		return;
@@ -2080,7 +2082,7 @@ static void intel_hdcp2_init(struct intel_connector *connector, enum port port,
 }
 
 int intel_hdcp_init(struct intel_connector *connector,
-		    enum port port,
+		    struct intel_digital_port *dig_port,
 		    const struct intel_hdcp_shim *shim)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -2091,7 +2093,7 @@ int intel_hdcp_init(struct intel_connector *connector,
 		return -EINVAL;
 
 	if (is_hdcp2_supported(dev_priv) && !connector->mst_port)
-		intel_hdcp2_init(connector, port, shim);
+		intel_hdcp2_init(connector, dig_port, shim);
 
 	ret =
 	drm_connector_attach_content_protection_property(&connector->base,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index b912a3a0f5b8..8f53b0c7fe5c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -18,13 +18,15 @@ struct intel_connector;
 struct intel_crtc_state;
 struct intel_encoder;
 struct intel_hdcp_shim;
+struct intel_digital_port;
 enum port;
 enum transcoder;
 
 void intel_hdcp_atomic_check(struct drm_connector *connector,
 			     struct drm_connector_state *old_state,
 			     struct drm_connector_state *new_state);
-int intel_hdcp_init(struct intel_connector *connector, enum port port,
+int intel_hdcp_init(struct intel_connector *connector,
+		    struct intel_digital_port *dig_port,
 		    const struct intel_hdcp_shim *hdcp_shim);
 int intel_hdcp_enable(struct intel_connector *connector,
 		      const struct intel_crtc_state *pipe_config, u8 content_type);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f58469226694..0788de04711b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3302,7 +3302,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 	intel_hdmi->attached_connector = intel_connector;
 
 	if (is_hdcp_supported(dev_priv, port)) {
-		int ret = intel_hdcp_init(intel_connector, port,
+		int ret = intel_hdcp_init(intel_connector, dig_port,
 					  &intel_hdmi_hdcp_shim);
 		if (ret)
 			drm_dbg_kms(&dev_priv->drm,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
