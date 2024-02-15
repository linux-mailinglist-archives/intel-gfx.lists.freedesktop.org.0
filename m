Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DC5856088
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 12:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC21810E626;
	Thu, 15 Feb 2024 11:01:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R4Ba8TLb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9850110E610
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 11:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994902; x=1739530902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J0HMZ/Fqs1tfL4rocxc2FtJvVOLv6xzo6ZRaoUNHLCo=;
 b=R4Ba8TLbhkSSxi7x+Q5gbvZKGCfpI4MEEmW4URF8PnZf6p5FwzerRmCa
 dCxmI1hm6UojJKGrch6yMBxBMiZwHynzpez5/FVvxM24VtOU6J1FNSGOM
 LWbGqd2rZDKmKAWSAExE8cSaYfsiBVAYua+I5GWwdgg40mGovXZM8JFOU
 fzyyUYTZ02TpGR243y18sgDwqpR+2mTx7BS7/t/BDkHmM3vzafXfjZ2bs
 2Ktn/jEPqAOD7ZNvtA7HB39aujW0DsOyTDuqSB/8ItP9p7MgUq0KUInyX
 6ce3ln1Mw31H4H+kP/xJfJDMGUrdldPlvijaN5wjZ3Ujh208QiEglYb11 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="19494348"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="19494348"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 03:01:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="3820996"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 15 Feb 2024 03:01:40 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 10/13] drm/i915/hdcp: Don't enable HDCP2.2 directly from
 check_link
Date: Thu, 15 Feb 2024 16:29:16 +0530
Message-Id: <20240215105919.1439549-11-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240215105919.1439549-1-suraj.kandpal@intel.com>
References: <20240215105919.1439549-1-suraj.kandpal@intel.com>
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

Whenever LIC fails instead of moving from ENABLED to DESIRED
CP property we directly enable HDCP2.2 without informing the userspace
of this failure in link integrity check.
Now we will just update the value to DESIRED send the event to
userspace and then continue with the normal flow of HDCP enablement.

--v2
-Don't change the function prototype in this function [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 25 ++---------------------
 1 file changed, 2 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 16b2b180563f..3bd783b8deac 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2068,17 +2068,6 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 
 		drm_dbg_kms(&i915->drm,
 			    "HDCP2.2 Downstream topology change\n");
-		ret = hdcp2_authenticate_repeater_topology(connector);
-		if (!ret) {
-			intel_hdcp_update_value(connector,
-					DRM_MODE_CONTENT_PROTECTION_ENABLED,
-					true);
-			goto out;
-		}
-		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] Repeater topology auth failed.(%d)\n",
-			    connector->base.base.id, connector->base.name,
-			    ret);
 	} else {
 		drm_dbg_kms(&i915->drm,
 			    "[CONNECTOR:%d:%s] HDCP2.2 link failed, retrying auth\n",
@@ -2095,18 +2084,8 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	ret = _intel_hdcp2_enable(connector);
-	if (ret) {
-		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] Failed to enable hdcp2.2 (%d)\n",
-			    connector->base.base.id, connector->base.name,
-			    ret);
-		intel_hdcp_update_value(connector,
-					DRM_MODE_CONTENT_PROTECTION_DESIRED,
-					true);
-		goto out;
-	}
-
+	intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
 out:
 	mutex_unlock(&dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
-- 
2.25.1

