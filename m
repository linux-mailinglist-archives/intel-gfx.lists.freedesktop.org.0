Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C8C3DA991
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 19:00:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF6096EDFD;
	Thu, 29 Jul 2021 17:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F656EDF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 17:00:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="212966786"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="212966786"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 10:00:19 -0700
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="417712104"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 10:00:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jul 2021 09:59:51 -0700
Message-Id: <20210729170008.2836648-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210729170008.2836648-1-matthew.d.roper@intel.com>
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 01/18] drm/i915/xehp: handle new steering
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

Xe_HP is more modular than its predecessors and as a consequence it has
more types of replicated registers.  As with l3bank regions on previous
platforms, we may need to explicitly re-steer accesses to these new
types of ranges at runtime if we can't find a single default steering
value that satisfies the fusing of all types.

v2:
 - Add a local 'i915' variable to reduce gt->i915 usage.  (Caz)
 - Drop unused 'intel_gt_read_register' prototype.  (Caz)

Bspec: 66534
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Caz Yokoyama <caz.yokoyama@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c          | 42 +++++++++-
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |  7 ++
 drivers/gpu/drm/i915/gt/intel_region_lmem.c |  1 +
 drivers/gpu/drm/i915/gt/intel_sseu.c        | 18 +++++
 drivers/gpu/drm/i915/gt/intel_sseu.h        |  6 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 89 +++++++++++++++++++--
 drivers/gpu/drm/i915/i915_drv.h             |  3 +
 drivers/gpu/drm/i915/i915_pci.c             |  1 +
 drivers/gpu/drm/i915/i915_reg.h             |  4 +
 drivers/gpu/drm/i915/intel_device_info.h    |  1 +
 10 files changed, 166 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index a64aa43f7cd9..39b224600f38 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -89,18 +89,40 @@ static const struct intel_mmio_range icl_l3bank_steering_table[] = {
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
+	struct drm_i915_private *i915 = gt->i915;
+
 	intel_gt_init_clock_frequency(gt);
 
 	intel_uc_init_mmio(&gt->uc);
 	intel_sseu_info_init(gt);
 
-	if (GRAPHICS_VER(gt->i915) >= 11) {
+	/*
+	 * An mslice is unavailable only if both the meml3 for the slice is
+	 * disabled *and* all of the DSS in the slice (quadrant) are disabled.
+	 */
+	if (HAS_MSLICES(i915))
+		gt->info.mslice_mask =
+			slicemask(gt, GEN_DSS_PER_MSLICE) |
+			(intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
+			 GEN12_MEML3_EN_MASK);
+
+	if (GRAPHICS_VER(i915) >= 11 &&
+		   GRAPHICS_VER_FULL(i915) < IP_VER(12, 50)) {
 		gt->steering_table[L3BANK] = icl_l3bank_steering_table;
 		gt->info.l3bank_mask =
 			~intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
 			GEN10_L3BANK_MASK;
+	} else if (HAS_MSLICES(i915)) {
+		MISSING_CASE(INTEL_INFO(i915)->platform);
 	}
 
 	return intel_engines_init_mmio(gt);
@@ -787,6 +809,24 @@ static void intel_gt_get_valid_steering(struct intel_gt *gt,
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
index e3a2a2fa5f94..a74b72f50cc9 100644
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
index 9173df59821a..f2ceabb0e2ea 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -889,12 +889,24 @@ cfl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
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
@@ -919,12 +931,79 @@ icl_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
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
index 70bef688c6da..31b8bb43c581 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1694,6 +1694,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
 
+#define HAS_MSLICES(dev_priv) \
+	(INTEL_INFO(dev_priv)->has_mslices)
+
 #define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 08651ca03478..ed9edda727d2 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1007,6 +1007,7 @@ static const struct intel_device_info adl_p_info = {
 	.has_llc = 1, \
 	.has_logical_ring_contexts = 1, \
 	.has_logical_ring_elsq = 1, \
+	.has_mslices = 1, \
 	.has_rc6 = 1, \
 	.has_reset_engine = 1, \
 	.has_rps = 1, \
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1a164b90e9fc..f4113e7e8271 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2766,6 +2766,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GEN11_MCR_SLICE_MASK		GEN11_MCR_SLICE(0xf)
 #define   GEN11_MCR_SUBSLICE(subslice)	(((subslice) & 0x7) << 24)
 #define   GEN11_MCR_SUBSLICE_MASK	GEN11_MCR_SUBSLICE(0x7)
+#define   GEN11_MCR_MULTICAST		REG_BIT(31)
 #define RING_IPEIR(base)	_MMIO((base) + 0x64)
 #define RING_IPEHR(base)	_MMIO((base) + 0x68)
 #define RING_EIR(base)		_MMIO((base) + 0xb0)
@@ -3184,6 +3185,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define	GEN10_MIRROR_FUSE3		_MMIO(0x9118)
 #define GEN10_L3BANK_PAIR_COUNT     4
 #define GEN10_L3BANK_MASK   0x0F
+/* on Xe_HP the same fuses indicates mslices instead of L3 banks */
+#define GEN12_MAX_MSLICES 4
+#define GEN12_MEML3_EN_MASK 0x0F
 
 #define GEN8_EU_DISABLE0		_MMIO(0x9134)
 #define   GEN8_EU_DIS0_S0_MASK		0xffffff
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 121d6d9afd3a..2177372f9ac3 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -133,6 +133,7 @@ enum intel_ppgtt_type {
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
