Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E92E3419B9
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 11:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C79646E9E6;
	Fri, 19 Mar 2021 10:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E36766E9E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 10:17:17 +0000 (UTC)
IronPort-SDR: 4jkv9dD7ZVlsVq1OL52x5KqzGVm153tEjkRCTPPWFTMSxT803wOopNv9wmllBLhiZX034e12c/
 Oetjd7TtAdVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="274935046"
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="274935046"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 03:17:17 -0700
IronPort-SDR: ydYcfO71R8o9HNt0qB9DfHjm8fZyZud6O2hQvnQClc+IEm8arFANG9Qd67zFtVonIliWSE7YG2
 7wfvBTZaX3aA==
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="374911305"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 03:17:16 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 15:32:07 +0530
Message-Id: <20210319100208.5886-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210319100208.5886-1-anshuman.gupta@intel.com>
References: <20210319100208.5886-1-anshuman.gupta@intel.com>
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
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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
