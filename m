Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E81CE3D9D2C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 07:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB3189DFD;
	Thu, 29 Jul 2021 05:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 240206E159
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 05:41:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="199987837"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="199987837"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 22:41:23 -0700
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="567114086"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 22:41:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 22:41:18 -0700
Message-Id: <20210729054118.2458523-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210729054118.2458523-1-matthew.d.roper@intel.com>
References: <20210729054118.2458523-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/xehp: Xe_HP shadowed registers are
 a strict superset of gen12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The list of shadowed registers on XeHP is identical to the set for
earlier gen12 platforms, with additional ranges added for the new VCS
and VECS engines.  Since those register ranges were reserved on earlier
gen12 platforms, it's safe to consolidate to a single gen12 table
rather than tracking Xe_HP separately.

Bspec: 52077
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c           | 50 +++++--------------
 drivers/gpu/drm/i915/selftests/intel_uncore.c |  1 -
 2 files changed, 12 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 42acf106a6df..4abe9df5fb76 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1006,39 +1006,24 @@ static const struct i915_range gen12_shadowed_regs[] = {
 	{ .start = 0x1D4510, .end = 0x1D4550 },
 	{ .start = 0x1D8030, .end = 0x1D8030 },
 	{ .start = 0x1D8510, .end = 0x1D8550 },
-};
 
-static const struct i915_range xehp_shadowed_regs[] = {
-	{ .start =   0x2000, .end =   0x2030 },
-	{ .start =   0x2550, .end =   0x2550 },
-	{ .start =   0xA008, .end =   0xA00C },
-	{ .start =  0x22030, .end =  0x22030 },
-	{ .start =  0x22550, .end =  0x22550 },
-	{ .start = 0x1C0030, .end = 0x1C0030 },
-	{ .start = 0x1C0550, .end = 0x1C0550 },
-	{ .start = 0x1C4030, .end = 0x1C4030 },
-	{ .start = 0x1C4550, .end = 0x1C4550 },
-	{ .start = 0x1C8030, .end = 0x1C8030 },
-	{ .start = 0x1C8550, .end = 0x1C8550 },
-	{ .start = 0x1D0030, .end = 0x1D0030 },
-	{ .start = 0x1D0550, .end = 0x1D0550 },
-	{ .start = 0x1D4030, .end = 0x1D4030 },
-	{ .start = 0x1D4550, .end = 0x1D4550 },
-	{ .start = 0x1D8030, .end = 0x1D8030 },
-	{ .start = 0x1D8550, .end = 0x1D8550 },
+	/*
+	 * The rest of these ranges are specific to Xe_HP and beyond, but
+	 * are reserved/unused ranges on earlier gen12 platforms, so they can
+	 * be safely added to the gen12 table.
+	 */
 	{ .start = 0x1E0030, .end = 0x1E0030 },
-	{ .start = 0x1E0550, .end = 0x1E0550 },
+	{ .start = 0x1E0510, .end = 0x1E0550 },
 	{ .start = 0x1E4030, .end = 0x1E4030 },
-	{ .start = 0x1E4550, .end = 0x1E4550 },
+	{ .start = 0x1E4510, .end = 0x1E4550 },
 	{ .start = 0x1E8030, .end = 0x1E8030 },
-	{ .start = 0x1E8550, .end = 0x1E8550 },
+	{ .start = 0x1E8510, .end = 0x1E8550 },
 	{ .start = 0x1F0030, .end = 0x1F0030 },
-	{ .start = 0x1F0550, .end = 0x1F0550 },
+	{ .start = 0x1F0510, .end = 0x1F0550 },
 	{ .start = 0x1F4030, .end = 0x1F4030 },
-	{ .start = 0x1F4550, .end = 0x1F4550 },
+	{ .start = 0x1F4510, .end = 0x1F4550 },
 	{ .start = 0x1F8030, .end = 0x1F8030 },
-	{ .start = 0x1F8550, .end = 0x1F8550 },
-	/* TODO: Other registers are not yet used */
+	{ .start = 0x1F8510, .end = 0x1F8550 },
 };
 
 static int mmio_range_cmp(u32 key, const struct i915_range *range)
@@ -1062,7 +1047,6 @@ static bool is_##x##_shadowed(u32 offset) \
 __is_X_shadowed(gen8)
 __is_X_shadowed(gen11)
 __is_X_shadowed(gen12)
-__is_X_shadowed(xehp)
 
 static enum forcewake_domains
 gen6_reg_write_fw_domains(struct intel_uncore *uncore, i915_reg_t reg)
@@ -1126,15 +1110,6 @@ static const struct intel_forcewake_range __chv_fw_ranges[] = {
 	__fwd; \
 })
 
-#define __xehp_fwtable_reg_write_fw_domains(uncore, offset) \
-({ \
-	enum forcewake_domains __fwd = 0; \
-	const u32 __offset = (offset); \
-	if (!is_xehp_shadowed(__offset)) \
-		__fwd = find_fw_domain(uncore, __offset); \
-	__fwd; \
-})
-
 /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
 static const struct intel_forcewake_range __gen9_fw_ranges[] = {
 	GEN_FW_RANGE(0x0, 0xaff, FORCEWAKE_GT),
@@ -1710,7 +1685,6 @@ __gen_write(func, 8) \
 __gen_write(func, 16) \
 __gen_write(func, 32)
 
-__gen_reg_write_funcs(xehp_fwtable);
 __gen_reg_write_funcs(gen12_fwtable);
 __gen_reg_write_funcs(gen11_fwtable);
 __gen_reg_write_funcs(fwtable);
@@ -2087,7 +2061,7 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 
 	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __xehp_fw_ranges);
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, xehp_fwtable);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
 	} else if (GRAPHICS_VER(i915) >= 12) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen12_fw_ranges);
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index d3e36ed32646..63b75585865f 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -68,7 +68,6 @@ static int intel_shadow_table_check(void)
 		{ gen8_shadowed_regs, ARRAY_SIZE(gen8_shadowed_regs) },
 		{ gen11_shadowed_regs, ARRAY_SIZE(gen11_shadowed_regs) },
 		{ gen12_shadowed_regs, ARRAY_SIZE(gen12_shadowed_regs) },
-		{ xehp_shadowed_regs, ARRAY_SIZE(xehp_shadowed_regs) },
 	};
 	const struct i915_range *range;
 	unsigned int i, j;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
