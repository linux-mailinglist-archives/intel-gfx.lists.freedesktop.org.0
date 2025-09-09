Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30629B4A116
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 07:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CED310E43D;
	Tue,  9 Sep 2025 05:02:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a/MinYNr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8672310E43D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 05:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757394154; x=1788930154;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DC7pp8imYAI8Vd2gJ0vwbnpG/0q1QQ/8PzFpjZPvEo0=;
 b=a/MinYNrwt0amqVY0+a/JVxdTyulLVYtUIgz55pFNXJJfVy6PGD8tZOW
 rW+OvBFNVNct25KtxtpByTHAQspVs4dijo45/lS58m85BTrVieq5ycfk9
 8cmIEz9JKaUclnAkE+He1XoKKZgH4LnQIgEvKjeDQAu6EW1kYlhUg3v0T
 ft7EtpqOdcjfGCWCrdu7PVI0aZYUjOECv1JGQlmM2vQtucJmflJwZGFog
 DPrJINbLtEljUTxuEF7mI+h2wxN8AwyZX5ZyHKD3OhEaQaEJwSMSkPxsG
 Y+c711FBNgEuqpWer5bsyR6e0Ex8295nIenLX6JkmzBbFHuO7D1FcCmQQ w==;
X-CSE-ConnectionGUID: PIsjZXctRZGo9mSeDnyNrQ==
X-CSE-MsgGUID: QtG+u1HuREmJL0ClkcrAig==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="77279638"
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="77279638"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 22:02:34 -0700
X-CSE-ConnectionGUID: 8PLl3y5KSlabzCrCkLC+aw==
X-CSE-MsgGUID: msJ7ouAgQrO1HJybHobeAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="173107715"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa008.jf.intel.com with ESMTP; 08 Sep 2025 22:02:33 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	ankit.k.nautiyal@intel.com
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to only
 PHY A
Date: Tue,  9 Sep 2025 10:32:28 +0530
Message-ID: <20250909050228.4106539-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
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
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 801235a5bc0a..33963ad14cfa 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -39,13 +39,8 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	/* PTL doesn't have a PHY connected to PORT B; as such,
-	 * there will never be a case where PTL uses PHY B.
-	 * WCL uses PORT A and B with the C10 PHY.
-	 * Reusing the condition for WCL and extending it for PORT B
-	 * should not cause any issues for PTL.
-	 */
-	if (display->platform.pantherlake && phy < PHY_C)
+	if ((display->platform.pantherlake && phy == PHY_A) ||
+	    ((DISPLAY_VERx100(display) == 3002) && phy == PHY_B))
 		return true;
 
 	if ((display->platform.lunarlake || display->platform.meteorlake) && phy < PHY_C)
-- 
2.51.0

