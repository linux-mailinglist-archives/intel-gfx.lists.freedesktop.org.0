Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D30E36F55B1
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 12:13:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0E510E255;
	Wed,  3 May 2023 10:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95F7F10E255
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 10:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683108831; x=1714644831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TZscmWY7s6te68Uh1u3j8JTBW8EG4DCMfj9mmiT2LIs=;
 b=SiMBv1WXgIXSdXZh+jYaN0U3rN0qZheqTgbhJwQORsjYUzFs+PQNejqv
 AF1/peLN+gzwR7U2BM2Oi5lBkC/gBJAf87zv8BdkYlvwzJ0tqhQBSutEH
 KDGcS9fycIYmWz/JVBCiUVxv6aME7ws1zu+CueIgjI6QEeXWGJPnHGcAN
 xi5HmcMO4LTJkp/YEJJtEXGgmwkszO8x7rihJ4CLL2fseDRBZ7lGatvc3
 XoQppKGofLimdf7uoOp8FyODVknBfLQlFFYH7VpidMT1dJIVCLpQy4mm7
 RojsLX0XHnc1AlD+1sFfuHJVKBuRuT+esh3uLNcF5clkBr2lU5yWCxgpk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="328246465"
X-IronPort-AV: E=Sophos;i="5.99,247,1677571200"; d="scan'208";a="328246465"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 03:13:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="761439767"
X-IronPort-AV: E=Sophos;i="5.99,247,1677571200"; d="scan'208";a="761439767"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 03 May 2023 03:13:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 May 2023 15:42:06 +0530
Message-Id: <20230503101206.579877-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230503013731.537037-1-suraj.kandpal@intel.com>
References: <20230503013731.537037-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Check if media_gt exists
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

Check if media_gt exists if we are using gsc cs

--v2
-correct typo [Ankit]
-assign gsc variable if gt exists [Ankit]

--v3
-declare gsc and gt variables in if block [Ankit]

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 650232c4892b..b183efab04a1 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -204,8 +204,6 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	struct intel_gt *gt = dev_priv->media_gt;
-	struct intel_gsc_uc *gsc = &gt->uc.gsc;
 	bool capable = false;
 
 	/* I915 support for HDCP2.2 */
@@ -213,9 +211,13 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 		return false;
 
 	/* If MTL+ make sure gsc is loaded and proxy is setup */
-	if (intel_hdcp_gsc_cs_required(dev_priv))
-		if (!intel_uc_fw_is_running(&gsc->fw))
+	if (intel_hdcp_gsc_cs_required(dev_priv)) {
+		struct intel_gt *gt = dev_priv->media_gt;
+		struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
+
+		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
 			return false;
+	}
 
 	/* MEI/GSC interface is solid depending on which is used */
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-- 
2.25.1

