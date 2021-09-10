Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B877C4066CF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 07:33:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 293FB6E96D;
	Fri, 10 Sep 2021 05:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B587E6E964;
 Fri, 10 Sep 2021 05:33:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="243318587"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="243318587"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 22:33:32 -0700
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="480012437"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 22:33:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Matt Roper <matthew.d.roper@intel.com>
Date: Thu,  9 Sep 2021 22:33:17 -0700
Message-Id: <20210910053317.3379249-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210910053317.3379249-1-matthew.d.roper@intel.com>
References: <20210910053317.3379249-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/dg2: Add DG2-specific shadow
 register table
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

We thought the DG2 table of shadowed registers would be the same as the
gen12/xehp table, but it turns out that there are a few minor
differences that require us to define a new DG2-specific table:
 * One register is removed (0xC4D4)
 * One register is added (0xC4E0)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c           | 41 ++++++++++++++++++-
 drivers/gpu/drm/i915/selftests/intel_uncore.c |  1 +
 2 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 95398cb69722..088d9b9d1224 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1018,6 +1018,45 @@ static const struct i915_range gen12_shadowed_regs[] = {
 	{ .start = 0x1F8510, .end = 0x1F8550 },
 };
 
+static const struct i915_range dg2_shadowed_regs[] = {
+	{ .start =   0x2030, .end =   0x2030 },
+	{ .start =   0x2510, .end =   0x2550 },
+	{ .start =   0xA008, .end =   0xA00C },
+	{ .start =   0xA188, .end =   0xA188 },
+	{ .start =   0xA278, .end =   0xA278 },
+	{ .start =   0xA540, .end =   0xA56C },
+	{ .start =   0xC4C8, .end =   0xC4C8 },
+	{ .start =   0xC4E0, .end =   0xC4E0 },
+	{ .start =   0xC600, .end =   0xC600 },
+	{ .start =   0xC658, .end =   0xC658 },
+	{ .start =  0x22030, .end =  0x22030 },
+	{ .start =  0x22510, .end =  0x22550 },
+	{ .start = 0x1C0030, .end = 0x1C0030 },
+	{ .start = 0x1C0510, .end = 0x1C0550 },
+	{ .start = 0x1C4030, .end = 0x1C4030 },
+	{ .start = 0x1C4510, .end = 0x1C4550 },
+	{ .start = 0x1C8030, .end = 0x1C8030 },
+	{ .start = 0x1C8510, .end = 0x1C8550 },
+	{ .start = 0x1D0030, .end = 0x1D0030 },
+	{ .start = 0x1D0510, .end = 0x1D0550 },
+	{ .start = 0x1D4030, .end = 0x1D4030 },
+	{ .start = 0x1D4510, .end = 0x1D4550 },
+	{ .start = 0x1D8030, .end = 0x1D8030 },
+	{ .start = 0x1D8510, .end = 0x1D8550 },
+	{ .start = 0x1E0030, .end = 0x1E0030 },
+	{ .start = 0x1E0510, .end = 0x1E0550 },
+	{ .start = 0x1E4030, .end = 0x1E4030 },
+	{ .start = 0x1E4510, .end = 0x1E4550 },
+	{ .start = 0x1E8030, .end = 0x1E8030 },
+	{ .start = 0x1E8510, .end = 0x1E8550 },
+	{ .start = 0x1F0030, .end = 0x1F0030 },
+	{ .start = 0x1F0510, .end = 0x1F0550 },
+	{ .start = 0x1F4030, .end = 0x1F4030 },
+	{ .start = 0x1F4510, .end = 0x1F4550 },
+	{ .start = 0x1F8030, .end = 0x1F8030 },
+	{ .start = 0x1F8510, .end = 0x1F8550 },
+};
+
 static int mmio_range_cmp(u32 key, const struct i915_range *range)
 {
 	if (key < range->start)
@@ -2056,7 +2095,7 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 
 	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __dg2_fw_ranges);
-		ASSIGN_SHADOW_TABLE(uncore, gen12_shadowed_regs);
+		ASSIGN_SHADOW_TABLE(uncore, dg2_shadowed_regs);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
 	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index 22ef2c87df1a..bc8128170a99 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -68,6 +68,7 @@ static int intel_shadow_table_check(void)
 		{ gen8_shadowed_regs, ARRAY_SIZE(gen8_shadowed_regs) },
 		{ gen11_shadowed_regs, ARRAY_SIZE(gen11_shadowed_regs) },
 		{ gen12_shadowed_regs, ARRAY_SIZE(gen12_shadowed_regs) },
+		{ dg2_shadowed_regs, ARRAY_SIZE(dg2_shadowed_regs) },
 	};
 	const struct i915_range *range;
 	unsigned int i, j;
-- 
2.25.4

