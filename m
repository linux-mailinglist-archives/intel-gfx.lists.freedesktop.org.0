Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A19856089
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 12:01:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D3410E630;
	Thu, 15 Feb 2024 11:01:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I88l8pBV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7570D10E630
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 11:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994904; x=1739530904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dwcvqSlyaGOaUmI7xAgqpai21xcJdmixycMesrc/S4M=;
 b=I88l8pBVAJGmLGxVAkG6oQVtRi/fdbLdPhgJMX/0TgoIc9RUjhaDebmv
 8eX6WEL1/dvl5Ty5j/pXEpkzjAdgMyIf7rJJp1aw99OTXOTq+T+aG2z5G
 lD/LYmcp8vBckXnx4HyBZNS8YLZG8NN9uoMgFJ65ryJNSDl1yay95Guwn
 OVQwWUCG9zDVlMbbgnzySDzClByVzbXbm4XCh2CG1VaMT1MhbB5woWKLq
 Fp0agrz7l0wk4pu/6V/AbOjn4BuwI9qEIrn2i/lMABBlHdJY/09558vVB
 7yKQvpc/EBkBr0Q7QwWiwQoNgfL0JmPQuVyeMKrUXEBXDthMHfM5j7vCL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="19494351"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="19494351"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 03:01:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="3821001"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 15 Feb 2024 03:01:42 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 11/13] drm/i915/hdcp: Don't enable HDCP1.4 directly from
 check_link
Date: Thu, 15 Feb 2024 16:29:17 +0530
Message-Id: <20240215105919.1439549-12-suraj.kandpal@intel.com>
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
CP property we directly enable HDCP1.4 without informing the userspace
of this failure in link integrity check.
Now we will just update the value to DESIRED send the event to
userspace and then continue with the normal flow of HDCP enablement.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 3bd783b8deac..ad05ab899706 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1088,15 +1088,9 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	ret = intel_hdcp1_enable(connector);
-	if (ret) {
-		drm_err(&i915->drm, "Failed to enable hdcp (%d)\n", ret);
-		intel_hdcp_update_value(connector,
-					DRM_MODE_CONTENT_PROTECTION_DESIRED,
-					true);
-		goto out;
-	}
-
+	intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED,
+				true);
 out:
 	mutex_unlock(&dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
-- 
2.25.1

