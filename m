Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F9685F219
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 08:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7CEA10E898;
	Thu, 22 Feb 2024 07:46:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TWvkvWDh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5912C10E898
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708587985; x=1740123985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TKzlY0DvY+2RweYcPIJsek8eWz2hybDEp6OEQtxq0Ds=;
 b=TWvkvWDhItmX2Cx9G/fmk/BV8sN2zrErDxsQ9/m2QbAXbafaNlBTajyu
 X4oZ2c8CwCy8w7Y63W4oqKVJd9I85nrgIqGWypvhUIpayM/b33ZMPWqgV
 kzTxKXS9eAy0dYX03g2sMeIuztjYtYbaD4eOEg3eAJSp5eRlq1w/TwGW2
 2IbNPvC7aa6ZiPeBNRHSNzWILbEyag2l37v+Dphghu45aiNN++/Gp/LrL
 wnisfI5Rv2HeKRHVL2S6cadK+epm7+4pel/KiQdvuL7Hhd72Lx37sErJH
 OlmORVvu/0lumhhb5+CgjEKCdcmexvCCYEpm1kOlCpZtOS4Ze8EFuuIMN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2906062"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2906062"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 23:46:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5354172"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Feb 2024 23:46:12 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 10/13] drm/i915/hdcp: Don't enable HDCP2.2 directly from
 check_link
Date: Thu, 22 Feb 2024 13:13:51 +0530
Message-ID: <20240222074353.1568904-12-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222074353.1568904-2-suraj.kandpal@intel.com>
References: <20240222074353.1568904-2-suraj.kandpal@intel.com>
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
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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
2.43.2

