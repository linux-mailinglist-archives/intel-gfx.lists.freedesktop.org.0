Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1C5263FC0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 10:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 746476E32D;
	Thu, 10 Sep 2020 08:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E196E31C
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 08:29:10 +0000 (UTC)
IronPort-SDR: zMf7is57zVqigDDaY98rUKpsrnASckyUSq/S/ZqRu+IPwCcEOUIToF1NG5I+Zwui0KNLm0DvjH
 yR6aGNV/YdiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="157772117"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="157772117"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:29:10 -0700
IronPort-SDR: OJeYDQuBf18+annJjIPpQoag1cqkrrC1ZjclYD7ybCeXtSu6IgjdgracuEsJvXsII0dX47hN0Y
 qctnyVT08ZPQ==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="505043873"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:29:08 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Sep 2020 13:47:27 +0530
Message-Id: <20200910081727.4505-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200910081727.4505-1-anshuman.gupta@intel.com>
References: <20200910081727.4505-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 6/6] drm/i915/hdcp: Enable HDCP 2.2 MST support
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

Enable HDCP 2.2 over DP MST.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index f7ca9dfad825..2498c2c7c245 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1698,6 +1698,14 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 				    LINK_ENCRYPTION_STATUS,
 				    HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
 
+	if (hdcp->shim->stream_2_2_encryption) {
+		ret = hdcp->shim->stream_2_2_encryption(dig_port, true);
+		if (ret) {
+			drm_err(&dev_priv->drm, "Failed to enable HDCP 2.2 stream enc\n");
+			return ret;
+		}
+	}
+
 	return ret;
 }
 
@@ -1810,6 +1818,7 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->port_data;
+	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
 	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is being Disabled\n",
@@ -1818,6 +1827,14 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
 	if (drm_WARN_ON(&i915->drm, data->k < 0))
 		return -EINVAL;
 
+	if (dig_port->num_hdcp_streams > 0 && hdcp->shim->stream_2_2_encryption) {
+		ret = hdcp->shim->stream_2_2_encryption(dig_port, false);
+		if (ret) {
+			drm_err(&i915->drm, "Failed to disable HDCP 2.2 stream enc\n");
+			return ret;
+		}
+	}
+
 	ret = hdcp2_disable_encryption(connector);
 
 	if (hdcp2_deauthenticate_port(connector) < 0)
@@ -2097,7 +2114,7 @@ int intel_hdcp_init(struct intel_connector *connector,
 	if (!shim)
 		return -EINVAL;
 
-	if (is_hdcp2_supported(dev_priv) && !connector->mst_port)
+	if (is_hdcp2_supported(dev_priv))
 		intel_hdcp2_init(connector, port, shim);
 
 	ret =
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
