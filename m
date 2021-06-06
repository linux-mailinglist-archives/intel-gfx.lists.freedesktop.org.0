Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B343139CD41
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Jun 2021 06:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707106E1C0;
	Sun,  6 Jun 2021 04:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D2626E12D;
 Sun,  6 Jun 2021 04:51:40 +0000 (UTC)
IronPort-SDR: I/6LsotKaM+mwVtxTGfJojB+CpTxT3RJ0kjkNRR+LkY8noJfewmJYOc2X3li7P0IZuh4KyrTE3
 QFJ6ZDR+qfzw==
X-IronPort-AV: E=McAfee;i="6200,9189,10006"; a="204453323"
X-IronPort-AV: E=Sophos;i="5.83,252,1616482800"; d="scan'208";a="204453323"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2021 21:51:38 -0700
IronPort-SDR: aJTjzvr/bQrJM4tayhcrUiXeU+RBdYFnxXxoVOb47bXJxN5GiKqAUIZpa5kqKJ25Btk47OJz7K
 wzus3tqY75FA==
X-IronPort-AV: E=Sophos;i="5.83,252,1616482800"; d="scan'208";a="475872796"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2021 21:51:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  5 Jun 2021 21:50:49 -0700
Message-Id: <20210606045050.103862-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210606045050.103862-1-lucas.demarchi@intel.com>
References: <20210606045050.103862-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915: replace IS_GEN and friends
 with GRAPHICS_VER
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This was done by the following semantic patch:

	@@ expression i915; @@
	- INTEL_GEN(i915)
	+ GRAPHICS_VER(i915)

	@@ expression i915; expression E; @@
	- INTEL_GEN(i915) >= E
	+ GRAPHICS_VER(i915) >= E

	@@ expression dev_priv; expression E; @@
	- !IS_GEN(dev_priv, E)
	+ GRAPHICS_VER(dev_priv) != E

	@@ expression dev_priv; expression E; @@
	- IS_GEN(dev_priv, E)
	+ GRAPHICS_VER(dev_priv) == E

	@@
	expression dev_priv;
	expression from, until;
	@@
	- IS_GEN_RANGE(dev_priv, from, until)
	+ IS_GRAPHICS_VER(dev_priv, from, until)

	@def@
	expression E;
	identifier id =~ "^gen$";
	@@
	- id = GRAPHICS_VER(E)
	+ ver = GRAPHICS_VER(E)

	@@
	identifier def.id;
	@@
	- id
	+ ver

It also takes care of renaming the variable we assign to GRAPHICS_VER()
so to use "ver" rather than "gen".

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c        | 10 +--
 drivers/gpu/drm/i915/i915_debugfs.c           | 30 +++----
 drivers/gpu/drm/i915/i915_drv.c               | 20 ++---
 drivers/gpu/drm/i915/i915_gem.c               |  4 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         | 80 +++++++++----------
 drivers/gpu/drm/i915/i915_irq.c               | 34 ++++----
 drivers/gpu/drm/i915/i915_perf.c              | 44 +++++-----
 drivers/gpu/drm/i915/i915_pmu.c               |  8 +-
 drivers/gpu/drm/i915/i915_request.c           |  4 +-
 drivers/gpu/drm/i915/i915_suspend.c           | 16 ++--
 drivers/gpu/drm/i915/i915_sysfs.c             |  2 +-
 drivers/gpu/drm/i915/i915_vgpu.c              |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c      | 22 ++---
 drivers/gpu/drm/i915/intel_dram.c             | 14 ++--
 drivers/gpu/drm/i915/intel_pch.c              | 10 +--
 drivers/gpu/drm/i915/intel_pm.c               | 14 ++--
 drivers/gpu/drm/i915/intel_sideband.c         |  2 +-
 drivers/gpu/drm/i915/intel_uncore.c           | 24 +++---
 drivers/gpu/drm/i915/intel_wopcm.c            | 10 +--
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  4 +-
 drivers/gpu/drm/i915/selftests/i915_perf.c    |  6 +-
 drivers/gpu/drm/i915/selftests/i915_request.c |  8 +-
 drivers/gpu/drm/i915/selftests/igt_spinner.c  | 12 +--
 drivers/gpu/drm/i915/selftests/intel_uncore.c |  2 +-
 24 files changed, 191 insertions(+), 191 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 5b4b2bd46e7c..3992c25a191d 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -946,8 +946,8 @@ int intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
 	int cmd_table_count;
 	int ret;
 
-	if (!IS_GEN(engine->i915, 7) && !(IS_GEN(engine->i915, 9) &&
-					  engine->class == COPY_ENGINE_CLASS))
+	if (GRAPHICS_VER(engine->i915) != 7 && !(GRAPHICS_VER(engine->i915) == 9 &&
+						 engine->class == COPY_ENGINE_CLASS))
 		return 0;
 
 	switch (engine->class) {
@@ -977,7 +977,7 @@ int intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
 		break;
 	case COPY_ENGINE_CLASS:
 		engine->get_cmd_length_mask = gen7_blt_get_cmd_length_mask;
-		if (IS_GEN(engine->i915, 9)) {
+		if (GRAPHICS_VER(engine->i915) == 9) {
 			cmd_tables = gen9_blt_cmd_table;
 			cmd_table_count = ARRAY_SIZE(gen9_blt_cmd_table);
 			engine->get_cmd_length_mask =
@@ -993,7 +993,7 @@ int intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
 			cmd_table_count = ARRAY_SIZE(gen7_blt_cmd_table);
 		}
 
-		if (IS_GEN(engine->i915, 9)) {
+		if (GRAPHICS_VER(engine->i915) == 9) {
 			engine->reg_tables = gen9_blt_reg_tables;
 			engine->reg_table_count =
 				ARRAY_SIZE(gen9_blt_reg_tables);
@@ -1537,7 +1537,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 				if (IS_HASWELL(engine->i915))
 					flags = MI_BATCH_NON_SECURE_HSW;
 
-				GEM_BUG_ON(!IS_GEN_RANGE(engine->i915, 6, 7));
+				GEM_BUG_ON(!IS_GRAPHICS_VER(engine->i915, 6, 7));
 				__gen6_emit_bb_start(batch_end,
 						     batch_addr,
 						     flags);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index a4d8a836bd57..cc745751ac53 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -361,7 +361,7 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
-	if (IS_GEN(dev_priv, 5)) {
+	if (GRAPHICS_VER(dev_priv) == 5) {
 		u16 rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
 		u16 rgvstat = intel_uncore_read16(uncore, MEMSTAT_ILK);
 
@@ -408,7 +408,7 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 		seq_printf(m,
 			   "efficient (RPe) frequency: %d MHz\n",
 			   intel_gpu_freq(rps, rps->efficient_freq));
-	} else if (INTEL_GEN(dev_priv) >= 6) {
+	} else if (GRAPHICS_VER(dev_priv) >= 6) {
 		u32 rp_state_limits;
 		u32 gt_perf_status;
 		u32 rp_state_cap;
@@ -432,7 +432,7 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
 
 		reqf = intel_uncore_read(&dev_priv->uncore, GEN6_RPNSWREQ);
-		if (INTEL_GEN(dev_priv) >= 9)
+		if (GRAPHICS_VER(dev_priv) >= 9)
 			reqf >>= 23;
 		else {
 			reqf &= ~GEN6_TURBO_DISABLE;
@@ -458,7 +458,7 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 
 		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
 
-		if (INTEL_GEN(dev_priv) >= 11) {
+		if (GRAPHICS_VER(dev_priv) >= 11) {
 			pm_ier = intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE);
 			pm_imr = intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_MASK);
 			/*
@@ -467,7 +467,7 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 			 */
 			pm_isr = 0;
 			pm_iir = 0;
-		} else if (INTEL_GEN(dev_priv) >= 8) {
+		} else if (GRAPHICS_VER(dev_priv) >= 8) {
 			pm_ier = intel_uncore_read(&dev_priv->uncore, GEN8_GT_IER(2));
 			pm_imr = intel_uncore_read(&dev_priv->uncore, GEN8_GT_IMR(2));
 			pm_isr = intel_uncore_read(&dev_priv->uncore, GEN8_GT_ISR(2));
@@ -490,14 +490,14 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 
 		seq_printf(m, "PM IER=0x%08x IMR=0x%08x, MASK=0x%08x\n",
 			   pm_ier, pm_imr, pm_mask);
-		if (INTEL_GEN(dev_priv) <= 10)
+		if (GRAPHICS_VER(dev_priv) <= 10)
 			seq_printf(m, "PM ISR=0x%08x IIR=0x%08x\n",
 				   pm_isr, pm_iir);
 		seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
 			   rps->pm_intrmsk_mbz);
 		seq_printf(m, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
 		seq_printf(m, "Render p-state ratio: %d\n",
-			   (gt_perf_status & (INTEL_GEN(dev_priv) >= 9 ? 0x1ff00 : 0xff00)) >> 8);
+			   (gt_perf_status & (GRAPHICS_VER(dev_priv) >= 9 ? 0x1ff00 : 0xff00)) >> 8);
 		seq_printf(m, "Render p-state VID: %d\n",
 			   gt_perf_status & 0xff);
 		seq_printf(m, "Render p-state limit: %d\n",
@@ -538,20 +538,20 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 		max_freq = (IS_GEN9_LP(dev_priv) ? rp_state_cap >> 0 :
 			    rp_state_cap >> 16) & 0xff;
 		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     INTEL_GEN(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
+			     GRAPHICS_VER(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
 		seq_printf(m, "Lowest (RPN) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 
 		max_freq = (rp_state_cap & 0xff00) >> 8;
 		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     INTEL_GEN(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
+			     GRAPHICS_VER(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
 		seq_printf(m, "Nominal (RP1) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 
 		max_freq = (IS_GEN9_LP(dev_priv) ? rp_state_cap >> 16 :
 			    rp_state_cap >> 0) & 0xff;
 		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     INTEL_GEN(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
+			     GRAPHICS_VER(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
 		seq_printf(m, "Max non-overclocked (RP0) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 		seq_printf(m, "Max overclocked frequency: %dMHz\n",
@@ -622,12 +622,12 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
 		seq_puts(m, "L-shaped memory detected\n");
 
 	/* On BDW+, swizzling is not used. See detect_bit_6_swizzle() */
-	if (INTEL_GEN(dev_priv) >= 8 || IS_VALLEYVIEW(dev_priv))
+	if (GRAPHICS_VER(dev_priv) >= 8 || IS_VALLEYVIEW(dev_priv))
 		return 0;
 
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
-	if (IS_GEN_RANGE(dev_priv, 3, 4)) {
+	if (IS_GRAPHICS_VER(dev_priv, 3, 4)) {
 		seq_printf(m, "DDC = 0x%08x\n",
 			   intel_uncore_read(uncore, DCC));
 		seq_printf(m, "DDC2 = 0x%08x\n",
@@ -645,7 +645,7 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
 			   intel_uncore_read(uncore, MAD_DIMM_C2));
 		seq_printf(m, "TILECTL = 0x%08x\n",
 			   intel_uncore_read(uncore, TILECTL));
-		if (INTEL_GEN(dev_priv) >= 8)
+		if (GRAPHICS_VER(dev_priv) >= 8)
 			seq_printf(m, "GAMTARBMODE = 0x%08x\n",
 				   intel_uncore_read(uncore, GAMTARBMODE));
 		else
@@ -956,7 +956,7 @@ static int i915_forcewake_open(struct inode *inode, struct file *file)
 
 	atomic_inc(&gt->user_wakeref);
 	intel_gt_pm_get(gt);
-	if (INTEL_GEN(i915) >= 6)
+	if (GRAPHICS_VER(i915) >= 6)
 		intel_uncore_forcewake_user_get(gt->uncore);
 
 	return 0;
@@ -967,7 +967,7 @@ static int i915_forcewake_release(struct inode *inode, struct file *file)
 	struct drm_i915_private *i915 = inode->i_private;
 	struct intel_gt *gt = &i915->gt;
 
-	if (INTEL_GEN(i915) >= 6)
+	if (GRAPHICS_VER(i915) >= 6)
 		intel_uncore_forcewake_user_put(&i915->uncore);
 	intel_gt_pm_put(gt);
 	atomic_dec(&gt->user_wakeref);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 30c349137be2..850b499c71c8 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -107,12 +107,12 @@ static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
 static int
 intel_alloc_mchbar_resource(struct drm_i915_private *dev_priv)
 {
-	int reg = INTEL_GEN(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
+	int reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 	u32 temp_lo, temp_hi = 0;
 	u64 mchbar_addr;
 	int ret;
 
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (GRAPHICS_VER(dev_priv) >= 4)
 		pci_read_config_dword(dev_priv->bridge_dev, reg + 4, &temp_hi);
 	pci_read_config_dword(dev_priv->bridge_dev, reg, &temp_lo);
 	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
@@ -139,7 +139,7 @@ intel_alloc_mchbar_resource(struct drm_i915_private *dev_priv)
 		return ret;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (GRAPHICS_VER(dev_priv) >= 4)
 		pci_write_config_dword(dev_priv->bridge_dev, reg + 4,
 				       upper_32_bits(dev_priv->mch_res.start));
 
@@ -152,7 +152,7 @@ intel_alloc_mchbar_resource(struct drm_i915_private *dev_priv)
 static void
 intel_setup_mchbar(struct drm_i915_private *dev_priv)
 {
-	int mchbar_reg = INTEL_GEN(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
+	int mchbar_reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 	u32 temp;
 	bool enabled;
 
@@ -191,7 +191,7 @@ intel_setup_mchbar(struct drm_i915_private *dev_priv)
 static void
 intel_teardown_mchbar(struct drm_i915_private *dev_priv)
 {
-	int mchbar_reg = INTEL_GEN(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
+	int mchbar_reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 
 	if (dev_priv->mchbar_need_disable) {
 		if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
@@ -483,7 +483,7 @@ static int i915_set_dma_info(struct drm_i915_private *i915)
 		goto mask_err;
 
 	/* overlay on gen2 is broken and can't address above 1G */
-	if (IS_GEN(i915, 2))
+	if (GRAPHICS_VER(i915) == 2)
 		mask_size = 30;
 
 	/*
@@ -609,7 +609,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	 * device. The kernel then disables that interrupt source and so
 	 * prevents the other device from working properly.
 	 */
-	if (INTEL_GEN(dev_priv) >= 5) {
+	if (GRAPHICS_VER(dev_priv) >= 5) {
 		if (pci_enable_msi(pdev) < 0)
 			drm_dbg(&dev_priv->drm, "can't enable MSI");
 	}
@@ -739,7 +739,7 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 			   intel_platform_name(INTEL_INFO(dev_priv)->platform),
 			   intel_subplatform(RUNTIME_INFO(dev_priv),
 					     INTEL_INFO(dev_priv)->platform),
-			   INTEL_GEN(dev_priv));
+			   GRAPHICS_VER(dev_priv));
 
 		intel_device_info_print_static(INTEL_INFO(dev_priv), &p);
 		intel_device_info_print_runtime(RUNTIME_INFO(dev_priv), &p);
@@ -813,7 +813,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 */
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 	if (IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)) {
-		if (INTEL_GEN(i915) >= 9 && i915_selftest.live < 0 &&
+		if (GRAPHICS_VER(i915) >= 9 && i915_selftest.live < 0 &&
 		    i915->params.fake_lmem_start) {
 			mkwrite_device_info(i915)->memory_regions =
 				REGION_SMEM | REGION_LMEM | REGION_STOLEN_SMEM;
@@ -1195,7 +1195,7 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	 * Fujitsu FSC S7110
 	 * Acer Aspire 1830T
 	 */
-	if (!(hibernation && INTEL_GEN(dev_priv) < 6))
+	if (!(hibernation && GRAPHICS_VER(dev_priv) < 6))
 		pci_set_power_state(pdev, PCI_D3hot);
 
 out:
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 0993d706f067..589388dec48a 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -442,7 +442,7 @@ i915_gem_pread_ioctl(struct drm_device *dev, void *data,
 	/* PREAD is disallowed for all platforms after TGL-LP.  This also
 	 * covers all platforms with local memory.
 	 */
-	if (INTEL_GEN(i915) >= 12 && !IS_TIGERLAKE(i915))
+	if (GRAPHICS_VER(i915) >= 12 && !IS_TIGERLAKE(i915))
 		return -EOPNOTSUPP;
 
 	if (args->size == 0)
@@ -722,7 +722,7 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 	/* PWRITE is disallowed for all platforms after TGL-LP.  This also
 	 * covers all platforms with local memory.
 	 */
-	if (INTEL_GEN(i915) >= 12 && !IS_TIGERLAKE(i915))
+	if (GRAPHICS_VER(i915) >= 12 && !IS_TIGERLAKE(i915))
 		return -EOPNOTSUPP;
 
 	if (args->size == 0)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 833d3e8b7631..35c97c39f125 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -435,13 +435,13 @@ static void error_print_instdone(struct drm_i915_error_state_buf *m,
 	err_printf(m, "  INSTDONE: 0x%08x\n",
 		   ee->instdone.instdone);
 
-	if (ee->engine->class != RENDER_CLASS || INTEL_GEN(m->i915) <= 3)
+	if (ee->engine->class != RENDER_CLASS || GRAPHICS_VER(m->i915) <= 3)
 		return;
 
 	err_printf(m, "  SC_INSTDONE: 0x%08x\n",
 		   ee->instdone.slice_common);
 
-	if (INTEL_GEN(m->i915) <= 6)
+	if (GRAPHICS_VER(m->i915) <= 6)
 		return;
 
 	for_each_instdone_slice_subslice(m->i915, sseu, slice, subslice)
@@ -454,7 +454,7 @@ static void error_print_instdone(struct drm_i915_error_state_buf *m,
 			   slice, subslice,
 			   ee->instdone.row[slice][subslice]);
 
-	if (INTEL_GEN(m->i915) < 12)
+	if (GRAPHICS_VER(m->i915) < 12)
 		return;
 
 	err_printf(m, "  SC_INSTDONE_EXTRA: 0x%08x\n",
@@ -543,7 +543,7 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 			   upper_32_bits(start), lower_32_bits(start),
 			   upper_32_bits(end), lower_32_bits(end));
 	}
-	if (INTEL_GEN(m->i915) >= 4) {
+	if (GRAPHICS_VER(m->i915) >= 4) {
 		err_printf(m, "  BBADDR: 0x%08x_%08x\n",
 			   (u32)(ee->bbaddr>>32), (u32)ee->bbaddr);
 		err_printf(m, "  BB_STATE: 0x%08x\n", ee->bbstate);
@@ -552,14 +552,14 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 	err_printf(m, "  INSTPM: 0x%08x\n", ee->instpm);
 	err_printf(m, "  FADDR: 0x%08x %08x\n", upper_32_bits(ee->faddr),
 		   lower_32_bits(ee->faddr));
-	if (INTEL_GEN(m->i915) >= 6) {
+	if (GRAPHICS_VER(m->i915) >= 6) {
 		err_printf(m, "  RC PSMI: 0x%08x\n", ee->rc_psmi);
 		err_printf(m, "  FAULT_REG: 0x%08x\n", ee->fault_reg);
 	}
 	if (HAS_PPGTT(m->i915)) {
 		err_printf(m, "  GFX_MODE: 0x%08x\n", ee->vm_info.gfx_mode);
 
-		if (INTEL_GEN(m->i915) >= 8) {
+		if (GRAPHICS_VER(m->i915) >= 8) {
 			int i;
 			for (i = 0; i < 4; i++)
 				err_printf(m, "  PDP%d: 0x%016llx\n",
@@ -706,25 +706,25 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 	for (i = 0; i < gt->nfence; i++)
 		err_printf(m, "  fence[%d] = %08llx\n", i, gt->fence[i]);
 
-	if (IS_GEN_RANGE(m->i915, 6, 11)) {
+	if (IS_GRAPHICS_VER(m->i915, 6, 11)) {
 		err_printf(m, "ERROR: 0x%08x\n", gt->error);
 		err_printf(m, "DONE_REG: 0x%08x\n", gt->done_reg);
 	}
 
-	if (INTEL_GEN(m->i915) >= 8)
+	if (GRAPHICS_VER(m->i915) >= 8)
 		err_printf(m, "FAULT_TLB_DATA: 0x%08x 0x%08x\n",
 			   gt->fault_data1, gt->fault_data0);
 
-	if (IS_GEN(m->i915, 7))
+	if (GRAPHICS_VER(m->i915) == 7)
 		err_printf(m, "ERR_INT: 0x%08x\n", gt->err_int);
 
-	if (IS_GEN_RANGE(m->i915, 8, 11))
+	if (IS_GRAPHICS_VER(m->i915, 8, 11))
 		err_printf(m, "GTT_CACHE_EN: 0x%08x\n", gt->gtt_cache);
 
-	if (IS_GEN(m->i915, 12))
+	if (GRAPHICS_VER(m->i915) == 12)
 		err_printf(m, "AUX_ERR_DBG: 0x%08x\n", gt->aux_err);
 
-	if (INTEL_GEN(m->i915) >= 12) {
+	if (GRAPHICS_VER(m->i915) >= 12) {
 		int i;
 
 		for (i = 0; i < GEN12_SFC_DONE_MAX; i++)
@@ -1092,12 +1092,12 @@ static void gt_record_fences(struct intel_gt_coredump *gt)
 	struct intel_uncore *uncore = gt->_gt->uncore;
 	int i;
 
-	if (INTEL_GEN(uncore->i915) >= 6) {
+	if (GRAPHICS_VER(uncore->i915) >= 6) {
 		for (i = 0; i < ggtt->num_fences; i++)
 			gt->fence[i] =
 				intel_uncore_read64(uncore,
 						    FENCE_REG_GEN6_LO(i));
-	} else if (INTEL_GEN(uncore->i915) >= 4) {
+	} else if (GRAPHICS_VER(uncore->i915) >= 4) {
 		for (i = 0; i < ggtt->num_fences; i++)
 			gt->fence[i] =
 				intel_uncore_read64(uncore,
@@ -1115,20 +1115,20 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
 	const struct intel_engine_cs *engine = ee->engine;
 	struct drm_i915_private *i915 = engine->i915;
 
-	if (INTEL_GEN(i915) >= 6) {
+	if (GRAPHICS_VER(i915) >= 6) {
 		ee->rc_psmi = ENGINE_READ(engine, RING_PSMI_CTL);
 
-		if (INTEL_GEN(i915) >= 12)
+		if (GRAPHICS_VER(i915) >= 12)
 			ee->fault_reg = intel_uncore_read(engine->uncore,
 							  GEN12_RING_FAULT_REG);
-		else if (INTEL_GEN(i915) >= 8)
+		else if (GRAPHICS_VER(i915) >= 8)
 			ee->fault_reg = intel_uncore_read(engine->uncore,
 							  GEN8_RING_FAULT_REG);
 		else
 			ee->fault_reg = GEN6_RING_FAULT_REG_READ(engine);
 	}
 
-	if (INTEL_GEN(i915) >= 4) {
+	if (GRAPHICS_VER(i915) >= 4) {
 		ee->esr = ENGINE_READ(engine, RING_ESR);
 		ee->faddr = ENGINE_READ(engine, RING_DMA_FADD);
 		ee->ipeir = ENGINE_READ(engine, RING_IPEIR);
@@ -1136,7 +1136,7 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
 		ee->instps = ENGINE_READ(engine, RING_INSTPS);
 		ee->bbaddr = ENGINE_READ(engine, RING_BBADDR);
 		ee->ccid = ENGINE_READ(engine, CCID);
-		if (INTEL_GEN(i915) >= 8) {
+		if (GRAPHICS_VER(i915) >= 8) {
 			ee->faddr |= (u64)ENGINE_READ(engine, RING_DMA_FADD_UDW) << 32;
 			ee->bbaddr |= (u64)ENGINE_READ(engine, RING_BBADDR_UDW) << 32;
 		}
@@ -1155,13 +1155,13 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
 	ee->head = ENGINE_READ(engine, RING_HEAD);
 	ee->tail = ENGINE_READ(engine, RING_TAIL);
 	ee->ctl = ENGINE_READ(engine, RING_CTL);
-	if (INTEL_GEN(i915) > 2)
+	if (GRAPHICS_VER(i915) > 2)
 		ee->mode = ENGINE_READ(engine, RING_MI_MODE);
 
 	if (!HWS_NEEDS_PHYSICAL(i915)) {
 		i915_reg_t mmio;
 
-		if (IS_GEN(i915, 7)) {
+		if (GRAPHICS_VER(i915) == 7) {
 			switch (engine->id) {
 			default:
 				MISSING_CASE(engine->id);
@@ -1179,7 +1179,7 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
 				mmio = VEBOX_HWS_PGA_GEN7;
 				break;
 			}
-		} else if (IS_GEN(engine->i915, 6)) {
+		} else if (GRAPHICS_VER(engine->i915) == 6) {
 			mmio = RING_HWS_PGA_GEN6(engine->mmio_base);
 		} else {
 			/* XXX: gen8 returns to sanity */
@@ -1196,13 +1196,13 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
 
 		ee->vm_info.gfx_mode = ENGINE_READ(engine, RING_MODE_GEN7);
 
-		if (IS_GEN(i915, 6)) {
+		if (GRAPHICS_VER(i915) == 6) {
 			ee->vm_info.pp_dir_base =
 				ENGINE_READ(engine, RING_PP_DIR_BASE_READ);
-		} else if (IS_GEN(i915, 7)) {
+		} else if (GRAPHICS_VER(i915) == 7) {
 			ee->vm_info.pp_dir_base =
 				ENGINE_READ(engine, RING_PP_DIR_BASE);
-		} else if (INTEL_GEN(i915) >= 8) {
+		} else if (GRAPHICS_VER(i915) >= 8) {
 			u32 base = engine->mmio_base;
 
 			for (i = 0; i < 4; i++) {
@@ -1534,52 +1534,52 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 		gt->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE_VLV);
 	}
 
-	if (IS_GEN(i915, 7))
+	if (GRAPHICS_VER(i915) == 7)
 		gt->err_int = intel_uncore_read(uncore, GEN7_ERR_INT);
 
-	if (INTEL_GEN(i915) >= 12) {
+	if (GRAPHICS_VER(i915) >= 12) {
 		gt->fault_data0 = intel_uncore_read(uncore,
 						    GEN12_FAULT_TLB_DATA0);
 		gt->fault_data1 = intel_uncore_read(uncore,
 						    GEN12_FAULT_TLB_DATA1);
-	} else if (INTEL_GEN(i915) >= 8) {
+	} else if (GRAPHICS_VER(i915) >= 8) {
 		gt->fault_data0 = intel_uncore_read(uncore,
 						    GEN8_FAULT_TLB_DATA0);
 		gt->fault_data1 = intel_uncore_read(uncore,
 						    GEN8_FAULT_TLB_DATA1);
 	}
 
-	if (IS_GEN(i915, 6)) {
+	if (GRAPHICS_VER(i915) == 6) {
 		gt->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE);
 		gt->gab_ctl = intel_uncore_read(uncore, GAB_CTL);
 		gt->gfx_mode = intel_uncore_read(uncore, GFX_MODE);
 	}
 
 	/* 2: Registers which belong to multiple generations */
-	if (INTEL_GEN(i915) >= 7)
+	if (GRAPHICS_VER(i915) >= 7)
 		gt->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE_MT);
 
-	if (INTEL_GEN(i915) >= 6) {
+	if (GRAPHICS_VER(i915) >= 6) {
 		gt->derrmr = intel_uncore_read(uncore, DERRMR);
-		if (INTEL_GEN(i915) < 12) {
+		if (GRAPHICS_VER(i915) < 12) {
 			gt->error = intel_uncore_read(uncore, ERROR_GEN6);
 			gt->done_reg = intel_uncore_read(uncore, DONE_REG);
 		}
 	}
 
 	/* 3: Feature specific registers */
-	if (IS_GEN_RANGE(i915, 6, 7)) {
+	if (IS_GRAPHICS_VER(i915, 6, 7)) {
 		gt->gam_ecochk = intel_uncore_read(uncore, GAM_ECOCHK);
 		gt->gac_eco = intel_uncore_read(uncore, GAC_ECO_BITS);
 	}
 
-	if (IS_GEN_RANGE(i915, 8, 11))
+	if (IS_GRAPHICS_VER(i915, 8, 11))
 		gt->gtt_cache = intel_uncore_read(uncore, HSW_GTT_CACHE_EN);
 
-	if (IS_GEN(i915, 12))
+	if (GRAPHICS_VER(i915) == 12)
 		gt->aux_err = intel_uncore_read(uncore, GEN12_AUX_ERR_DBG);
 
-	if (INTEL_GEN(i915) >= 12) {
+	if (GRAPHICS_VER(i915) >= 12) {
 		for (i = 0; i < GEN12_SFC_DONE_MAX; i++) {
 			gt->sfc_done[i] =
 				intel_uncore_read(uncore, GEN12_SFC_DONE(i));
@@ -1589,7 +1589,7 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 	}
 
 	/* 4: Everything else */
-	if (INTEL_GEN(i915) >= 11) {
+	if (GRAPHICS_VER(i915) >= 11) {
 		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
 		gt->gtier[0] =
 			intel_uncore_read(uncore,
@@ -1608,7 +1608,7 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 			intel_uncore_read(uncore,
 					  GEN11_GUNIT_CSME_INTR_ENABLE);
 		gt->ngtier = 6;
-	} else if (INTEL_GEN(i915) >= 8) {
+	} else if (GRAPHICS_VER(i915) >= 8) {
 		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
 		for (i = 0; i < 4; i++)
 			gt->gtier[i] =
@@ -1618,7 +1618,7 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 		gt->ier = intel_uncore_read(uncore, DEIER);
 		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
 		gt->ngtier = 1;
-	} else if (IS_GEN(i915, 2)) {
+	} else if (GRAPHICS_VER(i915) == 2) {
 		gt->ier = intel_uncore_read16(uncore, GEN2_IER);
 	} else if (!IS_VALLEYVIEW(i915)) {
 		gt->ier = intel_uncore_read(uncore, GEN2_IER);
@@ -1674,7 +1674,7 @@ static const char *error_msg(struct i915_gpu_coredump *error)
 
 	len = scnprintf(error->error_msg, sizeof(error->error_msg),
 			"GPU HANG: ecode %d:%x:%08x",
-			INTEL_GEN(error->i915), hung_classes,
+			GRAPHICS_VER(error->i915), hung_classes,
 			generate_ecode(first));
 	if (first && first->context.pid) {
 		/* Just show the first executing process, more is confusing */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 9446a2758c3e..a11bdb667241 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2175,7 +2175,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 	gt_iir = raw_reg_read(regs, GTIIR);
 	if (gt_iir) {
 		raw_reg_write(regs, GTIIR, gt_iir);
-		if (INTEL_GEN(i915) >= 6)
+		if (GRAPHICS_VER(i915) >= 6)
 			gen6_gt_irq_handler(&i915->gt, gt_iir);
 		else
 			gen5_gt_irq_handler(&i915->gt, gt_iir);
@@ -2192,7 +2192,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 		ret = IRQ_HANDLED;
 	}
 
-	if (INTEL_GEN(i915) >= 6) {
+	if (GRAPHICS_VER(i915) >= 6) {
 		u32 pm_iir = raw_reg_read(regs, GEN6_PMIIR);
 		if (pm_iir) {
 			raw_reg_write(regs, GEN6_PMIIR, pm_iir);
@@ -3039,7 +3039,7 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 	GEN3_IRQ_RESET(uncore, DE);
 	dev_priv->irq_mask = ~0u;
 
-	if (IS_GEN(dev_priv, 7))
+	if (GRAPHICS_VER(dev_priv) == 7)
 		intel_uncore_write(uncore, GEN7_ERR_INT, 0xffffffff);
 
 	if (IS_HASWELL(dev_priv)) {
@@ -3658,7 +3658,7 @@ static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 display_mask, extra_mask;
 
-	if (INTEL_GEN(dev_priv) >= 7) {
+	if (GRAPHICS_VER(dev_priv) >= 7) {
 		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
 				DE_PCH_EVENT_IVB | DE_AUX_CHANNEL_A_IVB);
 		extra_mask = (DE_PIPEC_VBLANK_IVB | DE_PIPEB_VBLANK_IVB |
@@ -4330,7 +4330,7 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 		dev_priv->l3_parity.remap_info[i] = NULL;
 
 	/* pre-gen11 the guc irqs bits are in the upper 16 bits of the pm reg */
-	if (HAS_GT_UC(dev_priv) && INTEL_GEN(dev_priv) < 11)
+	if (HAS_GT_UC(dev_priv) && GRAPHICS_VER(dev_priv) < 11)
 		dev_priv->gt.pm_guc_events = GUC_INTR_GUC2HOST << 16;
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -4401,18 +4401,18 @@ static irq_handler_t intel_irq_handler(struct drm_i915_private *dev_priv)
 			return cherryview_irq_handler;
 		else if (IS_VALLEYVIEW(dev_priv))
 			return valleyview_irq_handler;
-		else if (IS_GEN(dev_priv, 4))
+		else if (GRAPHICS_VER(dev_priv) == 4)
 			return i965_irq_handler;
-		else if (IS_GEN(dev_priv, 3))
+		else if (GRAPHICS_VER(dev_priv) == 3)
 			return i915_irq_handler;
 		else
 			return i8xx_irq_handler;
 	} else {
 		if (HAS_MASTER_UNIT_IRQ(dev_priv))
 			return dg1_irq_handler;
-		if (INTEL_GEN(dev_priv) >= 11)
+		if (GRAPHICS_VER(dev_priv) >= 11)
 			return gen11_irq_handler;
-		else if (INTEL_GEN(dev_priv) >= 8)
+		else if (GRAPHICS_VER(dev_priv) >= 8)
 			return gen8_irq_handler;
 		else
 			return ilk_irq_handler;
@@ -4426,16 +4426,16 @@ static void intel_irq_reset(struct drm_i915_private *dev_priv)
 			cherryview_irq_reset(dev_priv);
 		else if (IS_VALLEYVIEW(dev_priv))
 			valleyview_irq_reset(dev_priv);
-		else if (IS_GEN(dev_priv, 4))
+		else if (GRAPHICS_VER(dev_priv) == 4)
 			i965_irq_reset(dev_priv);
-		else if (IS_GEN(dev_priv, 3))
+		else if (GRAPHICS_VER(dev_priv) == 3)
 			i915_irq_reset(dev_priv);
 		else
 			i8xx_irq_reset(dev_priv);
 	} else {
-		if (INTEL_GEN(dev_priv) >= 11)
+		if (GRAPHICS_VER(dev_priv) >= 11)
 			gen11_irq_reset(dev_priv);
-		else if (INTEL_GEN(dev_priv) >= 8)
+		else if (GRAPHICS_VER(dev_priv) >= 8)
 			gen8_irq_reset(dev_priv);
 		else
 			ilk_irq_reset(dev_priv);
@@ -4449,16 +4449,16 @@ static void intel_irq_postinstall(struct drm_i915_private *dev_priv)
 			cherryview_irq_postinstall(dev_priv);
 		else if (IS_VALLEYVIEW(dev_priv))
 			valleyview_irq_postinstall(dev_priv);
-		else if (IS_GEN(dev_priv, 4))
+		else if (GRAPHICS_VER(dev_priv) == 4)
 			i965_irq_postinstall(dev_priv);
-		else if (IS_GEN(dev_priv, 3))
+		else if (GRAPHICS_VER(dev_priv) == 3)
 			i915_irq_postinstall(dev_priv);
 		else
 			i8xx_irq_postinstall(dev_priv);
 	} else {
-		if (INTEL_GEN(dev_priv) >= 11)
+		if (GRAPHICS_VER(dev_priv) >= 11)
 			gen11_irq_postinstall(dev_priv);
-		else if (INTEL_GEN(dev_priv) >= 8)
+		else if (GRAPHICS_VER(dev_priv) >= 8)
 			gen8_irq_postinstall(dev_priv);
 		else
 			ilk_irq_postinstall(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index cb03e4152d2d..9f94914958c3 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -719,7 +719,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * it to userspace...
 		 */
 		reason = ((report32[0] >> OAREPORT_REASON_SHIFT) &
-			  (IS_GEN(stream->perf->i915, 12) ?
+			  (GRAPHICS_VER(stream->perf->i915) == 12 ?
 			   OAREPORT_REASON_MASK_EXTENDED :
 			   OAREPORT_REASON_MASK));
 
@@ -734,7 +734,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * understand that the ID has been squashed by the kernel.
 		 */
 		if (!(report32[0] & stream->perf->gen8_valid_ctx_bit) &&
-		    INTEL_GEN(stream->perf->i915) <= 11)
+		    GRAPHICS_VER(stream->perf->i915) <= 11)
 			ctx_id = report32[2] = INVALID_CTX_ID;
 
 		/*
@@ -801,7 +801,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 	if (start_offset != *offset) {
 		i915_reg_t oaheadptr;
 
-		oaheadptr = IS_GEN(stream->perf->i915, 12) ?
+		oaheadptr = GRAPHICS_VER(stream->perf->i915) == 12 ?
 			    GEN12_OAG_OAHEADPTR : GEN8_OAHEADPTR;
 
 		spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
@@ -854,7 +854,7 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
 	if (drm_WARN_ON(&uncore->i915->drm, !stream->oa_buffer.vaddr))
 		return -EIO;
 
-	oastatus_reg = IS_GEN(stream->perf->i915, 12) ?
+	oastatus_reg = GRAPHICS_VER(stream->perf->i915) == 12 ?
 		       GEN12_OAG_OASTATUS : GEN8_OASTATUS;
 
 	oastatus = intel_uncore_read(uncore, oastatus_reg);
@@ -901,7 +901,7 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
 		intel_uncore_rmw(uncore, oastatus_reg,
 				 GEN8_OASTATUS_COUNTER_OVERFLOW |
 				 GEN8_OASTATUS_REPORT_LOST,
-				 IS_GEN_RANGE(uncore->i915, 8, 11) ?
+				 IS_GRAPHICS_VER(uncore->i915, 8, 11) ?
 				 (GEN8_OASTATUS_HEAD_POINTER_WRAP |
 				  GEN8_OASTATUS_TAIL_POINTER_WRAP) : 0);
 	}
@@ -1243,7 +1243,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	switch (INTEL_GEN(ce->engine->i915)) {
+	switch (GRAPHICS_VER(ce->engine->i915)) {
 	case 7: {
 		/*
 		 * On Haswell we don't do any post processing of the reports
@@ -1297,7 +1297,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 	}
 
 	default:
-		MISSING_CASE(INTEL_GEN(ce->engine->i915));
+		MISSING_CASE(GRAPHICS_VER(ce->engine->i915));
 	}
 
 	ce->tag = stream->specific_ctx_id;
@@ -1602,7 +1602,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
 
 	cmd = save ? MI_STORE_REGISTER_MEM : MI_LOAD_REGISTER_MEM;
 	cmd |= MI_SRM_LRM_GLOBAL_GTT;
-	if (INTEL_GEN(stream->perf->i915) >= 8)
+	if (GRAPHICS_VER(stream->perf->i915) >= 8)
 		cmd++;
 
 	for (d = 0; d < dword_count; d++) {
@@ -1731,7 +1731,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	*cs++ = i915_mmio_reg_offset(MI_PREDICATE_RESULT_1);
 
 	/* Restart from the beginning if we had timestamps roll over. */
-	*cs++ = (INTEL_GEN(i915) < 8 ?
+	*cs++ = (GRAPHICS_VER(i915) < 8 ?
 		 MI_BATCH_BUFFER_START :
 		 MI_BATCH_BUFFER_START_GEN8) |
 		MI_BATCH_PREDICATE;
@@ -1768,7 +1768,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	*cs++ = i915_mmio_reg_offset(MI_PREDICATE_RESULT_1);
 
 	/* Predicate the jump.  */
-	*cs++ = (INTEL_GEN(i915) < 8 ?
+	*cs++ = (GRAPHICS_VER(i915) < 8 ?
 		 MI_BATCH_BUFFER_START :
 		 MI_BATCH_BUFFER_START_GEN8) |
 		MI_BATCH_PREDICATE;
@@ -1892,7 +1892,7 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 			     oa_config->flex_regs_len);
 
 	/* Jump into the active wait. */
-	*cs++ = (INTEL_GEN(stream->perf->i915) < 8 ?
+	*cs++ = (GRAPHICS_VER(stream->perf->i915) < 8 ?
 		 MI_BATCH_BUFFER_START :
 		 MI_BATCH_BUFFER_START_GEN8);
 	*cs++ = i915_ggtt_offset(stream->noa_wait);
@@ -2492,7 +2492,7 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
 	 * be read back from automatically triggered reports, as part of the
 	 * RPT_ID field.
 	 */
-	if (IS_GEN_RANGE(stream->perf->i915, 9, 11)) {
+	if (IS_GRAPHICS_VER(stream->perf->i915, 9, 11)) {
 		intel_uncore_write(uncore, GEN8_OA_DEBUG,
 				   _MASKED_BIT_ENABLE(GEN9_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
 						      GEN9_OA_DEBUG_INCLUDE_CLK_RATIO));
@@ -2797,7 +2797,7 @@ get_default_sseu_config(struct intel_sseu *out_sseu,
 
 	*out_sseu = intel_sseu_from_device_info(devinfo_sseu);
 
-	if (IS_GEN(engine->i915, 11)) {
+	if (GRAPHICS_VER(engine->i915) == 11) {
 		/*
 		 * We only need subslice count so it doesn't matter which ones
 		 * we select - just turn off low bits in the amount of half of
@@ -2864,7 +2864,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	}
 
 	if (!(props->sample_flags & SAMPLE_OA_REPORT) &&
-	    (INTEL_GEN(perf->i915) < 12 || !stream->ctx)) {
+	    (GRAPHICS_VER(perf->i915) < 12 || !stream->ctx)) {
 		DRM_DEBUG("Only OA report sampling supported\n");
 		return -EINVAL;
 	}
@@ -3006,7 +3006,7 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
 
 	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
 	stream = READ_ONCE(engine->i915->perf.exclusive_stream);
-	if (stream && INTEL_GEN(stream->perf->i915) < 12)
+	if (stream && GRAPHICS_VER(stream->perf->i915) < 12)
 		gen8_update_reg_state_unlocked(ce, stream);
 }
 
@@ -3443,7 +3443,7 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 	 */
 	if (IS_HASWELL(perf->i915) && specific_ctx)
 		privileged_op = false;
-	else if (IS_GEN(perf->i915, 12) && specific_ctx &&
+	else if (GRAPHICS_VER(perf->i915) == 12 && specific_ctx &&
 		 (props->sample_flags & SAMPLE_OA_REPORT) == 0)
 		privileged_op = false;
 
@@ -4119,7 +4119,7 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 	}
 	oa_config->b_counter_regs = regs;
 
-	if (INTEL_GEN(perf->i915) < 8) {
+	if (GRAPHICS_VER(perf->i915) < 8) {
 		if (args->n_flex_regs != 0) {
 			err = -EINVAL;
 			goto reg_err;
@@ -4365,7 +4365,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 		 */
 		perf->ops.read = gen8_oa_read;
 
-		if (IS_GEN_RANGE(i915, 8, 9)) {
+		if (IS_GRAPHICS_VER(i915, 8, 9)) {
 			perf->ops.is_valid_b_counter_reg =
 				gen7_is_valid_b_counter_addr;
 			perf->ops.is_valid_mux_reg =
@@ -4384,7 +4384,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.disable_metric_set = gen8_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
 
-			if (IS_GEN(i915, 8)) {
+			if (GRAPHICS_VER(i915) == 8) {
 				perf->ctx_oactxctrl_offset = 0x120;
 				perf->ctx_flexeu0_offset = 0x2ce;
 
@@ -4395,7 +4395,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 
 				perf->gen8_valid_ctx_bit = BIT(16);
 			}
-		} else if (IS_GEN_RANGE(i915, 10, 11)) {
+		} else if (IS_GRAPHICS_VER(i915, 10, 11)) {
 			perf->ops.is_valid_b_counter_reg =
 				gen7_is_valid_b_counter_addr;
 			perf->ops.is_valid_mux_reg =
@@ -4409,7 +4409,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.disable_metric_set = gen10_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
 
-			if (IS_GEN(i915, 10)) {
+			if (GRAPHICS_VER(i915) == 10) {
 				perf->ctx_oactxctrl_offset = 0x128;
 				perf->ctx_flexeu0_offset = 0x3de;
 			} else {
@@ -4417,7 +4417,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 				perf->ctx_flexeu0_offset = 0x78e;
 			}
 			perf->gen8_valid_ctx_bit = BIT(16);
-		} else if (IS_GEN(i915, 12)) {
+		} else if (GRAPHICS_VER(i915) == 12) {
 			perf->ops.is_valid_b_counter_reg =
 				gen12_is_valid_b_counter_addr;
 			perf->ops.is_valid_mux_reg =
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index b32d57a38d17..34d37d46a126 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -287,7 +287,7 @@ static bool exclusive_mmio_access(const struct drm_i915_private *i915)
 	 * risk a machine hang. For a fun history lesson dig out the old
 	 * userspace intel_gpu_top and run it on Ivybridge or Haswell!
 	 */
-	return IS_GEN(i915, 7);
+	return GRAPHICS_VER(i915) == 7;
 }
 
 static void engine_sample(struct intel_engine_cs *engine, unsigned int period_ns)
@@ -463,7 +463,7 @@ engine_event_status(struct intel_engine_cs *engine,
 	case I915_SAMPLE_WAIT:
 		break;
 	case I915_SAMPLE_SEMA:
-		if (INTEL_GEN(engine->i915) < 6)
+		if (GRAPHICS_VER(engine->i915) < 6)
 			return -ENODEV;
 		break;
 	default:
@@ -485,7 +485,7 @@ config_status(struct drm_i915_private *i915, u64 config)
 			return -ENODEV;
 		fallthrough;
 	case I915_PMU_REQUESTED_FREQUENCY:
-		if (INTEL_GEN(i915) < 6)
+		if (GRAPHICS_VER(i915) < 6)
 			return -ENODEV;
 		break;
 	case I915_PMU_INTERRUPTS:
@@ -1145,7 +1145,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 
 	int ret = -ENOMEM;
 
-	if (INTEL_GEN(i915) <= 2) {
+	if (GRAPHICS_VER(i915) <= 2) {
 		drm_info(&i915->drm, "PMU not supported for this GPU.");
 		return;
 	}
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 970d8f4986bb..a14ef8bbdc0b 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1176,12 +1176,12 @@ __emit_semaphore_wait(struct i915_request *to,
 		      struct i915_request *from,
 		      u32 seqno)
 {
-	const int has_token = INTEL_GEN(to->engine->i915) >= 12;
+	const int has_token = GRAPHICS_VER(to->engine->i915) >= 12;
 	u32 hwsp_offset;
 	int len, err;
 	u32 *cs;
 
-	GEM_BUG_ON(INTEL_GEN(to->engine->i915) < 8);
+	GEM_BUG_ON(GRAPHICS_VER(to->engine->i915) < 8);
 	GEM_BUG_ON(i915_request_has_initial_breadcrumb(to));
 
 	/* We need to pin the signaler's HWSP until we are finished reading. */
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index 5fcc32821e18..f7b55f34dba8 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -38,14 +38,14 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
 	int i;
 
 	/* Scratch space */
-	if (IS_GEN(dev_priv, 2) && IS_MOBILE(dev_priv)) {
+	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
 		for (i = 0; i < 7; i++) {
 			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv, SWF0(i));
 			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
 		}
 		for (i = 0; i < 3; i++)
 			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
-	} else if (IS_GEN(dev_priv, 2)) {
+	} else if (GRAPHICS_VER(dev_priv) == 2) {
 		for (i = 0; i < 7; i++)
 			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
 	} else if (HAS_GMCH(dev_priv)) {
@@ -63,14 +63,14 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
 	int i;
 
 	/* Scratch space */
-	if (IS_GEN(dev_priv, 2) && IS_MOBILE(dev_priv)) {
+	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
 		for (i = 0; i < 7; i++) {
 			intel_de_write(dev_priv, SWF0(i), dev_priv->regfile.saveSWF0[i]);
 			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
 			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
-	} else if (IS_GEN(dev_priv, 2)) {
+	} else if (GRAPHICS_VER(dev_priv) == 2) {
 		for (i = 0; i < 7; i++)
 			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
 	} else if (HAS_GMCH(dev_priv)) {
@@ -91,10 +91,10 @@ void i915_save_display(struct drm_i915_private *dev_priv)
 		return;
 
 	/* Display arbitration control */
-	if (INTEL_GEN(dev_priv) <= 4)
+	if (GRAPHICS_VER(dev_priv) <= 4)
 		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv, DSPARB);
 
-	if (IS_GEN(dev_priv, 4))
+	if (GRAPHICS_VER(dev_priv) == 4)
 		pci_read_config_word(pdev, GCDGMBUS,
 				     &dev_priv->regfile.saveGCDGMBUS);
 
@@ -110,12 +110,12 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
 
 	intel_restore_swf(dev_priv);
 
-	if (IS_GEN(dev_priv, 4))
+	if (GRAPHICS_VER(dev_priv) == 4)
 		pci_write_config_word(pdev, GCDGMBUS,
 				      dev_priv->regfile.saveGCDGMBUS);
 
 	/* Display arbitration */
-	if (INTEL_GEN(dev_priv) <= 4)
+	if (GRAPHICS_VER(dev_priv) <= 4)
 		intel_de_write(dev_priv, DSPARB, dev_priv->regfile.saveDSPARB);
 
 	/* only restore FBC info on the platform that supports FBC*/
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 183517d1a73d..873bf996ceb5 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -595,7 +595,7 @@ void i915_setup_sysfs(struct drm_i915_private *dev_priv)
 	ret = 0;
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		ret = sysfs_create_files(&kdev->kobj, vlv_attrs);
-	else if (INTEL_GEN(dev_priv) >= 6)
+	else if (GRAPHICS_VER(dev_priv) >= 6)
 		ret = sysfs_create_files(&kdev->kobj, gen6_attrs);
 	if (ret)
 		drm_err(&dev_priv->drm, "RPS sysfs setup failed\n");
diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
index 172799277dd5..31a105bc1792 100644
--- a/drivers/gpu/drm/i915/i915_vgpu.c
+++ b/drivers/gpu/drm/i915/i915_vgpu.c
@@ -74,7 +74,7 @@ void intel_vgpu_detect(struct drm_i915_private *dev_priv)
 	 * we do not support VGT on older gens, return early so we don't have
 	 * to consider differently numbered or sized MMIO bars
 	 */
-	if (INTEL_GEN(dev_priv) < 6)
+	if (GRAPHICS_VER(dev_priv) < 6)
 		return;
 
 	shared_area = pci_iomap_range(pdev, 0, VGT_PVINFO_PAGE, VGT_PVINFO_SIZE);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index e16599b67b83..7eaa92fee421 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -257,10 +257,10 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_scalers[pipe] = 0;
-	else if (INTEL_GEN(dev_priv) >= 10) {
+	else if (GRAPHICS_VER(dev_priv) >= 10) {
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_scalers[pipe] = 2;
-	} else if (IS_GEN(dev_priv, 9)) {
+	} else if (GRAPHICS_VER(dev_priv) == 9) {
 		runtime->num_scalers[PIPE_A] = 2;
 		runtime->num_scalers[PIPE_B] = 2;
 		runtime->num_scalers[PIPE_C] = 1;
@@ -271,10 +271,10 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 4;
-	else if (INTEL_GEN(dev_priv) >= 11)
+	else if (GRAPHICS_VER(dev_priv) >= 11)
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 6;
-	else if (IS_GEN(dev_priv, 10) || IS_GEMINILAKE(dev_priv))
+	else if (GRAPHICS_VER(dev_priv) == 10 || IS_GEMINILAKE(dev_priv))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 3;
 	else if (IS_BROXTON(dev_priv)) {
@@ -293,12 +293,12 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 2;
-	} else if (INTEL_GEN(dev_priv) >= 5 || IS_G4X(dev_priv)) {
+	} else if (GRAPHICS_VER(dev_priv) >= 5 || IS_G4X(dev_priv)) {
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 1;
 	}
 
-	if (HAS_DISPLAY(dev_priv) && IS_GEN_RANGE(dev_priv, 7, 8) &&
+	if (HAS_DISPLAY(dev_priv) && IS_GRAPHICS_VER(dev_priv, 7, 8) &&
 	    HAS_PCH_SPLIT(dev_priv)) {
 		u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
 		u32 sfuse_strap = intel_de_read(dev_priv, SFUSE_STRAP);
@@ -325,7 +325,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->pipe_mask &= ~BIT(PIPE_C);
 			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
-	} else if (HAS_DISPLAY(dev_priv) && INTEL_GEN(dev_priv) >= 9) {
+	} else if (HAS_DISPLAY(dev_priv) && GRAPHICS_VER(dev_priv) >= 9) {
 		u32 dfsm = intel_de_read(dev_priv, SKL_DFSM);
 
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
@@ -340,7 +340,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->pipe_mask &= ~BIT(PIPE_C);
 			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
-		if (INTEL_GEN(dev_priv) >= 12 &&
+		if (GRAPHICS_VER(dev_priv) >= 12 &&
 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
 			info->pipe_mask &= ~BIT(PIPE_D);
 			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
@@ -352,15 +352,15 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
 			info->display.has_fbc = 0;
 
-		if (INTEL_GEN(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
+		if (GRAPHICS_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
 			info->display.has_dmc = 0;
 
-		if (INTEL_GEN(dev_priv) >= 10 &&
+		if (GRAPHICS_VER(dev_priv) >= 10 &&
 		    (dfsm & CNL_DFSM_DISPLAY_DSC_DISABLE))
 			info->display.has_dsc = 0;
 	}
 
-	if (IS_GEN(dev_priv, 6) && intel_vtd_active()) {
+	if (GRAPHICS_VER(dev_priv) == 6 && intel_vtd_active()) {
 		drm_info(&dev_priv->drm,
 			 "Disabling ppGTT for VT-d support\n");
 		info->ppgtt_type = INTEL_PPGTT_NONE;
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 1e53c017c30d..50fdea84ba70 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -121,7 +121,7 @@ skl_dram_get_dimm_info(struct drm_i915_private *i915,
 		       struct dram_dimm_info *dimm,
 		       int channel, char dimm_name, u16 val)
 {
-	if (INTEL_GEN(i915) >= 10) {
+	if (GRAPHICS_VER(i915) >= 10) {
 		dimm->size = cnl_get_dimm_size(val);
 		dimm->width = cnl_get_dimm_width(val);
 		dimm->ranks = cnl_get_dimm_ranks(val);
@@ -422,7 +422,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
 	if (ret)
 		return ret;
 
-	if (IS_GEN(dev_priv, 12)) {
+	if (GRAPHICS_VER(dev_priv) == 12) {
 		switch (val & 0xf) {
 		case 0:
 			dram_info->type = INTEL_DRAM_DDR4;
@@ -501,12 +501,12 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	 */
 	dram_info->wm_lv_0_adjust_needed = !IS_GEN9_LP(i915);
 
-	if (INTEL_GEN(i915) < 9 || !HAS_DISPLAY(i915))
+	if (GRAPHICS_VER(i915) < 9 || !HAS_DISPLAY(i915))
 		return;
 
-	if (INTEL_GEN(i915) >= 12)
+	if (GRAPHICS_VER(i915) >= 12)
 		ret = gen12_get_dram_info(i915);
-	else if (INTEL_GEN(i915) >= 11)
+	else if (GRAPHICS_VER(i915) >= 11)
 		ret = gen11_get_dram_info(i915);
 	else if (IS_GEN9_LP(i915))
 		ret = bxt_get_dram_info(i915);
@@ -535,7 +535,7 @@ void intel_dram_edram_detect(struct drm_i915_private *i915)
 {
 	u32 edram_cap = 0;
 
-	if (!(IS_HASWELL(i915) || IS_BROADWELL(i915) || INTEL_GEN(i915) >= 9))
+	if (!(IS_HASWELL(i915) || IS_BROADWELL(i915) || GRAPHICS_VER(i915) >= 9))
 		return;
 
 	edram_cap = __raw_uncore_read32(&i915->uncore, HSW_EDRAM_CAP);
@@ -549,7 +549,7 @@ void intel_dram_edram_detect(struct drm_i915_private *i915)
 	 * The needed capability bits for size calculation are not there with
 	 * pre gen9 so return 128MB always.
 	 */
-	if (INTEL_GEN(i915) < 9)
+	if (GRAPHICS_VER(i915) < 9)
 		i915->edram_size_mb = 128;
 	else
 		i915->edram_size_mb = gen9_edram_size_mb(i915, edram_cap);
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index 98a17dd1bda4..4e92ae19189e 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -13,17 +13,17 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 	switch (id) {
 	case INTEL_PCH_IBX_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Ibex Peak PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_GEN(dev_priv, 5));
+		drm_WARN_ON(&dev_priv->drm, GRAPHICS_VER(dev_priv) != 5);
 		return PCH_IBX;
 	case INTEL_PCH_CPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found CougarPoint PCH\n");
 		drm_WARN_ON(&dev_priv->drm,
-			    !IS_GEN(dev_priv, 6) && !IS_IVYBRIDGE(dev_priv));
+			    GRAPHICS_VER(dev_priv) != 6 && !IS_IVYBRIDGE(dev_priv));
 		return PCH_CPT;
 	case INTEL_PCH_PPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found PantherPoint PCH\n");
 		drm_WARN_ON(&dev_priv->drm,
-			    !IS_GEN(dev_priv, 6) && !IS_IVYBRIDGE(dev_priv));
+			    GRAPHICS_VER(dev_priv) != 6 && !IS_IVYBRIDGE(dev_priv));
 		/* PantherPoint is CPT compatible */
 		return PCH_CPT;
 	case INTEL_PCH_LPT_DEVICE_ID_TYPE:
@@ -181,9 +181,9 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
 		id = INTEL_PCH_LPT_LP_DEVICE_ID_TYPE;
 	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
 		id = INTEL_PCH_LPT_DEVICE_ID_TYPE;
-	else if (IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv))
+	else if (GRAPHICS_VER(dev_priv) == 6 || IS_IVYBRIDGE(dev_priv))
 		id = INTEL_PCH_CPT_DEVICE_ID_TYPE;
-	else if (IS_GEN(dev_priv, 5))
+	else if (GRAPHICS_VER(dev_priv) == 5)
 		id = INTEL_PCH_IBX_DEVICE_ID_TYPE;
 
 	if (id)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index a385b8b7414f..7ce9537fa2c7 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7859,9 +7859,9 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.init_clock_gating = adlp_init_clock_gating;
 	else if (IS_DG1(dev_priv))
 		dev_priv->display.init_clock_gating = dg1_init_clock_gating;
-	else if (IS_GEN(dev_priv, 12))
+	else if (GRAPHICS_VER(dev_priv) == 12)
 		dev_priv->display.init_clock_gating = gen12lp_init_clock_gating;
-	else if (IS_GEN(dev_priv, 11))
+	else if (GRAPHICS_VER(dev_priv) == 11)
 		dev_priv->display.init_clock_gating = icl_init_clock_gating;
 	else if (IS_CANNONLAKE(dev_priv))
 		dev_priv->display.init_clock_gating = cnl_init_clock_gating;
@@ -7885,9 +7885,9 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.init_clock_gating = ivb_init_clock_gating;
 	else if (IS_VALLEYVIEW(dev_priv))
 		dev_priv->display.init_clock_gating = vlv_init_clock_gating;
-	else if (IS_GEN(dev_priv, 6))
+	else if (GRAPHICS_VER(dev_priv) == 6)
 		dev_priv->display.init_clock_gating = gen6_init_clock_gating;
-	else if (IS_GEN(dev_priv, 5))
+	else if (GRAPHICS_VER(dev_priv) == 5)
 		dev_priv->display.init_clock_gating = ilk_init_clock_gating;
 	else if (IS_G4X(dev_priv))
 		dev_priv->display.init_clock_gating = g4x_init_clock_gating;
@@ -7895,11 +7895,11 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.init_clock_gating = i965gm_init_clock_gating;
 	else if (IS_I965G(dev_priv))
 		dev_priv->display.init_clock_gating = i965g_init_clock_gating;
-	else if (IS_GEN(dev_priv, 3))
+	else if (GRAPHICS_VER(dev_priv) == 3)
 		dev_priv->display.init_clock_gating = gen3_init_clock_gating;
 	else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
 		dev_priv->display.init_clock_gating = i85x_init_clock_gating;
-	else if (IS_GEN(dev_priv, 2))
+	else if (GRAPHICS_VER(dev_priv) == 2)
 		dev_priv->display.init_clock_gating = i830_init_clock_gating;
 	else {
 		MISSING_CASE(INTEL_DEVID(dev_priv));
@@ -7913,7 +7913,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 	/* For cxsr */
 	if (IS_PINEVIEW(dev_priv))
 		pnv_get_mem_freq(dev_priv);
-	else if (IS_GEN(dev_priv, 5))
+	else if (GRAPHICS_VER(dev_priv) == 5)
 		ilk_get_mem_freq(dev_priv);
 
 	if (intel_has_sagv(dev_priv))
diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sideband.c
index 0ec0cf191955..f0a82b37bd1a 100644
--- a/drivers/gpu/drm/i915/intel_sideband.c
+++ b/drivers/gpu/drm/i915/intel_sideband.c
@@ -430,7 +430,7 @@ static int __sandybridge_pcode_rw(struct drm_i915_private *i915,
 	if (is_read && val1)
 		*val1 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA1);
 
-	if (INTEL_GEN(i915) > 6)
+	if (GRAPHICS_VER(i915) > 6)
 		return gen7_check_mailbox_status(mbox);
 	else
 		return gen6_check_mailbox_status(mbox);
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index b4aaf8b7109f..1bed8f666048 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1635,7 +1635,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 #define fw_domain_init(uncore__, id__, set__, ack__) \
 	(ret ?: (ret = __fw_domain_init((uncore__), (id__), (set__), (ack__))))
 
-	if (INTEL_GEN(i915) >= 11) {
+	if (GRAPHICS_VER(i915) >= 11) {
 		/* we'll prune the domains of missing engines later */
 		intel_engine_mask_t emask = INTEL_INFO(i915)->platform_engine_mask;
 		int i;
@@ -1665,7 +1665,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 				       FORCEWAKE_MEDIA_VEBOX_GEN11(i),
 				       FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(i));
 		}
-	} else if (IS_GEN_RANGE(i915, 9, 10)) {
+	} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
 		uncore->funcs.force_wake_get = fw_domains_get_with_fallback;
 		uncore->funcs.force_wake_put = fw_domains_put;
 		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
@@ -1733,7 +1733,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 			fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
 				       FORCEWAKE, FORCEWAKE_ACK);
 		}
-	} else if (IS_GEN(i915, 6)) {
+	} else if (GRAPHICS_VER(i915) == 6) {
 		uncore->funcs.force_wake_get =
 			fw_domains_get_with_thread_status;
 		uncore->funcs.force_wake_put = fw_domains_put;
@@ -1800,7 +1800,7 @@ static int uncore_mmio_setup(struct intel_uncore *uncore)
 	int mmio_bar;
 	int mmio_size;
 
-	mmio_bar = IS_GEN(i915, 2) ? 1 : 0;
+	mmio_bar = GRAPHICS_VER(i915) == 2 ? 1 : 0;
 	/*
 	 * Before gen4, the registers and the GTT are behind different BARs.
 	 * However, from gen4 onwards, the registers and the GTT are shared
@@ -1810,7 +1810,7 @@ static int uncore_mmio_setup(struct intel_uncore *uncore)
 	 * generations up to Ironlake.
 	 * For dgfx chips register range is expanded to 4MB.
 	 */
-	if (INTEL_GEN(i915) < 5)
+	if (GRAPHICS_VER(i915) < 5)
 		mmio_size = 512 * 1024;
 	else if (IS_DGFX(i915))
 		mmio_size = 4 * 1024 * 1024;
@@ -1849,7 +1849,7 @@ static void uncore_raw_init(struct intel_uncore *uncore)
 	if (intel_vgpu_active(uncore->i915)) {
 		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, vgpu);
 		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, vgpu);
-	} else if (IS_GEN(uncore->i915, 5)) {
+	} else if (GRAPHICS_VER(uncore->i915) == 5) {
 		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, gen5);
 		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, gen5);
 	} else {
@@ -1870,7 +1870,7 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 		return ret;
 	forcewake_early_sanitize(uncore, 0);
 
-	if (IS_GEN_RANGE(i915, 6, 7)) {
+	if (IS_GRAPHICS_VER(i915, 6, 7)) {
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen6);
 
 		if (IS_VALLEYVIEW(i915)) {
@@ -1879,7 +1879,7 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 		} else {
 			ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
 		}
-	} else if (IS_GEN(i915, 8)) {
+	} else if (GRAPHICS_VER(i915) == 8) {
 		if (IS_CHERRYVIEW(i915)) {
 			ASSIGN_FW_DOMAINS_TABLE(uncore, __chv_fw_ranges);
 			ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
@@ -1888,11 +1888,11 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 			ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen8);
 			ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
 		}
-	} else if (IS_GEN_RANGE(i915, 9, 10)) {
+	} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen9_fw_ranges);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
-	} else if (IS_GEN(i915, 11)) {
+	} else if (GRAPHICS_VER(i915) == 11) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen11_fw_ranges);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen11_fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
@@ -1952,7 +1952,7 @@ int intel_uncore_init_mmio(struct intel_uncore *uncore)
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		uncore->flags |= UNCORE_HAS_DBG_UNCLAIMED;
 
-	if (IS_GEN_RANGE(i915, 6, 7))
+	if (IS_GRAPHICS_VER(i915, 6, 7))
 		uncore->flags |= UNCORE_HAS_FIFO;
 
 	/* clear out unclaimed reg detection bit */
@@ -1979,7 +1979,7 @@ void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
 	enum forcewake_domain_id domain_id;
 	int i;
 
-	if (!intel_uncore_has_forcewake(uncore) || INTEL_GEN(uncore->i915) < 11)
+	if (!intel_uncore_has_forcewake(uncore) || GRAPHICS_VER(uncore->i915) < 11)
 		return;
 
 	for (i = 0; i < I915_MAX_VCS; i++) {
diff --git a/drivers/gpu/drm/i915/intel_wopcm.c b/drivers/gpu/drm/i915/intel_wopcm.c
index ec776591e1cf..8309455f13ea 100644
--- a/drivers/gpu/drm/i915/intel_wopcm.c
+++ b/drivers/gpu/drm/i915/intel_wopcm.c
@@ -81,7 +81,7 @@ void intel_wopcm_init_early(struct intel_wopcm *wopcm)
 	if (!HAS_GT_UC(i915))
 		return;
 
-	if (INTEL_GEN(i915) >= 11)
+	if (GRAPHICS_VER(i915) >= 11)
 		wopcm->size = GEN11_WOPCM_SIZE;
 	else
 		wopcm->size = GEN9_WOPCM_SIZE;
@@ -93,7 +93,7 @@ static u32 context_reserved_size(struct drm_i915_private *i915)
 {
 	if (IS_GEN9_LP(i915))
 		return BXT_WOPCM_RC6_CTX_RESERVED;
-	else if (INTEL_GEN(i915) >= 10)
+	else if (GRAPHICS_VER(i915) >= 10)
 		return CNL_WOPCM_HW_CTX_RESERVED;
 	else
 		return 0;
@@ -145,11 +145,11 @@ static bool check_hw_restrictions(struct drm_i915_private *i915,
 				  u32 guc_wopcm_base, u32 guc_wopcm_size,
 				  u32 huc_fw_size)
 {
-	if (IS_GEN(i915, 9) && !gen9_check_dword_gap(i915, guc_wopcm_base,
-						     guc_wopcm_size))
+	if (GRAPHICS_VER(i915) == 9 && !gen9_check_dword_gap(i915, guc_wopcm_base,
+							     guc_wopcm_size))
 		return false;
 
-	if (IS_GEN(i915, 9) &&
+	if (GRAPHICS_VER(i915) == 9 &&
 	    !gen9_check_huc_fw_fits(i915, guc_wopcm_size, huc_fw_size))
 		return false;
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 0a1472bb12bc..f843a5040706 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1884,9 +1884,9 @@ static int igt_cs_tlb(void *arg)
 		u32 *cs = batch + i * 64 / sizeof(*cs);
 		u64 addr = (vm->total - PAGE_SIZE) + i * sizeof(u32);
 
-		GEM_BUG_ON(INTEL_GEN(i915) < 6);
+		GEM_BUG_ON(GRAPHICS_VER(i915) < 6);
 		cs[0] = MI_STORE_DWORD_IMM_GEN4;
-		if (INTEL_GEN(i915) >= 8) {
+		if (GRAPHICS_VER(i915) >= 8) {
 			cs[1] = lower_32_bits(addr);
 			cs[2] = upper_32_bits(addr);
 			cs[3] = i;
diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
index bfb0290967a1..9e9a6cb1d9e5 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
@@ -98,7 +98,7 @@ test_stream(struct i915_perf *perf)
 						   I915_ENGINE_CLASS_RENDER,
 						   0),
 		.sample_flags = SAMPLE_OA_REPORT,
-		.oa_format = IS_GEN(perf->i915, 12) ?
+		.oa_format = GRAPHICS_VER(perf->i915) == 12 ?
 		I915_OA_FORMAT_A32u40_A4u32_B8_C8 : I915_OA_FORMAT_C4_B8,
 	};
 	struct i915_perf_stream *stream;
@@ -162,7 +162,7 @@ static int write_timestamp(struct i915_request *rq, int slot)
 		return PTR_ERR(cs);
 
 	len = 5;
-	if (INTEL_GEN(rq->engine->i915) >= 8)
+	if (GRAPHICS_VER(rq->engine->i915) >= 8)
 		len++;
 
 	*cs++ = GFX_OP_PIPE_CONTROL(len);
@@ -363,7 +363,7 @@ static int live_noa_gpr(void *arg)
 		}
 
 		cmd = MI_STORE_REGISTER_MEM;
-		if (INTEL_GEN(i915) >= 8)
+		if (GRAPHICS_VER(i915) >= 8)
 			cmd++;
 		cmd |= MI_USE_GGTT;
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index eae0abd614cb..bd5c96a77ba3 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -963,7 +963,7 @@ static int live_empty_request(void *arg)
 static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 {
 	struct drm_i915_gem_object *obj;
-	const int gen = INTEL_GEN(i915);
+	const int ver = GRAPHICS_VER(i915);
 	struct i915_vma *vma;
 	u32 *cmd;
 	int err;
@@ -988,11 +988,11 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 		goto err;
 	}
 
-	if (gen >= 8) {
+	if (ver >= 8) {
 		*cmd++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
 		*cmd++ = lower_32_bits(vma->node.start);
 		*cmd++ = upper_32_bits(vma->node.start);
-	} else if (gen >= 6) {
+	} else if (ver >= 6) {
 		*cmd++ = MI_BATCH_BUFFER_START | 1 << 8;
 		*cmd++ = lower_32_bits(vma->node.start);
 	} else {
@@ -2482,7 +2482,7 @@ static int perf_request_latency(void *arg)
 	struct pm_qos_request qos;
 	int err = 0;
 
-	if (INTEL_GEN(i915) < 8) /* per-engine CS timestamp, semaphores */
+	if (GRAPHICS_VER(i915) < 8) /* per-engine CS timestamp, semaphores */
 		return 0;
 
 	cpu_latency_qos_add_request(&qos, 0); /* disable cstates */
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 5fe397b7d1d9..24d87d0fc747 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -174,15 +174,15 @@ igt_spinner_create_request(struct igt_spinner *spin,
 
 	batch = spin->batch;
 
-	if (INTEL_GEN(rq->engine->i915) >= 8) {
+	if (GRAPHICS_VER(rq->engine->i915) >= 8) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4;
 		*batch++ = lower_32_bits(hws_address(hws, rq));
 		*batch++ = upper_32_bits(hws_address(hws, rq));
-	} else if (INTEL_GEN(rq->engine->i915) >= 6) {
+	} else if (GRAPHICS_VER(rq->engine->i915) >= 6) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4;
 		*batch++ = 0;
 		*batch++ = hws_address(hws, rq);
-	} else if (INTEL_GEN(rq->engine->i915) >= 4) {
+	} else if (GRAPHICS_VER(rq->engine->i915) >= 4) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 		*batch++ = 0;
 		*batch++ = hws_address(hws, rq);
@@ -194,11 +194,11 @@ igt_spinner_create_request(struct igt_spinner *spin,
 
 	*batch++ = arbitration_command;
 
-	if (INTEL_GEN(rq->engine->i915) >= 8)
+	if (GRAPHICS_VER(rq->engine->i915) >= 8)
 		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
 	else if (IS_HASWELL(rq->engine->i915))
 		*batch++ = MI_BATCH_BUFFER_START | MI_BATCH_PPGTT_HSW;
-	else if (INTEL_GEN(rq->engine->i915) >= 6)
+	else if (GRAPHICS_VER(rq->engine->i915) >= 6)
 		*batch++ = MI_BATCH_BUFFER_START;
 	else
 		*batch++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
@@ -216,7 +216,7 @@ igt_spinner_create_request(struct igt_spinner *spin,
 	}
 
 	flags = 0;
-	if (INTEL_GEN(rq->engine->i915) <= 5)
+	if (GRAPHICS_VER(rq->engine->i915) <= 5)
 		flags |= I915_DISPATCH_SECURE;
 	err = engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, flags);
 
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index f76c9bcec735..8ef9e6a4ad05 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -321,7 +321,7 @@ static int live_fw_table(void *arg)
 	/* Confirm the table we load is still valid */
 	return intel_fw_table_check(gt->uncore->fw_domains_table,
 				    gt->uncore->fw_domains_table_entries,
-				    INTEL_GEN(gt->i915) >= 9);
+				    GRAPHICS_VER(gt->i915) >= 9);
 }
 
 int intel_uncore_live_selftests(struct drm_i915_private *i915)
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
