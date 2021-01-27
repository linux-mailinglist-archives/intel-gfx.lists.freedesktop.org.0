Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A2430537D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 07:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35AD96E581;
	Wed, 27 Jan 2021 06:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84D4B6E581
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 06:50:59 +0000 (UTC)
IronPort-SDR: AMo/JR0sqXN30HLjyxILtwUCjVhR8ux0423JiSQLNXMj/qBYjYacSmaS5rg7NozbGCaORVZFiP
 OGitXgLOMM5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="241555749"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="241555749"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 22:50:59 -0800
IronPort-SDR: C1lKsIyeadcEhjJ0MwNZqvnWI1oQVNRMnrLnJfS40OBJ0Tv807iqy3NpUY/CEr3kGR8WxpvqYx
 0s4vW2/1XrxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="573175112"
Received: from jhli-desk1.jf.intel.com ([10.54.74.156])
 by orsmga005.jf.intel.com with ESMTP; 26 Jan 2021 22:50:59 -0800
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 22:50:34 -0800
Message-Id: <20210127065034.2501119-4-juston.li@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210127065034.2501119-1-juston.li@intel.com>
References: <20210127065034.2501119-1-juston.li@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/hdcp: disable the QSES check
 for HDCP2.2 over MST
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

Like the patch to disable QSES for HDCP 1.4 over MST
https://patchwork.freedesktop.org/patch/415297/ the HDCP2.2 spec
doesn't require QSES as well and we've seen QSES not supported on a
couple HDCP2.2 docks so far (Dell WD19 and Lenovo LDC-G2)

Remove it for now until we get a better idea of how widely supported
QSES is and how to support it optionally.

Signed-off-by: Juston Li <juston.li@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31 +-------------------
 1 file changed, 1 insertion(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index cd183944bc5a..5e9d0d8f7f84 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -699,30 +699,6 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
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
@@ -758,11 +734,6 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
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
@@ -782,7 +753,7 @@ int intel_dp_mst_hdcp2_check_link(struct intel_digital_port *dig_port,
 			return ret;
 	}
 
-	return intel_dp_mst_get_qses_status(dig_port, connector) ? 0 : -EINVAL;
+	return 0;
 }
 
 static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
