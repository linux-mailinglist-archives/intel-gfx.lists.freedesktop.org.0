Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B374D9871
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 11:11:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA2510E3CE;
	Tue, 15 Mar 2022 10:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A80D410E3CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 10:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647339070; x=1678875070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PhqfI9wYEVFXKLRSn8aDTwwIBV9BnLzOm9O/YH9tCAk=;
 b=kKnuVACacRxfAq6PpRmyN9qJrQSGtqSmSi4TiM3vDXTlOcnKh/xJ4jhZ
 pzv5QCmDxM5Er1fh1JEccSyiOJRCVwkgk7thGDTxxUDcRBYodgHnUzLFz
 BOJZbUdSKHWN2b1aW5ExrSlU96NuUFHsMIEMkacIQzvTbD9qIOc82F70C
 +fTfZdg7A8dnmTImpfVlHTXqqUu01sbB5ImvBag82vXo1tIibAbl2eQ6O
 vFKswxPCpy745dlkhpPF8k/lomCZvvQWJbELnxWjSmT0d5Upgh/ixtc8Q
 UGuGFOIXqIYoIfSQf/CvHwUHFjl0es479N7XBm/ZQM6x9CHYbYaDGgs9t Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255092513"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="255092513"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 03:11:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="580458931"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 03:11:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:30 +0530
Message-Id: <20220315095730.1179100-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315080247.1161844-3-ankit.k.nautiyal@intel.com>
References: <20220315080247.1161844-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/intel_combo_phy: Print procmon
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

v3: Used const char * for names. (Jani)

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_combo_phy.c    | 36 +++++++++++++------
 1 file changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 4dfe77351b8b..5abd4a285610 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -25,18 +25,29 @@ enum {
 };
 
 static const struct icl_procmon {
+	const char *name;
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
+		.name = "0.85V dot0 (low-voltage)",
+		.dw1 = 0x00000000, .dw9 = 0x62AB67BB, .dw10 = 0x51914F96,
+	},
+	[PROCMON_0_95V_DOT_0] = {
+		.name = "0.95V dot0",
+		.dw1 = 0x00000000, .dw9 = 0x86E172C7, .dw10 = 0x77CA5EAB,
+	},
+	[PROCMON_0_95V_DOT_1] = {
+		.name = "0.95V dot1",
+		.dw1 = 0x00000000, .dw9 = 0x93F87FE1, .dw10 = 0x8AE871C5,
+	},
+	[PROCMON_1_05V_DOT_0] = {
+		.name = "1.05V dot0",
+		.dw1 = 0x00000000, .dw9 = 0x98FA82DD, .dw10 = 0x89E46DC1,
+	},
+	[PROCMON_1_05V_DOT_1] = {
+		.name = "1.05V dot1",
+		.dw1 = 0x00440000, .dw9 = 0x9A00AB25, .dw10 = 0x8AE38FF1,
+	},
 };
 
 static const struct icl_procmon *
@@ -113,6 +124,11 @@ static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
 
 	procmon = icl_get_procmon_ref_values(dev_priv, phy);
 
+	drm_dbg_kms(&dev_priv->drm,
+		    "Combo PHY %c Voltage/Process Info : %s, PROCMON values : 0x%x, 0x%x, 0x%x\n",
+		    phy_name(phy), procmon->name, procmon->dw1, procmon->dw9,
+		    procmon->dw10);
+
 	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
 			    (0xff << 16) | 0xff, procmon->dw1);
 	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
-- 
2.25.1

