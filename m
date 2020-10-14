Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C7F28D96C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 07:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39D76E9C8;
	Wed, 14 Oct 2020 05:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87FAD6E9C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 05:03:41 +0000 (UTC)
IronPort-SDR: 1qj000JCW228im5PMPtOQ2q8zHci4A5gvXH/3jlm+iBnAE008eyDOWa6VHHD+Arx/dEJN7+mLC
 0OB3e5PSwBWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="166099975"
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="166099975"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:41 -0700
IronPort-SDR: K6IQNF623+nMK8gJWC73NRzKSL0i7TimlDQiKCxH83yOEmey2Xr/1LD7fFtyLA83OCFP5xGRfd
 c7AQU0fYJ50g==
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="351376361"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:39 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 10:22:45 +0530
Message-Id: <20201014045252.13608-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201014045252.13608-1-anshuman.gupta@intel.com>
References: <20201014045252.13608-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP
 MST support
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

Enable HDCP 1.4 over DP MST for Gen12.
This also enable the stream encryption support for
older generations, which was missing earlier.

v2:
- Added debug print for stream encryption.
- Disable the hdcp on port after disabling last stream
  encryption.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++---
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 46 ++++++++++++++-------
 2 files changed, 35 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 23da9902c300..5a6dd35c1663 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -826,13 +826,9 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	intel_attach_force_audio_property(connector);
 	intel_attach_broadcast_rgb_property(connector);
 
-
-	/* TODO: Figure out how to make HDCP work on GEN12+ */
-	if (INTEL_GEN(dev_priv) < 12) {
-		ret = intel_dp_init_hdcp(dig_port, intel_connector);
-		if (ret)
-			DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
-	}
+	ret = intel_dp_init_hdcp(dig_port, intel_connector);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "HDCP init failed, skipping.\n");
 
 	/*
 	 * Reuse the prop from the SST connector because we're
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ff9c13bc544b..636e08b3c0ac 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -612,7 +612,12 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 	return ret;
 }
 
-/* Implements Part 1 of the HDCP authorization procedure */
+/*
+ * Implements Part 1 of the HDCP authorization procedure.
+ * Authentication Part 1 steps for Multi-stream DisplayPort.
+ * Step 1. Auth Part 1 sequence on the driving MST Trasport Link.
+ * Step 2. Enable encryption for each stream that requires encryption.
+ */
 static int intel_hdcp_auth(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
@@ -766,10 +771,16 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		return -ETIMEDOUT;
 	}
 
-	/*
-	 * XXX: If we have MST-connected devices, we need to enable encryption
-	 * on those as well.
-	 */
+	/* DP MST Auth Part 1 Step 2.a and Step 2.b */
+	if (shim->stream_encryption) {
+		ret = shim->stream_encryption(dig_port, true);
+		if (ret) {
+			drm_err(&dev_priv->drm, "Failed to enable HDCP 1.4 stream enc\n");
+			return ret;
+		}
+		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 tras %s stream encrypted\n",
+			    transcoder_name(hdcp->stream_transcoder));
+	}
 
 	if (repeater_present)
 		return intel_hdcp_auth_downstream(connector);
@@ -790,19 +801,26 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 
 	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being disabled...\n",
 		    connector->base.name, connector->base.base.id);
+	/*
+	 * Step 1: Deselect HDCP Multiplestream Bit.
+	 * Step 2: poll for stream encryption status to be disable.
+	 */
+	if (hdcp->shim->stream_encryption) {
+		ret = hdcp->shim->stream_encryption(dig_port, false);
+		if (ret) {
+			drm_err(&dev_priv->drm, "Failed to disable HDCP 1.4 stream enc\n");
+			return ret;
+		}
+		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 trans %s stream encryption disabled\n",
+			    transcoder_name(hdcp->stream_transcoder));
+	}
 
 	/*
-	 * If there are other connectors on this port using HDCP, don't disable
-	 * it. Instead, toggle the HDCP signalling off on that particular
-	 * connector/pipe and exit.
+	 * If there are other connectors on this port using HDCP, don't disable it.
+	 * Repeat steps 1-2 for each stream that no longer requires encryption.
 	 */
-	if (dig_port->num_hdcp_streams > 0) {
-		ret = hdcp->shim->toggle_signalling(dig_port,
-						    cpu_transcoder, false);
-		if (ret)
-			DRM_ERROR("Failed to disable HDCP signalling\n");
+	if (dig_port->num_hdcp_streams > 0)
 		return ret;
-	}
 
 	hdcp->hdcp_encrypted = false;
 	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
