Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3574A022AB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 11:09:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D65110E5FB;
	Mon,  6 Jan 2025 10:09:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NTRu2uHF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B366810E5FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2025 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736158163; x=1767694163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yg2Av+SGe/pZNqOwLij5JL0h1x9hq86KpVlh05FRiF0=;
 b=NTRu2uHFqKDcSr3ZRVK51M6eur8tVZ+8wXUJbrzWdgTirjsthrKDvU3I
 ypYIakw7xE1ZpQvKT0HF+WmviuyEowmpQ9RwCtNAgYz0m6/Kc/PT40YjS
 /qnMD7bAzxoe3Yq22gLvnYOd0PudizDpFuGwntu0nc/ZQc3fXUlyuO21J
 DmIuFKOTstdMEFJfG+oPuFuI0IxMsY4SSDaDhzv1W0+Crpzz0LwiopwMQ
 J3lgP3Epg/aRBZxFhdOZVkdloY5ORtikqF74FOSXa30/0GafZYL4NN+PC
 PzeWuie81GnvypXywcCsubDBY3CeUOasMNTy+UCeneEM42rDqiG81WuyC A==;
X-CSE-ConnectionGUID: dnIJuC+yRK6EPLxqS9TFPw==
X-CSE-MsgGUID: KevIYaR6S+COo/Q1IQRb8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="36459650"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="36459650"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 02:09:23 -0800
X-CSE-ConnectionGUID: q5Ahb3fkTv+89xGQ2j4Hjg==
X-CSE-MsgGUID: +aU684GxQ9u99Lm0MZ2PyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107370457"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa004.jf.intel.com with ESMTP; 06 Jan 2025 02:09:21 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v1 1/8] drm/i915/gt: fix typos in i915/gt files.
Date: Mon,  6 Jan 2025 16:00:30 +0530
Message-Id: <20250106103037.1401847-2-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250106103037.1401847-1-nitin.r.gote@intel.com>
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Fix all typos in files under drm/i915/gt reported by codespell tool.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c             | 2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c            | 8 ++++----
 drivers/gpu/drm/i915/gt/intel_engine_types.h         | 4 ++--
 drivers/gpu/drm/i915/gt/intel_gt_irq.c               | 2 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c               | 2 +-
 drivers/gpu/drm/i915/gt/intel_migrate.c              | 4 ++--
 drivers/gpu/drm/i915/gt/intel_mocs.c                 | 2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c                | 2 +-
 drivers/gpu/drm/i915/gt/intel_ring_submission.c      | 2 +-
 drivers/gpu/drm/i915/gt/intel_rps_types.h            | 4 ++--
 drivers/gpu/drm/i915/gt/intel_sa_media.c             | 2 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c                 | 2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c          | 2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c         | 2 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c         | 2 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c               | 2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c               | 2 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c               | 2 +-
 drivers/gpu/drm/i915/gt/shaders/README               | 6 +++---
 drivers/gpu/drm/i915/gt/shaders/clear_kernel/hsw.asm | 2 +-
 drivers/gpu/drm/i915/gt/shaders/clear_kernel/ivb.asm | 2 +-
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h        | 4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc.c               | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h               | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h          | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c    | 4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_uc.c                | 2 +-
 drivers/gpu/drm/i915/gt/uc/selftest_guc_hangcheck.c  | 2 +-
 28 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
index 4904d0f4162c..8116fd5987e2 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
@@ -179,7 +179,7 @@ u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 	return __gen2_emit_breadcrumb(rq, cs, 8, 8);
 }
 
-/* Just userspace ABI convention to limit the wa batch bo to a resonable size */
+/* Just userspace ABI convention to limit the wa batch bo to a reasonable size */
 #define I830_BATCH_LIMIT SZ_256K
 #define I830_TLB_ENTRIES (2)
 #define I830_WA_SIZE max(I830_TLB_ENTRIES * SZ_4K, I830_BATCH_LIMIT)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 4d30a86016f2..ec136eb12d48 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -308,7 +308,7 @@ u32 intel_engine_context_size(struct intel_gt *gt, u8 class)
 			/*
 			 * There is a discrepancy here between the size reported
 			 * by the register and the size of the context layout
-			 * in the docs. Both are described as authorative!
+			 * in the docs. Both are described as authoritative!
 			 *
 			 * The discrepancy is on the order of a few cachelines,
 			 * but the total is under one page (4k), which is our
@@ -845,7 +845,7 @@ static void engine_mask_apply_compute_fuses(struct intel_gt *gt)
  * Note that we have a catch-22 situation where we need to be able to access
  * the blitter forcewake domain to read the engine fuses, but at the same time
  * we need to know which engines are available on the system to know which
- * forcewake domains are present. We solve this by intializing the forcewake
+ * forcewake domains are present. We solve this by initializing the forcewake
  * domains based on the full engine mask in the platform capabilities before
  * calling this function and pruning the domains for fused-off engines
  * afterwards.
@@ -1411,7 +1411,7 @@ create_ggtt_bind_context(struct intel_engine_cs *engine)
 
 	/*
 	 * MI_UPDATE_GTT can insert up to 511 PTE entries and there could be multiple
-	 * bind requets at a time so get a bigger ring.
+	 * bind requests at a time so get a bigger ring.
 	 */
 	return intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_512K,
 						  I915_GEM_HWS_GGTT_BIND_ADDR,
@@ -1533,7 +1533,7 @@ int intel_engines_init(struct intel_gt *gt)
 
 /**
  * intel_engine_cleanup_common - cleans up the engine state created by
- *                                the common initiailizers.
+ *                                the common initializers.
  * @engine: Engine to cleanup.
  *
  * This cleans up everything created by the common helpers.
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index fe1f85e5dda3..155b6255a63e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -237,7 +237,7 @@ struct intel_engine_execlists {
 	 */
 	struct i915_request * const *active;
 	/**
-	 * @inflight: the set of contexts submitted and acknowleged by HW
+	 * @inflight: the set of contexts submitted and acknowledged by HW
 	 *
 	 * The set of inflight contexts is managed by reading CS events
 	 * from the HW. On a context-switch event (not preemption), we
@@ -260,7 +260,7 @@ struct intel_engine_execlists {
 	unsigned int port_mask;
 
 	/**
-	 * @virtual: Queue of requets on a virtual engine, sorted by priority.
+	 * @virtual: Queue of requests on a virtual engine, sorted by priority.
 	 * Each RB entry is a struct i915_priolist containing a list of requests
 	 * of the same priority.
 	 */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 1240d44eeb85..75e802e10be2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -480,7 +480,7 @@ void gen8_gt_irq_postinstall(struct intel_gt *gt)
 	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(1), ~gt_interrupts[1], gt_interrupts[1]);
 	/*
 	 * RPS interrupts will get enabled/disabled on demand when RPS itself
-	 * is enabled/disabled. Same wil be the case for GuC interrupts.
+	 * is enabled/disabled. Same will be the case for GuC interrupts.
 	 */
 	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(2), gt->pm_imr, gt->pm_ier);
 	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(3), ~gt_interrupts[3], gt_interrupts[3]);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index b8912bd6c08e..aab20d6466f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -239,7 +239,7 @@ static u32 rw_with_mcr_steering_fw(struct intel_gt *gt,
 		 * to remain in multicast mode for reads.  There's no real
 		 * downside to this, so we'll just go ahead and do so on all
 		 * platforms; we'll only clear the multicast bit from the mask
-		 * when exlicitly doing a write operation.
+		 * when explicitly doing a write operation.
 		 */
 		if (rw_flag == FW_REG_WRITE)
 			mcr_mask |= GEN11_MCR_MULTICAST;
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 6f7af4077135..aff5aca591e6 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -304,7 +304,7 @@ struct intel_context *intel_migrate_create_context(struct intel_migrate *m)
 	struct intel_context *ce;
 
 	/*
-	 * We randomly distribute contexts across the engines upon constrction,
+	 * We randomly distribute contexts across the engines upon construction,
 	 * as they all share the same pinned vm, and so in order to allow
 	 * multiple blits to run in parallel, we must construct each blit
 	 * to use a different range of the vm for its GTT. This has to be
@@ -646,7 +646,7 @@ calculate_chunk_sz(struct drm_i915_private *i915, bool src_is_lmem,
 		 * When CHUNK_SZ is passed all the pages upto CHUNK_SZ
 		 * will be taken for the blt. in Flat-ccs supported
 		 * platform Smem obj will have more pages than required
-		 * for main meory hence limit it to the required size
+		 * for main memory hence limit it to the required size
 		 * for main memory
 		 */
 		return min_t(u64, bytes_to_cpy, CHUNK_SZ);
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index d791d63d49b4..cf41d325712e 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -675,7 +675,7 @@ void intel_mocs_init(struct intel_gt *gt)
 		__init_mocs_table(gt->uncore, &table, global_mocs_offset());
 
 	/*
-	 * Initialize the L3CC table as part of mocs initalization to make
+	 * Initialize the L3CC table as part of mocs initialization to make
 	 * sure the LNCFCMOCSx registers are programmed for the subsequent
 	 * memory transactions including guc transactions
 	 */
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index aae5a081cb53..5a625518d1a9 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1098,7 +1098,7 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 		dma_fence_default_wait(fence, false, MAX_SCHEDULE_TIMEOUT);
 		dma_fence_put(fence);
 
-		/* Restart iteration after droping lock */
+		/* Restart iteration after dropping lock */
 		spin_lock(&timelines->lock);
 		tl = list_entry(&timelines->active_list, typeof(*tl), link);
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 458e29d89978..6e9977b2d180 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -242,7 +242,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
 		/*
 		 * In case of resets fails because engine resumes from
 		 * incorrect RING_HEAD and then GPU may be then fed
-		 * to invalid instrcutions, which may lead to unrecoverable
+		 * to invalid instructions, which may lead to unrecoverable
 		 * hang. So at first write doesn't succeed then try again.
 		 */
 		ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
index 6507fa3f6d1e..5135b90a2a40 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
@@ -40,7 +40,7 @@ enum {
 /**
  * struct intel_rps_freq_caps - rps freq capabilities
  * @rp0_freq: non-overclocked max frequency
- * @rp1_freq: "less than" RP0 power/freqency
+ * @rp1_freq: "less than" RP0 power/frequency
  * @min_freq: aka RPn, minimum frequency
  *
  * Freq caps exposed by HW, values are in "hw units" and intel_gpu_freq()
@@ -90,7 +90,7 @@ struct intel_rps {
 	u8 boost_freq;		/* Frequency to request when wait boosting */
 	u8 idle_freq;		/* Frequency to request when we are idle */
 	u8 efficient_freq;	/* AKA RPe. Pre-determined balanced frequency */
-	u8 rp1_freq;		/* "less than" RP0 power/freqency */
+	u8 rp1_freq;		/* "less than" RP0 power/frequency */
 	u8 rp0_freq;		/* Non-overclocked max frequency. */
 	u16 gpll_ref_freq;	/* vlv/chv GPLL reference frequency */
 
diff --git a/drivers/gpu/drm/i915/gt/intel_sa_media.c b/drivers/gpu/drm/i915/gt/intel_sa_media.c
index 8c1dbcbcbc4f..2945526d52d1 100644
--- a/drivers/gpu/drm/i915/gt/intel_sa_media.c
+++ b/drivers/gpu/drm/i915/gt/intel_sa_media.c
@@ -27,7 +27,7 @@ int intel_sa_mediagt_setup(struct intel_gt *gt, phys_addr_t phys_addr,
 
 	/*
 	 * Standalone media shares the general MMIO space with the primary
-	 * GT.  We'll re-use the primary GT's mapping.
+	 * GT.  We'll reuse the primary GT's mapping.
 	 */
 	uncore->regs = intel_uncore_regs(&i915->uncore);
 	if (drm_WARN_ON(&i915->drm, uncore->regs == NULL))
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index c8fadf58d836..e4538dd726c8 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -687,7 +687,7 @@ u32 intel_sseu_make_rpcs(struct intel_gt *gt,
 	 * According to documentation software must consider the configuration
 	 * as 2x4x8 and hardware will translate this to 1x8x8.
 	 *
-	 * Furthemore, even though SScount is three bits, maximum documented
+	 * Furthermore, even though SScount is three bits, maximum documented
 	 * value for it is four. From this some rules/restrictions follow:
 	 *
 	 * 1.
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 570c91878189..3ea9b06de1be 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1318,7 +1318,7 @@ xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
 	 * We'll do our default/implicit steering based on GSLICE (in the
 	 * sliceid field) and DSS (in the subsliceid field).  If we can
 	 * find overlap between the valid MSLICE and/or LNCF values with
-	 * a suitable GSLICE, then we can just re-use the default value and
+	 * a suitable GSLICE, then we can just reuse the default value and
 	 * skip and explicit steering at runtime.
 	 *
 	 * We only need to look for overlap between GSLICE/MSLICE/LNCF to find
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 222ca7c44951..07bc0bbee20f 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -53,7 +53,7 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 		if (i915_request_completed(rq)) /* that was quick! */
 			return 0;
 
-		/* Wait until the HW has acknowleged the submission (or err) */
+		/* Wait until the HW has acknowledged the submission (or err) */
 		intel_engine_flush_submission(engine);
 		if (!READ_ONCE(engine->execlists.pending[0]) && is_active(rq))
 			return 0;
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 9ce8ff1c04fe..d99061735c58 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -548,7 +548,7 @@ static int igt_reset_fail_engine(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 
-	/* Check that we can recover from engine-reset failues */
+	/* Check that we can recover from engine-reset failures */
 
 	if (!intel_has_reset_engine(gt))
 		return 0;
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e17b8777d21d..22e750108c5f 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -63,7 +63,7 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 		if (i915_request_completed(rq)) /* that was quick! */
 			return 0;
 
-		/* Wait until the HW has acknowleged the submission (or err) */
+		/* Wait until the HW has acknowledged the submission (or err) */
 		intel_engine_flush_submission(engine);
 		if (!READ_ONCE(engine->execlists.pending[0]) && is_active(rq))
 			return 0;
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 27b6d51ef145..908483ab0bc8 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -222,7 +222,7 @@ int live_rc6_ctx_wa(void *arg)
 				i915_reset_engine_count(error, engine);
 			const u32 *res;
 
-			/* Use a sacrifical context */
+			/* Use a sacrificial context */
 			ce = intel_context_create(engine);
 			if (IS_ERR(ce)) {
 				err = PTR_ERR(ce);
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index c207a4fb03bf..78c03e6c0861 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -22,7 +22,7 @@
 #include "selftests/igt_spinner.h"
 #include "selftests/librapl.h"
 
-/* Try to isolate the impact of cstates from determing frequency response */
+/* Try to isolate the impact of cstates from determining frequency response */
 #define CPU_LATENCY 0 /* -1 to disable pm_qos, 0 to disable cstates */
 
 static void dummy_rps_work(struct work_struct *wrk)
diff --git a/drivers/gpu/drm/i915/gt/shaders/README b/drivers/gpu/drm/i915/gt/shaders/README
index e7e96d7073c7..22f8dabed434 100644
--- a/drivers/gpu/drm/i915/gt/shaders/README
+++ b/drivers/gpu/drm/i915/gt/shaders/README
@@ -10,7 +10,7 @@ i915/gt/shaders/clear_kernel directory.
 
 The generated .c files should never be modified directly. Instead, any modification
 needs to be done on the on their respective ASM files and build instructions below
-needes to be followed.
+needs to be followed.
 
 Building
 ========
@@ -24,7 +24,7 @@ on building.
 Please make sure your Mesa tool is compiled with "-Dtools=intel" and
 "-Ddri-drivers=i965", and run this script from IGT source root directory"
 
-The instructions bellow assume:
+The instructions below assume:
     *  IGT gpu tools source code is located on your home directory (~) as ~/igt
     *  Mesa source code is located on your home directory (~) as ~/mesa
        and built under the ~/mesa/build directory
@@ -43,4 +43,4 @@ igt $ ./scripts/generate_clear_kernel.sh -g ivb \
     ~/igt/lib/i915/shaders/clear_kernel/hsw.asm
 ~ $ cd ~/igt
 igt $ ./scripts/generate_clear_kernel.sh -g hsw \
-      -m ~/mesa/build/src/intel/tools/i965_asm
\ No newline at end of file
+      -m ~/mesa/build/src/intel/tools/i965_asm
diff --git a/drivers/gpu/drm/i915/gt/shaders/clear_kernel/hsw.asm b/drivers/gpu/drm/i915/gt/shaders/clear_kernel/hsw.asm
index 5fdf384bb621..6c0c89daf96c 100644
--- a/drivers/gpu/drm/i915/gt/shaders/clear_kernel/hsw.asm
+++ b/drivers/gpu/drm/i915/gt/shaders/clear_kernel/hsw.asm
@@ -24,7 +24,7 @@ mov(1)          f0.1<1>UW       g1.2<0,1,0>UW                   { align1 1N };
  * DW 1.4 - Rsvd (intended for context ID)
  * DW 1.5 - [31:16]:SliceCount, [15:0]:SubSlicePerSliceCount
  * DW 1.6 - Rsvd MBZ (intended for Enable Wait on Total Thread Count)
- * DW 1.7 - Rsvd MBZ (inteded for Total Thread Count)
+ * DW 1.7 - Rsvd MBZ (intended for Total Thread Count)
  *
  * Binding Table
  *
diff --git a/drivers/gpu/drm/i915/gt/shaders/clear_kernel/ivb.asm b/drivers/gpu/drm/i915/gt/shaders/clear_kernel/ivb.asm
index 97c7ac9e3854..27c28e63d6cc 100644
--- a/drivers/gpu/drm/i915/gt/shaders/clear_kernel/ivb.asm
+++ b/drivers/gpu/drm/i915/gt/shaders/clear_kernel/ivb.asm
@@ -24,7 +24,7 @@ mov(1)          f0.1<1>UW       g1.2<0,1,0>UW                   { align1 1N };
  * DW 1.4 - Rsvd (intended for context ID)
  * DW 1.5 - [31:16]:SliceCount, [15:0]:SubSlicePerSliceCount
  * DW 1.6 - Rsvd MBZ (intended for Enable Wait on Total Thread Count)
- * DW 1.7 - Rsvd MBZ (inteded for Total Thread Count)
+ * DW 1.7 - Rsvd MBZ (intended for Total Thread Count)
  *
  * Binding Table
  *
diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
index 1fc0c17b1230..803c0379d97d 100644
--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -81,7 +81,7 @@ struct guc_debug_capture_list {
  *
  * intel_guc_capture module uses these structures to maintain static
  * tables (per unique platform) that consists of lists of registers
- * (offsets, names, flags,...) that are used at the ADS regisration
+ * (offsets, names, flags,...) that are used at the ADS registration
  * time as well as during runtime processing and reporting of error-
  * capture states generated by GuC just prior to engine reset events.
  */
@@ -200,7 +200,7 @@ struct intel_guc_state_capture {
 	 * dynamically allocate new nodes when receiving the G2H notification
 	 * because the event handlers for all G2H event-processing is called
 	 * by the ct processing worker queue and when that queue is being
-	 * processed, there is no absoluate guarantee that we are not in the
+	 * processed, there is no absolute guarantee that we are not in the
 	 * midst of a GT reset operation (which doesn't allow allocations).
 	 */
 	struct list_head cachelist;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 5949ff0b0161..9df80c325fc1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -690,7 +690,7 @@ int intel_guc_suspend(struct intel_guc *guc)
 		 * H2G MMIO command completes.
 		 *
 		 * Don't abort on a failure code from the GuC. Keep going and do the
-		 * clean up in santize() and re-initialisation on resume and hopefully
+		 * clean up in sanitize() and re-initialisation on resume and hopefully
 		 * the error here won't be problematic.
 		 */
 		ret = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 57b903132776..053780f562c1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -295,7 +295,7 @@ struct intel_guc {
 	 */
 	struct work_struct dead_guc_worker;
 	/**
-	 * @last_dead_guc_jiffies: timestamp of previous 'dead guc' occurrance
+	 * @last_dead_guc_jiffies: timestamp of previous 'dead guc' occurrence
 	 * used to prevent a fundamentally broken system from continuously
 	 * reloading the GuC.
 	 */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 4ce6e2332a63..eded00f0c7e1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -408,7 +408,7 @@ enum guc_capture_type {
 	GUC_CAPTURE_LIST_TYPE_MAX,
 };
 
-/* Class indecies for capture_class and capture_instance arrays */
+/* Class indices for capture_class and capture_instance arrays */
 enum {
 	GUC_CAPTURE_LIST_CLASS_RENDER_COMPUTE = 0,
 	GUC_CAPTURE_LIST_CLASS_VIDEO = 1,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 12f1ba7ca9c1..3b1333a24a89 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1223,7 +1223,7 @@ __extend_last_switch(struct intel_guc *guc, u64 *prev_start, u32 new_start)
  * determine validity of these values. Instead we read the values multiple times
  * until they are consistent. In test runs, 3 attempts results in consistent
  * values. The upper bound is set to 6 attempts and may need to be tuned as per
- * any new occurences.
+ * any new occurrences.
  */
 static void __get_engine_usage_record(struct intel_engine_cs *engine,
 				      u32 *last_in, u32 *id, u32 *total)
@@ -2995,7 +2995,7 @@ static int __guc_context_pin(struct intel_context *ce,
 
 	/*
 	 * GuC context gets pinned in guc_request_alloc. See that function for
-	 * explaination of why.
+	 * explanation of why.
 	 */
 
 	return lrc_pin(ce, engine, vaddr);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 5b8080ec5315..f6767fbdada5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -512,7 +512,7 @@ static int __uc_init_hw(struct intel_uc *uc)
 		       ERR_PTR(ret), attempts);
 	}
 
-	/* Did we succeded or run out of retries? */
+	/* Did we succeeded or run out of retries? */
 	if (ret)
 		goto err_log_capture;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc_hangcheck.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc_hangcheck.c
index 26fdc392fce6..83801c992488 100644
--- a/drivers/gpu/drm/i915/gt/uc/selftest_guc_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc_hangcheck.c
@@ -64,7 +64,7 @@ static int intel_hang_guc(void *arg)
 	old_beat = engine->props.heartbeat_interval_ms;
 	ret = intel_engine_set_heartbeat(engine, BEAT_INTERVAL);
 	if (ret) {
-		gt_err(gt, "Failed to boost heatbeat interval: %pe\n", ERR_PTR(ret));
+		gt_err(gt, "Failed to boost heartbeat interval: %pe\n", ERR_PTR(ret));
 		goto err;
 	}
 
-- 
2.25.1

