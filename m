Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE92225C0E4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 14:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9656E9E1;
	Thu,  3 Sep 2020 12:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41BFC6E9E4
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 12:24:20 +0000 (UTC)
IronPort-SDR: 2SDr3ScAn+p2I2LbTMuKtu4j3oT3+XNAf0StLgiRajcjRiKhEILPErL/leTL9Ff9Hx1vyh7AXO
 2Aw46d1KzS2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="219116038"
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="219116038"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 05:24:20 -0700
IronPort-SDR: Rb7zg06HYCyIng4Tq1/xA8uWrU9w3FhmXpjYFL3xjHDs0iDTcAsdrijfCg2Po1bcZQnjsUsvYE
 Mk5BZqTqMD6w==
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="478034638"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 05:24:17 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Sep 2020 17:42:35 +0530
Message-Id: <20200903121235.22760-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200903121235.22760-1-anshuman.gupta@intel.com>
References: <20200903121235.22760-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST
 support
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
older generations.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++----
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 36 +++++++++++++--------
 2 files changed, 26 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c6107182519f..932190526919 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -809,13 +809,9 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
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
index f401fdaa7336..64dbd3cb0571 100644
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
@@ -766,10 +771,14 @@ static int intel_hdcp_auth(struct intel_connector *connector)
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
+	}
 
 	if (repeater_present)
 		return intel_hdcp_auth_downstream(connector);
@@ -793,15 +802,16 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 
 	/*
 	 * If there are other connectors on this port using HDCP, don't disable
-	 * it. Instead, toggle the HDCP signalling off on that particular
-	 * connector/pipe and exit.
+	 * it. Instead, deselect HDCP Multiplestream Bit on that particular
+	 * connector/pipe (Step 1), poll for stream encryption status to be
+	 * to be disable (Step 2) and exit.
 	 */
-	if (dig_port->num_hdcp_streams > 0) {
-		ret = hdcp->shim->toggle_signalling(dig_port,
-						    cpu_transcoder, false);
-		if (ret)
-			DRM_ERROR("Failed to disable HDCP signalling\n");
-		return ret;
+	if (dig_port->num_hdcp_streams > 0 && hdcp->shim->stream_encryption) {
+		ret = hdcp->shim->stream_encryption(dig_port, false);
+		if (ret) {
+			drm_err(&dev_priv->drm, "Failed to disable HDCP 1.4 stream enc\n");
+			return ret;
+		}
 	}
 
 	hdcp->hdcp_encrypted = false;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
