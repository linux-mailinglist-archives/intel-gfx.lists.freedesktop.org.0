Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1F58559F9
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 06:07:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1793010E121;
	Thu, 15 Feb 2024 05:07:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KldBb33M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377B710E121
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 05:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707973647; x=1739509647;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DmXH77JzL2gQAf3NuOdkbR1ZdM01R3rgybZEtk05+f4=;
 b=KldBb33MjJl0MixvRCVUrmV/VpRjZ1U7pKmOHHUeTD5jzd86DWvi9kjT
 8ZsQATo3rg2JDC9aaHZ6oDcfzRwu/vUoWgHIRBXcW17gM8L+IzBkCVd0n
 WbLaWrxKBcFz6LlZEaI0AGHNAiIKl6FNymOphryNSrEnFzK1crTs9fYGF
 XT7QlK3L4UzMIOS30wA5X4SDWNOFpbpW+K/2Or4oyVHJ+uz8jrIcWKYF4
 p0ktCYFVApFv9iLMC6MdpUZxRfFRS5aSQGyAeiHx6sRTeGoPmg/sHb7p5
 L6BuZhJ4PnXQlO4InWsnzAWuQXmgmEz8n9l6rW77DAdLxDG7avpHNnmUF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="5877234"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="5877234"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 21:07:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="8084155"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 14 Feb 2024 21:07:25 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 02/12] drm/i915/hdcp: Move source hdcp2 checks into its own
 function
Date: Thu, 15 Feb 2024 10:35:14 +0530
Message-Id: <20240215050524.1425206-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240215050524.1425206-1-suraj.kandpal@intel.com>
References: <20240215050524.1425206-1-suraj.kandpal@intel.com>
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
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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

