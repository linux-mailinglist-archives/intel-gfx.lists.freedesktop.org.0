Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EA340724D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 22:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F056EAB3;
	Fri, 10 Sep 2021 20:10:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC716EAA5;
 Fri, 10 Sep 2021 20:10:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10103"; a="221205111"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="221205111"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 13:10:44 -0700
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="480346578"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 13:10:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 10 Sep 2021 13:10:28 -0700
Message-Id: <20210910201030.3436066-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210910201030.3436066-1-matthew.d.roper@intel.com>
References: <20210910201030.3436066-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915/uncore: Drop gen11/gen12 mmio
 write handlers
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

Now that the reference to the shadow table is stored within the uncore,
we don't need to generate separate fwtable, gen11_fwtable, and
gen12_fwtable variants of the register write functions; a single
'fwtable' implementation will work for all of those platforms now.

While consolidating the functions, gen11/gen12 pick up a
NEEDS_FORCE_WAKE() check that they didn't have before, allowing them to
bypass a lot of forcewake/shadow checking for non-GT registers (e.g.,
display).  However since these later platforms also introduce media
engines at higher MMIO offsets, the definition of NEEDS_FORCE_WAKE() is
extended to also consider register offsets above GEN11_BSD_RING_BASE.

v2:
 - Restore NEEDS_FORCE_WAKE(), but extend it for compatibility with the
   gen11+ platforms by also passing offsets above GEN11_BSD_RING_BASE.
   (Chris, Tvrtko)

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 61 ++++++++++-------------------
 1 file changed, 21 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 4c6898746d10..bfb2a6337f9d 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -851,7 +851,10 @@ void assert_forcewakes_active(struct intel_uncore *uncore,
 }
 
 /* We give fast paths for the really cool registers */
-#define NEEDS_FORCE_WAKE(reg) ((reg) < 0x40000)
+#define NEEDS_FORCE_WAKE(reg) ({ \
+	u32 __reg = (reg); \
+	__reg < 0x40000 || __reg >= GEN11_BSD_RING_BASE; \
+})
 
 static int fw_range_cmp(u32 offset, const struct intel_forcewake_range *entry)
 {
@@ -1071,27 +1074,10 @@ static const struct intel_forcewake_range __chv_fw_ranges[] = {
 };
 
 #define __fwtable_reg_write_fw_domains(uncore, offset) \
-({ \
-	enum forcewake_domains __fwd = 0; \
-	if (NEEDS_FORCE_WAKE((offset)) && !is_shadowed(uncore, offset)) \
-		__fwd = find_fw_domain(uncore, offset); \
-	__fwd; \
-})
-
-#define __gen11_fwtable_reg_write_fw_domains(uncore, offset) \
 ({ \
 	enum forcewake_domains __fwd = 0; \
 	const u32 __offset = (offset); \
-	if (!is_shadowed(uncore, __offset)) \
-		__fwd = find_fw_domain(uncore, __offset); \
-	__fwd; \
-})
-
-#define __gen12_fwtable_reg_write_fw_domains(uncore, offset) \
-({ \
-	enum forcewake_domains __fwd = 0; \
-	const u32 __offset = (offset); \
-	if (!is_shadowed(uncore, __offset)) \
+	if (NEEDS_FORCE_WAKE((__offset)) && !is_shadowed(uncore, __offset)) \
 		__fwd = find_fw_domain(uncore, __offset); \
 	__fwd; \
 })
@@ -1675,34 +1661,29 @@ __gen6_write(8)
 __gen6_write(16)
 __gen6_write(32)
 
-#define __gen_write(func, x) \
+#define __gen_fwtable_write(x) \
 static void \
-func##_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val, bool trace) { \
+fwtable_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val, bool trace) { \
 	enum forcewake_domains fw_engine; \
 	GEN6_WRITE_HEADER; \
-	fw_engine = __##func##_reg_write_fw_domains(uncore, offset); \
+	fw_engine = __fwtable_reg_write_fw_domains(uncore, offset); \
 	if (fw_engine) \
 		__force_wake_auto(uncore, fw_engine); \
 	__raw_uncore_write##x(uncore, reg, val); \
 	GEN6_WRITE_FOOTER; \
 }
 
-#define __gen_reg_write_funcs(func) \
-static enum forcewake_domains \
-func##_reg_write_fw_domains(struct intel_uncore *uncore, i915_reg_t reg) { \
-	return __##func##_reg_write_fw_domains(uncore, i915_mmio_reg_offset(reg)); \
-} \
-\
-__gen_write(func, 8) \
-__gen_write(func, 16) \
-__gen_write(func, 32)
-
+static enum forcewake_domains
+fwtable_reg_write_fw_domains(struct intel_uncore *uncore, i915_reg_t reg)
+{
+	return __fwtable_reg_write_fw_domains(uncore, i915_mmio_reg_offset(reg));
+}
 
-__gen_reg_write_funcs(gen12_fwtable);
-__gen_reg_write_funcs(gen11_fwtable);
-__gen_reg_write_funcs(fwtable);
+__gen_fwtable_write(8)
+__gen_fwtable_write(16)
+__gen_fwtable_write(32)
 
-#undef __gen_reg_write_funcs
+#undef __gen_fwtable_write
 #undef GEN6_WRITE_FOOTER
 #undef GEN6_WRITE_HEADER
 
@@ -2080,22 +2061,22 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __dg2_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen12_shadowed_regs);
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
 	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __xehp_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen12_shadowed_regs);
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
 	} else if (GRAPHICS_VER(i915) >= 12) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen12_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen12_shadowed_regs);
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
 	} else if (GRAPHICS_VER(i915) == 11) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen11_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen11_shadowed_regs);
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen11_fwtable);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
 	} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen9_fw_ranges);
-- 
2.25.4

