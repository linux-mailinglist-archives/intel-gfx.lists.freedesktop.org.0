Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8F0474C08
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 20:34:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57F310E177;
	Tue, 14 Dec 2021 19:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05B7010E177;
 Tue, 14 Dec 2021 19:34:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="263213586"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="263213586"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 11:34:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="614421093"
Received: from njayagop-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.251.212.16])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 11:34:31 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Tue, 14 Dec 2021 21:33:34 +0200
Message-Id: <20211214193346.21231-5-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211214193346.21231-1-andi.shyti@linux.intel.com>
References: <20211214193346.21231-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 04/16] drm/i915/gt: Use to_gt() helper
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michał Winiarski <michal.winiarski@intel.com>

Use to_gt() helper consistently throughout the codebase.
Pure mechanical s/i915->gt/to_gt(i915). No functional changes.

Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_user.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c                |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c                 | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_workarounds.c         |  2 +-
 drivers/gpu/drm/i915/gt/mock_engine.c               | 10 +++++-----
 drivers/gpu/drm/i915/gt/selftest_context.c          |  2 +-
 drivers/gpu/drm/i915/gt/selftest_engine.c           |  2 +-
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c        |  4 ++--
 drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c |  4 ++--
 drivers/gpu/drm/i915/gt/selftest_execlists.c        |  6 +++---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c            |  8 ++++----
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c        |  2 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c              |  2 +-
 drivers/gpu/drm/i915/gt/selftest_migrate.c          |  4 ++--
 drivers/gpu/drm/i915/gt/selftest_mocs.c             |  2 +-
 drivers/gpu/drm/i915/gt/selftest_reset.c            |  2 +-
 drivers/gpu/drm/i915/gt/selftest_ring_submission.c  |  4 ++--
 drivers/gpu/drm/i915/gt/selftest_slpc.c             |  6 +++---
 drivers/gpu/drm/i915/gt/selftest_timeline.c         |  6 +++---
 drivers/gpu/drm/i915/gt/selftest_workarounds.c      |  4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c         |  2 +-
 drivers/gpu/drm/i915/gt/uc/selftest_guc.c           |  2 +-
 drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c |  2 +-
 23 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 8f8bea08e734..9ce85a845105 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -116,7 +116,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 			disabled |= (I915_SCHEDULER_CAP_ENABLED |
 				     I915_SCHEDULER_CAP_PRIORITY);
 
-		if (intel_uc_uses_guc_submission(&i915->gt.uc))
+		if (intel_uc_uses_guc_submission(&to_gt(i915)->uc))
 			enabled |= I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP;
 
 		for (i = 0; i < ARRAY_SIZE(map); i++) {
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index d85a1050f4a8..971e737b37b2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1232,7 +1232,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private *i915)
 {
 	int ret;
 
-	ret = ggtt_probe_hw(&i915->ggtt, &i915->gt);
+	ret = ggtt_probe_hw(&i915->ggtt, to_gt(i915));
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 07ff7ba7b2b7..36eb980d757e 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2302,7 +2302,7 @@ unsigned long i915_read_mch_val(void)
 		return 0;
 
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-		struct intel_ips *ips = &i915->gt.rps.ips;
+		struct intel_ips *ips = &to_gt(i915)->rps.ips;
 
 		spin_lock_irq(&mchdev_lock);
 		chipset_val = __ips_chipset_val(ips);
@@ -2329,7 +2329,7 @@ bool i915_gpu_raise(void)
 	if (!i915)
 		return false;
 
-	rps = &i915->gt.rps;
+	rps = &to_gt(i915)->rps;
 
 	spin_lock_irq(&mchdev_lock);
 	if (rps->max_freq_softlimit < rps->max_freq)
@@ -2356,7 +2356,7 @@ bool i915_gpu_lower(void)
 	if (!i915)
 		return false;
 
-	rps = &i915->gt.rps;
+	rps = &to_gt(i915)->rps;
 
 	spin_lock_irq(&mchdev_lock);
 	if (rps->max_freq_softlimit > rps->min_freq)
@@ -2382,7 +2382,7 @@ bool i915_gpu_busy(void)
 	if (!i915)
 		return false;
 
-	ret = i915->gt.awake;
+	ret = to_gt(i915)->awake;
 
 	drm_dev_put(&i915->drm);
 	return ret;
@@ -2405,11 +2405,11 @@ bool i915_gpu_turbo_disable(void)
 	if (!i915)
 		return false;
 
-	rps = &i915->gt.rps;
+	rps = &to_gt(i915)->rps;
 
 	spin_lock_irq(&mchdev_lock);
 	rps->max_freq_softlimit = rps->min_freq;
-	ret = !__gen5_rps_set(&i915->gt.rps, rps->min_freq);
+	ret = !__gen5_rps_set(&to_gt(i915)->rps, rps->min_freq);
 	spin_unlock_irq(&mchdev_lock);
 
 	drm_dev_put(&i915->drm);
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3113266c286e..ab3277a3d593 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -929,7 +929,7 @@ hsw_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 static void
 gen9_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
-	const struct sseu_dev_info *sseu = &i915->gt.info.sseu;
+	const struct sseu_dev_info *sseu = &to_gt(i915)->info.sseu;
 	unsigned int slice, subslice;
 	u32 mcr, mcr_mask;
 
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index bb99fc03f503..a94b8d56c4bb 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -345,7 +345,7 @@ struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
 	struct mock_engine *engine;
 
 	GEM_BUG_ON(id >= I915_NUM_ENGINES);
-	GEM_BUG_ON(!i915->gt.uncore);
+	GEM_BUG_ON(!to_gt(i915)->uncore);
 
 	engine = kzalloc(sizeof(*engine) + PAGE_SIZE, GFP_KERNEL);
 	if (!engine)
@@ -353,8 +353,8 @@ struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
 
 	/* minimal engine setup for requests */
 	engine->base.i915 = i915;
-	engine->base.gt = &i915->gt;
-	engine->base.uncore = i915->gt.uncore;
+	engine->base.gt = to_gt(i915);
+	engine->base.uncore = to_gt(i915)->uncore;
 	snprintf(engine->base.name, sizeof(engine->base.name), "%s", name);
 	engine->base.id = id;
 	engine->base.mask = BIT(id);
@@ -377,8 +377,8 @@ struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
 
 	engine->base.release = mock_engine_release;
 
-	i915->gt.engine[id] = &engine->base;
-	i915->gt.engine_class[0][id] = &engine->base;
+	to_gt(i915)->engine[id] = &engine->base;
+	to_gt(i915)->engine_class[0][id] = &engine->base;
 
 	/* fake hw queue */
 	spin_lock_init(&engine->hw_lock);
diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index fa7b99a671dd..76fbae358072 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -442,7 +442,7 @@ int intel_context_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_active_context),
 		SUBTEST(live_remote_context),
 	};
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 
 	if (intel_gt_is_wedged(gt))
 		return 0;
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine.c b/drivers/gpu/drm/i915/gt/selftest_engine.c
index 262764f6d90a..57fea9ea1705 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine.c
@@ -12,7 +12,7 @@ int intel_engine_live_selftests(struct drm_i915_private *i915)
 		live_engine_pm_selftests,
 		NULL,
 	};
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 	typeof(*tests) *fn;
 
 	for (fn = tests; *fn; fn++) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
index 64abf5feabfa..1b75f478d1b8 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
@@ -361,10 +361,10 @@ int intel_engine_cs_perf_selftests(struct drm_i915_private *i915)
 		SUBTEST(perf_mi_noop),
 	};
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
-	return intel_gt_live_subtests(tests, &i915->gt);
+	return intel_gt_live_subtests(tests, to_gt(i915));
 }
 
 static int intel_mmio_bases_check(void *arg)
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index 6e6e4d747cca..273d440a53e3 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -378,13 +378,13 @@ int intel_heartbeat_live_selftests(struct drm_i915_private *i915)
 	int saved_hangcheck;
 	int err;
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
 	saved_hangcheck = i915->params.enable_hangcheck;
 	i915->params.enable_hangcheck = INT_MAX;
 
-	err = intel_gt_live_subtests(tests, &i915->gt);
+	err = intel_gt_live_subtests(tests, to_gt(i915));
 
 	i915->params.enable_hangcheck = saved_hangcheck;
 	return err;
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index b367ecfa42de..e10da897e07a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -4502,11 +4502,11 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_virtual_reset),
 	};
 
-	if (i915->gt.submission_method != INTEL_SUBMISSION_ELSP)
+	if (to_gt(i915)->submission_method != INTEL_SUBMISSION_ELSP)
 		return 0;
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
-	return intel_gt_live_subtests(tests, &i915->gt);
+	return intel_gt_live_subtests(tests, to_gt(i915));
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index 55c5cdb99f45..8bf62a5826cc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -193,10 +193,10 @@ int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_gt_resume),
 	};
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
-	return intel_gt_live_subtests(tests, &i915->gt);
+	return intel_gt_live_subtests(tests, to_gt(i915));
 }
 
 int intel_gt_pm_late_selftests(struct drm_i915_private *i915)
@@ -210,8 +210,8 @@ int intel_gt_pm_late_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_rc6_ctx_wa),
 	};
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
-	return intel_gt_live_subtests(tests, &i915->gt);
+	return intel_gt_live_subtests(tests, to_gt(i915));
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index e5ad4d5a91c0..15d63435ec4d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -2018,7 +2018,7 @@ int intel_hangcheck_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_reset_evict_fence),
 		SUBTEST(igt_handle_error),
 	};
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 	intel_wakeref_t wakeref;
 	int err;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index b0977a3b699b..618c905daa19 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1847,5 +1847,5 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 	if (!HAS_LOGICAL_RING_CONTEXTS(i915))
 		return 0;
 
-	return intel_gt_live_subtests(tests, &i915->gt);
+	return intel_gt_live_subtests(tests, to_gt(i915));
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index e21787301bbd..f637691b5bcb 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -442,7 +442,7 @@ int intel_migrate_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(thread_global_copy),
 		SUBTEST(thread_global_clear),
 	};
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 
 	if (!gt->migrate.context)
 		return 0;
@@ -658,7 +658,7 @@ int intel_migrate_perf_selftests(struct drm_i915_private *i915)
 		SUBTEST(perf_clear_blt),
 		SUBTEST(perf_copy_blt),
 	};
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 
 	if (intel_gt_is_wedged(gt))
 		return 0;
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index 13d25bf2a94a..c1d861333c44 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -451,5 +451,5 @@ int intel_mocs_live_selftests(struct drm_i915_private *i915)
 	if (!get_mocs_settings(i915, &table))
 		return 0;
 
-	return intel_gt_live_subtests(tests, &i915->gt);
+	return intel_gt_live_subtests(tests, to_gt(i915));
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
index 7a50c9f4071b..8a873f6bda7f 100644
--- a/drivers/gpu/drm/i915/gt/selftest_reset.c
+++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
@@ -376,7 +376,7 @@ int intel_reset_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_atomic_reset),
 		SUBTEST(igt_atomic_engine_reset),
 	};
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 
 	if (!intel_has_gpu_reset(gt))
 		return 0;
diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
index 041954408d0f..70f9ac1ec2c7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
@@ -291,8 +291,8 @@ int intel_ring_submission_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_ctx_switch_wa),
 	};
 
-	if (i915->gt.submission_method > INTEL_SUBMISSION_RING)
+	if (to_gt(i915)->submission_method > INTEL_SUBMISSION_RING)
 		return 0;
 
-	return intel_gt_live_subtests(tests, &i915->gt);
+	return intel_gt_live_subtests(tests, to_gt(i915));
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index 9334bad131a2..b768cea5943d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
@@ -39,7 +39,7 @@ static int slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 freq)
 static int live_slpc_clamp_min(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
 	struct intel_rps *rps = &gt->rps;
 	struct intel_engine_cs *engine;
@@ -166,7 +166,7 @@ static int live_slpc_clamp_min(void *arg)
 static int live_slpc_clamp_max(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 	struct intel_guc_slpc *slpc;
 	struct intel_rps *rps;
 	struct intel_engine_cs *engine;
@@ -304,7 +304,7 @@ int intel_slpc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_slpc_clamp_min),
 	};
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
 	return i915_live_subtests(tests, i915);
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index d0b6a3afcf44..e2eb686a9763 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -159,7 +159,7 @@ static int mock_hwsp_freelist(void *arg)
 	INIT_RADIX_TREE(&state.cachelines, GFP_KERNEL);
 	state.prng = I915_RND_STATE_INITIALIZER(i915_selftest.random_seed);
 
-	state.gt = &i915->gt;
+	state.gt = to_gt(i915);
 
 	/*
 	 * Create a bunch of timelines and check that their HWSP do not overlap.
@@ -1416,8 +1416,8 @@ int intel_timeline_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_hwsp_rollover_user),
 	};
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
-	return intel_gt_live_subtests(tests, &i915->gt);
+	return intel_gt_live_subtests(tests, to_gt(i915));
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 962e91ba3be4..0287c2573c51 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -1387,8 +1387,8 @@ int intel_workarounds_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_engine_reset_workarounds),
 	};
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
-	return intel_gt_live_subtests(tests, &i915->gt);
+	return intel_gt_live_subtests(tests, to_gt(i915));
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 22c1c12369f2..13b27b8ff74e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -623,7 +623,7 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 	if (unlikely(ret < 0))
 		return ret;
 
-	intel_guc_pm_intrmsk_enable(&i915->gt);
+	intel_guc_pm_intrmsk_enable(to_gt(i915));
 
 	slpc_get_rp_values(slpc);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
index fb0e4a7bd8ca..e8cd030137e5 100644
--- a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
@@ -115,7 +115,7 @@ int intel_guc_live_selftests(struct drm_i915_private *i915)
 	static const struct i915_subtest tests[] = {
 		SUBTEST(intel_guc_scrub_ctbs),
 	};
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 
 	if (intel_gt_is_wedged(gt))
 		return 0;
diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c
index 50953c8e8b53..1297ddbf7f88 100644
--- a/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c
+++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c
@@ -167,7 +167,7 @@ int intel_guc_multi_lrc_live_selftests(struct drm_i915_private *i915)
 	static const struct i915_subtest tests[] = {
 		SUBTEST(intel_guc_multi_lrc_basic),
 	};
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 
 	if (intel_gt_is_wedged(gt))
 		return 0;
-- 
2.34.1

