Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 738DB29BE1E
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 17:56:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 842F96EBC4;
	Tue, 27 Oct 2020 16:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F426EBAA;
 Tue, 27 Oct 2020 16:56:21 +0000 (UTC)
IronPort-SDR: RzQWxXG8YH6B35m0eWZjlYcLymMlRrkbTBglH3uICm6oPabJyKrzyPGZhlKleYGu60uJTEYRt8
 bjDBwoucKnJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="147975812"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="147975812"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 09:56:21 -0700
IronPort-SDR: vV6OzkckcmAVjLo/0CatHlDovMNSR/9dJVOXAmj1iNladKd7lTXThgC9CVodyOnM3d2GJb5wJH
 u8nmjtEt00rw==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="355613136"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 09:56:17 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 27 Oct 2020 22:11:59 +0530
Message-Id: <20201027164208.10026-8-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201027164208.10026-1-anshuman.gupta@intel.com>
References: <20201027164208.10026-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 07/16] drm/i915/hdcp: Enable Gen12 HDCP 1.4
 DP MST support
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

Enable HDCP 1.4 over DP MST for Gen12.
This also enable the stream encryption support for
older generations, which was missing earlier.

v2:
- Added debug print for stream encryption.
- Disable the hdcp on port after disabling last stream
  encryption.
v3:
- Cosmetic change, removed the value less comment. [Uma]

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++---
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 43 ++++++++++++++-------
 2 files changed, 32 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 16865b200062..f00e12fc83e8 100644
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
index 0322a83c151d..937af4aeaac2 100644
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
@@ -791,18 +802,22 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being disabled...\n",
 		    connector->base.name, connector->base.base.id);
 
+	if (hdcp->shim->stream_encryption) {
+		ret = hdcp->shim->stream_encryption(dig_port, false);
+		if (ret) {
+			drm_err(&dev_priv->drm, "Failed to disable HDCP 1.4 stream enc\n");
+			return ret;
+		}
+		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 trans %s stream encryption disabled\n",
+			    transcoder_name(hdcp->stream_transcoder));
+	}
+
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
