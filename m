Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ACB95C9EA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 12:08:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C083E10E462;
	Fri, 23 Aug 2024 10:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FfcBlbur";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D04410E462
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2024 10:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724407690; x=1755943690;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+dBlLNRUTf3VfyyU925eHbNjJ+HtgqHmFCxf9im50lM=;
 b=FfcBlburgGirpcn/8XtQiZ+SNINozqFO/WL3M41GF5dpeRsKANgM6qSq
 x/83+1vVAEmtsdatQdwzPn2LUN09k+UkFNMPmshS2lFFc7ZGjO3XjTWsv
 lGjP1oJx5g2sq8rDqZt9VMfj4jUOyYS4Jt7QbOwcT6xz6exWtR0vnFWHL
 Mv4TU05d122TCyDgwT2dQEMbjigNpigoj7pJ9N8S5qoI4t4OJ2cENNkg1
 ogLV8XFpxtAW+2YPpbPZlLeSPzIX2FRMzpld8iOo0WU7TGze6qV6JcImF
 sqFlvOkjO+UmFp2toWybPcWHJIiat5STspvXMOcBUS7vy9VbmcYKx+gYM A==;
X-CSE-ConnectionGUID: aOouJrfAS1WHyjQULyAhvg==
X-CSE-MsgGUID: YTPtmBrRRiy/7IgQ7mbJTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="33491101"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="33491101"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 03:08:10 -0700
X-CSE-ConnectionGUID: 6Z2t/vwFR56jb9HMlMfHrA==
X-CSE-MsgGUID: zSVWR7qJRYyh/pdUUM76mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="62054616"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orviesa006.jf.intel.com with ESMTP; 23 Aug 2024 03:08:08 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH] drm/i915/gt: Disable Redundant HZ Plane expansions for
 MTL/ARL and DG2
Date: Fri, 23 Aug 2024 15:40:09 +0530
Message-Id: <20240823101009.2093667-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
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

Program HZ Plane disable bit to 1 to stop sending the redundant
plane expansions.

Bspec: 68331

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  5 +++--
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 17 +++++++++++++++--
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index e42b3a5d4e63..74b633a78eda 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -446,8 +446,9 @@
 
 /* GEN7 chicken */
 #define GEN7_COMMON_SLICE_CHICKEN1		_MMIO(0x7010)
-#define   GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	(1 << 10)
-#define   GEN9_RHWO_OPTIMIZATION_DISABLE	(1 << 14)
+#define   GEN9_RHWO_OPTIMIZATION_DISABLE	REG_BIT(14)
+#define   GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	REG_BIT(10)
+#define   HIZ_PLANE_OPTIMIZATION_DISABLE	REG_BIT(9)
 
 #define COMMON_SLICE_CHICKEN2			_MMIO(0x7014)
 #define   GEN9_PBE_COMPRESSED_HASH_SELECTION	(1 << 13)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index bfe6d8fc820f..ff257bb2d15a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1550,6 +1550,13 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	/* Wa_14010648519:dg2 */
 	wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
+
+	/*
+	 * DisableHIZPlaneOptimizationForRedundantZPlaneUnit
+	 * This is not WA,THis is required by recommended tuning setting.
+	 */
+	wa_masked_dis(wal,
+		      GEN7_COMMON_SLICE_CHICKEN1, HIZ_PLANE_OPTIMIZATION_DISABLE);
 }
 
 static void
@@ -1570,6 +1577,12 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		/* Wa_14015795083 */
 		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 	}
+	/*
+	 * DisableHIZPlaneOptimizationForRedundantZPlaneUnit
+	 * This is not WA, This is required by recommended tuning setting.
+	 */
+	wa_masked_dis(wal,
+		      GEN7_COMMON_SLICE_CHICKEN1, HIZ_PLANE_OPTIMIZATION_DISABLE);
 
 	/*
 	 * Unlike older platforms, we no longer setup implicit steering here;
@@ -2072,7 +2085,7 @@ static void dg2_whitelist_build(struct intel_engine_cs *engine)
 	case RENDER_CLASS:
 		/* Required by recommended tuning setting (not a workaround) */
 		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
-
+		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
 		break;
 	default:
 		break;
@@ -2087,7 +2100,7 @@ static void xelpg_whitelist_build(struct intel_engine_cs *engine)
 	case RENDER_CLASS:
 		/* Required by recommended tuning setting (not a workaround) */
 		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
-
+		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
 		break;
 	default:
 		break;
-- 
2.34.1

