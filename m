Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD473278C1
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 08:58:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4AB86E43C;
	Mon,  1 Mar 2021 07:58:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B6E6E4F4
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 07:58:11 +0000 (UTC)
IronPort-SDR: vRMMMuE/g71b6GY/BrWtk/l1M9uNouZyqPYSOkbUnnayJ0woS9YibhwXbbNcFwnIZT6w0fcs1R
 j4+crzq91TRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="174022877"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="174022877"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2021 23:58:11 -0800
IronPort-SDR: jGcYlfZuH0VlfO/n9PPYzWXWAAgemh9w+bV0VexQ2oWDBs5udAJoK0FRSzsBO0bgDoKbmEtjHp
 QClN1X8dLg/Q==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="366624037"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2021 23:58:10 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 13:12:32 +0530
Message-Id: <20210301074234.5332-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210301074234.5332-1-anshuman.gupta@intel.com>
References: <20210301074234.5332-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/hdcp: HDCP2.2 MST Link failure
 recovery
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

DP MST Link Check performed only for the connector involved with
HDCP port authentication and encryption, for other connector it
simply returns link check with true and update the uevent.
Therefore in case of HDCP 2.2 link failure, disable HDCP encryption
and de-authenticate the port so next time it can enable port
authentication and encryption.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b07b488462a7..24720da16b89 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1938,7 +1938,8 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 	return 0;
 }
 
-static int _intel_hdcp2_disable(struct intel_connector *connector)
+static int
+_intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -1959,7 +1960,7 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
 		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
 			    transcoder_name(hdcp->stream_transcoder));
 
-		if (dig_port->num_hdcp_streams > 0)
+		if (dig_port->num_hdcp_streams > 0 && !hdcp2_link_recovery)
 			return 0;
 	}
 
@@ -2002,6 +2003,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 			"HDCP2.2 link stopped the encryption, %x\n",
 			intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)));
 		ret = -ENXIO;
+		_intel_hdcp2_disable(connector, true);
 		intel_hdcp_update_value(connector,
 					DRM_MODE_CONTENT_PROTECTION_DESIRED,
 					true);
@@ -2041,7 +2043,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 			    connector->base.name, connector->base.base.id);
 	}
 
-	ret = _intel_hdcp2_disable(connector);
+	ret = _intel_hdcp2_disable(connector, true);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"[%s:%d] Failed to disable hdcp2.2 (%d)\n",
@@ -2351,7 +2353,7 @@ int intel_hdcp_disable(struct intel_connector *connector)
 	intel_hdcp_update_value(connector,
 				DRM_MODE_CONTENT_PROTECTION_UNDESIRED, false);
 	if (hdcp->hdcp2_encrypted)
-		ret = _intel_hdcp2_disable(connector);
+		ret = _intel_hdcp2_disable(connector, false);
 	else if (hdcp->hdcp_encrypted)
 		ret = _intel_hdcp_disable(connector);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
