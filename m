Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 549F0AD7C79
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 22:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82D610E1CB;
	Thu, 12 Jun 2025 20:35:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fZ690XhT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E80F10E1C8;
 Thu, 12 Jun 2025 20:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749760505; x=1781296505;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iuIy/ZsOalZ5Zo9vyqou2eGYoVQzUvwD+gbAjIFTFhw=;
 b=fZ690XhTNt/DJ0dSXQO/r/5TIee1+3NQLhcpdapXh6l+Fx6OpAC8942z
 sS9ATjc7WOHU+FoPAvjAzZPSiMmoFTefsnrW6d6NRe3cGwDcQCxOcwGO7
 QYLF6+3JdvHKSfqnSSpY5sPIfGNuke9Sj0xcTPyAIST4db9BaiO0JuiR2
 foOvjx9nNF/E/s6goZ1FniuFQP0eR0OO/MGuXVgTV7v7v5SWTGuO53FfW
 y40A+hEu6OseYEwliPtrdZgjxDm5hEp5ae+UGfYY1mLzK7DK792gsoN0V
 aU/OTKFp1tZwCXE/O0ISNN8bCIazLeokbaePd8czAfm+3LQ63KpcI/h70 Q==;
X-CSE-ConnectionGUID: x60FOK+VRSegAerNjhE6tw==
X-CSE-MsgGUID: 47AorRNdRBWnMhDaHQzBpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52106980"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52106980"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:35:05 -0700
X-CSE-ConnectionGUID: HBFgc1+2RVC9fZ1MQXsVuQ==
X-CSE-MsgGUID: egI058+IQsOyhuXERKGwgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148520093"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa009.fm.intel.com with ESMTP; 12 Jun 2025 13:35:03 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v5 8/9] drm/i915/wcl: C10 phy connected to port A and B
Date: Fri, 13 Jun 2025 02:04:47 +0530
Message-Id: <20250612203448.2948795-9-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
References: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
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

WCL added a c10 phy connected to port B. PTL code is currently
restricting c10 to phy_a only.

PTL doesn't have a PHY connected to PORT B; as such,there will
never be a case where PTL uses PHY B.
WCL uses PORT A and B with the C10 PHY.Reusing the condition
for WCL and extending it for PORT B should not cause any issues
for PTL.

-v2: Reuse and extend PTL condition for WCL (Matt)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 83c8df9dbc0c..ed8e640b96b0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -39,7 +39,13 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	if (display->platform.pantherlake && phy == PHY_A)
+	/* PTL doesn't have a PHY connected to PORT B; as such,
+	 * there will never be a case where PTL uses PHY B.
+	 * WCL uses PORT A and B with the C10 PHY.
+	 * Reusing the condition for WCL and extending it for PORT B
+	 * should not cause any issues for PTL.
+	 */
+	if (display->platform.pantherlake && phy < PHY_C)
 		return true;
 
 	if ((display->platform.lunarlake || display->platform.meteorlake) && phy < PHY_C)
-- 
2.34.1

