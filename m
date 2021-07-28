Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F9B3D9808
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 00:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 400DE6EB0B;
	Wed, 28 Jul 2021 22:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD8776EA16
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 22:00:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212786409"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212786409"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="663663288"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 14:59:44 -0700
Message-Id: <20210728215946.1573015-24-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210728215946.1573015-1-lucas.demarchi@intel.com>
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/25] drm/i915: remove GRAPHICS_VER == 10
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

Replace all remaining handling of GRAPHICS_VER {==,>=} 10 with
{==,>=} 11. With the removal of CNL, there is no platform with graphics
version equals 10.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c |  1 -
 drivers/gpu/drm/i915/gvt/gtt.c             |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c        |  6 +++---
 drivers/gpu/drm/i915/i915_drv.h            |  2 +-
 drivers/gpu/drm/i915/i915_perf.c           | 21 ++++++++-------------
 5 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index b0c3a7dc60d1..34070d0ea325 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -447,7 +447,6 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 		break;
 	case 8:
 	case 9:
-	case 10:
 		if (IS_LP(i915))
 			chv_get_stolen_reserved(i915, uncore,
 						&reserved_base, &reserved_size);
diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index cc2c05e18206..e5c2fdfc20e3 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1055,7 +1055,7 @@ static bool vgpu_ips_enabled(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
-	if (GRAPHICS_VER(dev_priv) == 9 || GRAPHICS_VER(dev_priv) == 10) {
+	if (GRAPHICS_VER(dev_priv) == 9) {
 		u32 ips = vgpu_vreg_t(vgpu, GEN8_GAMW_ECO_DEV_RW_IA) &
 			GAMW_ECO_ENABLE_64K_IPS_FIELD;
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 0529576f069c..44969f5dde50 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -538,20 +538,20 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 		max_freq = (IS_GEN9_LP(dev_priv) ? rp_state_cap >> 0 :
 			    rp_state_cap >> 16) & 0xff;
 		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     GRAPHICS_VER(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
+			     GRAPHICS_VER(dev_priv) >= 11 ? GEN9_FREQ_SCALER : 1);
 		seq_printf(m, "Lowest (RPN) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 
 		max_freq = (rp_state_cap & 0xff00) >> 8;
 		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     GRAPHICS_VER(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
+			     GRAPHICS_VER(dev_priv) >= 11 ? GEN9_FREQ_SCALER : 1);
 		seq_printf(m, "Nominal (RP1) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 
 		max_freq = (IS_GEN9_LP(dev_priv) ? rp_state_cap >> 16 :
 			    rp_state_cap >> 0) & 0xff;
 		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     GRAPHICS_VER(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
+			     GRAPHICS_VER(dev_priv) >= 11 ? GEN9_FREQ_SCALER : 1);
 		seq_printf(m, "Max non-overclocked (RP0) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 		seq_printf(m, "Max overclocked frequency: %dMHz\n",
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d4bb42246904..5d5cf5ad0513 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1597,7 +1597,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	 IS_SKL_GT4(dev_priv))
 
 #define HAS_GMBUS_IRQ(dev_priv) (GRAPHICS_VER(dev_priv) >= 4)
-#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 10 || \
+#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 9f94914958c3..05e941cd1065 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1256,7 +1256,6 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 
 	case 8:
 	case 9:
-	case 10:
 		if (intel_engine_uses_guc(ce->engine)) {
 			/*
 			 * When using GuC, the context descriptor we write in
@@ -2580,7 +2579,7 @@ static void gen8_disable_metric_set(struct i915_perf_stream *stream)
 	intel_uncore_rmw(uncore, GDT_CHICKEN_BITS, GT_NOA_ENABLE, 0);
 }
 
-static void gen10_disable_metric_set(struct i915_perf_stream *stream)
+static void gen11_disable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
@@ -3887,7 +3886,7 @@ static bool gen8_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 	       REG_IN_RANGE(addr, RPM_CONFIG0, NOA_CONFIG(8));
 }
 
-static bool gen10_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
+static bool gen11_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
 	return gen8_is_valid_mux_addr(perf, addr) ||
 	       REG_EQUAL(addr, GEN10_NOA_WRITE_HIGH) ||
@@ -4395,27 +4394,23 @@ void i915_perf_init(struct drm_i915_private *i915)
 
 				perf->gen8_valid_ctx_bit = BIT(16);
 			}
-		} else if (IS_GRAPHICS_VER(i915, 10, 11)) {
+		} else if (GRAPHICS_VER(i915) == 11) {
 			perf->ops.is_valid_b_counter_reg =
 				gen7_is_valid_b_counter_addr;
 			perf->ops.is_valid_mux_reg =
-				gen10_is_valid_mux_addr;
+				gen11_is_valid_mux_addr;
 			perf->ops.is_valid_flex_reg =
 				gen8_is_valid_flex_addr;
 
 			perf->ops.oa_enable = gen8_oa_enable;
 			perf->ops.oa_disable = gen8_oa_disable;
 			perf->ops.enable_metric_set = gen8_enable_metric_set;
-			perf->ops.disable_metric_set = gen10_disable_metric_set;
+			perf->ops.disable_metric_set = gen11_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
 
-			if (GRAPHICS_VER(i915) == 10) {
-				perf->ctx_oactxctrl_offset = 0x128;
-				perf->ctx_flexeu0_offset = 0x3de;
-			} else {
-				perf->ctx_oactxctrl_offset = 0x124;
-				perf->ctx_flexeu0_offset = 0x78e;
-			}
+			perf->ctx_oactxctrl_offset = 0x124;
+			perf->ctx_flexeu0_offset = 0x78e;
+
 			perf->gen8_valid_ctx_bit = BIT(16);
 		} else if (GRAPHICS_VER(i915) == 12) {
 			perf->ops.is_valid_b_counter_reg =
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
