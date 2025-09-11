Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4146AB53D50
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 22:55:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C835A10EB91;
	Thu, 11 Sep 2025 20:55:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C5RVtDZQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62CE10EB91
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 20:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757624153; x=1789160153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DSn9AK4Up4lBAVD/DHuB6PYYHcQeC91QsY2DnosLwwg=;
 b=C5RVtDZQi55s4pO6FV+nF0zlhvZiLO8B3FayYesHT0V0k3YwQHt8JWYP
 F3viybmVDFKg01fjcUGeoe4CMX5uoKQgtmj8O1aZJEoTR2xiQU0/tkg2G
 pP3/5eAIKqiM3eARzVt1Z0LP/ZMmCWSi69vgl2DsmOu7JuIuDuFaQu5Y8
 iRgXlGECxP2bNqdrhMJkVBeUb8H4InNLu26EhDu1eg45lusptzh0wjP39
 pgyM774yt4DuIXmiRoLMc2I0pLcJ1kHyNI7dVhe708kZtmEv8Cu38AaAx
 3MMQ0F31BXAeDjVsROIaN8pGv9Tw2HAljLnvQSR2BU42xvokjGx4IzYVB g==;
X-CSE-ConnectionGUID: XRTsKMCpQJe38R6i9nkW2A==
X-CSE-MsgGUID: dgKOcYNmQ5edOI66zzGFRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60029827"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60029827"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 13:55:52 -0700
X-CSE-ConnectionGUID: eyDwC6UkSxyZkJ/K1gcn2g==
X-CSE-MsgGUID: af9dMay1SKiZeg9v77dXMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="173696449"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa006.fm.intel.com with ESMTP; 11 Sep 2025 13:55:51 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	ankit.k.nautiyal@intel.com
Cc: gustavo.sousa@intel.com, matthew.s.atwood@intel.com,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH 3/3] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to
 only PHY A
Date: Fri, 12 Sep 2025 02:25:42 +0530
Message-ID: <20250911205543.388402-4-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
References: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
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

Bspec: 72571,73944
Fixes: 9d10de78a37f ("drm/i915/wcl: C10 phy connected to port A and B")
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 801235a5bc0a..e8b354d1c513 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -39,13 +39,10 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	/* PTL doesn't have a PHY connected to PORT B; as such,
-	 * there will never be a case where PTL uses PHY B.
-	 * WCL uses PORT A and B with the C10 PHY.
-	 * Reusing the condition for WCL and extending it for PORT B
-	 * should not cause any issues for PTL.
-	 */
-	if (display->platform.pantherlake && phy < PHY_C)
+	if (display->platform.pantherlake && phy == PHY_A)
+		return true;
+
+	if (display->platform.pantherlake_wildcatlake && phy == PHY_B)
 		return true;
 
 	if ((display->platform.lunarlake || display->platform.meteorlake) && phy < PHY_C)
-- 
2.51.0

