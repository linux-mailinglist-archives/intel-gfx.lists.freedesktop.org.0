Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EA785F217
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 08:46:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A5710E89E;
	Thu, 22 Feb 2024 07:46:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LFBAppK/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81D1410E895
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708587985; x=1740123985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=coDMi+0915gxQsSt2FFkvd6BNyld0U/vpQ//dy5fP8I=;
 b=LFBAppK/nrEcnjqz8xYcCZR1sPihxoxjnoXakGpUB0NrRHMDPqgcRqCO
 F77aIIOPUDqhXryh5VNfTy6qla794eONUuvw3SSgj93i8A6DBo4HihFFX
 9i9gDZln6QgyOJ0KN2QdgBNE1AZGz64ICbDKltrMT8m4SO1oLyw02cWmn
 9jnCDQrQystY9OsDQdGiH2tzZUt/uoFRmy6A9+wUrrpU/XT+ZUXz/3oxM
 /1E7l1RjbTo2clym3c9wmNb4d4gYO9gR7Wl9UACHzFUVOfpNtKIlUwnvj
 D0DcFTnY23qttIhTKdRs9B5itJU5MNp1BdN6Mct/J9Hh9Q2zL900w6BEy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2906063"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2906063"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 23:46:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5354176"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Feb 2024 23:46:13 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 11/13] drm/i915/hdcp: Don't enable HDCP1.4 directly from
 check_link
Date: Thu, 22 Feb 2024 13:13:52 +0530
Message-ID: <20240222074353.1568904-13-suraj.kandpal@intel.com>
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
CP property we directly enable HDCP1.4 without informing the userspace
of this failure in link integrity check.
Now we will just update the value to DESIRED send the event to
userspace and then continue with the normal flow of HDCP enablement.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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
2.43.2

