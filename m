Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB13B91D70
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 17:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9638310E4C6;
	Mon, 22 Sep 2025 15:03:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WCGrvjtt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FBA610E4C2;
 Mon, 22 Sep 2025 15:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758553405; x=1790089405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tG1rmdk1QMMeTvFtaTgtJVc5u3gVru4blgDZ6RRBunY=;
 b=WCGrvjtt3O698LjoAu638YC+c6BROTSW9ZA2phDOX2IJJly5I6vksHiT
 97MmNM71sbFBnBo94nkI/JZB7+mW/KOZx1+VZtwKjzHsvcYhdBNMF496f
 sLC83OUxt/aMdQk3XYJqP8VCkaqwLy5BMJzr1lFsOCjiJvvG5cODbzkvi
 +/YPFaJHhindkFtWaKRb+dX91dnNupYOSRj1QWkNVa1UEbkqMaQ0ehmPU
 jLvikyY0HpjB0pKpoGQg1Wbt0McPwzT6P8Sq0PEl6pyzTX+ZlaI1zj8cL
 xkjjsVzhg0NavEU+qomZ4CADrZEx1GbmXKHqSSv9oUJYND3qfi6CMRZdP Q==;
X-CSE-ConnectionGUID: XG6CBbTSQVOSdMNvNuCKYA==
X-CSE-MsgGUID: p5tqPBJYT8mbrXzX6VD1tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71922194"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="71922194"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 08:03:25 -0700
X-CSE-ConnectionGUID: +ko6e34HR+GeB1n0ZCiHcQ==
X-CSE-MsgGUID: g43Y7mVsShKxZ1xfnDeXRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="180511507"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa003.jf.intel.com with ESMTP; 22 Sep 2025 08:03:24 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v3 3/3] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy()
 to only PHY A
Date: Mon, 22 Sep 2025 20:33:17 +0530
Message-ID: <20250922150317.2334680-4-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922150317.2334680-1-dnyaneshwar.bhadane@intel.com>
References: <20250922150317.2334680-1-dnyaneshwar.bhadane@intel.com>
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

On PTL, no combo PHY is connected to PORT B. However, PORT B can
still be used for Type-C and will utilize the C20 PHY for eDP
over Type-C. In such configurations, VBTs also enumerate PORT B.

This leads to issues where PORT B is incorrectly identified as using the
C10 PHY, due to the assumption that returning true for PORT B in
intel_encoder_is_c10phy() would not cause problems.

From PTL's perspective, only PORT A/PHY A uses the C10 PHY.

Update the helper intel_encoder_is_c10phy() to return true only for
PORT A/PHY on PTL.

v2: Change the condition code style for ptl/wcl

Bspec: 72571,73944
Fixes: 9d10de78a37f ("drm/i915/wcl: C10 phy connected to port A and B")
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 801235a5bc0a..a2d2cecf7121 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -39,14 +39,12 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	/* PTL doesn't have a PHY connected to PORT B; as such,
-	 * there will never be a case where PTL uses PHY B.
-	 * WCL uses PORT A and B with the C10 PHY.
-	 * Reusing the condition for WCL and extending it for PORT B
-	 * should not cause any issues for PTL.
-	 */
-	if (display->platform.pantherlake && phy < PHY_C)
-		return true;
+	if (display->platform.pantherlake) {
+		if (display->platform.pantherlake_wildcatlake)
+			return phy <= PHY_B;
+		else
+			return phy == PHY_A;
+	}
 
 	if ((display->platform.lunarlake || display->platform.meteorlake) && phy < PHY_C)
 		return true;
-- 
2.51.0

