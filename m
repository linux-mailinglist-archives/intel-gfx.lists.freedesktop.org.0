Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C8577D08E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A29110E1A9;
	Tue, 15 Aug 2023 17:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD04910E088
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692119195; x=1723655195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=plscq92VbTtJy2r1Wb6ZTkyDkVoxgua0pWuzJYNuzds=;
 b=OWLqFj8qM4Fk9oWvXyTHw/lQEZnzCFRMSjO74C3WKVBPwSt4oNfDTlPa
 tDD4wVk3W9FcNsC6XY7MMyyFWf/IfbOsC0JuKmt3Ik+lBH5jkRa35sBNC
 ydlGrqgC5cBUABfzEa6hR4bZ1rd+StDK3v72n+pVyMWhEMzuk6Vk3dPot
 rPGfdNg6y9S8OPH+rTz+dcJSyxj1kGBMmnfcp5erv19amRs1dBuCKX7Jm
 o26YTw0Ervz4nEv+f+y/qqfAKxU6FU8Rt8dDGbzJCacrRhsBSELjOzvaw
 mG6WrJ2GUeYT1d5WR+uVFPA2Wx8eG8yZ4FgPvGMBUAl3f+9J7vv0BCDTm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372327574"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="372327574"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1064531937"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="1064531937"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:04:24 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 09:53:45 -0700
Message-Id: <20230815165345.964068-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230815165345.964068-1-jonathan.cavitt@intel.com>
References: <20230815165345.964068-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Refactor hangcheck selftest to
 use igt_spinner
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
Cc: andi.shyti@intel.com, michal.winiarski@intel.com, matthew.d.roper@intel.com,
 jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The hangcheck live selftest contains duplicate declarations of some
functions that already exist in igt_spinner.c, such as the creation and
deconstruction of a spinning batch buffer (spinner) that hangs an engine.
It's undesireable to have such code duplicated, as the requirements for
the spinner may change with hardware updates, necessitating both
execution paths be updated.  To avoid this, have the hangcheck live
selftest use the declaration from igt_spinner.  This eliminates the need
for the declarations in the selftest itself, as well as the associated
local helper structures, so we can erase those.

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 457 ++++++-------------
 drivers/gpu/drm/i915/selftests/igt_spinner.c |  15 +-
 drivers/gpu/drm/i915/selftests/igt_spinner.h |   9 +
 3 files changed, 155 insertions(+), 326 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 0dd4d00ee894..36376a4ade8e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -29,281 +29,40 @@
 
 #define IGT_IDLE_TIMEOUT 50 /* ms; time to wait after flushing between tests */
 
-struct hang {
-	struct intel_gt *gt;
-	struct drm_i915_gem_object *hws;
-	struct drm_i915_gem_object *obj;
-	struct i915_gem_context *ctx;
-	u32 *seqno;
-	u32 *batch;
-};
-
-static int hang_init(struct hang *h, struct intel_gt *gt)
-{
-	void *vaddr;
-	int err;
-
-	memset(h, 0, sizeof(*h));
-	h->gt = gt;
-
-	h->ctx = kernel_context(gt->i915, NULL);
-	if (IS_ERR(h->ctx))
-		return PTR_ERR(h->ctx);
-
-	GEM_BUG_ON(i915_gem_context_is_bannable(h->ctx));
-
-	h->hws = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
-	if (IS_ERR(h->hws)) {
-		err = PTR_ERR(h->hws);
-		goto err_ctx;
-	}
-
-	h->obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
-	if (IS_ERR(h->obj)) {
-		err = PTR_ERR(h->obj);
-		goto err_hws;
-	}
-
-	i915_gem_object_set_cache_coherency(h->hws, I915_CACHE_LLC);
-	vaddr = i915_gem_object_pin_map_unlocked(h->hws, I915_MAP_WB);
-	if (IS_ERR(vaddr)) {
-		err = PTR_ERR(vaddr);
-		goto err_obj;
-	}
-	h->seqno = memset(vaddr, 0xff, PAGE_SIZE);
-
-	vaddr = i915_gem_object_pin_map_unlocked(h->obj,
-						 intel_gt_coherent_map_type(gt, h->obj, false));
-	if (IS_ERR(vaddr)) {
-		err = PTR_ERR(vaddr);
-		goto err_unpin_hws;
-	}
-	h->batch = vaddr;
-
-	return 0;
-
-err_unpin_hws:
-	i915_gem_object_unpin_map(h->hws);
-err_obj:
-	i915_gem_object_put(h->obj);
-err_hws:
-	i915_gem_object_put(h->hws);
-err_ctx:
-	kernel_context_close(h->ctx);
-	return err;
-}
-
-static u64 hws_address(const struct i915_vma *hws,
-		       const struct i915_request *rq)
-{
-	return i915_vma_offset(hws) +
-	       offset_in_page(sizeof(u32) * rq->fence.context);
-}
-
-static struct i915_request *
-hang_create_request(struct hang *h, struct intel_engine_cs *engine)
-{
-	struct intel_gt *gt = h->gt;
-	struct i915_address_space *vm = i915_gem_context_get_eb_vm(h->ctx);
-	struct drm_i915_gem_object *obj;
-	struct i915_request *rq = NULL;
-	struct i915_vma *hws, *vma;
-	unsigned int flags;
-	void *vaddr;
-	u32 *batch;
-	int err;
-
-	obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
-	if (IS_ERR(obj)) {
-		i915_vm_put(vm);
-		return ERR_CAST(obj);
-	}
-
-	vaddr = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(gt, obj, false));
-	if (IS_ERR(vaddr)) {
-		i915_gem_object_put(obj);
-		i915_vm_put(vm);
-		return ERR_CAST(vaddr);
-	}
-
-	i915_gem_object_unpin_map(h->obj);
-	i915_gem_object_put(h->obj);
-
-	h->obj = obj;
-	h->batch = vaddr;
-
-	vma = i915_vma_instance(h->obj, vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_vm_put(vm);
-		return ERR_CAST(vma);
-	}
-
-	hws = i915_vma_instance(h->hws, vm, NULL);
-	if (IS_ERR(hws)) {
-		i915_vm_put(vm);
-		return ERR_CAST(hws);
-	}
-
-	err = i915_vma_pin(vma, 0, 0, PIN_USER);
-	if (err) {
-		i915_vm_put(vm);
-		return ERR_PTR(err);
-	}
-
-	err = i915_vma_pin(hws, 0, 0, PIN_USER);
-	if (err)
-		goto unpin_vma;
-
-	rq = igt_request_alloc(h->ctx, engine);
-	if (IS_ERR(rq)) {
-		err = PTR_ERR(rq);
-		goto unpin_hws;
-	}
-
-	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
-	if (err)
-		goto cancel_rq;
-
-	err = igt_vma_move_to_active_unlocked(hws, rq, 0);
-	if (err)
-		goto cancel_rq;
-
-	batch = h->batch;
-	if (GRAPHICS_VER(gt->i915) >= 8) {
-		*batch++ = MI_STORE_DWORD_IMM_GEN4;
-		*batch++ = lower_32_bits(hws_address(hws, rq));
-		*batch++ = upper_32_bits(hws_address(hws, rq));
-		*batch++ = rq->fence.seqno;
-		*batch++ = MI_NOOP;
-
-		memset(batch, 0, 1024);
-		batch += 1024 / sizeof(*batch);
-
-		*batch++ = MI_NOOP;
-		*batch++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
-		*batch++ = lower_32_bits(i915_vma_offset(vma));
-		*batch++ = upper_32_bits(i915_vma_offset(vma));
-	} else if (GRAPHICS_VER(gt->i915) >= 6) {
-		*batch++ = MI_STORE_DWORD_IMM_GEN4;
-		*batch++ = 0;
-		*batch++ = lower_32_bits(hws_address(hws, rq));
-		*batch++ = rq->fence.seqno;
-		*batch++ = MI_NOOP;
-
-		memset(batch, 0, 1024);
-		batch += 1024 / sizeof(*batch);
-
-		*batch++ = MI_NOOP;
-		*batch++ = MI_BATCH_BUFFER_START | 1 << 8;
-		*batch++ = lower_32_bits(i915_vma_offset(vma));
-	} else if (GRAPHICS_VER(gt->i915) >= 4) {
-		*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
-		*batch++ = 0;
-		*batch++ = lower_32_bits(hws_address(hws, rq));
-		*batch++ = rq->fence.seqno;
-		*batch++ = MI_NOOP;
-
-		memset(batch, 0, 1024);
-		batch += 1024 / sizeof(*batch);
-
-		*batch++ = MI_NOOP;
-		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
-		*batch++ = lower_32_bits(i915_vma_offset(vma));
-	} else {
-		*batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
-		*batch++ = lower_32_bits(hws_address(hws, rq));
-		*batch++ = rq->fence.seqno;
-		*batch++ = MI_NOOP;
-
-		memset(batch, 0, 1024);
-		batch += 1024 / sizeof(*batch);
-
-		*batch++ = MI_NOOP;
-		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
-		*batch++ = lower_32_bits(i915_vma_offset(vma));
-	}
-	*batch++ = MI_BATCH_BUFFER_END; /* not reached */
-	intel_gt_chipset_flush(engine->gt);
-
-	if (rq->engine->emit_init_breadcrumb) {
-		err = rq->engine->emit_init_breadcrumb(rq);
-		if (err)
-			goto cancel_rq;
-	}
-
-	flags = 0;
-	if (GRAPHICS_VER(gt->i915) <= 5)
-		flags |= I915_DISPATCH_SECURE;
-
-	err = rq->engine->emit_bb_start(rq, i915_vma_offset(vma), PAGE_SIZE, flags);
-
-cancel_rq:
-	if (err) {
-		i915_request_set_error_once(rq, err);
-		i915_request_add(rq);
-	}
-unpin_hws:
-	i915_vma_unpin(hws);
-unpin_vma:
-	i915_vma_unpin(vma);
-	i915_vm_put(vm);
-	return err ? ERR_PTR(err) : rq;
-}
-
-static u32 hws_seqno(const struct hang *h, const struct i915_request *rq)
-{
-	return READ_ONCE(h->seqno[rq->fence.context % (PAGE_SIZE/sizeof(u32))]);
-}
-
-static void hang_fini(struct hang *h)
-{
-	*h->batch = MI_BATCH_BUFFER_END;
-	intel_gt_chipset_flush(h->gt);
-
-	i915_gem_object_unpin_map(h->obj);
-	i915_gem_object_put(h->obj);
-
-	i915_gem_object_unpin_map(h->hws);
-	i915_gem_object_put(h->hws);
-
-	kernel_context_close(h->ctx);
-
-	igt_flush_test(h->gt->i915);
-}
-
-static bool wait_until_running(struct hang *h, struct i915_request *rq)
-{
-	return !(wait_for_us(i915_seqno_passed(hws_seqno(h, rq),
-					       rq->fence.seqno),
-			     10) &&
-		 wait_for(i915_seqno_passed(hws_seqno(h, rq),
-					    rq->fence.seqno),
-			  1000));
-}
-
 static int igt_hang_sanitycheck(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct i915_request *rq;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	struct hang h;
+	struct igt_spinner spin;
 	int err;
 
 	/* Basic check that we can execute our hanging batch */
 
-	err = hang_init(&h, gt);
+	err = igt_spinner_init(&spin, gt);
 	if (err)
 		return err;
 
 	for_each_engine(engine, gt, id) {
 		struct intel_wedge_me w;
+		struct intel_context *ce;
 		long timeout;
 
 		if (!intel_engine_can_store_dword(engine))
 			continue;
 
-		rq = hang_create_request(&h, engine);
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			pr_err("Failed to create context for %s, err=%d\n",
+			       engine->name, err);
+			goto fini;
+		}
+
+		rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
+		intel_context_put(ce);
+
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
 			pr_err("Failed to create request for %s, err=%d\n",
@@ -312,10 +71,7 @@ static int igt_hang_sanitycheck(void *arg)
 		}
 
 		i915_request_get(rq);
-
-		*h.batch = MI_BATCH_BUFFER_END;
-		intel_gt_chipset_flush(engine->gt);
-
+		igt_spinner_end(&spin);
 		i915_request_add(rq);
 
 		timeout = 0;
@@ -336,7 +92,7 @@ static int igt_hang_sanitycheck(void *arg)
 	}
 
 fini:
-	hang_fini(&h);
+	igt_spinner_fini(&spin);
 	return err;
 }
 
@@ -686,7 +442,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 	struct i915_gpu_error *global = &gt->i915->gpu_error;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	struct hang h;
+	struct igt_spinner spin;
 	int err = 0;
 
 	/* Check that we can issue an engine reset on an idle engine (no-op) */
@@ -695,7 +451,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 		return 0;
 
 	if (active) {
-		err = hang_init(&h, gt);
+		err = igt_spinner_init(&spin, gt);
 		if (err)
 			return err;
 	}
@@ -739,7 +495,17 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 			}
 
 			if (active) {
-				rq = hang_create_request(&h, engine);
+				struct intel_context *ce = intel_context_create(engine);
+				if (IS_ERR(ce)) {
+					err = PTR_ERR(ce);
+					pr_err("[%s] Create context failed: %d!\n",
+					       engine->name, err);
+					goto restore;
+				}
+
+				rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
+				intel_context_put(ce);
+
 				if (IS_ERR(rq)) {
 					err = PTR_ERR(rq);
 					pr_err("[%s] Create hang request failed: %d!\n",
@@ -750,11 +516,11 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 				i915_request_get(rq);
 				i915_request_add(rq);
 
-				if (!wait_until_running(&h, rq)) {
+				if (!igt_wait_for_spinner(&spin, rq)) {
 					struct drm_printer p = drm_info_printer(gt->i915->drm.dev);
 
 					pr_err("%s: Failed to start request %llx, at %x\n",
-					       __func__, rq->fence.seqno, hws_seqno(&h, rq));
+					       __func__, rq->fence.seqno, hws_seqno(&spin, rq));
 					intel_engine_dump(engine, &p,
 							  "%s\n", engine->name);
 
@@ -835,7 +601,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 	}
 
 	if (active)
-		hang_fini(&h);
+		igt_spinner_fini(&spin);
 
 	return err;
 }
@@ -967,7 +733,7 @@ static int __igt_reset_engines(struct intel_gt *gt,
 	struct intel_engine_cs *engine, *other;
 	struct active_engine *threads;
 	enum intel_engine_id id, tmp;
-	struct hang h;
+	struct igt_spinner spin;
 	int err = 0;
 
 	/* Check that issuing a reset on one engine does not interfere
@@ -978,12 +744,9 @@ static int __igt_reset_engines(struct intel_gt *gt,
 		return 0;
 
 	if (flags & TEST_ACTIVE) {
-		err = hang_init(&h, gt);
+		err = igt_spinner_init(&spin, gt);
 		if (err)
 			return err;
-
-		if (flags & TEST_PRIORITY)
-			h.ctx->sched.priority = 1024;
 	}
 
 	threads = kmalloc_array(I915_NUM_ENGINES, sizeof(*threads), GFP_KERNEL);
@@ -1057,7 +820,20 @@ static int __igt_reset_engines(struct intel_gt *gt,
 			}
 
 			if (flags & TEST_ACTIVE) {
-				rq = hang_create_request(&h, engine);
+				struct intel_context *ce = intel_context_create(engine);
+				if (IS_ERR(ce)) {
+					err = PTR_ERR(ce);
+					pr_err("[%s] Create context failed: %d!\n",
+					       engine->name, err);
+					goto restore;
+				}
+
+				if (flags && TEST_PRIORITY)
+					ce->gem_context->sched.priority = 1024;
+
+				rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
+				intel_context_put(ce);
+
 				if (IS_ERR(rq)) {
 					err = PTR_ERR(rq);
 					pr_err("[%s] Create hang request failed: %d!\n",
@@ -1068,11 +844,11 @@ static int __igt_reset_engines(struct intel_gt *gt,
 				i915_request_get(rq);
 				i915_request_add(rq);
 
-				if (!wait_until_running(&h, rq)) {
+				if (!igt_wait_for_spinner(&spin, rq)) {
 					struct drm_printer p = drm_info_printer(gt->i915->drm.dev);
 
 					pr_err("%s: Failed to start request %llx, at %x\n",
-					       __func__, rq->fence.seqno, hws_seqno(&h, rq));
+					       __func__, rq->fence.seqno, hws_seqno(&spin, rq));
 					intel_engine_dump(engine, &p,
 							  "%s\n", engine->name);
 
@@ -1240,7 +1016,7 @@ static int __igt_reset_engines(struct intel_gt *gt,
 		err = -EIO;
 
 	if (flags & TEST_ACTIVE)
-		hang_fini(&h);
+		igt_spinner_fini(&spin);
 
 	return err;
 }
@@ -1299,7 +1075,8 @@ static int igt_reset_wait(void *arg)
 	struct intel_engine_cs *engine;
 	struct i915_request *rq;
 	unsigned int reset_count;
-	struct hang h;
+	struct igt_spinner spin;
+	struct intel_context *ce;
 	long timeout;
 	int err;
 
@@ -1312,13 +1089,22 @@ static int igt_reset_wait(void *arg)
 
 	igt_global_reset_lock(gt);
 
-	err = hang_init(&h, gt);
+	err = igt_spinner_init(&spin, gt);
 	if (err) {
-		pr_err("[%s] Hang init failed: %d!\n", engine->name, err);
+		pr_err("[%s] Spinner init failed: %d!\n", engine->name, err);
 		goto unlock;
 	}
 
-	rq = hang_create_request(&h, engine);
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce)) {
+		err = PTR_ERR(ce);
+		pr_err("[%s] Create context failed: %d!\n", engine->name, err);
+		goto fini;
+	}
+
+	rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
+	intel_context_put(ce);
+
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);
@@ -1328,11 +1114,11 @@ static int igt_reset_wait(void *arg)
 	i915_request_get(rq);
 	i915_request_add(rq);
 
-	if (!wait_until_running(&h, rq)) {
+	if (!igt_wait_for_spinner(&spin, rq)) {
 		struct drm_printer p = drm_info_printer(gt->i915->drm.dev);
 
 		pr_err("%s: Failed to start request %llx, at %x\n",
-		       __func__, rq->fence.seqno, hws_seqno(&h, rq));
+		       __func__, rq->fence.seqno, hws_seqno(&spin, rq));
 		intel_engine_dump(rq->engine, &p, "%s\n", rq->engine->name);
 
 		intel_gt_set_wedged(gt);
@@ -1360,7 +1146,7 @@ static int igt_reset_wait(void *arg)
 out_rq:
 	i915_request_put(rq);
 fini:
-	hang_fini(&h);
+	igt_spinner_fini(&spin);
 unlock:
 	igt_global_reset_unlock(gt);
 
@@ -1433,7 +1219,8 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 	struct task_struct *tsk = NULL;
 	struct i915_request *rq;
 	struct evict_vma arg;
-	struct hang h;
+	struct igt_spinner spin;
+	struct intel_context *ce;
 	unsigned int pin_flags;
 	int err;
 
@@ -1447,9 +1234,9 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 
 	/* Check that we can recover an unbind stuck on a hanging request */
 
-	err = hang_init(&h, gt);
+	err = igt_spinner_init(&spin, gt);
 	if (err) {
-		pr_err("[%s] Hang init failed: %d!\n", engine->name, err);
+		pr_err("[%s] Spinner init failed: %d!\n", engine->name, err);
 		return err;
 	}
 
@@ -1475,7 +1262,16 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 		goto out_obj;
 	}
 
-	rq = hang_create_request(&h, engine);
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce)) {
+		err = PTR_ERR(ce);
+		pr_err("[%s] Create context failed: %d!\n", engine->name, err);
+		goto out_obj;
+	}
+
+	rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
+	intel_context_put(ce);
+
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);
@@ -1517,11 +1313,11 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 	if (err)
 		goto out_rq;
 
-	if (!wait_until_running(&h, rq)) {
+	if (!igt_wait_for_spinner(&spin, rq)) {
 		struct drm_printer p = drm_info_printer(gt->i915->drm.dev);
 
 		pr_err("%s: Failed to start request %llx, at %x\n",
-		       __func__, rq->fence.seqno, hws_seqno(&h, rq));
+		       __func__, rq->fence.seqno, hws_seqno(&spin, rq));
 		intel_engine_dump(rq->engine, &p, "%s\n", rq->engine->name);
 
 		intel_gt_set_wedged(gt);
@@ -1571,7 +1367,7 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 out_obj:
 	i915_gem_object_put(obj);
 fini:
-	hang_fini(&h);
+	igt_spinner_fini(&spin);
 	if (intel_gt_is_wedged(gt))
 		return -EIO;
 
@@ -1638,20 +1434,21 @@ static int igt_reset_queue(void *arg)
 	struct i915_gpu_error *global = &gt->i915->gpu_error;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	struct hang h;
+	struct igt_spinner spin;
 	int err;
 
 	/* Check that we replay pending requests following a hang */
 
 	igt_global_reset_lock(gt);
 
-	err = hang_init(&h, gt);
+	err = igt_spinner_init(&spin, gt);
 	if (err)
 		goto unlock;
 
 	for_each_engine(engine, gt, id) {
 		struct intel_selftest_saved_policy saved;
 		struct i915_request *prev;
+		struct intel_context *ce;
 		IGT_TIMEOUT(end_time);
 		unsigned int count;
 		bool using_guc = intel_engine_uses_guc(engine);
@@ -1668,7 +1465,16 @@ static int igt_reset_queue(void *arg)
 			}
 		}
 
-		prev = hang_create_request(&h, engine);
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			pr_err("[%s] Create 'prev' context failed: %d!\n", engine->name, err);
+			goto restore;
+		}
+
+		prev = igt_spinner_create_request(&spin, ce, MI_NOOP);
+		intel_context_put(ce);
+
 		if (IS_ERR(prev)) {
 			err = PTR_ERR(prev);
 			pr_err("[%s] Create 'prev' hang request failed: %d!\n", engine->name, err);
@@ -1682,8 +1488,17 @@ static int igt_reset_queue(void *arg)
 		do {
 			struct i915_request *rq;
 			unsigned int reset_count;
+			
+			ce = intel_context_create(engine);
+			if (IS_ERR(ce)) {
+				err = PTR_ERR(ce);
+				pr_err("[%s] Create context failed: %d!\n", engine->name, err);
+				goto restore;
+			}
+
+			rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
+			intel_context_put(ce);
 
-			rq = hang_create_request(&h, engine);
 			if (IS_ERR(rq)) {
 				err = PTR_ERR(rq);
 				pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);
@@ -1715,12 +1530,12 @@ static int igt_reset_queue(void *arg)
 				goto restore;
 			}
 
-			if (!wait_until_running(&h, prev)) {
+			if (!igt_wait_for_spinner(&spin, prev)) {
 				struct drm_printer p = drm_info_printer(gt->i915->drm.dev);
 
 				pr_err("%s(%s): Failed to start request %llx, at %x\n",
 				       __func__, engine->name,
-				       prev->fence.seqno, hws_seqno(&h, prev));
+				       prev->fence.seqno, hws_seqno(&spin, prev));
 				intel_engine_dump(engine, &p,
 						  "%s\n", engine->name);
 
@@ -1768,9 +1583,7 @@ static int igt_reset_queue(void *arg)
 		pr_info("%s: Completed %d queued resets\n",
 			engine->name, count);
 
-		*h.batch = MI_BATCH_BUFFER_END;
-		intel_gt_chipset_flush(engine->gt);
-
+		igt_spinner_end(&spin);
 		i915_request_put(prev);
 
 restore:
@@ -1794,7 +1607,7 @@ static int igt_reset_queue(void *arg)
 	}
 
 fini:
-	hang_fini(&h);
+	igt_spinner_fini(&spin);
 unlock:
 	igt_global_reset_unlock(gt);
 
@@ -1809,7 +1622,8 @@ static int igt_handle_error(void *arg)
 	struct intel_gt *gt = arg;
 	struct i915_gpu_error *global = &gt->i915->gpu_error;
 	struct intel_engine_cs *engine;
-	struct hang h;
+	struct igt_spinner spin;
+	struct intel_context *ce;
 	struct i915_request *rq;
 	struct i915_gpu_coredump *error;
 	int err;
@@ -1824,13 +1638,22 @@ static int igt_handle_error(void *arg)
 	if (!engine || !intel_engine_can_store_dword(engine))
 		return 0;
 
-	err = hang_init(&h, gt);
+	err = igt_spinner_init(&spin, gt);
 	if (err) {
-		pr_err("[%s] Hang init failed: %d!\n", engine->name, err);
+		pr_err("[%s] Spinner init failed: %d!\n", engine->name, err);
 		return err;
 	}
 
-	rq = hang_create_request(&h, engine);
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce)) {
+		err = PTR_ERR(ce);
+		pr_err("[%s] Create context failed: %d!\n", engine->name, err);
+		goto err_fini;
+	}
+
+	rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
+	intel_context_put(ce);
+
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);
@@ -1840,11 +1663,11 @@ static int igt_handle_error(void *arg)
 	i915_request_get(rq);
 	i915_request_add(rq);
 
-	if (!wait_until_running(&h, rq)) {
+	if (!igt_wait_for_spinner(&spin, rq)) {
 		struct drm_printer p = drm_info_printer(gt->i915->drm.dev);
 
 		pr_err("%s: Failed to start request %llx, at %x\n",
-		       __func__, rq->fence.seqno, hws_seqno(&h, rq));
+		       __func__, rq->fence.seqno, hws_seqno(&spin, rq));
 		intel_engine_dump(rq->engine, &p, "%s\n", rq->engine->name);
 
 		intel_gt_set_wedged(gt);
@@ -1869,7 +1692,7 @@ static int igt_handle_error(void *arg)
 err_request:
 	i915_request_put(rq);
 err_fini:
-	hang_fini(&h);
+	igt_spinner_fini(&spin);
 	return err;
 }
 
@@ -1910,20 +1733,30 @@ static int igt_atomic_reset_engine(struct intel_engine_cs *engine,
 				   const struct igt_atomic_section *p)
 {
 	struct i915_request *rq;
-	struct hang h;
+	struct igt_spinner spin;
+	struct intel_context *ce;
 	int err;
 
 	err = __igt_atomic_reset_engine(engine, p, "idle");
 	if (err)
 		return err;
 
-	err = hang_init(&h, engine->gt);
+	err = igt_spinner_init(&spin, engine->gt);
 	if (err) {
 		pr_err("[%s] Hang init failed: %d!\n", engine->name, err);
 		return err;
 	}
 
-	rq = hang_create_request(&h, engine);
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce)) {
+		err = PTR_ERR(ce);
+		pr_err("[%s] Create context failed: %d!\n", engine->name, err);
+		goto out;
+	}
+
+	rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
+	intel_context_put(ce);
+
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);
@@ -1933,12 +1766,12 @@ static int igt_atomic_reset_engine(struct intel_engine_cs *engine,
 	i915_request_get(rq);
 	i915_request_add(rq);
 
-	if (wait_until_running(&h, rq)) {
+	if (igt_wait_for_spinner(&spin, rq)) {
 		err = __igt_atomic_reset_engine(engine, p, "active");
 	} else {
 		pr_err("%s(%s): Failed to start request %llx, at %x\n",
 		       __func__, engine->name,
-		       rq->fence.seqno, hws_seqno(&h, rq));
+		       rq->fence.seqno, hws_seqno(&spin, rq));
 		intel_gt_set_wedged(engine->gt);
 		err = -EIO;
 	}
@@ -1954,7 +1787,7 @@ static int igt_atomic_reset_engine(struct intel_engine_cs *engine,
 
 	i915_request_put(rq);
 out:
-	hang_fini(&h);
+	igt_spinner_fini(&spin);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 8c3e1f20e5a1..fc4f33076ec7 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -108,15 +108,10 @@ int igt_spinner_pin(struct igt_spinner *spin,
 	return 0;
 }
 
-static unsigned int seqno_offset(u64 fence)
-{
-	return offset_in_page(sizeof(u32) * fence);
-}
-
 static u64 hws_address(const struct i915_vma *hws,
 		       const struct i915_request *rq)
 {
-	return i915_vma_offset(hws) + seqno_offset(rq->fence.context);
+	return i915_vma_offset(hws) + offset_in_page(sizeof(u32) * rq->fence.context);
 }
 
 struct i915_request *
@@ -216,14 +211,6 @@ igt_spinner_create_request(struct igt_spinner *spin,
 	return err ? ERR_PTR(err) : rq;
 }
 
-static u32
-hws_seqno(const struct igt_spinner *spin, const struct i915_request *rq)
-{
-	u32 *seqno = spin->seqno + seqno_offset(rq->fence.context);
-
-	return READ_ONCE(*seqno);
-}
-
 void igt_spinner_end(struct igt_spinner *spin)
 {
 	if (!spin->batch)
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.h b/drivers/gpu/drm/i915/selftests/igt_spinner.h
index fbe5b1625b05..faff1008999a 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.h
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.h
@@ -40,4 +40,13 @@ void igt_spinner_end(struct igt_spinner *spin);
 
 bool igt_wait_for_spinner(struct igt_spinner *spin, struct i915_request *rq);
 
+static inline u32
+hws_seqno(const struct igt_spinner *spin, const struct i915_request *rq)
+{
+	u32 *seqno = spin->seqno + offset_in_page(sizeof(u32) * rq->fence.context);
+
+	return READ_ONCE(*seqno);
+}
+
+
 #endif
-- 
2.25.1

