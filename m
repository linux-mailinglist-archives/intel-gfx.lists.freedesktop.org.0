Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E2832CF4D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 10:11:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D497188E87;
	Thu,  4 Mar 2021 09:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48DAD6EA06
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 09:11:46 +0000 (UTC)
IronPort-SDR: GdhAwrign/h1C+IAJ1Ne0bMX1mv8BHqervyQjBisfFDtwsyG05BZr/N5s72KxWjSEJX90+/gIi
 mtmPXgGWjQrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="184966392"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="184966392"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 01:11:46 -0800
IronPort-SDR: PbQ1NIF99mBlkANGp9xL9JWWHG/CMCmrrHdu8hv25feRCbkWZ5OoHXeKanrp0474Pwaefityt6
 oorJbo6IPlzA==
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="400512653"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 01:11:37 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Mar 2021 14:26:07 +0530
Message-Id: <20210304085608.21372-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210304085608.21372-1-anshuman.gupta@intel.com>
References: <20210304085608.21372-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/hdcp: link hdcp2 recovery on
 link enc stopped
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

When stream encryption enabling fails due to Link encryption status
has stopped, prepare HDCP2 for recovery by disabling port authentication
and encryption such that it can re-attempt port authentication
and encryption.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 08dd6b46749d..9a70c164c377 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1706,6 +1706,7 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	enum port port = dig_port->base.port;
@@ -1715,7 +1716,8 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 			    LINK_ENCRYPTION_STATUS)) {
 		drm_err(&dev_priv->drm, "[%s:%d] HDCP 2.2 Link is not encrypted\n",
 			connector->base.name, connector->base.base.id);
-		return -EPERM;
+		ret = -EPERM;
+		goto link_recover;
 	}
 
 	if (hdcp->shim->stream_2_2_encryption) {
@@ -1729,6 +1731,15 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 			    transcoder_name(hdcp->stream_transcoder));
 	}
 
+	return 0;
+
+link_recover:
+	if (hdcp2_deauthenticate_port(connector) < 0)
+		drm_dbg_kms(&dev_priv->drm, "Port deauth failed.\n");
+
+	dig_port->hdcp_auth_status = false;
+	data->k = 0;
+
 	return ret;
 }
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
