Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D39CB8A8D2
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 18:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09A3310EA6B;
	Fri, 19 Sep 2025 16:22:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0uGXwml";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9203E10EA5A;
 Fri, 19 Sep 2025 16:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758298964; x=1789834964;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DSn9AK4Up4lBAVD/DHuB6PYYHcQeC91QsY2DnosLwwg=;
 b=K0uGXwmlBZ+2r5UyLDnmmJBSslXRXVOUuqZE9cevu/EKo8rD+Y336zYM
 yfB+R8HmgHCTyzW53kVZf4s0J0RRHUOSBy3bo62jSVmibj9bzWEigQ2rK
 Z2O7Ga/I5NJPgwNxfrtrvJJkVjjCTOMPjuNSFEFvcIyudwI15uPKfVEjl
 zcKZ7bZI3zUkKcMYgy/Rb5ZKo3hLc3gONE85kI0UXGcuNZq2VRd811qRF
 0WxlxiYeAs+R4MI5v1ON9lE43bRJhL/8Hqdl7RP0uHM0gR7HpbGo13H3s
 rCP4Um2/QuNYGafydXYRN4Ioa83tKzMVzK8zNwP1jV+nZUFqn4wCRpPBN w==;
X-CSE-ConnectionGUID: oAncTF/bT4OZ6svlMrL6pA==
X-CSE-MsgGUID: rjDrdAZHRge98Dyasbf/Xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60536186"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="60536186"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 09:22:43 -0700
X-CSE-ConnectionGUID: dabUVHkXQeORnEoiF56aDg==
X-CSE-MsgGUID: cKs7NgmJTLePy2rtpzxTlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175495069"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa007.fm.intel.com with ESMTP; 19 Sep 2025 09:22:42 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v2 3/3] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy()
 to only PHY A
Date: Fri, 19 Sep 2025 21:52:33 +0530
Message-ID: <20250919162233.1624905-4-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
References: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
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

