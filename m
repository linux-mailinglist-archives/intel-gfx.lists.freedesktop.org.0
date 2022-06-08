Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2095439E8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 19:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C59112911;
	Wed,  8 Jun 2022 17:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0810112911
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 17:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654708023; x=1686244023;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jb7FR3JW482VLoy3FULpWpzIxjOWWOyuSVKlDOexUTU=;
 b=l6EXnG3rUP7qnpxvdIEQ12OyGsTCzxRL2iNAdapOCIsh9b95soxPrYuR
 BomkSgphc/8BsTSZIN8TU0kCFE+ikuc8N/7dI8vbi3ONDG6QYbpWbN0gN
 pPlFVWOJdbnjO5tMoAe1bLY3eAReVvi8eV+u8wx/8PYCAiaPxW9MNGoJ8
 Ovi/LupzgV0zXI9ChOhdBLY/Za18ecCPdvQ8c2wMKikshobajDjRCF3op
 CLlplQYJzbcf/xRonln369VW7eelBe3AO/2wwF8Qxwi8PTM8vx7fG+aT9
 GVVrqr3J93M2VX2FqAmWdA43YCG1L0bqCPPsBF1FRoCi5QvLgNlNG3F/1 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="363301986"
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="363301986"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 10:07:02 -0700
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="683442674"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 10:07:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jun 2022 10:07:00 -0700
Message-Id: <20220608170700.4026648-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915/pvc: Add register steering
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

Ponte Vecchio no longer has MSLICE or LNCF steering, but the bspec does
document several new types of multicast register ranges.  Fortunately,
most of the different MCR types all provide valid values at instance
(0,0) so there's no need to read fuse registers and calculate a
non-terminated instance.  We'll lump all of those range types (BSLICE,
HALFBSLICE, TILEPSMI, CC, and L3BANK) into a single category called
"INSTANCE0" to keep things simple.  We'll also perform explicit steering
for each of these multicast register types, even if the implicit
steering setup for COMPUTE/DSS ranges would have worked too; this is
based on guidance from our hardware architects who suggested that we
move away from implicit steering and start explicitly steer all MCR
register accesses on modern platforms (we'll work on transitioning
COMPUTE/DSS to explicit steering in the future).

Note that there's one additional MCR range type defined in the bspec
(SQIDI) that we don't handle here.  Those ranges use a different
steering control register that we never touch; since instance 0 is also
always a valid setting there, we can just ignore those ranges.

Finally, we'll rename the HAS_MSLICES() macro to HAS_MSLICE_STEERING().
PVC hardware still has units referred to as mslices, but there's no
register steering based on mslice for this platform.

v2:
 - Rebase on other recent changes
 - Swap two table rows to keep table sorted & easy to read.  (Harish)

Bspec: 67609
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Harish Chegondi <harish.chegondi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c          | 50 ++++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |  7 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 16 +++++++
 drivers/gpu/drm/i915/i915_drv.h             |  3 +-
 drivers/gpu/drm/i915/i915_pci.c             |  3 +-
 drivers/gpu/drm/i915/intel_device_info.h    |  2 +-
 6 files changed, 71 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index ddfb98f70489..f33290358c51 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -106,6 +106,7 @@ static const char * const intel_steering_types[] = {
 	"L3BANK",
 	"MSLICE",
 	"LNCF",
+	"INSTANCE 0",
 };
 
 static const struct intel_mmio_range icl_l3bank_steering_table[] = {
@@ -133,6 +134,27 @@ static const struct intel_mmio_range dg2_lncf_steering_table[] = {
 	{},
 };
 
+/*
+ * We have several types of MCR registers on PVC where steering to (0,0)
+ * will always provide us with a non-terminated value.  We'll stick them
+ * all in the same table for simplicity.
+ */
+static const struct intel_mmio_range pvc_instance0_steering_table[] = {
+	{ 0x004000, 0x004AFF },		/* HALF-BSLICE */
+	{ 0x008800, 0x00887F },		/* CC */
+	{ 0x008A80, 0x008AFF },		/* TILEPSMI */
+	{ 0x00B000, 0x00B0FF },		/* HALF-BSLICE */
+	{ 0x00B100, 0x00B3FF },		/* L3BANK */
+	{ 0x00C800, 0x00CFFF },		/* HALF-BSLICE */
+	{ 0x00D800, 0x00D8FF },		/* HALF-BSLICE */
+	{ 0x00DD00, 0x00DDFF },		/* BSLICE */
+	{ 0x00E900, 0x00E9FF },		/* HALF-BSLICE */
+	{ 0x00EC00, 0x00EEFF },		/* HALF-BSLICE */
+	{ 0x00F000, 0x00FFFF },		/* HALF-BSLICE */
+	{ 0x024180, 0x0241FF },		/* HALF-BSLICE */
+	{},
+};
+
 int intel_gt_init_mmio(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
@@ -146,7 +168,7 @@ int intel_gt_init_mmio(struct intel_gt *gt)
 	 * An mslice is unavailable only if both the meml3 for the slice is
 	 * disabled *and* all of the DSS in the slice (quadrant) are disabled.
 	 */
-	if (HAS_MSLICES(i915)) {
+	if (HAS_MSLICE_STEERING(i915)) {
 		gt->info.mslice_mask =
 			intel_slicemask_from_xehp_dssmask(gt->info.sseu.subslice_mask,
 							  GEN_DSS_PER_MSLICE);
@@ -158,7 +180,9 @@ int intel_gt_init_mmio(struct intel_gt *gt)
 			drm_warn(&i915->drm, "mslice mask all zero!\n");
 	}
 
-	if (IS_DG2(i915)) {
+	if (IS_PONTEVECCHIO(i915)) {
+		gt->steering_table[INSTANCE0] = pvc_instance0_steering_table;
+	} else if (IS_DG2(i915)) {
 		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
 		gt->steering_table[LNCF] = dg2_lncf_steering_table;
 	} else if (IS_XEHPSDV(i915)) {
@@ -172,7 +196,11 @@ int intel_gt_init_mmio(struct intel_gt *gt)
 			GEN10_L3BANK_MASK;
 		if (!gt->info.l3bank_mask) /* should be impossible! */
 			drm_warn(&i915->drm, "L3 bank mask is all zero!\n");
-	} else if (HAS_MSLICES(i915)) {
+	} else if (GRAPHICS_VER(i915) >= 11) {
+		/*
+		 * We expect all modern platforms to have at least some
+		 * type of steering that needs to be initialized.
+		 */
 		MISSING_CASE(INTEL_INFO(i915)->platform);
 	}
 
@@ -888,7 +916,7 @@ static void intel_gt_get_valid_steering(struct intel_gt *gt,
 		*subsliceid = __ffs(gt->info.l3bank_mask);
 		break;
 	case MSLICE:
-		GEM_WARN_ON(!HAS_MSLICES(gt->i915));
+		GEM_WARN_ON(!HAS_MSLICE_STEERING(gt->i915));
 		*sliceid = __ffs(gt->info.mslice_mask);
 		*subsliceid = 0;	/* unused */
 		break;
@@ -897,10 +925,18 @@ static void intel_gt_get_valid_steering(struct intel_gt *gt,
 		 * An LNCF is always present if its mslice is present, so we
 		 * can safely just steer to LNCF 0 in all cases.
 		 */
-		GEM_WARN_ON(!HAS_MSLICES(gt->i915));
+		GEM_WARN_ON(!HAS_MSLICE_STEERING(gt->i915));
 		*sliceid = __ffs(gt->info.mslice_mask) << 1;
 		*subsliceid = 0;	/* unused */
 		break;
+	case INSTANCE0:
+		/*
+		 * There are a lot of MCR types for which instance (0, 0)
+		 * will always provide a non-terminated value.
+		 */
+		*sliceid = 0;
+		*subsliceid = 0;
+		break;
 	default:
 		MISSING_CASE(type);
 		*sliceid = 0;
@@ -1020,7 +1056,9 @@ void intel_gt_report_steering(struct drm_printer *p, struct intel_gt *gt,
 		   gt->default_steering.groupid,
 		   gt->default_steering.instanceid);
 
-	if (HAS_MSLICES(gt->i915)) {
+	if (IS_PONTEVECCHIO(gt->i915)) {
+		report_steering_type(p, gt, INSTANCE0, dump_table);
+	} else if (HAS_MSLICE_STEERING(gt->i915)) {
 		report_steering_type(p, gt, MSLICE, dump_table);
 		report_steering_type(p, gt, LNCF, dump_table);
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 993f003dad1d..df708802889d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -59,6 +59,13 @@ enum intel_steering_type {
 	MSLICE,
 	LNCF,
 
+	/*
+	 * On some platforms there are multiple types of MCR registers that
+	 * will always return a non-terminated value at instance (0, 0).  We'll
+	 * lump those all into a single category to keep things simple.
+	 */
+	INSTANCE0,
+
 	NUM_STEERING_TYPES
 };
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 1ee54a83e459..1e982ac931dc 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1195,6 +1195,20 @@ xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
 	__set_mcr_steering(wal, SF_MCR_SELECTOR, 0, 2);
 }
 
+static void
+pvc_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
+{
+	unsigned int dss;
+
+	/*
+	 * Setup implicit steering for COMPUTE and DSS ranges to the first
+	 * non-fused-off DSS.  All other types of MCR registers will be
+	 * explicitly steered.
+	 */
+	dss = intel_sseu_find_first_xehp_dss(&gt->info.sseu, 0, 0);
+	__add_mcr_wa(gt, wal, dss / GEN_DSS_PER_CSLICE, dss % GEN_DSS_PER_CSLICE);
+}
+
 static void
 icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
@@ -1494,6 +1508,8 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 static void
 pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
+	pvc_init_mcr(gt, wal);
+
 	/* Wa_14015795083 */
 	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index eba94fa76b18..9805c6e6d4da 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1282,8 +1282,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
 
-#define HAS_MSLICES(dev_priv) \
-	(INTEL_INFO(dev_priv)->has_mslices)
+#define HAS_MSLICE_STEERING(dev_priv)	(INTEL_INFO(dev_priv)->has_mslice_steering)
 
 /*
  * Set this flag, when platform requires 64K GTT page sizes or larger for
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a5a1a7647320..5e51fc29bb8b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1021,7 +1021,7 @@ static const struct intel_device_info adl_p_info = {
 	.has_llc = 1, \
 	.has_logical_ring_contexts = 1, \
 	.has_logical_ring_elsq = 1, \
-	.has_mslices = 1, \
+	.has_mslice_steering = 1, \
 	.has_rc6 = 1, \
 	.has_reset_engine = 1, \
 	.has_rps = 1, \
@@ -1091,6 +1091,7 @@ static const struct intel_device_info ats_m_info = {
 	.has_3d_pipeline = 0, \
 	.has_guc_deprivilege = 1, \
 	.has_l3_ccs_read = 1, \
+	.has_mslice_steering = 0, \
 	.has_one_eu_per_fuse_bit = 1
 
 __maybe_unused
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 346f17f2dce8..08341174ee0a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -157,7 +157,7 @@ enum intel_ppgtt_type {
 	func(has_logical_ring_contexts); \
 	func(has_logical_ring_elsq); \
 	func(has_media_ratio_mode); \
-	func(has_mslices); \
+	func(has_mslice_steering); \
 	func(has_one_eu_per_fuse_bit); \
 	func(has_pooled_eu); \
 	func(has_pxp); \
-- 
2.35.3

