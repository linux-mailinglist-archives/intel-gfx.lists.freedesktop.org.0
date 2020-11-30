Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 848B92C84F0
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 14:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B233D6E4AD;
	Mon, 30 Nov 2020 13:19:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7BCF6E4AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 13:19:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23162380-1500050 
 for multiple; Mon, 30 Nov 2020 13:19:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 13:19:10 +0000
Message-Id: <20201130131910.9412-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201130131910.9412-1-chris@chris-wilson.co.uk>
References: <20201130131910.9412-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/gt: Pipelined clear
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update the PTE and emit a clear within a single unpreemptible packet
such that we can schedule and pipeline clears.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c    | 128 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_migrate.h    |  11 ++
 drivers/gpu/drm/i915/gt/selftest_migrate.c |  66 +++++++++++
 3 files changed, 205 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 454991789985..eaf98cc36aef 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -385,6 +385,111 @@ intel_context_migrate_copy(struct intel_context *ce,
 	return err;
 }
 
+static int emit_clear(struct i915_request *rq, int size)
+{
+	const int gen = INTEL_GEN(rq->engine->i915);
+	u32 *cs;
+
+	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
+
+	cs = intel_ring_begin(rq, gen >= 8 ? 8 : 6);
+	if (IS_ERR(cs))
+		return PTR_ERR(cs);
+
+	if (gen >= 8) {
+		*cs++ = XY_COLOR_BLT_CMD | BLT_WRITE_RGBA | (7 - 2);
+		*cs++ = BLT_DEPTH_32 | BLT_ROP_COLOR_COPY | PAGE_SIZE;
+		*cs++ = 0;
+		*cs++ = size >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
+		*cs++ = 0; /* offset */
+		*cs++ = 0;
+		*cs++ = 0; /* value */
+		*cs++ = MI_NOOP;
+	} else {
+		*cs++ = XY_COLOR_BLT_CMD | BLT_WRITE_RGBA | (6 - 2);
+		*cs++ = BLT_DEPTH_32 | BLT_ROP_COLOR_COPY | PAGE_SIZE;
+		*cs++ = 0;
+		*cs++ = size >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
+		*cs++ = 0;
+		*cs++ = 0; /* value */
+	}
+
+	intel_ring_advance(rq, cs);
+	return 0;
+}
+
+int
+intel_context_migrate_clear(struct intel_context *ce,
+			    struct dma_fence *await,
+			    struct scatterlist *sg,
+			    struct i915_request **out)
+{
+	const u64 encode = ce->vm->pte_encode(0, I915_CACHE_LLC, 0); /* flags */
+	struct sgt_dma it = sg_sgt(sg);
+	struct i915_request *rq;
+	int err;
+
+	*out = NULL;
+
+	/* GEM_BUG_ON(ce->vm != migrate_vm); */
+
+	err = intel_context_pin(ce);
+	if (err)
+		return err;
+
+	GEM_BUG_ON(ce->ring->size < SZ_64K);
+
+	do {
+		int len;
+
+		rq = i915_request_create(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto out_ce;
+		}
+
+		if (await) {
+			err = i915_request_await_dma_fence(rq, await);
+			if (err)
+				goto out_rq;
+
+			if (rq->engine->emit_init_breadcrumb) {
+				err = rq->engine->emit_init_breadcrumb(rq);
+				if (err)
+					goto out_rq;
+			}
+
+			await = NULL;
+		}
+
+		len = emit_pte(rq, &it, encode, 0, CHUNK_SZ);
+		if (len <= 0) {
+			err = len;
+			goto out_rq;
+		}
+
+		err = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
+		if (err)
+			goto out_rq;
+
+		err = emit_clear(rq, len);
+
+out_rq:
+		if (*out)
+			i915_request_put(*out);
+		*out = i915_request_get(rq);
+		i915_request_add(rq);
+		if (err || !it.sg)
+			break;
+
+		cond_resched();
+	} while (1);
+
+out_ce:
+	intel_context_unpin(ce);
+	return err;
+}
+
 int
 intel_migrate_copy(struct intel_migrate *m,
 		   struct dma_fence *await,
@@ -409,6 +514,29 @@ intel_migrate_copy(struct intel_migrate *m,
 	return err;
 }
 
+int
+intel_migrate_clear(struct intel_migrate *m,
+		    struct dma_fence *await,
+		    struct scatterlist *sg,
+		    struct i915_request **out)
+{
+	struct intel_context *ce;
+	int err;
+
+	if (!m->ce)
+		return -ENODEV;
+
+	ce = intel_migrate_create_context(m);
+	if (IS_ERR(ce))
+		ce = intel_context_get(m->ce);
+	GEM_BUG_ON(IS_ERR(ce));
+
+	err = intel_context_migrate_clear(ce, await, sg, out);
+
+	intel_context_put(ce);
+	return err;
+}
+
 void intel_migrate_fini(struct intel_migrate *m)
 {
 	if (!m->ce)
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.h b/drivers/gpu/drm/i915/gt/intel_migrate.h
index 97f759aaf921..e2df3bcbbc09 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.h
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.h
@@ -31,6 +31,17 @@ int intel_context_migrate_copy(struct intel_context *ce,
 			       struct scatterlist *dst,
 			       struct i915_request **out);
 
+int
+intel_migrate_clear(struct intel_migrate *m,
+		    struct dma_fence *await,
+		    struct scatterlist *sg,
+		    struct i915_request **out);
+int
+intel_context_migrate_clear(struct intel_context *ce,
+			    struct dma_fence *await,
+			    struct scatterlist *sg,
+			    struct i915_request **out);
+
 void intel_migrate_fini(struct intel_migrate *m);
 
 #endif /* __INTEL_MIGRATE__ */
diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index c09f432f3a58..00da4505b3d7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -91,10 +91,76 @@ static int live_migrate_copy(void *arg)
 	return err;
 }
 
+static int live_migrate_clear(void *arg)
+{
+	struct intel_migrate *m = arg;
+	struct drm_i915_private *i915 = m->ce->engine->i915;
+	const unsigned int sizes[] = {
+		SZ_4K,
+		SZ_64K,
+		SZ_2M,
+		SZ_64M,
+		//SZ_2G,
+	};
+	I915_RND_STATE(prng);
+	int i, j, k;
+	int err = 0;
+
+	for (i = 0; i < ARRAY_SIZE(sizes); i++) {
+		struct drm_i915_gem_object *obj;
+		struct i915_request *rq;
+		u32 *vaddr;
+
+		obj = i915_gem_object_create_internal(i915, sizes[i]);
+		if (IS_ERR(obj))
+			break;
+
+		vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+		if (IS_ERR(vaddr)) {
+			i915_gem_object_put(obj);
+			break;
+		}
+
+		for (j = 0; j < sizes[i] / sizeof(u32); j++)
+			vaddr[j] = ~j;
+		i915_gem_object_flush_map(obj);
+
+		err = intel_migrate_clear(m, NULL, obj->mm.pages->sgl, &rq);
+		if (err)
+			pr_err("Clear failed, size: %u\n", sizes[i]);
+
+		if (rq) {
+			if (i915_request_wait(rq, 0, HZ) < 0) {
+				pr_err("Clear timed out, size: %u\n", sizes[i]);
+				err = -ETIME;
+			}
+			i915_request_put(rq);
+		}
+
+		for (j = 0; !err && j < sizes[i] / PAGE_SIZE; j++) {
+			k = i915_prandom_u32_max_state(1024, &prng);
+			if (vaddr[j * 1024 + k] != 0) {
+				pr_err("Clear failed, size: %u, offset: %zu\n",
+				       sizes[i], (j * 1024 + k) * sizeof(u32));
+				igt_hexdump(vaddr + j * 1024, 4096);
+				err = -EINVAL;
+			}
+		}
+
+		i915_gem_object_put(obj);
+		i915_gem_drain_freed_objects(i915);
+		if (err)
+			break;
+	}
+
+	return err;
+}
+
 int intel_migrate_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_migrate_copy),
+		SUBTEST(live_migrate_clear),
 	};
 	struct intel_migrate m;
 	int err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
