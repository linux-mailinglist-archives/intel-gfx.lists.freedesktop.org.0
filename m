Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485AD880AF9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 07:05:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E150410EC55;
	Wed, 20 Mar 2024 06:05:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nYwKZ+WI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFE5D10EC10
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 06:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710914718; x=1742450718;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pVIXEglHDwTlsXBTQ+YyD0VfBpbF64lnopQFmIP0zbw=;
 b=nYwKZ+WIMagaAnqQu/ywgClL+ALgpVh7C8v3obDsOLf6vLn/8cv/7KSO
 aZuuHM1gsCoT2pNF9J/b/6zdz6NfrfshO6eML1PzsptwTUtwOINMqqiq1
 p1aEbIA3EwdJ6SOdQnzkxmDIe8oc/g8lnGvS0mePlnaa5KfSL8Scq+sL6
 mExad+p3yUgQpgVE2uiS1m6HisvhF1QodQy+A8hxhw40h6omET8EPL0+l
 Bpt2s6G/BKXhfDGaMZ0qiVrnGzJUaVOIk0CvY8oZFfUCHD8r4fIjxKXlJ
 hhb8OH7sAUgPBcqFJZagbX0S82gSD/CAfQDFDKJbGAgKflDaUjjtrW0Pp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="28295579"
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="28295579"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 23:05:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="51485496"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 23:05:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [CI 1/6] drm/i915: Drop dead code for xehpsdv
Date: Tue, 19 Mar 2024 23:02:58 -0700
Message-ID: <20240320060543.4034215-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240320060543.4034215-1-lucas.demarchi@intel.com>
References: <20240320060543.4034215-1-lucas.demarchi@intel.com>
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

PCI IDs for XEHPSDV were never added and platform always marked with
force_probe. Drop what's not used and rename some places to either be
xehp or dg2, depending on the platform/IP checks.

The registers not used anymore are also removed.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 Documentation/gpu/rfc/i915_vm_bind.h          | 11 +--
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 40 ++++----
 drivers/gpu/drm/i915/gt/intel_gsc.c           | 15 ---
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        | 20 +---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 50 ----------
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 21 ++--
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 43 ---------
 drivers/gpu/drm/i915/gt/intel_migrate.c       | 18 ++--
 drivers/gpu/drm/i915/gt/intel_mocs.c          | 31 ------
 drivers/gpu/drm/i915/gt/intel_rps.c           |  2 -
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 95 -------------------
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               |  4 -
 drivers/gpu/drm/i915/i915_hwmon.c             |  6 --
 drivers/gpu/drm/i915/i915_pci.c               | 17 ----
 drivers/gpu/drm/i915/i915_perf.c              | 11 +--
 drivers/gpu/drm/i915/i915_reg.h               |  3 +-
 drivers/gpu/drm/i915/intel_clock_gating.c     | 10 --
 drivers/gpu/drm/i915/intel_device_info.c      |  1 -
 drivers/gpu/drm/i915/intel_device_info.h      |  1 -
 drivers/gpu/drm/i915/intel_step.c             | 10 --
 drivers/gpu/drm/i915/intel_uncore.c           | 23 +----
 drivers/gpu/drm/i915/selftests/intel_uncore.c |  1 -
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  2 -
 24 files changed, 55 insertions(+), 384 deletions(-)

diff --git a/Documentation/gpu/rfc/i915_vm_bind.h b/Documentation/gpu/rfc/i915_vm_bind.h
index 8a8fcd4fceac6..bc26dc1261041 100644
--- a/Documentation/gpu/rfc/i915_vm_bind.h
+++ b/Documentation/gpu/rfc/i915_vm_bind.h
@@ -93,12 +93,11 @@ struct drm_i915_gem_timeline_fence {
  * Multiple VA mappings can be created to the same section of the object
  * (aliasing).
  *
- * The @start, @offset and @length must be 4K page aligned. However the DG2
- * and XEHPSDV has 64K page size for device local memory and has compact page
- * table. On those platforms, for binding device local-memory objects, the
- * @start, @offset and @length must be 64K aligned. Also, UMDs should not mix
- * the local memory 64K page and the system memory 4K page bindings in the same
- * 2M range.
+ * The @start, @offset and @length must be 4K page aligned. However the DG2 has
+ * 64K page size for device local memory and has compact page table. On that
+ * platform, for binding device local-memory objects, the @start, @offset and
+ * @length must be 64K aligned. Also, UMDs should not mix the local memory 64K
+ * page and the system memory 4K page bindings in the same 2M range.
  *
  * Error code -EINVAL will be returned if @start, @offset and @length are not
  * properly aligned. In version 1 (See I915_PARAM_VM_BIND_VERSION), error code
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index fa46d2308b0ed..1bd0e041e15c2 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -500,11 +500,11 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 }
 
 static void
-xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
-			  struct i915_vma_resource *vma_res,
-			  struct sgt_dma *iter,
-			  unsigned int pat_index,
-			  u32 flags)
+xehp_ppgtt_insert_huge(struct i915_address_space *vm,
+		       struct i915_vma_resource *vma_res,
+		       struct sgt_dma *iter,
+		       unsigned int pat_index,
+		       u32 flags)
 {
 	const gen8_pte_t pte_encode = vm->pte_encode(0, pat_index, flags);
 	unsigned int rem = sg_dma_len(iter->sg);
@@ -741,8 +741,8 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
 	struct sgt_dma iter = sgt_dma(vma_res);
 
 	if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
-		if (GRAPHICS_VER_FULL(vm->i915) >= IP_VER(12, 50))
-			xehpsdv_ppgtt_insert_huge(vm, vma_res, &iter, pat_index, flags);
+		if (GRAPHICS_VER_FULL(vm->i915) >= IP_VER(12, 55))
+			xehp_ppgtt_insert_huge(vm, vma_res, &iter, pat_index, flags);
 		else
 			gen8_ppgtt_insert_huge(vm, vma_res, &iter, pat_index, flags);
 	} else  {
@@ -781,11 +781,11 @@ static void gen8_ppgtt_insert_entry(struct i915_address_space *vm,
 	drm_clflush_virt_range(&vaddr[gen8_pd_index(idx, 0)], sizeof(*vaddr));
 }
 
-static void __xehpsdv_ppgtt_insert_entry_lm(struct i915_address_space *vm,
-					    dma_addr_t addr,
-					    u64 offset,
-					    unsigned int pat_index,
-					    u32 flags)
+static void xehp_ppgtt_insert_entry_lm(struct i915_address_space *vm,
+				       dma_addr_t addr,
+				       u64 offset,
+				       unsigned int pat_index,
+				       u32 flags)
 {
 	u64 idx = offset >> GEN8_PTE_SHIFT;
 	struct i915_page_directory * const pdp =
@@ -810,15 +810,15 @@ static void __xehpsdv_ppgtt_insert_entry_lm(struct i915_address_space *vm,
 	vaddr[gen8_pd_index(idx, 0) / 16] = vm->pte_encode(addr, pat_index, flags);
 }
 
-static void xehpsdv_ppgtt_insert_entry(struct i915_address_space *vm,
-				       dma_addr_t addr,
-				       u64 offset,
-				       unsigned int pat_index,
-				       u32 flags)
+static void xehp_ppgtt_insert_entry(struct i915_address_space *vm,
+				    dma_addr_t addr,
+				    u64 offset,
+				    unsigned int pat_index,
+				    u32 flags)
 {
 	if (flags & PTE_LM)
-		return __xehpsdv_ppgtt_insert_entry_lm(vm, addr, offset,
-						       pat_index, flags);
+		return xehp_ppgtt_insert_entry_lm(vm, addr, offset,
+						  pat_index, flags);
 
 	return gen8_ppgtt_insert_entry(vm, addr, offset, pat_index, flags);
 }
@@ -1042,7 +1042,7 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
 	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
 	if (HAS_64K_PAGES(gt->i915))
-		ppgtt->vm.insert_page = xehpsdv_ppgtt_insert_entry;
+		ppgtt->vm.insert_page = xehp_ppgtt_insert_entry;
 	else
 		ppgtt->vm.insert_page = gen8_ppgtt_insert_entry;
 	ppgtt->vm.allocate_va_range = gen8_ppgtt_alloc;
diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index 6d440de8ba017..1e925c75fb080 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -103,19 +103,6 @@ static const struct gsc_def gsc_def_dg1[] = {
 	}
 };
 
-static const struct gsc_def gsc_def_xehpsdv[] = {
-	{
-		/* HECI1 not enabled on the device. */
-	},
-	{
-		.name = "mei-gscfi",
-		.bar = DG1_GSC_HECI2_BASE,
-		.bar_size = GSC_BAR_LENGTH,
-		.use_polling = true,
-		.slow_firmware = true,
-	}
-};
-
 static const struct gsc_def gsc_def_dg2[] = {
 	{
 		.name = "mei-gsc",
@@ -188,8 +175,6 @@ static void gsc_init_one(struct drm_i915_private *i915, struct intel_gsc *gsc,
 
 	if (IS_DG1(i915)) {
 		def = &gsc_def_dg1[intf_id];
-	} else if (IS_XEHPSDV(i915)) {
-		def = &gsc_def_xehpsdv[intf_id];
 	} else if (IS_DG2(i915)) {
 		def = &gsc_def_dg2[intf_id];
 	} else {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index e253750a51c56..5a2bd8de155a8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -57,24 +57,12 @@ static const struct intel_mmio_range icl_l3bank_steering_table[] = {
  * are of a "GAM" subclass that has special rules.  Thus we use a separate
  * GAM table farther down for those.
  */
-static const struct intel_mmio_range xehpsdv_mslice_steering_table[] = {
+static const struct intel_mmio_range dg2_mslice_steering_table[] = {
 	{ 0x00DD00, 0x00DDFF },
 	{ 0x00E900, 0x00FFFF }, /* 0xEA00 - OxEFFF is unused */
 	{},
 };
 
-static const struct intel_mmio_range xehpsdv_gam_steering_table[] = {
-	{ 0x004000, 0x004AFF },
-	{ 0x00C800, 0x00CFFF },
-	{},
-};
-
-static const struct intel_mmio_range xehpsdv_lncf_steering_table[] = {
-	{ 0x00B000, 0x00B0FF },
-	{ 0x00D800, 0x00D8FF },
-	{},
-};
-
 static const struct intel_mmio_range dg2_lncf_steering_table[] = {
 	{ 0x00B000, 0x00B0FF },
 	{ 0x00D880, 0x00D8FF },
@@ -188,17 +176,13 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 	} else if (IS_PONTEVECCHIO(i915)) {
 		gt->steering_table[INSTANCE0] = pvc_instance0_steering_table;
 	} else if (IS_DG2(i915)) {
-		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
+		gt->steering_table[MSLICE] = dg2_mslice_steering_table;
 		gt->steering_table[LNCF] = dg2_lncf_steering_table;
 		/*
 		 * No need to hook up the GAM table since it has a dedicated
 		 * steering control register on DG2 and can use implicit
 		 * steering.
 		 */
-	} else if (IS_XEHPSDV(i915)) {
-		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
-		gt->steering_table[LNCF] = xehpsdv_lncf_steering_table;
-		gt->steering_table[GAM] = xehpsdv_gam_steering_table;
 	} else if (GRAPHICS_VER(i915) >= 11 &&
 		   GRAPHICS_VER_FULL(i915) < IP_VER(12, 50)) {
 		gt->steering_table[L3BANK] = icl_l3bank_steering_table;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 50962cfd1353a..919c079037677 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -718,44 +718,11 @@
 
 #define UNSLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x9434)
 #define   VFUNIT_CLKGATE_DIS			REG_BIT(20)
-#define   TSGUNIT_CLKGATE_DIS			REG_BIT(17) /* XEHPSDV */
 #define   CG3DDISCFEG_CLKGATE_DIS		REG_BIT(17) /* DG2 */
 #define   GAMEDIA_CLKGATE_DIS			REG_BIT(11)
 #define   HSUNIT_CLKGATE_DIS			REG_BIT(8)
 #define   VSUNIT_CLKGATE_DIS			REG_BIT(3)
 
-#define UNSLCGCTL9440				_MMIO(0x9440)
-#define   GAMTLBOACS_CLKGATE_DIS		REG_BIT(28)
-#define   GAMTLBVDBOX5_CLKGATE_DIS		REG_BIT(27)
-#define   GAMTLBVDBOX6_CLKGATE_DIS		REG_BIT(26)
-#define   GAMTLBVDBOX3_CLKGATE_DIS		REG_BIT(24)
-#define   GAMTLBVDBOX4_CLKGATE_DIS		REG_BIT(23)
-#define   GAMTLBVDBOX7_CLKGATE_DIS		REG_BIT(22)
-#define   GAMTLBVDBOX2_CLKGATE_DIS		REG_BIT(21)
-#define   GAMTLBVDBOX0_CLKGATE_DIS		REG_BIT(17)
-#define   GAMTLBKCR_CLKGATE_DIS			REG_BIT(16)
-#define   GAMTLBGUC_CLKGATE_DIS			REG_BIT(15)
-#define   GAMTLBBLT_CLKGATE_DIS			REG_BIT(14)
-#define   GAMTLBVDBOX1_CLKGATE_DIS		REG_BIT(6)
-
-#define UNSLCGCTL9444				_MMIO(0x9444)
-#define   GAMTLBGFXA0_CLKGATE_DIS		REG_BIT(30)
-#define   GAMTLBGFXA1_CLKGATE_DIS		REG_BIT(29)
-#define   GAMTLBCOMPA0_CLKGATE_DIS		REG_BIT(28)
-#define   GAMTLBCOMPA1_CLKGATE_DIS		REG_BIT(27)
-#define   GAMTLBCOMPB0_CLKGATE_DIS		REG_BIT(26)
-#define   GAMTLBCOMPB1_CLKGATE_DIS		REG_BIT(25)
-#define   GAMTLBCOMPC0_CLKGATE_DIS		REG_BIT(24)
-#define   GAMTLBCOMPC1_CLKGATE_DIS		REG_BIT(23)
-#define   GAMTLBCOMPD0_CLKGATE_DIS		REG_BIT(22)
-#define   GAMTLBCOMPD1_CLKGATE_DIS		REG_BIT(21)
-#define   GAMTLBMERT_CLKGATE_DIS		REG_BIT(20)
-#define   GAMTLBVEBOX3_CLKGATE_DIS		REG_BIT(19)
-#define   GAMTLBVEBOX2_CLKGATE_DIS		REG_BIT(18)
-#define   GAMTLBVEBOX1_CLKGATE_DIS		REG_BIT(17)
-#define   GAMTLBVEBOX0_CLKGATE_DIS		REG_BIT(16)
-#define   LTCDD_CLKGATE_DIS			REG_BIT(10)
-
 #define GEN11_SLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x94d4)
 #define XEHP_SLICE_UNIT_LEVEL_CLKGATE		MCR_REG(0x94d4)
 #define   SARBUNIT_CLKGATE_DIS			(1 << 5)
@@ -765,9 +732,6 @@
 #define   L3_CLKGATE_DIS			REG_BIT(16)
 #define   L3_CR2X_CLKGATE_DIS			REG_BIT(17)
 
-#define SCCGCTL94DC				MCR_REG(0x94dc)
-#define   CG3DDISURB				REG_BIT(14)
-
 #define UNSLICE_UNIT_LEVEL_CLKGATE2		_MMIO(0x94e4)
 #define   VSUNIT_CLKGATE_DIS_TGL		REG_BIT(19)
 #define   PSDUNIT_CLKGATE_DIS			REG_BIT(5)
@@ -1046,9 +1010,6 @@
 #define XEHP_L3SQCREG5				MCR_REG(0xb158)
 #define   L3_PWM_TIMER_INIT_VAL_MASK		REG_GENMASK(9, 0)
 
-#define MLTICTXCTL				MCR_REG(0xb170)
-#define   TDONRENDER				REG_BIT(2)
-
 #define XEHP_L3SCQREG7				MCR_REG(0xb188)
 #define   BLEND_FILL_CACHING_OPT_DIS		REG_BIT(3)
 
@@ -1057,9 +1018,6 @@
 #define   SCRUB_RATE_PER_BANK_MASK		REG_GENMASK(2, 0)
 #define   SCRUB_RATE_4B_PER_CLK			REG_FIELD_PREP(SCRUB_RATE_PER_BANK_MASK, 0x6)
 
-#define L3SQCREG1_CCS0				MCR_REG(0xb200)
-#define   FLUSHALLNONCOH			REG_BIT(5)
-
 #define GEN11_GLBLINVL				_MMIO(0xb404)
 #define   GEN11_BANK_HASH_ADDR_EXCL_MASK	(0x7f << 5)
 #define   GEN11_BANK_HASH_ADDR_EXCL_BIT0	(1 << 5)
@@ -1109,7 +1067,6 @@
 #define XEHP_COMPCTX_TLB_INV_CR			MCR_REG(0xcf04)
 #define XELPMP_GSC_TLB_INV_CR			_MMIO(0xcf04)   /* media GT only */
 
-#define XEHP_MERT_MOD_CTRL			MCR_REG(0xcf28)
 #define RENDER_MOD_CTRL				MCR_REG(0xcf2c)
 #define COMP_MOD_CTRL				MCR_REG(0xcf30)
 #define XELPMP_GSC_MOD_CTRL			_MMIO(0xcf30)	/* media GT only */
@@ -1185,7 +1142,6 @@
 #define EU_PERF_CNTL4				PERF_REG(0xe45c)
 
 #define GEN9_ROW_CHICKEN4			MCR_REG(0xe48c)
-#define   GEN12_DISABLE_GRF_CLEAR		REG_BIT(13)
 #define   XEHP_DIS_BBL_SYSPIPE			REG_BIT(11)
 #define   GEN12_DISABLE_TDL_PUSH		REG_BIT(9)
 #define   GEN11_DIS_PICK_2ND_EU			REG_BIT(7)
@@ -1202,7 +1158,6 @@
 #define   FLOW_CONTROL_ENABLE			REG_BIT(15)
 #define   UGM_BACKUP_MODE			REG_BIT(13)
 #define   MDQ_ARBITRATION_MODE			REG_BIT(12)
-#define   SYSTOLIC_DOP_CLOCK_GATING_DIS		REG_BIT(10)
 #define   PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE	REG_BIT(8)
 #define   STALL_DOP_GATING_DISABLE		REG_BIT(5)
 #define   THROTTLE_12_5				REG_GENMASK(4, 2)
@@ -1679,11 +1634,6 @@
 
 #define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
 
-#define GT0_PACKAGE_ENERGY_STATUS		_MMIO(0x250004)
-#define GT0_PACKAGE_RAPL_LIMIT			_MMIO(0x250008)
-#define GT0_PACKAGE_POWER_SKU_UNIT		_MMIO(0x250068)
-#define GT0_PLATFORM_ENERGY_STATUS		_MMIO(0x25006c)
-
 /*
  * Standalone Media's non-engine GT registers are located at their regular GT
  * offsets plus 0x380000.  This extra offset is stored inside the intel_uncore
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index eca4a6a65556b..d7784650e4d93 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -573,7 +573,6 @@ static ssize_t media_freq_factor_show(struct kobject *kobj,
 				      char *buff)
 {
 	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
-	struct intel_guc_slpc *slpc = &gt_to_guc(gt)->slpc;
 	intel_wakeref_t wakeref;
 	u32 mode;
 
@@ -581,20 +580,12 @@ static ssize_t media_freq_factor_show(struct kobject *kobj,
 	 * Retrieve media_ratio_mode from GEN6_RPNSWREQ bit 13 set by
 	 * GuC. GEN6_RPNSWREQ:13 value 0 represents 1:2 and 1 represents 1:1
 	 */
-	if (IS_XEHPSDV(gt->i915) &&
-	    slpc->media_ratio_mode == SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL) {
-		/*
-		 * For XEHPSDV dynamic mode GEN6_RPNSWREQ:13 does not contain
-		 * the media_ratio_mode, just return the cached media ratio
-		 */
-		mode = slpc->media_ratio_mode;
-	} else {
-		with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-			mode = intel_uncore_read(gt->uncore, GEN6_RPNSWREQ);
-		mode = REG_FIELD_GET(GEN12_MEDIA_FREQ_RATIO, mode) ?
-			SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_ONE :
-			SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_TWO;
-	}
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		mode = intel_uncore_read(gt->uncore, GEN6_RPNSWREQ);
+
+	mode = REG_FIELD_GET(GEN12_MEDIA_FREQ_RATIO, mode) ?
+		SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_ONE :
+		SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_TWO;
 
 	return sysfs_emit(buff, "%u\n", media_ratio_mode_to_factor(mode));
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 7c367ba8d9dcf..7f1b00cb9924c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -546,47 +546,6 @@ static const u8 gen12_rcs_offsets[] = {
 	END
 };
 
-static const u8 xehp_rcs_offsets[] = {
-	NOP(1),
-	LRI(13, POSTED),
-	REG16(0x244),
-	REG(0x034),
-	REG(0x030),
-	REG(0x038),
-	REG(0x03c),
-	REG(0x168),
-	REG(0x140),
-	REG(0x110),
-	REG(0x1c0),
-	REG(0x1c4),
-	REG(0x1c8),
-	REG(0x180),
-	REG16(0x2b4),
-
-	NOP(5),
-	LRI(9, POSTED),
-	REG16(0x3a8),
-	REG16(0x28c),
-	REG16(0x288),
-	REG16(0x284),
-	REG16(0x280),
-	REG16(0x27c),
-	REG16(0x278),
-	REG16(0x274),
-	REG16(0x270),
-
-	LRI(3, POSTED),
-	REG(0x1b0),
-	REG16(0x5a8),
-	REG16(0x5ac),
-
-	NOP(6),
-	LRI(1, 0),
-	REG(0x0c8),
-
-	END
-};
-
 static const u8 dg2_rcs_offsets[] = {
 	NOP(1),
 	LRI(15, POSTED),
@@ -695,8 +654,6 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
 			return mtl_rcs_offsets;
 		else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 			return dg2_rcs_offsets;
-		else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
-			return xehp_rcs_offsets;
 		else if (GRAPHICS_VER(engine->i915) >= 12)
 			return gen12_rcs_offsets;
 		else if (GRAPHICS_VER(engine->i915) >= 11)
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 576e5ef0289ba..86ba2f2e485c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -35,9 +35,9 @@ static bool engine_supports_migration(struct intel_engine_cs *engine)
 	return true;
 }
 
-static void xehpsdv_toggle_pdes(struct i915_address_space *vm,
-				struct i915_page_table *pt,
-				void *data)
+static void xehp_toggle_pdes(struct i915_address_space *vm,
+			     struct i915_page_table *pt,
+			     void *data)
 {
 	struct insert_pte_data *d = data;
 
@@ -52,9 +52,9 @@ static void xehpsdv_toggle_pdes(struct i915_address_space *vm,
 	d->offset += SZ_2M;
 }
 
-static void xehpsdv_insert_pte(struct i915_address_space *vm,
-			       struct i915_page_table *pt,
-			       void *data)
+static void xehp_insert_pte(struct i915_address_space *vm,
+			    struct i915_page_table *pt,
+			    void *data)
 {
 	struct insert_pte_data *d = data;
 
@@ -120,7 +120,7 @@ static struct i915_address_space *migrate_vm(struct intel_gt *gt)
 	 * 512 entry layout using 4K GTT pages. The other two windows just map
 	 * lmem pages and must use the new compact 32 entry layout using 64K GTT
 	 * pages, which ensures we can address any lmem object that the user
-	 * throws at us. We then also use the xehpsdv_toggle_pdes as a way of
+	 * throws at us. We then also use the xehp_toggle_pdes as a way of
 	 * just toggling the PDE bit(GEN12_PDE_64K) for us, to enable the
 	 * compact layout for each of these page-tables, that fall within the
 	 * [CHUNK_SIZE, 3 * CHUNK_SIZE) range.
@@ -209,12 +209,12 @@ static struct i915_address_space *migrate_vm(struct intel_gt *gt)
 		/* Now allow the GPU to rewrite the PTE via its own ppGTT */
 		if (HAS_64K_PAGES(gt->i915)) {
 			vm->vm.foreach(&vm->vm, base, d.offset - base,
-				       xehpsdv_insert_pte, &d);
+				       xehp_insert_pte, &d);
 			d.offset = base + CHUNK_SZ;
 			vm->vm.foreach(&vm->vm,
 				       d.offset,
 				       2 * CHUNK_SZ,
-				       xehpsdv_toggle_pdes, &d);
+				       xehp_toggle_pdes, &d);
 		} else {
 			vm->vm.foreach(&vm->vm, base, d.offset - base,
 				       insert_pte, &d);
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 25c1023eb5f9f..c931c56945bde 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -367,31 +367,6 @@ static const struct drm_i915_mocs_entry gen12_mocs_table[] = {
 		   L3_3_WB),
 };
 
-static const struct drm_i915_mocs_entry xehpsdv_mocs_table[] = {
-	/* wa_1608975824 */
-	MOCS_ENTRY(0, 0, L3_3_WB | L3_LKUP(1)),
-
-	/* UC - Coherent; GO:L3 */
-	MOCS_ENTRY(1, 0, L3_1_UC | L3_LKUP(1)),
-	/* UC - Coherent; GO:Memory */
-	MOCS_ENTRY(2, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
-	/* UC - Non-Coherent; GO:Memory */
-	MOCS_ENTRY(3, 0, L3_1_UC | L3_GLBGO(1)),
-	/* UC - Non-Coherent; GO:L3 */
-	MOCS_ENTRY(4, 0, L3_1_UC),
-
-	/* WB */
-	MOCS_ENTRY(5, 0, L3_3_WB | L3_LKUP(1)),
-
-	/* HW Reserved - SW program but never use. */
-	MOCS_ENTRY(48, 0, L3_3_WB | L3_LKUP(1)),
-	MOCS_ENTRY(49, 0, L3_1_UC | L3_LKUP(1)),
-	MOCS_ENTRY(60, 0, L3_1_UC),
-	MOCS_ENTRY(61, 0, L3_1_UC),
-	MOCS_ENTRY(62, 0, L3_1_UC),
-	MOCS_ENTRY(63, 0, L3_1_UC),
-};
-
 static const struct drm_i915_mocs_entry dg2_mocs_table[] = {
 	/* UC - Coherent; GO:L3 */
 	MOCS_ENTRY(0, 0, L3_1_UC | L3_LKUP(1)),
@@ -514,12 +489,6 @@ static unsigned int get_mocs_settings(struct drm_i915_private *i915,
 		table->uc_index = 1;
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
 		table->unused_entries_index = 3;
-	} else if (IS_XEHPSDV(i915)) {
-		table->size = ARRAY_SIZE(xehpsdv_mocs_table);
-		table->table = xehpsdv_mocs_table;
-		table->uc_index = 2;
-		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
-		table->unused_entries_index = 5;
 	} else if (IS_DG1(i915)) {
 		table->size = ARRAY_SIZE(dg1_mocs_table);
 		table->table = dg1_mocs_table;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index a929aa6e3c85a..1788db4376e50 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1092,8 +1092,6 @@ static u32 intel_rps_read_state_cap(struct intel_rps *rps)
 
 	if (IS_PONTEVECCHIO(i915))
 		return intel_uncore_read(uncore, PVC_RP_STATE_CAP);
-	else if (IS_XEHPSDV(i915))
-		return intel_uncore_read(uncore, XEHPSDV_RP_STATE_CAP);
 	else if (IS_GEN9_LP(i915))
 		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
 	else
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b079cbbc1897e..cfe2f4b64f040 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -922,8 +922,6 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 		; /* noop; none at this time */
 	else if (IS_DG2(i915))
 		dg2_ctx_workarounds_init(engine, wal);
-	else if (IS_XEHPSDV(i915))
-		; /* noop; none at this time */
 	else if (IS_DG1(i915))
 		dg1_ctx_workarounds_init(engine, wal);
 	else if (GRAPHICS_VER(i915) == 12)
@@ -1350,9 +1348,6 @@ xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
 		gt->steering_table[MSLICE] = NULL;
 	}
 
-	if (IS_XEHPSDV(gt->i915) && slice_mask & BIT(0))
-		gt->steering_table[GAM] = NULL;
-
 	slice = __ffs(slice_mask);
 	subslice = intel_sseu_find_first_xehp_dss(sseu, GEN_DSS_PER_GSLICE, slice) %
 		GEN_DSS_PER_GSLICE;
@@ -1519,76 +1514,6 @@ dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2, VSUNIT_CLKGATE_DIS_TGL);
 }
 
-static void
-xehpsdv_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
-{
-	struct drm_i915_private *i915 = gt->i915;
-
-	xehp_init_mcr(gt, wal);
-
-	/* Wa_1409757795:xehpsdv */
-	wa_mcr_write_or(wal, SCCGCTL94DC, CG3DDISURB);
-
-	/* Wa_18011725039:xehpsdv */
-	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A1, STEP_B0)) {
-		wa_mcr_masked_dis(wal, MLTICTXCTL, TDONRENDER);
-		wa_mcr_write_or(wal, L3SQCREG1_CCS0, FLUSHALLNONCOH);
-	}
-
-	/* Wa_16011155590:xehpsdv */
-	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
-		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
-			    TSGUNIT_CLKGATE_DIS);
-
-	/* Wa_14011780169:xehpsdv */
-	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER)) {
-		wa_write_or(wal, UNSLCGCTL9440, GAMTLBOACS_CLKGATE_DIS |
-			    GAMTLBVDBOX7_CLKGATE_DIS |
-			    GAMTLBVDBOX6_CLKGATE_DIS |
-			    GAMTLBVDBOX5_CLKGATE_DIS |
-			    GAMTLBVDBOX4_CLKGATE_DIS |
-			    GAMTLBVDBOX3_CLKGATE_DIS |
-			    GAMTLBVDBOX2_CLKGATE_DIS |
-			    GAMTLBVDBOX1_CLKGATE_DIS |
-			    GAMTLBVDBOX0_CLKGATE_DIS |
-			    GAMTLBKCR_CLKGATE_DIS |
-			    GAMTLBGUC_CLKGATE_DIS |
-			    GAMTLBBLT_CLKGATE_DIS);
-		wa_write_or(wal, UNSLCGCTL9444, GAMTLBGFXA0_CLKGATE_DIS |
-			    GAMTLBGFXA1_CLKGATE_DIS |
-			    GAMTLBCOMPA0_CLKGATE_DIS |
-			    GAMTLBCOMPA1_CLKGATE_DIS |
-			    GAMTLBCOMPB0_CLKGATE_DIS |
-			    GAMTLBCOMPB1_CLKGATE_DIS |
-			    GAMTLBCOMPC0_CLKGATE_DIS |
-			    GAMTLBCOMPC1_CLKGATE_DIS |
-			    GAMTLBCOMPD0_CLKGATE_DIS |
-			    GAMTLBCOMPD1_CLKGATE_DIS |
-			    GAMTLBMERT_CLKGATE_DIS   |
-			    GAMTLBVEBOX3_CLKGATE_DIS |
-			    GAMTLBVEBOX2_CLKGATE_DIS |
-			    GAMTLBVEBOX1_CLKGATE_DIS |
-			    GAMTLBVEBOX0_CLKGATE_DIS);
-	}
-
-	/* Wa_16012725990:xehpsdv */
-	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A1, STEP_FOREVER))
-		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE, VFUNIT_CLKGATE_DIS);
-
-	/* Wa_14011060649:xehpsdv */
-	wa_14011060649(gt, wal);
-
-	/* Wa_14012362059:xehpsdv */
-	wa_mcr_write_or(wal, XEHP_MERT_MOD_CTRL, FORCE_MISS_FTLB);
-
-	/* Wa_14014368820:xehpsdv */
-	wa_mcr_write_or(wal, XEHP_GAMCNTRL_CTRL,
-			INVALIDATION_BROADCAST_MODE_DIS | GLOBAL_INVALIDATION_MODE);
-
-	/* Wa_14010670810:xehpsdv */
-	wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
-}
-
 static void
 dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
@@ -1759,8 +1684,6 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 		pvc_gt_workarounds_init(gt, wal);
 	else if (IS_DG2(i915))
 		dg2_gt_workarounds_init(gt, wal);
-	else if (IS_XEHPSDV(i915))
-		xehpsdv_gt_workarounds_init(gt, wal);
 	else if (IS_DG1(i915))
 		dg1_gt_workarounds_init(gt, wal);
 	else if (GRAPHICS_VER(i915) == 12)
@@ -2232,8 +2155,6 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 		pvc_whitelist_build(engine);
 	else if (IS_DG2(i915))
 		dg2_whitelist_build(engine);
-	else if (IS_XEHPSDV(i915))
-		; /* none needed */
 	else if (GRAPHICS_VER(i915) == 12)
 		tgl_whitelist_build(engine);
 	else if (GRAPHICS_VER(i915) == 11)
@@ -2969,22 +2890,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 			   0 /* write-only, so skip validation */,
 			   true);
 	}
-
-	if (IS_XEHPSDV(i915)) {
-		/* Wa_1409954639 */
-		wa_mcr_masked_en(wal,
-				 GEN8_ROW_CHICKEN,
-				 SYSTOLIC_DOP_CLOCK_GATING_DIS);
-
-		/* Wa_1607196519 */
-		wa_mcr_masked_en(wal,
-				 GEN9_ROW_CHICKEN4,
-				 GEN12_DISABLE_GRF_CLEAR);
-
-		/* Wa_14010449647:xehpsdv */
-		wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
-				 GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
-	}
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 6dfe5d9456c69..28277321d9ca9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -51,8 +51,8 @@ static void uc_expand_default_options(struct intel_uc *uc)
 	/* Default: enable HuC authentication and GuC submission */
 	i915->params.enable_guc = ENABLE_GUC_LOAD_HUC | ENABLE_GUC_SUBMISSION;
 
-	/* XEHPSDV and PVC do not use HuC */
-	if (IS_XEHPSDV(i915) || IS_PONTEVECCHIO(i915))
+	/* PVC does not use HuC */
+	if (IS_PONTEVECCHIO(i915))
 		i915->params.enable_guc &= ~ENABLE_GUC_LOAD_HUC;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e81b3b2858acc..dff056587459f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -544,7 +544,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_DG1(i915)        IS_PLATFORM(i915, INTEL_DG1)
 #define IS_ALDERLAKE_S(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_S)
 #define IS_ALDERLAKE_P(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_P)
-#define IS_XEHPSDV(i915) IS_PLATFORM(i915, INTEL_XEHPSDV)
 #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
 #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
 #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
@@ -621,9 +620,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_TIGERLAKE_UY(i915) \
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
-#define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
-	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
-
 #define IS_PVC_BD_STEP(__i915, since, until) \
 	(IS_PONTEVECCHIO(__i915) && \
 	 IS_BASEDIE_STEP(__i915, since, until))
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index b758fd110c204..c9169e56b9a18 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -739,12 +739,6 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
 		hwmon->rg.energy_status_all = PCU_PACKAGE_ENERGY_STATUS;
 		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
-	} else if (IS_XEHPSDV(i915)) {
-		hwmon->rg.pkg_power_sku_unit = GT0_PACKAGE_POWER_SKU_UNIT;
-		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
-		hwmon->rg.pkg_rapl_limit = GT0_PACKAGE_RAPL_LIMIT;
-		hwmon->rg.energy_status_all = GT0_PLATFORM_ENERGY_STATUS;
-		hwmon->rg.energy_status_tile = GT0_PACKAGE_ENERGY_STATUS;
 	} else {
 		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
 		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 8b4fdeabb12a5..b318b7c6bf737 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -734,23 +734,6 @@ static const struct intel_device_info adl_p_info = {
 	.__runtime.media.ip.ver = 12, \
 	.__runtime.media.ip.rel = 50
 
-__maybe_unused
-static const struct intel_device_info xehpsdv_info = {
-	XE_HP_FEATURES,
-	XE_HPM_FEATURES,
-	DGFX_FEATURES,
-	PLATFORM(INTEL_XEHPSDV),
-	.has_64k_pages = 1,
-	.has_media_ratio_mode = 1,
-	.platform_engine_mask =
-		BIT(RCS0) | BIT(BCS0) |
-		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
-		BIT(VCS0) | BIT(VCS1) | BIT(VCS2) | BIT(VCS3) |
-		BIT(VCS4) | BIT(VCS5) | BIT(VCS6) | BIT(VCS7) |
-		BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3),
-	.require_force_probe = 1,
-};
-
 #define DG2_FEATURES \
 	XE_HP_FEATURES, \
 	XE_HPM_FEATURES, \
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index bd9d812b1afa7..9052889dc0dc8 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2881,11 +2881,11 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 	int ret;
 
 	/*
-	 * Wa_1508761755:xehpsdv, dg2
+	 * Wa_1508761755
 	 * EU NOA signals behave incorrectly if EU clock gating is enabled.
 	 * Disable thread stall DOP gating and EU DOP gating.
 	 */
-	if (IS_XEHPSDV(i915) || IS_DG2(i915)) {
+	if (IS_DG2(i915)) {
 		intel_gt_mcr_multicast_write(uncore->gt, GEN8_ROW_CHICKEN,
 					     _MASKED_BIT_ENABLE(STALL_DOP_GATING_DISABLE));
 		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
@@ -2911,7 +2911,7 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 	/*
 	 * Initialize Super Queue Internal Cnt Register
 	 * Set PMON Enable in order to collect valid metrics.
-	 * Enable byets per clock reporting in OA for XEHPSDV onward.
+	 * Enable bytes per clock reporting in OA.
 	 */
 	sqcnt1 = GEN12_SQCNT1_PMON_ENABLE |
 		 (HAS_OA_BPC_REPORTING(i915) ? GEN12_SQCNT1_OABPC : 0);
@@ -2971,10 +2971,9 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 	u32 sqcnt1;
 
 	/*
-	 * Wa_1508761755:xehpsdv, dg2
-	 * Enable thread stall DOP gating and EU DOP gating.
+	 * Wa_1508761755: Enable thread stall DOP gating and EU DOP gating.
 	 */
-	if (IS_XEHPSDV(i915) || IS_DG2(i915)) {
+	if (IS_DG2(i915)) {
 		intel_gt_mcr_multicast_write(uncore->gt, GEN8_ROW_CHICKEN,
 					     _MASKED_BIT_DISABLE(STALL_DOP_GATING_DISABLE));
 		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d6193c858a74f..7a84eb31818cc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1750,7 +1750,6 @@
 
 #define BXT_RP_STATE_CAP        _MMIO(0x138170)
 #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
-#define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
 #define PVC_RP_STATE_CAP	_MMIO(0x281014)
 
 #define MTL_RP_STATE_CAP	_MMIO(0x138000)
@@ -5401,7 +5400,7 @@
 #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
 #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
 #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
-#define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv, pvc */
+#define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
 /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
 #define     PCODE_MBOX_FC_SC_READ_FUSED_P0	0x0
 #define     PCODE_MBOX_FC_SC_READ_FUSED_PN	0x1
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 39f23288e8a80..e34e1aabe6f86 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -343,13 +343,6 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *i915,
 	intel_uncore_write(&i915->uncore, GEN7_MISCCPCTL, misccpctl);
 }
 
-static void xehpsdv_init_clock_gating(struct drm_i915_private *i915)
-{
-	/* Wa_22010146351:xehpsdv */
-	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
-		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
-}
-
 static void dg2_init_clock_gating(struct drm_i915_private *i915)
 {
 	/* Wa_22010954014:dg2 */
@@ -731,7 +724,6 @@ static const struct drm_i915_clock_gating_funcs platform##_clock_gating_funcs =
 
 CG_FUNCS(pvc);
 CG_FUNCS(dg2);
-CG_FUNCS(xehpsdv);
 CG_FUNCS(cfl);
 CG_FUNCS(skl);
 CG_FUNCS(kbl);
@@ -768,8 +760,6 @@ void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
 		i915->clock_gating_funcs = &pvc_clock_gating_funcs;
 	else if (IS_DG2(i915))
 		i915->clock_gating_funcs = &dg2_clock_gating_funcs;
-	else if (IS_XEHPSDV(i915))
-		i915->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
 	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
 		i915->clock_gating_funcs = &cfl_clock_gating_funcs;
 	else if (IS_SKYLAKE(i915))
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 59bea1398c911..de28cbe758f7e 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -70,7 +70,6 @@ static const char * const platform_names[] = {
 	PLATFORM_NAME(DG1),
 	PLATFORM_NAME(ALDERLAKE_S),
 	PLATFORM_NAME(ALDERLAKE_P),
-	PLATFORM_NAME(XEHPSDV),
 	PLATFORM_NAME(DG2),
 	PLATFORM_NAME(PONTEVECCHIO),
 	PLATFORM_NAME(METEORLAKE),
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index eba2f0b919c87..2299327e59f0a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -87,7 +87,6 @@ enum intel_platform {
 	INTEL_DG1,
 	INTEL_ALDERLAKE_S,
 	INTEL_ALDERLAKE_P,
-	INTEL_XEHPSDV,
 	INTEL_DG2,
 	INTEL_PONTEVECCHIO,
 	INTEL_METEORLAKE,
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index b4162f1be7651..d524bfe17c270 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -102,13 +102,6 @@ static const struct intel_step_info adlp_revids[] = {
 	[0xC] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_D0 },
 };
 
-static const struct intel_step_info xehpsdv_revids[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0) },
-	[0x1] = { COMMON_GT_MEDIA_STEP(A1) },
-	[0x4] = { COMMON_GT_MEDIA_STEP(B0) },
-	[0x8] = { COMMON_GT_MEDIA_STEP(C0) },
-};
-
 static const struct intel_step_info dg2_g10_revid_step_tbl[] = {
 	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
 	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display_step = STEP_A0 },
@@ -190,9 +183,6 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_DG2_G12(i915)) {
 		revids = dg2_g12_revid_step_tbl;
 		size = ARRAY_SIZE(dg2_g12_revid_step_tbl);
-	} else if (IS_XEHPSDV(i915)) {
-		revids = xehpsdv_revids;
-		size = ARRAY_SIZE(xehpsdv_revids);
 	} else if (IS_ALDERLAKE_P_N(i915)) {
 		revids = adlp_n_revids;
 		size = ARRAY_SIZE(adlp_n_revids);
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 76400e9c40f05..7695bb946fff4 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1533,21 +1533,16 @@ static const struct intel_forcewake_range __gen12_fw_ranges[] = {
 		0x12000 - 0x127ff: always on					\
 		0x12800 - 0x12fff: reserved */					\
 	GEN_FW_RANGE(0x13000, 0x131ff, FORCEWAKE_MEDIA_VDBOX0), /* DG2 only */	\
-	GEN_FW_RANGE(0x13200, 0x13fff, FORCEWAKE_MEDIA_VDBOX2), /*		\
+	GEN_FW_RANGE(0x13200, 0x147ff, FORCEWAKE_MEDIA_VDBOX2), /*		\
 		0x13200 - 0x133ff: VD2 (DG2 only)				\
-		0x13400 - 0x13fff: reserved */					\
-	GEN_FW_RANGE(0x14000, 0x141ff, FORCEWAKE_MEDIA_VDBOX0), /* XEHPSDV only */	\
-	GEN_FW_RANGE(0x14200, 0x143ff, FORCEWAKE_MEDIA_VDBOX2), /* XEHPSDV only */	\
-	GEN_FW_RANGE(0x14400, 0x145ff, FORCEWAKE_MEDIA_VDBOX4), /* XEHPSDV only */	\
-	GEN_FW_RANGE(0x14600, 0x147ff, FORCEWAKE_MEDIA_VDBOX6), /* XEHPSDV only */	\
+		0x13400 - 0x147ff: reserved */					\
 	GEN_FW_RANGE(0x14800, 0x14fff, FORCEWAKE_RENDER),			\
 	GEN_FW_RANGE(0x15000, 0x16dff, FORCEWAKE_GT), /*			\
 		0x15000 - 0x15fff: gt (DG2 only)				\
 		0x16000 - 0x16dff: reserved */					\
-	GEN_FW_RANGE(0x16e00, 0x1ffff, FORCEWAKE_RENDER),			\
-	GEN_FW_RANGE(0x20000, 0x21fff, FORCEWAKE_MEDIA_VDBOX0), /*		\
-		0x20000 - 0x20fff: VD0 (XEHPSDV only)				\
-		0x21000 - 0x21fff: reserved */					\
+	GEN_FW_RANGE(0x16e00, 0x21fff, FORCEWAKE_RENDER), /*			\
+		0x16e00 - 0x1ffff: render					\
+		0x20000 - 0x21fff: reserved */					\
 	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_GT),				\
 	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*					\
 		0x24000 - 0x2407f: always on					\
@@ -1627,10 +1622,6 @@ static const struct intel_forcewake_range __gen12_fw_ranges[] = {
 		0x1f6e00 - 0x1f7fff: reserved */				\
 	GEN_FW_RANGE(0x1f8000, 0x1fa0ff, FORCEWAKE_MEDIA_VEBOX3),
 
-static const struct intel_forcewake_range __xehp_fw_ranges[] = {
-	XEHP_FWRANGES(FORCEWAKE_GT)
-};
-
 static const struct intel_forcewake_range __dg2_fw_ranges[] = {
 	XEHP_FWRANGES(FORCEWAKE_RENDER)
 };
@@ -2584,10 +2575,6 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __dg2_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, dg2_shadowed_regs);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
-	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
-		ASSIGN_FW_DOMAINS_TABLE(uncore, __xehp_fw_ranges);
-		ASSIGN_SHADOW_TABLE(uncore, gen12_shadowed_regs);
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
 	} else if (GRAPHICS_VER(i915) >= 12) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen12_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen12_shadowed_regs);
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index 4f98aa8a861ea..502bcadc5f396 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -119,7 +119,6 @@ int intel_uncore_mock_selftests(void)
 		{ __gen9_fw_ranges, ARRAY_SIZE(__gen9_fw_ranges), true },
 		{ __gen11_fw_ranges, ARRAY_SIZE(__gen11_fw_ranges), true },
 		{ __gen12_fw_ranges, ARRAY_SIZE(__gen12_fw_ranges), true },
-		{ __xehp_fw_ranges, ARRAY_SIZE(__xehp_fw_ranges), true },
 		{ __pvc_fw_ranges, ARRAY_SIZE(__pvc_fw_ranges), true },
 		{ __mtl_fw_ranges, ARRAY_SIZE(__mtl_fw_ranges), true },
 		{ __xelpmp_fw_ranges, ARRAY_SIZE(__xelpmp_fw_ranges), true },
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index fef969112b1dc..a7e7ec3b5db92 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -85,7 +85,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, XE_DG1)
 #define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_S)
 #define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_P)
-#define IS_XEHPSDV(dev_priv) (dev_priv && 0)
 #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
 #define IS_PONTEVECCHIO(dev_priv) IS_PLATFORM(dev_priv, XE_PVC)
 #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
@@ -130,7 +129,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 #define IS_DG2_GRAPHICS_STEP(xe, variant, first, last) \
 	((xe)->info.subplatform == XE_SUBPLATFORM_DG2_ ## variant && \
 	 IS_GRAPHICS_STEP(xe, first, last))
-#define IS_XEHPSDV_GRAPHICS_STEP(xe, first, last) (IS_XEHPSDV(xe) && IS_GRAPHICS_STEP(xe, first, last))
 
 /* XXX: No basedie stepping support yet */
 #define IS_PVC_BD_STEP(xe, first, last) (!WARN_ON(1) && IS_PONTEVECCHIO(xe))
-- 
2.43.0

