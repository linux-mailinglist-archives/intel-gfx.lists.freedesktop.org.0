Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E415C4066D5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 07:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9DB16E975;
	Fri, 10 Sep 2021 05:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4886E970;
 Fri, 10 Sep 2021 05:33:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="217832063"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="217832063"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 22:33:32 -0700
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="480012433"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 22:33:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Matt Roper <matthew.d.roper@intel.com>
Date: Thu,  9 Sep 2021 22:33:16 -0700
Message-Id: <20210910053317.3379249-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210910053317.3379249-1-matthew.d.roper@intel.com>
References: <20210910053317.3379249-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/uncore: Drop gen11 mmio read
 handlers
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

Consolidate down to just a single 'fwtable' implementation.  For reads
we don't need to worry about shadow tables.  Also, the
NEEDS_FORCE_WAKE() check we previously had in the fwtable implementation
can be dropped --- if a register is outside that range on one of the old
platforms, then it won't belong to any forcewake range and 0 will be
returned anyway.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 45 +++++++++++------------------
 1 file changed, 17 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index c181e74fbf43..95398cb69722 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -935,14 +935,6 @@ static const struct intel_forcewake_range __vlv_fw_ranges[] = {
 };
 
 #define __fwtable_reg_read_fw_domains(uncore, offset) \
-({ \
-	enum forcewake_domains __fwd = 0; \
-	if (NEEDS_FORCE_WAKE((offset))) \
-		__fwd = find_fw_domain(uncore, offset); \
-	__fwd; \
-})
-
-#define __gen11_fwtable_reg_read_fw_domains(uncore, offset) \
 	find_fw_domain(uncore, offset)
 
 /* *Must* be sorted by offset! See intel_shadow_table_check(). */
@@ -1577,33 +1569,30 @@ static inline void __force_wake_auto(struct intel_uncore *uncore,
 		___force_wake_auto(uncore, fw_domains);
 }
 
-#define __gen_read(func, x) \
+#define __gen_fwtable_read(x) \
 static u##x \
-func##_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { \
+fwtable_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) \
+{ \
 	enum forcewake_domains fw_engine; \
 	GEN6_READ_HEADER(x); \
-	fw_engine = __##func##_reg_read_fw_domains(uncore, offset); \
+	fw_engine = __fwtable_reg_read_fw_domains(uncore, offset); \
 	if (fw_engine) \
 		__force_wake_auto(uncore, fw_engine); \
 	val = __raw_uncore_read##x(uncore, reg); \
 	GEN6_READ_FOOTER; \
 }
 
-#define __gen_reg_read_funcs(func) \
-static enum forcewake_domains \
-func##_reg_read_fw_domains(struct intel_uncore *uncore, i915_reg_t reg) { \
-	return __##func##_reg_read_fw_domains(uncore, i915_mmio_reg_offset(reg)); \
-} \
-\
-__gen_read(func, 8) \
-__gen_read(func, 16) \
-__gen_read(func, 32) \
-__gen_read(func, 64)
+static enum forcewake_domains
+fwtable_reg_read_fw_domains(struct intel_uncore *uncore, i915_reg_t reg) {
+	return __fwtable_reg_read_fw_domains(uncore, i915_mmio_reg_offset(reg));
+}
 
-__gen_reg_read_funcs(gen11_fwtable);
-__gen_reg_read_funcs(fwtable);
+__gen_fwtable_read(8)
+__gen_fwtable_read(16)
+__gen_fwtable_read(32)
+__gen_fwtable_read(64)
 
-#undef __gen_reg_read_funcs
+#undef __gen_fwtable_read
 #undef GEN6_READ_FOOTER
 #undef GEN6_READ_HEADER
 
@@ -2069,22 +2058,22 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __dg2_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen12_shadowed_regs);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
-		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
 	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __xehp_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen12_shadowed_regs);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
-		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
 	} else if (GRAPHICS_VER(i915) >= 12) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen12_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen12_shadowed_regs);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
-		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
 	} else if (GRAPHICS_VER(i915) == 11) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen11_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen11_shadowed_regs);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
-		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
 	} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen9_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen8_shadowed_regs);
-- 
2.25.4

