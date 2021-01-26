Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF7D304990
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 21:08:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4FF89D79;
	Tue, 26 Jan 2021 20:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5336189D79
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 20:08:25 +0000 (UTC)
IronPort-SDR: USi/VhrON1nUevgfPxtxa40cvAWPT5iV90GubmYMbHMb1/C9fvs1iIvKGTqEeJ0PaymxWtF2na
 TzrIaJ1HeZLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="177393097"
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="177393097"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 12:08:25 -0800
IronPort-SDR: rbNlbFeH/8/rEGThUq9EUQcMXt0dx332SOD15YHZmo9ysBGaNHOAplNd37kcJ2XFc43Ds1EyOj
 78JsyVXq8eJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="573040981"
Received: from jhli-desk1.jf.intel.com ([10.54.74.156])
 by orsmga005.jf.intel.com with ESMTP; 26 Jan 2021 12:08:25 -0800
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 12:08:05 -0800
Message-Id: <20210126200805.2499944-3-juston.li@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210126200805.2499944-1-juston.li@intel.com>
References: <20210126200805.2499944-1-juston.li@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/hdcp: disable the QSES check for
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
index e312aa8038ff..b7cb6948869e 100644
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
 static
 bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
 				  struct intel_connector *connector)
@@ -768,11 +744,6 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
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
@@ -792,7 +763,7 @@ int intel_dp_mst_hdcp2_check_link(struct intel_digital_port *dig_port,
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
