Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9143D3EFB
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED8A6FB9D;
	Fri, 23 Jul 2021 17:43:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC616FB9C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:42:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="199127508"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="199127508"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="463229055"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 10:42:16 -0700
Message-Id: <20210723174239.1551352-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210723174239.1551352-1-matthew.d.roper@intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 07/30] drm/i915/xehp: Loop over all gslices
 for INSTDONE processing
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

We no longer have traditional slices on Xe_HP platforms, but the
INSTDONE registers are replicated according to gslice representation
which is similar.  We can mostly re-use the existing instdone code with
just a few modifications:

 * Create an alternate instdone loop macro that will iterate over the
   flat DSS space, but still provide the gslice/dss steering values for
   compatibility with the legacy code.

 * We should allocate INSTDONE storage space according to the maximum
   number of gslices rather than the maximum number of legacy slices to
   ensure we have enough storage space to hold all of the values.  XeHP
   design has 8 gslices, whereas older platforms never had more than 3
   slices.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 48 +++++++++++---------
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 12 ++++-
 drivers/gpu/drm/i915/gt/intel_sseu.h         |  7 +++
 drivers/gpu/drm/i915/i915_gpu_error.c        | 32 +++++++++----
 4 files changed, 66 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 1fc1bd4ad5e3..fc8538ce47ae 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1172,16 +1172,16 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 	u32 mmio_base = engine->mmio_base;
 	int slice;
 	int subslice;
+	int iter;
 
 	memset(instdone, 0, sizeof(*instdone));
 
-	switch (GRAPHICS_VER(i915)) {
-	default:
+	if (GRAPHICS_VER(i915) >= 8) {
 		instdone->instdone =
 			intel_uncore_read(uncore, RING_INSTDONE(mmio_base));
 
 		if (engine->id != RCS0)
-			break;
+			return;
 
 		instdone->slice_common =
 			intel_uncore_read(uncore, GEN7_SC_INSTDONE);
@@ -1191,21 +1191,32 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 			instdone->slice_common_extra[1] =
 				intel_uncore_read(uncore, GEN12_SC_INSTDONE_EXTRA2);
 		}
-		for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
-			instdone->sampler[slice][subslice] =
-				read_subslice_reg(engine, slice, subslice,
-						  GEN7_SAMPLER_INSTDONE);
-			instdone->row[slice][subslice] =
-				read_subslice_reg(engine, slice, subslice,
-						  GEN7_ROW_INSTDONE);
+
+		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+			for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
+				instdone->sampler[slice][subslice] =
+					read_subslice_reg(engine, slice, subslice,
+							  GEN7_SAMPLER_INSTDONE);
+				instdone->row[slice][subslice] =
+					read_subslice_reg(engine, slice, subslice,
+							  GEN7_ROW_INSTDONE);
+			}
+		} else {
+			for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
+				instdone->sampler[slice][subslice] =
+					read_subslice_reg(engine, slice, subslice,
+							  GEN7_SAMPLER_INSTDONE);
+				instdone->row[slice][subslice] =
+					read_subslice_reg(engine, slice, subslice,
+							  GEN7_ROW_INSTDONE);
+			}
 		}
-		break;
-	case 7:
+	} else if (GRAPHICS_VER(i915) >= 7) {
 		instdone->instdone =
 			intel_uncore_read(uncore, RING_INSTDONE(mmio_base));
 
 		if (engine->id != RCS0)
-			break;
+			return;
 
 		instdone->slice_common =
 			intel_uncore_read(uncore, GEN7_SC_INSTDONE);
@@ -1213,22 +1224,15 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 			intel_uncore_read(uncore, GEN7_SAMPLER_INSTDONE);
 		instdone->row[0][0] =
 			intel_uncore_read(uncore, GEN7_ROW_INSTDONE);
-
-		break;
-	case 6:
-	case 5:
-	case 4:
+	} else if (GRAPHICS_VER(i915) >= 4) {
 		instdone->instdone =
 			intel_uncore_read(uncore, RING_INSTDONE(mmio_base));
 		if (engine->id == RCS0)
 			/* HACK: Using the wrong struct member */
 			instdone->slice_common =
 				intel_uncore_read(uncore, GEN4_INSTDONE1);
-		break;
-	case 3:
-	case 2:
+	} else {
 		instdone->instdone = intel_uncore_read(uncore, GEN2_INSTDONE);
-		break;
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 8f1f2f12d6f5..b23d76ceea0e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -74,8 +74,8 @@ struct intel_instdone {
 	/* The following exist only in the RCS engine */
 	u32 slice_common;
 	u32 slice_common_extra[2];
-	u32 sampler[I915_MAX_SLICES][I915_MAX_SUBSLICES];
-	u32 row[I915_MAX_SLICES][I915_MAX_SUBSLICES];
+	u32 sampler[GEN_MAX_GSLICES][I915_MAX_SUBSLICES];
+	u32 row[GEN_MAX_GSLICES][I915_MAX_SUBSLICES];
 };
 
 /*
@@ -575,4 +575,12 @@ intel_engine_has_relative_mmio(const struct intel_engine_cs * const engine)
 		for_each_if((instdone_has_slice(dev_priv_, sseu_, slice_)) && \
 			    (instdone_has_subslice(dev_priv_, sseu_, slice_, \
 						    subslice_)))
+
+#define for_each_instdone_gslice_dss_xehp(dev_priv_, sseu_, iter_, gslice_, dss_) \
+	for ((iter_) = 0, (gslice_) = 0, (dss_) = 0; \
+	     (iter_) < GEN_MAX_SUBSLICES; \
+	     (iter_)++, (gslice_) = (iter_) / GEN_DSS_PER_GSLICE, \
+	     (dss_) = (iter_) % GEN_DSS_PER_GSLICE) \
+		for_each_if(intel_sseu_has_subslice((sseu_), 0, (iter_)))
+
 #endif /* __INTEL_ENGINE_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
index 1073471d1980..74487650b08f 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
@@ -26,6 +26,9 @@ struct drm_printer;
 #define GEN_DSS_PER_CSLICE	8
 #define GEN_DSS_PER_MSLICE	8
 
+#define GEN_MAX_GSLICES		(GEN_MAX_SUBSLICES / GEN_DSS_PER_GSLICE)
+#define GEN_MAX_CSLICES		(GEN_MAX_SUBSLICES / GEN_DSS_PER_CSLICE)
+
 struct sseu_dev_info {
 	u8 slice_mask;
 	u8 subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
@@ -78,6 +81,10 @@ intel_sseu_has_subslice(const struct sseu_dev_info *sseu, int slice,
 	u8 mask;
 	int ss_idx = subslice / BITS_PER_BYTE;
 
+	if (slice >= sseu->max_slices ||
+	    subslice >= sseu->max_subslices)
+		return false;
+
 	GEM_BUG_ON(ss_idx >= sseu->ss_stride);
 
 	mask = sseu->subslice_mask[slice * sseu->ss_stride + ss_idx];
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index a2c58b54a592..c1e744b5ab47 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -444,15 +444,29 @@ static void error_print_instdone(struct drm_i915_error_state_buf *m,
 	if (GRAPHICS_VER(m->i915) <= 6)
 		return;
 
-	for_each_instdone_slice_subslice(m->i915, sseu, slice, subslice)
-		err_printf(m, "  SAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
-			   slice, subslice,
-			   ee->instdone.sampler[slice][subslice]);
-
-	for_each_instdone_slice_subslice(m->i915, sseu, slice, subslice)
-		err_printf(m, "  ROW_INSTDONE[%d][%d]: 0x%08x\n",
-			   slice, subslice,
-			   ee->instdone.row[slice][subslice]);
+	if (GRAPHICS_VER_FULL(m->i915) >= IP_VER(12, 50)) {
+		int iter;
+
+		for_each_instdone_gslice_dss_xehp(m->i915, sseu, iter, slice, subslice)
+			err_printf(m, "  SAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
+				   slice, subslice,
+				   ee->instdone.sampler[slice][subslice]);
+
+		for_each_instdone_gslice_dss_xehp(m->i915, sseu, iter, slice, subslice)
+			err_printf(m, "  ROW_INSTDONE[%d][%d]: 0x%08x\n",
+				   slice, subslice,
+				   ee->instdone.row[slice][subslice]);
+	} else {
+		for_each_instdone_slice_subslice(m->i915, sseu, slice, subslice)
+			err_printf(m, "  SAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
+				   slice, subslice,
+				   ee->instdone.sampler[slice][subslice]);
+
+		for_each_instdone_slice_subslice(m->i915, sseu, slice, subslice)
+			err_printf(m, "  ROW_INSTDONE[%d][%d]: 0x%08x\n",
+				   slice, subslice,
+				   ee->instdone.row[slice][subslice]);
+	}
 
 	if (GRAPHICS_VER(m->i915) < 12)
 		return;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
