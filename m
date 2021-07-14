Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB373C7C91
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7BBE6E15A;
	Wed, 14 Jul 2021 03:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 221F26E15C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210256256"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="210256256"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:52 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031482"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:03 -0700
Message-Id: <20210714031540.3539704-14-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/50] drm/i915/xehp: handle new steering
 options
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Xe_HP is more modular then its predecessors and as a consequence it has
more types of replicated registers.  As with l3bank regions on previous
platforms, we may need to explicitly re-steer accesses to these new
types of ranges at runtime if we can't find a single default steering
value that satisfies the fusing of all types.

Bspec: 66534
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c          | 40 ++++++++-
 drivers/gpu/drm/i915/gt/intel_gt.h          |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |  7 ++
 drivers/gpu/drm/i915/gt/intel_region_lmem.c |  1 +
 drivers/gpu/drm/i915/gt/intel_sseu.c        | 18 +++++
 drivers/gpu/drm/i915/gt/intel_sseu.h        |  6 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 89 +++++++++++++++++++--
 drivers/gpu/drm/i915/i915_drv.h             |  3 +
 drivers/gpu/drm/i915/i915_pci.c             |  1 +
 drivers/gpu/drm/i915/i915_reg.h             |  4 +
 drivers/gpu/drm/i915/intel_device_info.h    |  1 +
 11 files changed, 165 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index e714e21c0a4d..f59bcedbb80b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -89,6 +89,13 @@ static const struct intel_mmio_range icl_l3bank_steering_table[] = {
 	{},
 };
 
+static u16 slicemask(struct intel_gt *gt, int count)
+{
+	u64 dss_mask = intel_sseu_get_subslices(&gt->info.sseu, 0);
+
+	return intel_slicemask_from_dssmask(dss_mask, count);
+}
+
 int intel_gt_init_mmio(struct intel_gt *gt)
 {
 	intel_gt_init_clock_frequency(gt);
@@ -96,11 +103,24 @@ int intel_gt_init_mmio(struct intel_gt *gt)
 	intel_uc_init_mmio(&gt->uc);
 	intel_sseu_info_init(gt);
 
-	if (GRAPHICS_VER(gt->i915) >= 11) {
+	/*
+	 * An mslice is unavailable only if both the meml3 for the slice is
+	 * disabled *and* all of the DSS in the slice (quadrant) are disabled.
+	 */
+	if (HAS_MSLICES(gt->i915))
+		gt->info.mslice_mask =
+			slicemask(gt, GEN_DSS_PER_MSLICE) |
+			(intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
+			 GEN12_MEML3_EN_MASK);
+
+	if (GRAPHICS_VER(gt->i915) >= 11 &&
+		   GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50)) {
 		gt->steering_table[L3BANK] = icl_l3bank_steering_table;
 		gt->info.l3bank_mask =
 			~intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
 			GEN10_L3BANK_MASK;
+	} else if (HAS_MSLICES(gt->i915)) {
+		MISSING_CASE(INTEL_INFO(gt->i915)->platform);
 	}
 
 	return intel_engines_init_mmio(gt);
@@ -766,6 +786,24 @@ static void intel_gt_get_valid_steering(struct intel_gt *gt,
 		*sliceid = 0;		/* unused */
 		*subsliceid = __ffs(gt->info.l3bank_mask);
 		break;
+	case MSLICE:
+		GEM_DEBUG_WARN_ON(!gt->info.mslice_mask); /* should be impossible! */
+
+		*sliceid = __ffs(gt->info.mslice_mask);
+		*subsliceid = 0;	/* unused */
+		break;
+	case LNCF:
+		GEM_DEBUG_WARN_ON(!gt->info.mslice_mask); /* should be impossible! */
+
+		/*
+		 * 0xFDC[29:28] selects the mslice to steer to and 0xFDC[27]
+		 * selects which LNCF within the mslice to steer to.  An LNCF
+		 * is always present if its mslice is present, so we can safely
+		 * just steer to LNCF 0 in all cases.
+		 */
+		*sliceid = __ffs(gt->info.mslice_mask) << 1;
+		*subsliceid = 0;	/* unused */
+		break;
 	default:
 		MISSING_CASE(type);
 		*sliceid = 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index e7aabe0cc5bf..f9bcde31f697 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -82,6 +82,7 @@ static inline bool intel_gt_needs_read_steering(struct intel_gt *gt,
 }
 
 u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg);
+u32 intel_gt_read_register(struct intel_gt *gt, i915_reg_t reg);
 
 void intel_gt_info_print(const struct intel_gt_info *info,
 			 struct drm_printer *p);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 97a5075288d2..a81e21bf1bd1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -47,9 +47,14 @@ struct intel_mmio_range {
  * of multicast registers.  If another type of steering does not have any
  * overlap in valid steering targets with 'subslice' style registers, we will
  * need to explicitly re-steer reads of registers of the other type.
+ *
+ * Only the replication types that may need additional non-default steering
+ * are listed here.
  */
 enum intel_steering_type {
 	L3BANK,
+	MSLICE,
+	LNCF,
 
 	NUM_STEERING_TYPES
 };
@@ -184,6 +189,8 @@ struct intel_gt {
 
 		/* Slice/subslice/EU info */
 		struct sseu_dev_info sseu;
+
+		unsigned long mslice_mask;
 	} info;
 };
 
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 1f43aba2e9e2..196e7569a41a 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -10,6 +10,7 @@
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_ttm.h"
+#include "gt/intel_gt.h"
 
 static int init_fake_lmem_bar(struct intel_memory_region *mem)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 367fd44b81c8..bbed8e8625e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -759,3 +759,21 @@ void intel_sseu_print_topology(const struct sseu_dev_info *sseu,
 		}
 	}
 }
+
+u16 intel_slicemask_from_dssmask(u64 dss_mask, int dss_per_slice)
+{
+	u16 slice_mask = 0;
+	int i;
+
+	WARN_ON(sizeof(dss_mask) * 8 / dss_per_slice > 8 * sizeof(slice_mask));
+
+	for (i = 0; dss_mask; i++) {
+		if (dss_mask & GENMASK(dss_per_slice - 1, 0))
+			slice_mask |= BIT(i);
+
+		dss_mask >>= dss_per_slice;
+	}
+
+	return slice_mask;
+}
+
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
index 4cd1a8a7298a..1073471d1980 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
@@ -22,6 +22,10 @@ struct drm_printer;
 #define GEN_MAX_EUS		(16) /* TGL upper bound */
 #define GEN_MAX_EU_STRIDE GEN_SSEU_STRIDE(GEN_MAX_EUS)
 
+#define GEN_DSS_PER_GSLICE	4
+#define GEN_DSS_PER_CSLICE	8
+#define GEN_DSS_PER_MSLICE	8
+
 struct sseu_dev_info {
 	u8 slice_mask;
 	u8 subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
@@ -104,4 +108,6 @@ void intel_sseu_dump(const struct sseu_dev_info *sseu, struct drm_printer *p);
 void intel_sseu_print_topology(const struct sseu_dev_info *sseu,
 			       struct drm_printer *p);
 
+u16 intel_slicemask_from_dssmask(u64 dss_mask, int dss_per_slice);
+
 #endif /* __INTEL_SSEU_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3abe424ef9c9..257c13059874 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -951,12 +951,24 @@ cfl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
 }
 
+static void __add_mcr_wa(struct drm_i915_private *i915, struct i915_wa_list *wal,
+			 unsigned slice, unsigned subslice)
+{
+	u32 mcr, mcr_mask;
+
+	mcr = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
+	mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
+
+	drm_dbg(&i915->drm, "MCR slice/subslice = %x\n", mcr);
+
+	wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
+}
+
 static void
 icl_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
 	const struct sseu_dev_info *sseu = &i915->gt.info.sseu;
 	unsigned int slice, subslice;
-	u32 mcr, mcr_mask;
 
 	GEM_BUG_ON(GRAPHICS_VER(i915) < 11);
 	GEM_BUG_ON(hweight8(sseu->slice_mask) > 1);
@@ -981,12 +993,79 @@ icl_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	if (i915->gt.info.l3bank_mask & BIT(subslice))
 		i915->gt.steering_table[L3BANK] = NULL;
 
-	mcr = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
-	mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
+	__add_mcr_wa(i915, wal, slice, subslice);
+}
 
-	drm_dbg(&i915->drm, "MCR slice/subslice = %x\n", mcr);
+__maybe_unused
+static void
+xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	const struct sseu_dev_info *sseu = &gt->info.sseu;
+	unsigned long slice, subslice = 0, slice_mask = 0;
+	u64 dss_mask = 0;
+	u32 lncf_mask = 0;
+	int i;
 
-	wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
+	/*
+	 * On Xe_HP the steering increases in complexity. There are now several
+	 * more units that require steering and we're not guaranteed to be able
+	 * to find a common setting for all of them. These are:
+	 * - GSLICE (fusable)
+	 * - DSS (sub-unit within gslice; fusable)
+	 * - L3 Bank (fusable)
+	 * - MSLICE (fusable)
+	 * - LNCF (sub-unit within mslice; always present if mslice is present)
+	 * - SQIDI (always on)
+	 *
+	 * We'll do our default/implicit steering based on GSLICE (in the
+	 * sliceid field) and DSS (in the subsliceid field).  If we can
+	 * find overlap between the valid MSLICE and/or LNCF values with
+	 * a suitable GSLICE, then we can just re-use the default value and
+	 * skip and explicit steering at runtime.
+	 *
+	 * We only need to look for overlap between GSLICE/MSLICE/LNCF to find
+	 * a valid sliceid value.  DSS steering is the only type of steering
+	 * that utilizes the 'subsliceid' bits.
+	 *
+	 * Also note that, even though the steering domain is called "GSlice"
+	 * and it is encoded in the register using the gslice format, the spec
+	 * says that the combined (geometry | compute) fuse should be used to
+	 * select the steering.
+	 */
+
+	/* Find the potential gslice candidates */
+	dss_mask = intel_sseu_get_subslices(sseu, 0);
+	slice_mask = intel_slicemask_from_dssmask(dss_mask, GEN_DSS_PER_GSLICE);
+
+	/*
+	 * Find the potential LNCF candidates.  Either LNCF within a valid
+	 * mslice is fine.
+	 */
+	for_each_set_bit(i, &gt->info.mslice_mask, GEN12_MAX_MSLICES)
+		lncf_mask |= (0x3 << (i * 2));
+
+	/*
+	 * Are there any sliceid values that work for both GSLICE and LNCF
+	 * steering?
+	 */
+	if (slice_mask & lncf_mask) {
+		slice_mask &= lncf_mask;
+		gt->steering_table[LNCF] = NULL;
+	}
+
+	/* How about sliceid values that also work for MSLICE steering? */
+	if (slice_mask & gt->info.mslice_mask) {
+		slice_mask &= gt->info.mslice_mask;
+		gt->steering_table[MSLICE] = NULL;
+	}
+
+	slice = __ffs(slice_mask);
+	subslice = __ffs(dss_mask >> (slice * GEN_DSS_PER_GSLICE));
+	WARN_ON(subslice > GEN_DSS_PER_GSLICE);
+	WARN_ON(dss_mask >> (slice * GEN_DSS_PER_GSLICE) == 0);
+
+	__add_mcr_wa(i915, wal, slice, subslice);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index eb7030e5a25b..effb555d14f5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1720,6 +1720,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
 
+#define HAS_MSLICES(dev_priv) \
+	(INTEL_INFO(dev_priv)->has_mslices)
+
 #define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 060abebdf4a4..65cbab1c1a15 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1012,6 +1012,7 @@ static const struct intel_device_info adl_p_info = {
 	.has_llc = 1, \
 	.has_logical_ring_contexts = 1, \
 	.has_logical_ring_elsq = 1, \
+	.has_mslices = 1, \
 	.has_rc6 = 1, \
 	.has_reset_engine = 1, \
 	.has_rps = 1, \
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 60d780d17d5d..47f015976966 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2695,6 +2695,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GEN11_MCR_SLICE_MASK		GEN11_MCR_SLICE(0xf)
 #define   GEN11_MCR_SUBSLICE(subslice)	(((subslice) & 0x7) << 24)
 #define   GEN11_MCR_SUBSLICE_MASK	GEN11_MCR_SUBSLICE(0x7)
+#define   GEN11_MCR_MULTICAST		REG_BIT(31)
 #define RING_IPEIR(base)	_MMIO((base) + 0x64)
 #define RING_IPEHR(base)	_MMIO((base) + 0x68)
 #define RING_EIR(base)		_MMIO((base) + 0xb0)
@@ -3113,6 +3114,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define	GEN10_MIRROR_FUSE3		_MMIO(0x9118)
 #define GEN10_L3BANK_PAIR_COUNT     4
 #define GEN10_L3BANK_MASK   0x0F
+/* on Xe_HP the same fuses indicates mslices instead of L3 banks */
+#define GEN12_MAX_MSLICES 4
+#define GEN12_MEML3_EN_MASK 0x0F
 
 #define GEN8_EU_DISABLE0		_MMIO(0x9134)
 #define   GEN8_EU_DIS0_S0_MASK		0xffffff
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 75d225d0db47..75c69cfb11f2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -127,6 +127,7 @@ enum intel_ppgtt_type {
 	func(has_llc); \
 	func(has_logical_ring_contexts); \
 	func(has_logical_ring_elsq); \
+	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_rc6); \
 	func(has_rc6p); \
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
