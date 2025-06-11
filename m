Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3BAAD5779
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:44:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0299D10E677;
	Wed, 11 Jun 2025 13:44:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mL+LIvnD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A425910E677;
 Wed, 11 Jun 2025 13:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749649488; x=1781185488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Duo09WhxWvJa8l0c5Klx2lWWhD6FYap3HSjf+DCM060=;
 b=mL+LIvnDfg0gYzT94iIuxK6L15ZnxqqXTH8A9Z9ZVFCzAoWp+IkCEj6e
 Q/El8Dsdid6GXv4i/C6vW5W1bzwT7ENzDQsFzF3ssbEutaqWukGCf4jrg
 hBXukG0RzkrlzqqEjdIjI1VKv57IA7LrHpW3H5etxc6bV7jOfeWyDQmMW
 lTuZAOaiB/rzy2jvKzVuCqMoFzb6vXPeVpqyJLp95Or2kwf1/9XA0wGAW
 4PVqLW3JZYuhJM8JnabL78GeJdMLocDY1jHT33H4CXb3TYqr6Fpmv78HZ
 TvJRXAKEaDswuBSz5fvxBQzE3B+jNyjbmohWm/1v0XN70LQf5pNmgOcrH g==;
X-CSE-ConnectionGUID: w0jpJQvTQautYkjqk+PUlg==
X-CSE-MsgGUID: BLHL0k+LTgu7RLiMvQgxQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51505821"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51505821"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:44:48 -0700
X-CSE-ConnectionGUID: u6jEntnhT2Sg1c6VRZpKZw==
X-CSE-MsgGUID: oASm2hHyTwmczIpPvpVa9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152360355"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 06:44:46 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v4 8/9] drm/i915/wcl: C10 phy connected to port A and B
Date: Wed, 11 Jun 2025 19:14:30 +0530
Message-Id: <20250611134431.2761487-9-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
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
index 75caccb65513..05b41ecaba2f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -40,7 +40,13 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
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

