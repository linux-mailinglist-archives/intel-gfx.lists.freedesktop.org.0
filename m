Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6303278C2
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 08:58:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 923C06E4F4;
	Mon,  1 Mar 2021 07:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A38366E4F4
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 07:58:14 +0000 (UTC)
IronPort-SDR: BDyFW1eHN1QoG4uOb+mHKeuoiJ4RaxSZn6wat7uMVmRXlBiYuqrBRxJtP6FuGY2soHG9W2/HDk
 H7XEKEED9cfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="174022894"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="174022894"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2021 23:58:14 -0800
IronPort-SDR: 1hCBdF7excwVfHPEqYRZhdPD1WG//KT/J5ALwjY+QdutNqCY5xm4d1YBM9unlnLMVeTbDtn0rF
 2CbcEVV0jNkA==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="366624056"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2021 23:58:11 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 13:12:33 +0530
Message-Id: <20210301074234.5332-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210301074234.5332-1-anshuman.gupta@intel.com>
References: <20210301074234.5332-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: recover link on stream enc
 enable/disable failure
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

When stream encryption {enable,disable} fails, prepare HDCP2 for
recovery by enabling port authentication and port encryption again.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 24720da16b89..68ad7741cf60 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1717,6 +1717,7 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	enum port port = dig_port->base.port;
@@ -1726,7 +1727,8 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 			    LINK_ENCRYPTION_STATUS)) {
 		drm_err(&dev_priv->drm, "[%s:%d] HDCP 2.2 Link is not encrypted\n",
 			connector->base.name, connector->base.base.id);
-		return -EPERM;
+		ret = -EPERM;
+		goto link_recover;
 	}
 
 	if (hdcp->shim->stream_2_2_encryption) {
@@ -1734,12 +1736,19 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 		if (ret) {
 			drm_err(&dev_priv->drm, "[%s:%d] Failed to enable HDCP 2.2 stream enc\n",
 				connector->base.name, connector->base.base.id);
-			return ret;
+			goto link_recover;
 		}
 		drm_dbg_kms(&dev_priv->drm, "HDCP 2.2 transcoder: %s stream encrypted\n",
 			    transcoder_name(hdcp->stream_transcoder));
 	}
 
+link_recover:
+	if (hdcp2_deauthenticate_port(connector) < 0)
+		drm_dbg_kms(&dev_priv->drm, "Port deauth failed.\n");
+
+	dig_port->hdcp_auth_status = false;
+	data->k = 0;
+
 	return ret;
 }
 
@@ -1955,7 +1964,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 		if (ret) {
 			drm_err(&i915->drm, "[%s:%d] Failed to disable HDCP 2.2 stream enc\n",
 				connector->base.name, connector->base.base.id);
-			return ret;
+			goto link_recover;
 		}
 		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
 			    transcoder_name(hdcp->stream_transcoder));
@@ -1966,6 +1975,8 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 
 	ret = hdcp2_disable_encryption(connector);
 
+link_recover:
+
 	if (hdcp2_deauthenticate_port(connector) < 0)
 		drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
