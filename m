Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A734E4FA0
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 10:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7903310E649;
	Wed, 23 Mar 2022 09:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11EDC10E649
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 09:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648028591; x=1679564591;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4LZlzstACBWyIZ38OqdXAcgHbA+fj42O269GGPaARts=;
 b=jvoBVsLl0ycbWMc3GrOQX8ONHpWu4k1B289QOONvtwutysDDmuBchM6h
 mcXBTae9t3VjfO9IEigGIaOIuk2mj/WUqfwRedKNXpFsTWRkOMxVPX6gA
 ovZhpVePTRPK/3dwsCFUsSlb6Op2Qxs114zLEYg+L27SufPRBj2NlqnTH
 4bTVrbZ9YtiAgk//NEi6uKXqLqvXG4LZN7wfFM6dTXQOo3UYU8dQE14J6
 2SPvOWafetV9//O6pWmNCh5vwd9tujIhhYQnMlmDIT7yA9Ov7YhsU/wzd
 nYEexCnSiBcrSXf+9eY8IbnOSjDoYg23kv/Wj6uryp2Cw1qrd7oZW2U+B Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="257783736"
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="257783736"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 02:43:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="560822343"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 02:43:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 15:13:07 +0530
Message-Id: <20220323094307.2439004-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315095730.1179100-1-ankit.k.nautiyal@intel.com>
References: <20220315095730.1179100-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/2] drm/i915/intel_combo_phy: Print I/O
 voltage info
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

Print I/O voltage and process info for each combo phy ports.

v2: Used drm_dbg_kms for logs. (Jani)
Added names for different voltage levels. (Imre)

v3: Used const char * for names. (Jani)

v4: Dropped the procom values and changed commit msg (Imre)

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_combo_phy.c    | 35 +++++++++++++------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 4dfe77351b8b..64890f39c3cc 100644
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
@@ -113,6 +124,10 @@ static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
 
 	procmon = icl_get_procmon_ref_values(dev_priv, phy);
 
+	drm_dbg_kms(&dev_priv->drm,
+		    "Combo PHY %c Voltage/Process Info : %s\n",
+		    phy_name(phy), procmon->name);
+
 	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
 			    (0xff << 16) | 0xff, procmon->dw1);
 	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
-- 
2.25.1

