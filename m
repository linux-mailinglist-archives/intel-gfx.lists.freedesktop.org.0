Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 208A957D4B8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 22:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E45F8DB0B;
	Thu, 21 Jul 2022 20:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9445F8DAE3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 20:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658434717; x=1689970717;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=58Kr86FI9neGRegDJO+QY9///iM4q+DHszXMLSBTIMo=;
 b=K0/EYqiugSx8uQPAgO2vYaS681cVFE8sxbiJpHc9LOapKHZZ7SBDlzO+
 VQiGBu/adZwXMeNhJo1q2JxnuWBygGcJZm131HGzNcsG415qZt6UdVk0H
 lSw3MK62vH+C4AxLsdowNcuYSW49w6R07KMIxpLRBn6uoCGh3j7ztAw7G
 FtSD4qVCzjzLNc8vt8cl9xxC68FeGx1eU54kXdwKk+RAkPNyL1328e1S8
 /KBXqYRCUXWn+Y5O6XW+W8wxDQP4gjRFeHMqytW/kxHHKKkoemJ+zcUm8
 OTeYySO7hcwAHYhF+5mE1A6Zo6xu7JtVwQKtdnD6aEs4kZGwp8f4lxlpk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="287917865"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="287917865"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 13:18:36 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="740815720"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.47])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 13:18:36 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 13:17:54 -0700
Message-Id: <20220721201754.534870-1-anusha.srivatsa@intel.com>
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

No functional change. Cleanup the intel_phy_is_combo
to accommodate for cases where combo phy is not available.

v2: retain comment that explains DG2 returning false from
intel_phy_is_combo() (Arun)

Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
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

