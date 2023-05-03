Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A416F4EA2
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 03:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2732010E17F;
	Wed,  3 May 2023 01:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B2210E17F
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 01:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683077941; x=1714613941;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p+an/eN9MV3CBvt8/bOG7u7CC6p7uvgHIdGlfOvU1tk=;
 b=UEcXtj9KvePf4dBsJH5AZbgIvnOy+7ToQ3WH0dhKv/g44XfQPh+6L0fM
 utNHsBYJlXa0L1AMKUNEtYywKH1GM0MY25xC7gNkcVUZXkr8AklysA8V+
 mEXHHOKhJ+1B91el18ZovD9WXH/3O/IPM2aiZgvrdu86XE2PkiLM3NV8e
 9evP7BkEwCW0sMDk2uaUiqSAe8IZggYDll9tYScRamHk3VkcOSa99O3Gz
 Fa+W7MW0PXN6uYxssukPxrsjvOBPUjJ/oTeokWHwAxh3EytsOW/8XW23t
 a3ME2x02e4YBBw3v6VZ2qaBv8ncRqd88/Wgdfwn5VMW5bcpkT/4TdTDJp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="434853987"
X-IronPort-AV: E=Sophos;i="5.99,245,1677571200"; d="scan'208";a="434853987"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 18:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="761328011"
X-IronPort-AV: E=Sophos;i="5.99,245,1677571200"; d="scan'208";a="761328011"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 02 May 2023 18:38:59 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 May 2023 07:07:31 +0530
Message-Id: <20230503013731.537037-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230502083652.463435-1-suraj.kandpal@intel.com>
References: <20230502083652.463435-1-suraj.kandpal@intel.com>
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

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 650232c4892b..a7faafd1dcc5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -205,7 +205,7 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	struct intel_gt *gt = dev_priv->media_gt;
-	struct intel_gsc_uc *gsc = &gt->uc.gsc;
+	struct intel_gsc_uc *gsc;
 	bool capable = false;
 
 	/* I915 support for HDCP2.2 */
@@ -213,9 +213,11 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 		return false;
 
 	/* If MTL+ make sure gsc is loaded and proxy is setup */
-	if (intel_hdcp_gsc_cs_required(dev_priv))
-		if (!intel_uc_fw_is_running(&gsc->fw))
+	if (intel_hdcp_gsc_cs_required(dev_priv)) {
+		gsc = gt ? &gt->uc.gsc : NULL;
+		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
 			return false;
+	}
 
 	/* MEI/GSC interface is solid depending on which is used */
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-- 
2.25.1

