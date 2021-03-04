Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CB432CF4C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 10:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3E66E4A1;
	Thu,  4 Mar 2021 09:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F86B88E87
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 09:11:44 +0000 (UTC)
IronPort-SDR: bxpqLPedllXGXLHuQdYDaKFZQ141LQr2MQaR1i3rAAgRy7CLCkAlgMCpr4DYPkSJvTDdH8UIhi
 xRIWGVM4kxRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="184966386"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="184966386"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 01:11:43 -0800
IronPort-SDR: Lh8Go6KkYdfUvcqZAaM5DLSVYbyi0CnBbLJxtCUFuy8CYO73QC2w3uVU3SqfFlSyGJfcVj6pLZ
 7CjBhxb5RQ/Q==
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="400512630"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 01:11:35 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Mar 2021 14:26:06 +0530
Message-Id: <20210304085608.21372-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210304085608.21372-1-anshuman.gupta@intel.com>
References: <20210304085608.21372-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/hdcp: HDCP2.2 MST Link failure
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
index ae1371c36a32..08dd6b46749d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1927,7 +1927,8 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 	return 0;
 }
 
-static int _intel_hdcp2_disable(struct intel_connector *connector)
+static int
+_intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -1948,7 +1949,7 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
 		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
 			    transcoder_name(hdcp->stream_transcoder));
 
-		if (dig_port->num_hdcp_streams > 0)
+		if (dig_port->num_hdcp_streams > 0 && !hdcp2_link_recovery)
 			return 0;
 	}
 
@@ -1991,6 +1992,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 			"HDCP2.2 link stopped the encryption, %x\n",
 			intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)));
 		ret = -ENXIO;
+		_intel_hdcp2_disable(connector, true);
 		intel_hdcp_update_value(connector,
 					DRM_MODE_CONTENT_PROTECTION_DESIRED,
 					true);
@@ -2030,7 +2032,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 			    connector->base.name, connector->base.base.id);
 	}
 
-	ret = _intel_hdcp2_disable(connector);
+	ret = _intel_hdcp2_disable(connector, true);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"[%s:%d] Failed to disable hdcp2.2 (%d)\n",
@@ -2340,7 +2342,7 @@ int intel_hdcp_disable(struct intel_connector *connector)
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
