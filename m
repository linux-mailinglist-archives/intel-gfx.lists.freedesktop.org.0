Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8953F3D43DB
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jul 2021 02:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD956FD5C;
	Sat, 24 Jul 2021 00:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D946FD1C;
 Sat, 24 Jul 2021 00:11:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="191563470"
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="191563470"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 17:11:36 -0700
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="434270054"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 17:11:36 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 17:11:11 -0700
Message-Id: <20210724001114.249295-28-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210724001114.249295-1-lucas.demarchi@intel.com>
References: <20210724001114.249295-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/30] drm/i915: remove GRAPHICS_VER == 10
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace all remaining handling of GRAPHICS_VER {==,>=} 10 with
{==,>=} 11. With the removal of CNL, there is no platform with graphics
version equals 10.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  1 -
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c       | 10 ++---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  3 --
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  4 +-
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 10 ++---
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  6 +--
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 42 +------------------
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  4 +-
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c  |  6 +--
 drivers/gpu/drm/i915/gvt/gtt.c                |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  6 +--
 drivers/gpu/drm/i915/i915_drv.h               |  2 +-
 drivers/gpu/drm/i915/i915_perf.c              | 21 ++++------
 drivers/gpu/drm/i915/intel_device_info.c      |  4 +-
 15 files changed, 37 insertions(+), 86 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 90708de27684..ddd37ccb1362 100644
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
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index 4270b5a34a83..d6f5836396f8 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -437,20 +437,20 @@ static int frequency_show(struct seq_file *m, void *unused)
 		max_freq = (IS_GEN9_LP(i915) ? rp_state_cap >> 0 :
 			    rp_state_cap >> 16) & 0xff;
 		max_freq *= (IS_GEN9_BC(i915) ||
-			     GRAPHICS_VER(i915) >= 10 ? GEN9_FREQ_SCALER : 1);
+			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
 		seq_printf(m, "Lowest (RPN) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 
 		max_freq = (rp_state_cap & 0xff00) >> 8;
 		max_freq *= (IS_GEN9_BC(i915) ||
-			     GRAPHICS_VER(i915) >= 10 ? GEN9_FREQ_SCALER : 1);
+			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
 		seq_printf(m, "Nominal (RP1) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 
 		max_freq = (IS_GEN9_LP(i915) ? rp_state_cap >> 16 :
 			    rp_state_cap >> 0) & 0xff;
 		max_freq *= (IS_GEN9_BC(i915) ||
-			     GRAPHICS_VER(i915) >= 10 ? GEN9_FREQ_SCALER : 1);
+			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
 		seq_printf(m, "Max non-overclocked (RP0) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 		seq_printf(m, "Max overclocked frequency: %dMHz\n",
@@ -500,7 +500,7 @@ static int llc_show(struct seq_file *m, void *data)
 
 	min_gpu_freq = rps->min_freq;
 	max_gpu_freq = rps->max_freq;
-	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 10) {
+	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
 		/* Convert GT frequency to 50 HZ units */
 		min_gpu_freq /= GEN9_FREQ_SCALER;
 		max_gpu_freq /= GEN9_FREQ_SCALER;
@@ -518,7 +518,7 @@ static int llc_show(struct seq_file *m, void *data)
 			   intel_gpu_freq(rps,
 					  (gpu_freq *
 					   (IS_GEN9_BC(i915) ||
-					    GRAPHICS_VER(i915) >= 10 ?
+					    GRAPHICS_VER(i915) >= 11 ?
 					    GEN9_FREQ_SCALER : 1))),
 			   ((ia_freq >> 0) & 0xff) * 100,
 			   ((ia_freq >> 8) & 0xff) * 100);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 4168b9fc59e1..152b5493a455 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -35,7 +35,6 @@
 #define DEFAULT_LR_CONTEXT_RENDER_SIZE	(22 * PAGE_SIZE)
 #define GEN8_LR_CONTEXT_RENDER_SIZE	(20 * PAGE_SIZE)
 #define GEN9_LR_CONTEXT_RENDER_SIZE	(22 * PAGE_SIZE)
-#define GEN10_LR_CONTEXT_RENDER_SIZE	(18 * PAGE_SIZE)
 #define GEN11_LR_CONTEXT_RENDER_SIZE	(14 * PAGE_SIZE)
 
 #define GEN8_LR_CONTEXT_OTHER_SIZE	( 2 * PAGE_SIZE)
@@ -149,8 +148,6 @@ u32 intel_engine_context_size(struct intel_gt *gt, u8 class)
 		case 12:
 		case 11:
 			return GEN11_LR_CONTEXT_RENDER_SIZE;
-		case 10:
-			return GEN10_LR_CONTEXT_RENDER_SIZE;
 		case 9:
 			return GEN9_LR_CONTEXT_RENDER_SIZE;
 		case 8:
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 9d445ad9a342..de3ac58fceec 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -826,13 +826,13 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	phys_addr = pci_resource_start(pdev, 0) + pci_resource_len(pdev, 0) / 2;
 
 	/*
-	 * On BXT+/CNL+ writes larger than 64 bit to the GTT pagetable range
+	 * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable range
 	 * will be dropped. For WC mappings in general we have 64 byte burst
 	 * writes when the WC buffer is flushed, so we can't use it, but have to
 	 * resort to an uncached mapping. The WC issue is easily caught by the
 	 * readback check when writing GTT PTE entries.
 	 */
-	if (IS_GEN9_LP(i915) || GRAPHICS_VER(i915) >= 10)
+	if (IS_GEN9_LP(i915) || GRAPHICS_VER(i915) >= 11)
 		ggtt->gsm = ioremap(phys_addr, size);
 	else
 		ggtt->gsm = ioremap_wc(phys_addr, size);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 9f0e729d2d15..3513d6f90747 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -24,8 +24,8 @@ static u32 read_reference_ts_freq(struct intel_uncore *uncore)
 	return base_freq + frac_freq;
 }
 
-static u32 gen10_get_crystal_clock_freq(struct intel_uncore *uncore,
-					u32 rpm_config_reg)
+static u32 gen9_get_crystal_clock_freq(struct intel_uncore *uncore,
+				       u32 rpm_config_reg)
 {
 	u32 f19_2_mhz = 19200000;
 	u32 f24_mhz = 24000000;
@@ -128,10 +128,10 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
 		} else {
 			u32 c0 = intel_uncore_read(uncore, RPM_CONFIG0);
 
-			if (GRAPHICS_VER(uncore->i915) <= 10)
-				freq = gen10_get_crystal_clock_freq(uncore, c0);
-			else
+			if (GRAPHICS_VER(uncore->i915) >= 11)
 				freq = gen11_get_crystal_clock_freq(uncore, c0);
+			else
+				freq = gen9_get_crystal_clock_freq(uncore, c0);
 
 			/*
 			 * Now figure out how the command stream's timestamp
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index f7e0352edb62..e137dd32b5b8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -426,7 +426,7 @@ static void tgl_setup_private_ppat(struct intel_uncore *uncore)
 	intel_uncore_write(uncore, GEN12_PAT_INDEX(7), GEN8_PPAT_WB);
 }
 
-static void cnl_setup_private_ppat(struct intel_uncore *uncore)
+static void icl_setup_private_ppat(struct intel_uncore *uncore)
 {
 	intel_uncore_write(uncore,
 			   GEN10_PAT_INDEX(0),
@@ -526,8 +526,8 @@ void setup_private_pat(struct intel_uncore *uncore)
 
 	if (GRAPHICS_VER(i915) >= 12)
 		tgl_setup_private_ppat(uncore);
-	else if (GRAPHICS_VER(i915) >= 10)
-		cnl_setup_private_ppat(uncore);
+	else if (GRAPHICS_VER(i915) >= 11)
+		icl_setup_private_ppat(uncore);
 	else if (IS_CHERRYVIEW(i915) || IS_GEN9_LP(i915))
 		chv_setup_private_ppat(uncore);
 	else
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c3f5bec8ae15..bb4af4977920 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -70,7 +70,7 @@ static void set_offsets(u32 *regs,
 	if (close) {
 		/* Close the batch; used mainly by live_lrc_layout() */
 		*regs = MI_BATCH_BUFFER_END;
-		if (GRAPHICS_VER(engine->i915) >= 10)
+		if (GRAPHICS_VER(engine->i915) >= 11)
 			*regs |= BIT(0);
 	}
 }
@@ -653,8 +653,6 @@ lrc_ring_indirect_offset_default(const struct intel_engine_cs *engine)
 		return GEN12_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
 	case 11:
 		return GEN11_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-	case 10:
-		return GEN10_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
 	case 9:
 		return GEN9_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
 	case 8:
@@ -1448,40 +1446,6 @@ static u32 *gen9_init_indirectctx_bb(struct intel_engine_cs *engine, u32 *batch)
 	return batch;
 }
 
-static u32 *
-gen10_init_indirectctx_bb(struct intel_engine_cs *engine, u32 *batch)
-{
-	int i;
-
-	/*
-	 * WaPipeControlBefore3DStateSamplePattern: cnl
-	 *
-	 * Ensure the engine is idle prior to programming a
-	 * 3DSTATE_SAMPLE_PATTERN during a context restore.
-	 */
-	batch = gen8_emit_pipe_control(batch,
-				       PIPE_CONTROL_CS_STALL,
-				       0);
-	/*
-	 * WaPipeControlBefore3DStateSamplePattern says we need 4 dwords for
-	 * the PIPE_CONTROL followed by 12 dwords of 0x0, so 16 dwords in
-	 * total. However, a PIPE_CONTROL is 6 dwords long, not 4, which is
-	 * confusing. Since gen8_emit_pipe_control() already advances the
-	 * batch by 6 dwords, we advance the other 10 here, completing a
-	 * cacheline. It's not clear if the workaround requires this padding
-	 * before other commands, or if it's just the regular padding we would
-	 * already have for the workaround bb, so leave it here for now.
-	 */
-	for (i = 0; i < 10; i++)
-		*batch++ = MI_NOOP;
-
-	/* Pad to end of cacheline */
-	while ((unsigned long)batch % CACHELINE_BYTES)
-		*batch++ = MI_NOOP;
-
-	return batch;
-}
-
 #define CTX_WA_BB_SIZE (PAGE_SIZE)
 
 static int lrc_create_wa_ctx(struct intel_engine_cs *engine)
@@ -1534,10 +1498,6 @@ void lrc_init_wa_ctx(struct intel_engine_cs *engine)
 	case 12:
 	case 11:
 		return;
-	case 10:
-		wa_bb_fn[0] = gen10_init_indirectctx_bb;
-		wa_bb_fn[1] = NULL;
-		break;
 	case 9:
 		wa_bb_fn[0] = gen9_init_indirectctx_bb;
 		wa_bb_fn[1] = NULL;
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 259d7eb4e165..a7d13fe35b2e 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -126,7 +126,7 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
 	enum intel_engine_id id;
 
 	/* 2b: Program RC6 thresholds.*/
-	if (GRAPHICS_VER(rc6_to_i915(rc6)) >= 10) {
+	if (GRAPHICS_VER(rc6_to_i915(rc6)) >= 11) {
 		set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
 		set(uncore, GEN10_MEDIA_WAKE_RATE_LIMIT, 150);
 	} else if (IS_SKYLAKE(rc6_to_i915(rc6))) {
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 06e9a8ed4e03..2e03ad80f3cf 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -999,7 +999,7 @@ static void gen6_rps_init(struct intel_rps *rps)
 
 	rps->efficient_freq = rps->rp1_freq;
 	if (IS_HASWELL(i915) || IS_BROADWELL(i915) ||
-	    IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 10) {
+	    IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
 		u32 ddcc_status = 0;
 
 		if (sandybridge_pcode_read(i915,
@@ -1012,7 +1012,7 @@ static void gen6_rps_init(struct intel_rps *rps)
 					rps->max_freq);
 	}
 
-	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 10) {
+	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
 		/* Store the frequency values in 16.66 MHZ units, which is
 		 * the natural hardware unit for SKL
 		 */
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
index 714fe8495775..5e7b09c5e36f 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
@@ -50,7 +50,7 @@ static void cherryview_sseu_device_status(struct intel_gt *gt,
 #undef SS_MAX
 }
 
-static void gen10_sseu_device_status(struct intel_gt *gt,
+static void gen11_sseu_device_status(struct intel_gt *gt,
 				     struct sseu_dev_info *sseu)
 {
 #define SS_MAX 6
@@ -267,8 +267,8 @@ int intel_sseu_status(struct seq_file *m, struct intel_gt *gt)
 			bdw_sseu_device_status(gt, &sseu);
 		else if (GRAPHICS_VER(i915) == 9)
 			gen9_sseu_device_status(gt, &sseu);
-		else if (GRAPHICS_VER(i915) >= 10)
-			gen10_sseu_device_status(gt, &sseu);
+		else if (GRAPHICS_VER(i915) >= 11)
+			gen11_sseu_device_status(gt, &sseu);
 	}
 
 	i915_print_sseu_info(m, false, HAS_POOLED_EU(i915), &sseu);
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
index e3c8283d770c..f9671686bf62 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1649,7 +1649,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_SKL_GT3(dev_priv) || IS_SKL_GT4(dev_priv))
 
 #define HAS_GMBUS_IRQ(dev_priv) (GRAPHICS_VER(dev_priv) >= 4)
-#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 10 || \
+#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 108774d651d9..2f01b8c0284c 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1256,7 +1256,6 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 
 	case 8:
 	case 9:
-	case 10:
 		if (intel_engine_uses_guc(ce->engine)) {
 			/*
 			 * When using GuC, the context descriptor we write in
@@ -2589,7 +2588,7 @@ static void gen8_disable_metric_set(struct i915_perf_stream *stream)
 	intel_uncore_rmw(uncore, GDT_CHICKEN_BITS, GT_NOA_ENABLE, 0);
 }
 
-static void gen10_disable_metric_set(struct i915_perf_stream *stream)
+static void gen11_disable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
@@ -3896,7 +3895,7 @@ static bool gen8_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 	       REG_IN_RANGE(addr, RPM_CONFIG0, NOA_CONFIG(8));
 }
 
-static bool gen10_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
+static bool gen11_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
 	return gen8_is_valid_mux_addr(perf, addr) ||
 	       REG_EQUAL(addr, GEN10_NOA_WRITE_HIGH) ||
@@ -4403,27 +4402,23 @@ void i915_perf_init(struct drm_i915_private *i915)
 
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
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 2893a8659a8b..4319ae020c86 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -265,7 +265,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_scalers[pipe] = 0;
-	else if (GRAPHICS_VER(dev_priv) >= 10) {
+	else if (GRAPHICS_VER(dev_priv) >= 11) {
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_scalers[pipe] = 2;
 	} else if (GRAPHICS_VER(dev_priv) == 9) {
@@ -282,7 +282,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	else if (GRAPHICS_VER(dev_priv) >= 11)
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 6;
-	else if (GRAPHICS_VER(dev_priv) == 10 || IS_GEMINILAKE(dev_priv))
+	else if (IS_GEMINILAKE(dev_priv))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 3;
 	else if (IS_BROXTON(dev_priv)) {
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
