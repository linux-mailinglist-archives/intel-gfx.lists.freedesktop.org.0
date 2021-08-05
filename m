Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1983E19AA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 18:36:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D906E834;
	Thu,  5 Aug 2021 16:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE8A6E4EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 16:36:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="194470755"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="194470755"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 09:36:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="419886351"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 09:36:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Date: Thu,  5 Aug 2021 09:36:41 -0700
Message-Id: <20210805163647.801064-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210805163647.801064-1-matthew.d.roper@intel.com>
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/9] drm/i915/dg2: Report INSTDONE_GEOM
 values in error state
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

Xe_HPG adds some additional INSTDONE_GEOM debug registers; the Mesa team
has indicated that having these reported in the error state would be
useful for debugging GPU hangs.  These registers are replicated per-DSS
with gslice steering.

Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  7 +++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 +++
 drivers/gpu/drm/i915/i915_gpu_error.c        | 10 ++++++++--
 drivers/gpu/drm/i915/i915_reg.h              |  1 +
 4 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 58ed67894b3d..332efea696a5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1202,6 +1202,13 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 							  GEN7_ROW_INSTDONE);
 			}
 		}
+
+		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
+			for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice)
+				instdone->geom_svg[slice][subslice] =
+					read_subslice_reg(engine, slice, subslice,
+							  XEHPG_INSTDONE_GEOM_SVG);
+		}
 	} else if (GRAPHICS_VER(i915) >= 7) {
 		instdone->instdone =
 			intel_uncore_read(uncore, RING_INSTDONE(mmio_base));
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 0b4846b01626..bfbfe53c23dd 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -69,6 +69,9 @@ struct intel_instdone {
 	u32 slice_common_extra[2];
 	u32 sampler[GEN_MAX_GSLICES][I915_MAX_SUBSLICES];
 	u32 row[GEN_MAX_GSLICES][I915_MAX_SUBSLICES];
+
+	/* Added in XeHPG */
+	u32 geom_svg[GEN_MAX_GSLICES][I915_MAX_SUBSLICES];
 };
 
 /*
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 8230bc3ac8a9..91d5da7b0a2b 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -431,6 +431,7 @@ static void error_print_instdone(struct drm_i915_error_state_buf *m,
 	const struct sseu_dev_info *sseu = &ee->engine->gt->info.sseu;
 	int slice;
 	int subslice;
+	int iter;
 
 	err_printf(m, "  INSTDONE: 0x%08x\n",
 		   ee->instdone.instdone);
@@ -445,8 +446,6 @@ static void error_print_instdone(struct drm_i915_error_state_buf *m,
 		return;
 
 	if (GRAPHICS_VER_FULL(m->i915) >= IP_VER(12, 50)) {
-		int iter;
-
 		for_each_instdone_gslice_dss_xehp(m->i915, sseu, iter, slice, subslice)
 			err_printf(m, "  SAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
 				   slice, subslice,
@@ -471,6 +470,13 @@ static void error_print_instdone(struct drm_i915_error_state_buf *m,
 	if (GRAPHICS_VER(m->i915) < 12)
 		return;
 
+	if (GRAPHICS_VER_FULL(m->i915) >= IP_VER(12, 55)) {
+		for_each_instdone_gslice_dss_xehp(m->i915, sseu, iter, slice, subslice)
+			err_printf(m, "  GEOM_SVGUNIT_INSTDONE[%d][%d]: 0x%08x\n",
+				   slice, subslice,
+				   ee->instdone.geom_svg[slice][subslice]);
+	}
+
 	err_printf(m, "  SC_INSTDONE_EXTRA: 0x%08x\n",
 		   ee->instdone.slice_common_extra[0]);
 	err_printf(m, "  SC_INSTDONE_EXTRA2: 0x%08x\n",
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 167eaa87501b..8bfd646fc403 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2686,6 +2686,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN12_SC_INSTDONE_EXTRA2	_MMIO(0x7108)
 #define GEN7_SAMPLER_INSTDONE	_MMIO(0xe160)
 #define GEN7_ROW_INSTDONE	_MMIO(0xe164)
+#define XEHPG_INSTDONE_GEOM_SVG		_MMIO(0x666c)
 #define MCFG_MCR_SELECTOR		_MMIO(0xfd0)
 #define SF_MCR_SELECTOR			_MMIO(0xfd8)
 #define GEN8_MCR_SELECTOR		_MMIO(0xfdc)
-- 
2.25.4

