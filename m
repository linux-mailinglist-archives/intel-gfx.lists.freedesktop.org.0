Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE763DA993
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 19:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 102546EDF7;
	Thu, 29 Jul 2021 17:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911CF6EDF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 17:00:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="212966801"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="212966801"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 10:00:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="417712138"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 10:00:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jul 2021 09:59:57 -0700
Message-Id: <20210729170008.2836648-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210729170008.2836648-1-matthew.d.roper@intel.com>
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 07/18] drm/i915/dg2: Report INSTDONE_GEOM
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
index 06733e86e88b..0a70a3baef9d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1205,6 +1205,13 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
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
index 39ce6befff52..62af453c8c54 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2757,6 +2757,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN12_SC_INSTDONE_EXTRA2	_MMIO(0x7108)
 #define GEN7_SAMPLER_INSTDONE	_MMIO(0xe160)
 #define GEN7_ROW_INSTDONE	_MMIO(0xe164)
+#define XEHPG_INSTDONE_GEOM_SVG		_MMIO(0x666c)
 #define MCFG_MCR_SELECTOR		_MMIO(0xfd0)
 #define SF_MCR_SELECTOR			_MMIO(0xfd8)
 #define GEN8_MCR_SELECTOR		_MMIO(0xfdc)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
