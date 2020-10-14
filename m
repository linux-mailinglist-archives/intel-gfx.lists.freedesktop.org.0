Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EA928D96D
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 07:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD8D6E9C9;
	Wed, 14 Oct 2020 05:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C6326E9CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 05:03:43 +0000 (UTC)
IronPort-SDR: qvVDgWA3YDhai/E8/HOAtlr5ZfpAfsc60Ss9viFHyeN+xXTc6lXa5oZj03DM23kTttPjx074G8
 xNCGfgh07xWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="166099977"
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="166099977"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:43 -0700
IronPort-SDR: bBXurORxWHkXRERkUIaK88n+vOEdyrjhvFCkKRPzZIgI7DoZVpnq4rC6ktrwtiwn3hqM4KQqsC
 qxCDUBy8VzxQ==
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="351376372"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:41 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 10:22:46 +0530
Message-Id: <20201014045252.13608-8-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201014045252.13608-1-anshuman.gupta@intel.com>
References: <20201014045252.13608-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/13] drm/i915/hdcp: Pass dig_port to
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
Cc: seanpaul@chromium.org
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
