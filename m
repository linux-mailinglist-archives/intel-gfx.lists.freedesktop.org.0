Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D21B4A889
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 11:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2CC210E1BC;
	Tue,  9 Sep 2025 09:45:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MYxu377n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA0410E14B;
 Tue,  9 Sep 2025 09:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757411141; x=1788947141;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3OiuoSHPmG0FIl6n29tbVNtG0Fi9GCV8KCsetCfiaKo=;
 b=MYxu377npaciypNx+JaP8KIlMfHEG1oir9t1+71iPc8ht7P1hRJaaeNp
 gFCZH2VJeTIRvmvdv00GKzI7UbS/q+8JfHghSjOenTi2J93aLZcYvXIHx
 VcQY6OlZMvf7uHGN6R58mHHLMhijJlCsdHUhE9geCJgTJKD1axKvYFv8p
 kLN9uvOIkDorIaDDZJaAb4iGXWxoIjMfbLq+2/7sp5gT+iPAKXBjBWl1Y
 +X4dy0tlCYYOg9FPUnu5jxGssh+UdFEwtz2Wgw+lN0J7yXFunTreYV77h
 79v4SfIgso+bbWnuOXcl+UP5wZ7BFLI8Q8Ug/zo33bFwfc13z46GGvf1v w==;
X-CSE-ConnectionGUID: MfzLoCFBTNWpBka1IU8gfw==
X-CSE-MsgGUID: xFXe11BZQVyfs0o7jTx70w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59615853"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59615853"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 02:45:40 -0700
X-CSE-ConnectionGUID: TjM01G6WSXKLZlG2M8xShQ==
X-CSE-MsgGUID: 5wV397+4QAGn+iZrNp9eyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="172635381"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa007.fm.intel.com with ESMTP; 09 Sep 2025 02:45:38 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [RESEND] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to only
 PHY A
Date: Tue,  9 Sep 2025 15:15:35 +0530
Message-ID: <20250909094535.4126289-1-dnyaneshwar.bhadane@intel.com>
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
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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

