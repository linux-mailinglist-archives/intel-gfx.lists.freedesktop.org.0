Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8882730704F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 08:56:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78EE789C94;
	Thu, 28 Jan 2021 07:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69B438912C
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 07:56:44 +0000 (UTC)
IronPort-SDR: m3d+xbp9zGdK/iTh8vjeiS0yv3m6SGtqGJ4x+iIxjfGJ8i4ucBwE/3Eaoh5bl0AuTe0Dh+Avus
 DqggHue8FGAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="241721735"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="241721735"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 23:56:43 -0800
IronPort-SDR: hvOwLlzaLDXRg7FcEFh2wKt7JoF9jDaFJjSOEopAX2dPsaH5VTwa6OF8elVPpVvR8LH/Lb08VS
 0ID+rTMD+rXw==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="362765569"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 23:56:41 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 13:12:09 +0530
Message-Id: <20210128074209.16986-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210128074209.16986-1-anshuman.gupta@intel.com>
References: <20210128074209.16986-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/hdcp: disable the QSES check for
 HDCP2.2 over MST
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Juston Li <juston.li@intel.com>

Like the patch to disable QSES for HDCP 1.4 over MST
https://patchwork.freedesktop.org/patch/415297/ the HDCP2.2 spec
doesn't require QSES as well and we've seen QSES not supported on a
couple HDCP2.2 docks so far (Dell WD19 and Lenovo LDC-G2)

Remove it for now until we get a better idea of how widely supported
QSES is and how to support it optionally.

Signed-off-by: Juston Li <juston.li@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20210127065034.2501119-4-juston.li@intel.com
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31 +-------------------
 1 file changed, 1 insertion(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 4dba5bb15af5..40c516e90193 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -698,30 +698,6 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
 	return 0;
 }
 
-static bool intel_dp_mst_get_qses_status(struct intel_digital_port *dig_port,
-					 struct intel_connector *connector)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct drm_dp_query_stream_enc_status_ack_reply reply;
-	struct intel_dp *intel_dp = &dig_port->dp;
-	int ret;
-
-	ret = drm_dp_send_query_stream_enc_status(&intel_dp->mst_mgr,
-						  connector->port, &reply);
-	if (ret) {
-		drm_dbg_kms(&i915->drm,
-			    "[%s:%d] failed QSES ret=%d\n",
-			    connector->base.name, connector->base.base.id, ret);
-		return false;
-	}
-
-	drm_dbg_kms(&i915->drm, "[%s:%d] QSES stream auth: %d stream enc: %d\n",
-		    connector->base.name, connector->base.base.id,
-		    reply.auth_completed, reply.encryption_enabled);
-
-	return reply.auth_completed && reply.encryption_enabled;
-}
-
 static int
 intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 				     bool enable)
@@ -757,11 +733,6 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 	return 0;
 }
 
-/*
- * DP v2.0 I.3.3 ignore the stream signature L' in QSES reply msg reply.
- * I.3.5 MST source device may use a QSES msg to query downstream status
- * for a particular stream.
- */
 static
 int intel_dp_mst_hdcp2_check_link(struct intel_digital_port *dig_port,
 				  struct intel_connector *connector)
@@ -781,7 +752,7 @@ int intel_dp_mst_hdcp2_check_link(struct intel_digital_port *dig_port,
 			return ret;
 	}
 
-	return intel_dp_mst_get_qses_status(dig_port, connector) ? 0 : -EINVAL;
+	return 0;
 }
 
 static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
