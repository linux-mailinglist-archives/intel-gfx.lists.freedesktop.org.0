Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A56DF844822
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 20:41:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EFF910FC9F;
	Wed, 31 Jan 2024 19:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 191BF10FC8D
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 19:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706730094; x=1738266094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0AKfqE2VWaJWGy38fdGY9PGsPXYUdR0smFlZMaD5dsU=;
 b=H3eob+YNWA6HLOtFDj0WIAk/VY45XqnV9+igh7CAJ/EaSwKtj+jAVriW
 00ktGy6/t6+80vmt4QDxOzmlTC9KlOxYI84Ch+EkWSCSKue9VIIwgywfi
 cdli7LFdWDz+K5o68kuIVI+2S3PNDIoM0DZL++stK2vPPBfjcVxh6YPKy
 Wc0aRnoLHA5wdutlSC7meAcuQfAza/W2KCdaUVD7lKLnoD4yj5FCtAn1Y
 Tz2UhzKdzhPFDQhv23QsUqFZSOmLTqKW6SB5VlU8OJ1nYhRJyo2pCMt1G
 OW/MQhozVkTvuCZOz45FqGwUDQ87/HlTDGv1z2lmWkOdwfDsm/wWsyHTp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="402549771"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="402549771"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 11:41:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="788694637"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="788694637"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 31 Jan 2024 11:41:31 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/10] drm/i915/hdcp: Move source hdcp2 checks into its own
 function
Date: Thu,  1 Feb 2024 01:09:21 +0530
Message-Id: <20240131193929.938748-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240131193929.938748-1-suraj.kandpal@intel.com>
References: <20240131193929.938748-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move checks on the source side for HDCP2.2 into its own function
so that they can be used in the HDCP remote capability check
function.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c3e692e7f790..4593ac10e2fa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -160,12 +160,14 @@ bool intel_hdcp_capable(struct intel_connector *connector)
 	return capable;
 }
 
-/* Is HDCP2.2 capable on Platform and Sink */
-bool intel_hdcp2_capable(struct intel_connector *connector)
+/*
+ * Check if the source has all the building blocks ready to make
+ * HDCP 2.2 work
+ */
+static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	bool capable = false;
 
 	/* I915 support for HDCP2.2 */
 	if (!hdcp->hdcp2_supported)
@@ -185,6 +187,18 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	}
 	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
+	return true;
+}
+
+/* Is HDCP2.2 capable on Platform and Sink */
+bool intel_hdcp2_capable(struct intel_connector *connector)
+{
+	struct intel_hdcp *hdcp = &connector->hdcp;
+	bool capable = false;
+
+	if (!intel_hdcp2_prerequisite(connector))
+		return false;
+
 	/* Sink's capability for HDCP2.2 */
 	hdcp->shim->hdcp_2_2_capable(connector, &capable);
 
-- 
2.25.1

