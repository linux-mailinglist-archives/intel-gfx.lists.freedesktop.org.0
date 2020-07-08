Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D2B217C4C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 02:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C516E84B;
	Wed,  8 Jul 2020 00:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D1E16E37C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 00:39:57 +0000 (UTC)
IronPort-SDR: +mwRT2ticCT/Ho2JnV3eMostA0eMB4wc7MhDff4KHZo9U+3Hz5DSmrwfECTu1ZkO6lJhry9+iI
 bHt+QWSKRNxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165790548"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="165790548"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 17:39:57 -0700
IronPort-SDR: C/hMW2cW93AA1Khp9c6I+Zban4e/uwZ4KBgR+k/YYySZ+qu74ImaP4uVDHUxMmiaqjuanT/vBs
 73T4nZdBKhnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="314482729"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga008.jf.intel.com with ESMTP; 07 Jul 2020 17:39:56 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jul 2020 17:39:50 -0700
Message-Id: <20200708003952.21831-8-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
References: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 7/9] drm/i915/sseu: Move sseu_info under
 gt_info
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

From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

SSEUs are a GT capability, so track them under gt_info.

Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  7 ++++---
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  2 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  5 ++++-
 drivers/gpu/drm/i915/gt/intel_context_sseu.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 ++--
 drivers/gpu/drm/i915/gt/intel_gt.c            |  2 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 +++
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  3 ++-
 drivers/gpu/drm/i915/gt/intel_sseu.c          | 19 ++++++++++---------
 drivers/gpu/drm/i915/gt/intel_sseu.h          |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  8 ++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  3 +--
 drivers/gpu/drm/i915/i915_debugfs.c           | 10 +++++-----
 drivers/gpu/drm/i915/i915_getparam.c          |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  4 ++--
 drivers/gpu/drm/i915/i915_perf.c              |  9 ++++-----
 drivers/gpu/drm/i915/i915_query.c             |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c      |  3 ---
 drivers/gpu/drm/i915/intel_device_info.h      |  3 ---
 20 files changed, 49 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 41784df51e58..d0bdb6d447ed 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1400,11 +1400,12 @@ static int get_ringsize(struct i915_gem_context *ctx,
 }
 
 int
-i915_gem_user_to_context_sseu(struct drm_i915_private *i915,
+i915_gem_user_to_context_sseu(struct intel_gt *gt,
 			      const struct drm_i915_gem_context_param_sseu *user,
 			      struct intel_sseu *context)
 {
-	const struct sseu_dev_info *device = &RUNTIME_INFO(i915)->sseu;
+	const struct sseu_dev_info *device = &gt->info.sseu;
+	struct drm_i915_private *i915 = gt->i915;
 
 	/* No zeros in any field. */
 	if (!user->slice_mask || !user->subslice_mask ||
@@ -1537,7 +1538,7 @@ static int set_sseu(struct i915_gem_context *ctx,
 		goto out_ce;
 	}
 
-	ret = i915_gem_user_to_context_sseu(i915, &user_sseu, &sseu);
+	ret = i915_gem_user_to_context_sseu(ce->engine->gt, &user_sseu, &sseu);
 	if (ret)
 		goto out_ce;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index 3702b2fb27ab..a133f92bbedb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -225,7 +225,7 @@ i915_gem_engines_iter_next(struct i915_gem_engines_iter *it);
 struct i915_lut_handle *i915_lut_handle_alloc(void);
 void i915_lut_handle_free(struct i915_lut_handle *lut);
 
-int i915_gem_user_to_context_sseu(struct drm_i915_private *i915,
+int i915_gem_user_to_context_sseu(struct intel_gt *gt,
 				  const struct drm_i915_gem_context_param_sseu *user,
 				  struct intel_sseu *context);
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index b81978890641..7ffc3c751432 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1229,7 +1229,7 @@ __igt_ctx_sseu(struct drm_i915_private *i915,
 	int inst = 0;
 	int ret = 0;
 
-	if (INTEL_GEN(i915) < 9 || !RUNTIME_INFO(i915)->sseu.has_slice_pg)
+	if (INTEL_GEN(i915) < 9)
 		return 0;
 
 	if (flags & TEST_RESET)
@@ -1255,6 +1255,9 @@ __igt_ctx_sseu(struct drm_i915_private *i915,
 		if (hweight32(engine->sseu.slice_mask) < 2)
 			continue;
 
+		if (!engine->gt->info.sseu.has_slice_pg)
+			continue;
+
 		/*
 		 * Gen11 VME friendly power-gated configuration with
 		 * half enabled sub-slices.
diff --git a/drivers/gpu/drm/i915/gt/intel_context_sseu.c b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
index 27ae48049239..b9c8163978a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
@@ -30,7 +30,7 @@ static int gen8_emit_rpcs_config(struct i915_request *rq,
 	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 	*cs++ = lower_32_bits(offset);
 	*cs++ = upper_32_bits(offset);
-	*cs++ = intel_sseu_make_rpcs(rq->engine->i915, &sseu);
+	*cs++ = intel_sseu_make_rpcs(rq->engine->gt, &sseu);
 
 	intel_ring_advance(rq, cs);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index fca3c2348e5e..dd1a42c4d344 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -709,7 +709,7 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 
 	/* Use the whole device by default */
 	engine->sseu =
-		intel_sseu_from_device_info(&RUNTIME_INFO(engine->i915)->sseu);
+		intel_sseu_from_device_info(&engine->gt->info.sseu);
 
 	intel_engine_init_workarounds(engine);
 	intel_engine_init_whitelist(engine);
@@ -1075,7 +1075,7 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 			       struct intel_instdone *instdone)
 {
 	struct drm_i915_private *i915 = engine->i915;
-	const struct sseu_dev_info *sseu = &RUNTIME_INFO(i915)->sseu;
+	const struct sseu_dev_info *sseu = &engine->gt->info.sseu;
 	struct intel_uncore *uncore = engine->uncore;
 	u32 mmio_base = engine->mmio_base;
 	int slice;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 2c20fe693714..e0755f1a904b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -655,4 +655,6 @@ void intel_gt_info_print(const struct intel_gt_info *info,
 			 struct drm_printer *p)
 {
 	drm_printf(p, "available engines: %x\n", info->engine_mask);
+
+	intel_sseu_dump(&info->sseu, p);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index bb7551867c00..6d39a4a11bf3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -116,6 +116,9 @@ struct intel_gt {
 
 		/* Media engine access to SFC per instance */
 		u8 vdbox_sfc_access;
+
+		/* Slice/subslice/EU info */
+		struct sseu_dev_info sseu;
 	} info;
 };
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e866b8d721ed..9e28b2f9df72 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3422,7 +3422,7 @@ __execlists_update_reg_state(const struct intel_context *ce,
 	/* RPCS */
 	if (engine->class == RENDER_CLASS) {
 		regs[CTX_R_PWR_CLK_STATE] =
-			intel_sseu_make_rpcs(engine->i915, &ce->sseu);
+			intel_sseu_make_rpcs(engine->gt, &ce->sseu);
 
 		i915_oa_init_reg_state(ce, engine);
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 296391deeb94..97ba14ad52e4 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1062,11 +1062,12 @@ static bool gen6_rps_enable(struct intel_rps *rps)
 static int chv_rps_max_freq(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
+	struct intel_gt *gt = rps_to_gt(rps);
 	u32 val;
 
 	val = vlv_punit_read(i915, FB_GFX_FMAX_AT_VMAX_FUSE);
 
-	switch (RUNTIME_INFO(i915)->sseu.eu_total) {
+	switch (gt->info.sseu.eu_total) {
 	case 8:
 		/* (2 * 4) config */
 		val >>= FB_GFX_FMAX_AT_VMAX_2SS4EU_FUSE_SHIFT;
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 006f9118b319..e29f0785b3c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -130,7 +130,7 @@ static void gen11_compute_sseu_info(struct sseu_dev_info *sseu,
 
 static void gen12_sseu_info_init(struct intel_gt *gt)
 {
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	struct sseu_dev_info *sseu = &gt->info.sseu;
 	struct intel_uncore *uncore = gt->uncore;
 	u8 s_en;
 	u32 dss_en;
@@ -165,7 +165,7 @@ static void gen12_sseu_info_init(struct intel_gt *gt)
 
 static void gen11_sseu_info_init(struct intel_gt *gt)
 {
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	struct sseu_dev_info *sseu = &gt->info.sseu;
 	struct intel_uncore *uncore = gt->uncore;
 	u8 s_en;
 	u32 ss_en;
@@ -194,7 +194,7 @@ static void gen11_sseu_info_init(struct intel_gt *gt)
 static void gen10_sseu_info_init(struct intel_gt *gt)
 {
 	struct intel_uncore *uncore = gt->uncore;
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	struct sseu_dev_info *sseu = &gt->info.sseu;
 	const u32 fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
 	int s, ss;
 	const int eu_mask = 0xff;
@@ -270,7 +270,7 @@ static void gen10_sseu_info_init(struct intel_gt *gt)
 
 static void cherryview_sseu_info_init(struct intel_gt *gt)
 {
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	struct sseu_dev_info *sseu = &gt->info.sseu;
 	u32 fuse;
 	u8 subslice_mask = 0;
 
@@ -327,7 +327,7 @@ static void gen9_sseu_info_init(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_device_info *info = mkwrite_device_info(i915);
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(i915)->sseu;
+	struct sseu_dev_info *sseu = &gt->info.sseu;
 	struct intel_uncore *uncore = gt->uncore;
 	int s, ss;
 	u32 fuse2, eu_disable, subslice_mask;
@@ -431,7 +431,7 @@ static void gen9_sseu_info_init(struct intel_gt *gt)
 
 static void bdw_sseu_info_init(struct intel_gt *gt)
 {
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	struct sseu_dev_info *sseu = &gt->info.sseu;
 	struct intel_uncore *uncore = gt->uncore;
 	int s, ss;
 	u32 fuse2, subslice_mask, eu_disable[3]; /* s_max */
@@ -517,7 +517,7 @@ static void bdw_sseu_info_init(struct intel_gt *gt)
 static void hsw_sseu_info_init(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	struct sseu_dev_info *sseu = &gt->info.sseu;
 	u32 fuse1;
 	u8 subslice_mask = 0;
 	int s, ss;
@@ -602,10 +602,11 @@ void intel_sseu_info_init(struct intel_gt *gt)
 		gen12_sseu_info_init(gt);
 }
 
-u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
+u32 intel_sseu_make_rpcs(struct intel_gt *gt,
 			 const struct intel_sseu *req_sseu)
 {
-	const struct sseu_dev_info *sseu = &RUNTIME_INFO(i915)->sseu;
+	struct drm_i915_private *i915 = gt->i915;
+	const struct sseu_dev_info *sseu = &gt->info.sseu;
 	bool subslice_pg = sseu->has_subslice_pg;
 	u8 slices, subslices;
 	u32 rpcs = 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
index f9c007f001e7..23ba6c2ebe70 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
@@ -98,7 +98,7 @@ void intel_sseu_set_subslices(struct sseu_dev_info *sseu, int slice,
 
 void intel_sseu_info_init(struct intel_gt *gt);
 
-u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
+u32 intel_sseu_make_rpcs(struct intel_gt *gt,
 			 const struct intel_sseu *req_sseu);
 
 void intel_sseu_dump(const struct sseu_dev_info *sseu, struct drm_printer *p);
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 2da366821dda..dbafd923e5a1 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -404,7 +404,7 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 static void skl_tune_iz_hashing(struct intel_engine_cs *engine,
 				struct i915_wa_list *wal)
 {
-	struct drm_i915_private *i915 = engine->i915;
+	struct intel_gt *gt = engine->gt;
 	u8 vals[3] = { 0, 0, 0 };
 	unsigned int i;
 
@@ -415,7 +415,7 @@ static void skl_tune_iz_hashing(struct intel_engine_cs *engine,
 		 * Only consider slices where one, and only one, subslice has 7
 		 * EUs
 		 */
-		if (!is_power_of_2(RUNTIME_INFO(i915)->sseu.subslice_7eu[i]))
+		if (!is_power_of_2(gt->info.sseu.subslice_7eu[i]))
 			continue;
 
 		/*
@@ -424,7 +424,7 @@ static void skl_tune_iz_hashing(struct intel_engine_cs *engine,
 		 *
 		 * ->    0 <= ss <= 3;
 		 */
-		ss = ffs(RUNTIME_INFO(i915)->sseu.subslice_7eu[i]) - 1;
+		ss = ffs(gt->info.sseu.subslice_7eu[i]) - 1;
 		vals[i] = 3 - ss;
 	}
 
@@ -1036,7 +1036,7 @@ cfl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 static void
 wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
-	const struct sseu_dev_info *sseu = &RUNTIME_INFO(i915)->sseu;
+	const struct sseu_dev_info *sseu = &i915->gt.info.sseu;
 	unsigned int slice, subslice;
 	u32 l3_en, mcr, mcr_mask;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index c10ae1660e53..d44061033f23 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -68,7 +68,6 @@ struct __guc_ads_blob {
 static void __guc_ads_init(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
-	struct drm_i915_private *dev_priv = gt->i915;
 	struct __guc_ads_blob *blob = guc->ads_blob;
 	const u32 skipped_size = LRC_PPHWSP_SZ * PAGE_SIZE + LR_HW_CONTEXT_SIZE;
 	u32 base;
@@ -100,7 +99,7 @@ static void __guc_ads_init(struct intel_guc *guc)
 	}
 
 	/* System info */
-	blob->system_info.slice_enabled = hweight8(RUNTIME_INFO(dev_priv)->sseu.slice_mask);
+	blob->system_info.slice_enabled = hweight8(gt->info.sseu.slice_mask);
 	blob->system_info.rcs_enabled = 1;
 	blob->system_info.bcs_enabled = 1;
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index bfba0dff0b85..69acc6990a66 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1327,7 +1327,7 @@ static int i915_rcs_topology(struct seq_file *m, void *unused)
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
 
-	intel_sseu_print_topology(&RUNTIME_INFO(dev_priv)->sseu, &p);
+	intel_sseu_print_topology(&dev_priv->gt.info.sseu, &p);
 
 	return 0;
 }
@@ -1628,7 +1628,7 @@ static void gen10_sseu_device_status(struct drm_i915_private *dev_priv,
 				     struct sseu_dev_info *sseu)
 {
 #define SS_MAX 6
-	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
+	const struct intel_gt_info *info = &dev_priv->gt.info;
 	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
 	int s, ss;
 
@@ -1685,7 +1685,7 @@ static void gen9_sseu_device_status(struct drm_i915_private *dev_priv,
 				    struct sseu_dev_info *sseu)
 {
 #define SS_MAX 3
-	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
+	const struct intel_gt_info *info = &dev_priv->gt.info;
 	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
 	int s, ss;
 
@@ -1743,7 +1743,7 @@ static void gen9_sseu_device_status(struct drm_i915_private *dev_priv,
 static void bdw_sseu_device_status(struct drm_i915_private *dev_priv,
 				   struct sseu_dev_info *sseu)
 {
-	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
+	const struct intel_gt_info *info = &dev_priv->gt.info;
 	u32 slice_info = I915_READ(GEN8_GT_SLICE_INFO);
 	int s;
 
@@ -1806,7 +1806,7 @@ static void i915_print_sseu_info(struct seq_file *m, bool is_available_info,
 static int i915_sseu_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
+	const struct intel_gt_info *info = &dev_priv->gt.info;
 	struct sseu_dev_info sseu;
 	intel_wakeref_t wakeref;
 
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 40390b2352b1..421613219ae9 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -12,7 +12,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file_priv)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
-	const struct sseu_dev_info *sseu = &RUNTIME_INFO(i915)->sseu;
+	const struct sseu_dev_info *sseu = &i915->gt.info.sseu;
 	drm_i915_getparam_t *param = data;
 	int value;
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 99b4a0261b13..678ddec3237f 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -426,7 +426,7 @@ static void err_compression_marker(struct drm_i915_error_state_buf *m)
 static void error_print_instdone(struct drm_i915_error_state_buf *m,
 				 const struct intel_engine_coredump *ee)
 {
-	const struct sseu_dev_info *sseu = &RUNTIME_INFO(m->i915)->sseu;
+	const struct sseu_dev_info *sseu = &ee->engine->gt->info.sseu;
 	int slice;
 	int subslice;
 
@@ -626,8 +626,8 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
 
 	intel_device_info_print_static(&error->device_info, &p);
 	intel_device_info_print_runtime(&error->runtime_info, &p);
-	intel_sseu_print_topology(&error->runtime_info.sseu, &p);
 	intel_gt_info_print(&error->gt->info, &p);
+	intel_sseu_print_topology(&error->gt->info.sseu, &p);
 	intel_driver_caps_print(&error->driver_caps, &p);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 25329b7600c9..37631ce0699b 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2196,7 +2196,7 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
 		if (!intel_context_pin_if_active(ce))
 			continue;
 
-		flex->value = intel_sseu_make_rpcs(ctx->i915, &ce->sseu);
+		flex->value = intel_sseu_make_rpcs(ce->engine->gt, &ce->sseu);
 		err = gen8_modify_context(ce, flex, count);
 
 		intel_context_unpin(ce);
@@ -2340,7 +2340,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 		if (engine->class != RENDER_CLASS)
 			continue;
 
-		regs[0].value = intel_sseu_make_rpcs(i915, &ce->sseu);
+		regs[0].value = intel_sseu_make_rpcs(engine->gt, &ce->sseu);
 
 		err = gen8_modify_self(ce, regs, num_regs, active);
 		if (err)
@@ -2740,8 +2740,7 @@ static void
 get_default_sseu_config(struct intel_sseu *out_sseu,
 			struct intel_engine_cs *engine)
 {
-	const struct sseu_dev_info *devinfo_sseu =
-		&RUNTIME_INFO(engine->i915)->sseu;
+	const struct sseu_dev_info *devinfo_sseu = &engine->gt->info.sseu;
 
 	*out_sseu = intel_sseu_from_device_info(devinfo_sseu);
 
@@ -2766,7 +2765,7 @@ get_sseu_config(struct intel_sseu *out_sseu,
 	    drm_sseu->engine.engine_instance != engine->uabi_instance)
 		return -EINVAL;
 
-	return i915_gem_user_to_context_sseu(engine->i915, drm_sseu, out_sseu);
+	return i915_gem_user_to_context_sseu(engine->gt, drm_sseu, out_sseu);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index c1ebda9b5627..fed337ad7b68 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -31,7 +31,7 @@ static int copy_query_item(void *query_hdr, size_t query_sz,
 static int query_topology_info(struct drm_i915_private *dev_priv,
 			       struct drm_i915_query_item *query_item)
 {
-	const struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
+	const struct sseu_dev_info *sseu = &dev_priv->gt.info.sseu;
 	struct drm_i915_query_topology_info topo;
 	u32 slice_length, subslice_length, eu_length, total_length;
 	int ret;
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d8daf224cbd3..3f5dc37d2b7c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -29,7 +29,6 @@
 #include "display/intel_de.h"
 #include "intel_device_info.h"
 #include "i915_drv.h"
-#include "gt/intel_sseu.h"
 
 #define PLATFORM_NAME(x) [INTEL_##x] = #x
 static const char * const platform_names[] = {
@@ -115,8 +114,6 @@ void intel_device_info_print_static(const struct intel_device_info *info,
 void intel_device_info_print_runtime(const struct intel_runtime_info *info,
 				     struct drm_printer *p)
 {
-	intel_sseu_dump(&info->sseu, p);
-
 	drm_printf(p, "rawclk rate: %u kHz\n", info->rawclk_freq);
 	drm_printf(p, "CS timestamp frequency: %u Hz\n",
 		   info->cs_timestamp_frequency_hz);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 40057abbb662..242d00862b1a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -219,9 +219,6 @@ struct intel_runtime_info {
 	u8 num_sprites[I915_MAX_PIPES];
 	u8 num_scalers[I915_MAX_PIPES];
 
-	/* Slice/subslice/EU info */
-	struct sseu_dev_info sseu;
-
 	u32 rawclk_freq;
 
 	u32 cs_timestamp_frequency_hz;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
