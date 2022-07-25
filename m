Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D0B5807CD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 00:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830FE10E07D;
	Mon, 25 Jul 2022 22:51:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0CA10E737
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jul 2022 22:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658789467; x=1690325467;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YBOUhZ8g0yvHEtOX6cHnO/IfYF2PhzXQeLr3Gr5zMsU=;
 b=jBTEf5PjGJFWDryFiXOrDycTXPj26c6sL4DfyHKvvNx3t/UD5wZoyV7a
 8oagnQ3G9dAp9A/6Xc3yKy9CL8vkBv7fhrpjNlezRWwq8wXmOazXujJdr
 wnfzVUi9wJV9BMhpsOcx7Cb0Fy6Zt5VzDHFbTlXAHtMiJC7IxP8t1tAav
 rHEeGxPkSYmrNAAcPcr0IDoe9nLl1ZKAlj+a1I9pXCccCyyOV+PzJmeHw
 DRiXiGzwFtVY8TfXTb/0QRFj1vHQcRwEKpYQ100kvwdvcMzqn2wXleHhp
 SxW7OHmcVSt5fReGM6WwgqWO4c45kUr67VA2UGmqudBOVY/UaDcnC3Pd0 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="288568942"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="288568942"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 15:51:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="550163886"
Received: from hossain3-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.209.118.188])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 15:51:05 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jul 2022 15:50:28 -0700
Message-Id: <20220725225028.98612-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Cleanup intel_phy_is_combo()
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

Cleanup the intel_phy_is_combo
to accommodate for cases where combo phy is not available.

v2: retain comment that explains DG2 returning false from
intel_phy_is_combo() (Arun)

Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a0f84cbe974f..b9d0be7753a8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2082,22 +2082,20 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	if (phy == PHY_NONE)
 		return false;
-	else if (IS_DG2(dev_priv))
-		/*
-		 * DG2 outputs labelled as "combo PHY" in the bspec use
-		 * SNPS PHYs with completely different programming,
-		 * hence we always return false here.
-		 */
-		return false;
 	else if (IS_ALDERLAKE_S(dev_priv))
 		return phy <= PHY_E;
 	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		return phy <= PHY_D;
 	else if (IS_JSL_EHL(dev_priv))
 		return phy <= PHY_C;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (IS_ALDERLAKE_P(dev_priv) || IS_DISPLAY_VER(dev_priv, 11, 12))
 		return phy <= PHY_B;
 	else
+		/*
+		 * DG2 outputs labelled as "combo PHY" in the bspec use
+		 * SNPS PHYs with completely different programming,
+		 * hence we always return false here.
+		 */
 		return false;
 }
 
-- 
2.25.1

