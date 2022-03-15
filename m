Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 462FB4D9601
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 09:16:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D42D10E43A;
	Tue, 15 Mar 2022 08:16:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C355688503
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 08:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647332172; x=1678868172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DwPjKVtRnDTA+k+LSgqCT/YnIZCEbZT8NvJdov9K07c=;
 b=NhnoCzyc4HIr22BiRQYjWMAdq3EaUub0YILqjpIhI6uRgKEPl0cyY2Fc
 vJCSzM/+rnhRMr9juFj+UtPmRNBoxzHLQhN7/s07v7x/PiKITTI1MnVmj
 CIzxlqkQ9Dg6Oxl1RIADj53OKD0aQXRQwRdYGYbFlPyriOKZrhNaGuGBa
 YW3GUuWLJMoJS7EJttFBAEN8k1E3bwD1f7uKxddmw6n0+eCumeiYqIa8i
 w5Xjg2rMFA/5mch5R4U7qiq/unF90aEPobiD6L8zuYbNJbe2b1oH3mCgV
 aaglIYXRkb2UEnC7nXIuUmj5O6cy6AGAXuzo0voVMTjAnD58w91JXYClo Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="243694612"
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="243694612"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:16:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="714069177"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:16:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 13:32:47 +0530
Message-Id: <20220315080247.1161844-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315080247.1161844-1-ankit.k.nautiyal@intel.com>
References: <20220315080247.1161844-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/intel_combo_phy: Print procmon
 ref values
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

Add debug print for Procmon Ref values, to help get the
voltage configurations of combo PHYs.

v2: Used drm_dbg_kms for logs. (Jani)
Added names for different voltage levels. (Imre)

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_combo_phy.c    | 36 +++++++++++++------
 1 file changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 4dfe77351b8b..7ccf45578a7f 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -25,18 +25,29 @@ enum {
 };
 
 static const struct icl_procmon {
+	char name[30];
 	u32 dw1, dw9, dw10;
 } icl_procmon_values[] = {
-	[PROCMON_0_85V_DOT_0] =
-		{ .dw1 = 0x00000000, .dw9 = 0x62AB67BB, .dw10 = 0x51914F96, },
-	[PROCMON_0_95V_DOT_0] =
-		{ .dw1 = 0x00000000, .dw9 = 0x86E172C7, .dw10 = 0x77CA5EAB, },
-	[PROCMON_0_95V_DOT_1] =
-		{ .dw1 = 0x00000000, .dw9 = 0x93F87FE1, .dw10 = 0x8AE871C5, },
-	[PROCMON_1_05V_DOT_0] =
-		{ .dw1 = 0x00000000, .dw9 = 0x98FA82DD, .dw10 = 0x89E46DC1, },
-	[PROCMON_1_05V_DOT_1] =
-		{ .dw1 = 0x00440000, .dw9 = 0x9A00AB25, .dw10 = 0x8AE38FF1, },
+	[PROCMON_0_85V_DOT_0] = {
+		.name = "0.85V dot0 (low-voltage)\0",
+		.dw1 = 0x00000000, .dw9 = 0x62AB67BB, .dw10 = 0x51914F96,
+	},
+	[PROCMON_0_95V_DOT_0] = {
+		.name = "0.95V dot0\0",
+		.dw1 = 0x00000000, .dw9 = 0x86E172C7, .dw10 = 0x77CA5EAB,
+	},
+	[PROCMON_0_95V_DOT_1] = {
+		.name = "0.95V dot1\0",
+		.dw1 = 0x00000000, .dw9 = 0x93F87FE1, .dw10 = 0x8AE871C5,
+	},
+	[PROCMON_1_05V_DOT_0] = {
+		.name = "1.05V dot0\0",
+		.dw1 = 0x00000000, .dw9 = 0x98FA82DD, .dw10 = 0x89E46DC1,
+	},
+	[PROCMON_1_05V_DOT_1] = {
+		.name = "1.05V dot1\0",
+		.dw1 = 0x00440000, .dw9 = 0x9A00AB25, .dw10 = 0x8AE38FF1,
+	},
 };
 
 static const struct icl_procmon *
@@ -113,6 +124,11 @@ static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
 
 	procmon = icl_get_procmon_ref_values(dev_priv, phy);
 
+	drm_dbg_kms(&dev_priv->drm,
+		    "Combo PHY %c %s PROCMON values : 0x%x, 0x%x, 0x%x\n",
+		    phy_name(phy), procmon->name, procmon->dw1, procmon->dw9,
+		    procmon->dw10);
+
 	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
 			    (0xff << 16) | 0xff, procmon->dw1);
 	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
-- 
2.25.1

