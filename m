Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0623A2DEA81
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 21:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC61B89BA1;
	Fri, 18 Dec 2020 20:50:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B791F89BA1
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 20:50:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23371505-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 20:50:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Dec 2020 20:50:21 +0000
Message-Id: <20201218205021.27126-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201218205021.27126-1-chris@chris-wilson.co.uk>
References: <20201218205021.27126-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Provide a utility to create a
 scratch buffer
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

Primarily used by selftests, but also by runtime debugging of engine
w/a, is a routine to create a temporarily bound buffer for readback.
Almagamate the duplicated routines into one.

Suggested-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c           | 29 +++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  3 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 36 ++-----------------
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 30 ++--------------
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 24 +------------
 drivers/gpu/drm/i915/gt/selftest_mocs.c       | 29 +--------------
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 11 +++---
 7 files changed, 45 insertions(+), 117 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 7bfe9072be9a..04aa6601e984 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -422,6 +422,35 @@ void setup_private_pat(struct intel_uncore *uncore)
 		bdw_setup_private_ppat(uncore);
 }
 
+struct i915_vma *
+__vm_create_scratch_for_read(struct i915_address_space *vm, unsigned long size)
+{
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	int err;
+
+	obj = i915_gem_object_create_internal(vm->i915, PAGE_ALIGN(size));
+	if (IS_ERR(obj))
+		return ERR_CAST(obj);
+
+	i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
+
+	vma = i915_vma_instance(obj, vm, NULL);
+	if (IS_ERR(vma)) {
+		i915_gem_object_put(obj);
+		return vma;
+	}
+
+	err = i915_vma_pin(vma, 0, 0,
+			   i915_vma_is_ggtt(vma) ? PIN_GLOBAL : PIN_USER);
+	if (err) {
+		i915_vma_put(vma);
+		return ERR_PTR(err);
+	}
+
+	return vma;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/mock_gtt.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 8a33940a71f3..29c10fde8ce3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -573,6 +573,9 @@ int i915_vm_pin_pt_stash(struct i915_address_space *vm,
 void i915_vm_free_pt_stash(struct i915_address_space *vm,
 			   struct i915_vm_pt_stash *stash);
 
+struct i915_vma *
+__vm_create_scratch_for_read(struct i915_address_space *vm, unsigned long size);
+
 static inline struct sgt_dma {
 	struct scatterlist *sg;
 	dma_addr_t dma, max;
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 38868c5c038e..42d320e68b60 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2086,39 +2086,6 @@ void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
 	wa_list_apply(engine->uncore, &engine->wa_list);
 }
 
-static struct i915_vma *
-create_scratch(struct i915_address_space *vm, int count)
-{
-	struct drm_i915_gem_object *obj;
-	struct i915_vma *vma;
-	unsigned int size;
-	int err;
-
-	size = round_up(count * sizeof(u32), PAGE_SIZE);
-	obj = i915_gem_object_create_internal(vm->i915, size);
-	if (IS_ERR(obj))
-		return ERR_CAST(obj);
-
-	i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
-
-	vma = i915_vma_instance(obj, vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
-	}
-
-	err = i915_vma_pin(vma, 0, 0,
-			   i915_vma_is_ggtt(vma) ? PIN_GLOBAL : PIN_USER);
-	if (err)
-		goto err_obj;
-
-	return vma;
-
-err_obj:
-	i915_gem_object_put(obj);
-	return ERR_PTR(err);
-}
-
 struct mcr_range {
 	u32 start;
 	u32 end;
@@ -2221,7 +2188,8 @@ static int engine_wa_list_verify(struct intel_context *ce,
 	if (!wal->count)
 		return 0;
 
-	vma = create_scratch(&ce->engine->gt->ggtt->vm, wal->count);
+	vma = __vm_create_scratch_for_read(&ce->engine->gt->ggtt->vm,
+					   wal->count * sizeof(u32));
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 34c2bb8313eb..7f2a6421f220 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -25,33 +25,6 @@
 #define NUM_GPR 16
 #define NUM_GPR_DW (NUM_GPR * 2) /* each GPR is 2 dwords */
 
-static struct i915_vma *create_scratch(struct intel_gt *gt)
-{
-	struct drm_i915_gem_object *obj;
-	struct i915_vma *vma;
-	int err;
-
-	obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
-	if (IS_ERR(obj))
-		return ERR_CAST(obj);
-
-	i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
-
-	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
-		return vma;
-	}
-
-	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
-	if (err) {
-		i915_gem_object_put(obj);
-		return ERR_PTR(err);
-	}
-
-	return vma;
-}
-
 static bool is_active(struct i915_request *rq)
 {
 	if (i915_request_is_active(rq))
@@ -4167,7 +4140,8 @@ static int preserved_virtual_engine(struct intel_gt *gt,
 	int err = 0;
 	u32 *cs;
 
-	scratch = create_scratch(siblings[0]->gt);
+	scratch = __vm_create_scratch_for_read(&siblings[0]->gt->ggtt->vm,
+					       PAGE_SIZE);
 	if (IS_ERR(scratch))
 		return PTR_ERR(scratch);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index b7617731d2cd..6f21cdfd0903 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -27,29 +27,7 @@
 
 static struct i915_vma *create_scratch(struct intel_gt *gt)
 {
-	struct drm_i915_gem_object *obj;
-	struct i915_vma *vma;
-	int err;
-
-	obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
-	if (IS_ERR(obj))
-		return ERR_CAST(obj);
-
-	i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
-
-	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
-		return vma;
-	}
-
-	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
-	if (err) {
-		i915_gem_object_put(obj);
-		return ERR_PTR(err);
-	}
-
-	return vma;
+	return __vm_create_scratch_for_read(&gt->ggtt->vm, PAGE_SIZE);
 }
 
 static bool is_active(struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index 37b066dca52c..ca72894918ba 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -57,33 +57,6 @@ static int request_add_spin(struct i915_request *rq, struct igt_spinner *spin)
 	return err;
 }
 
-static struct i915_vma *create_scratch(struct intel_gt *gt)
-{
-	struct drm_i915_gem_object *obj;
-	struct i915_vma *vma;
-	int err;
-
-	obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
-	if (IS_ERR(obj))
-		return ERR_CAST(obj);
-
-	i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
-
-	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
-		return vma;
-	}
-
-	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
-	if (err) {
-		i915_gem_object_put(obj);
-		return ERR_PTR(err);
-	}
-
-	return vma;
-}
-
 static int live_mocs_init(struct live_mocs *arg, struct intel_gt *gt)
 {
 	struct drm_i915_mocs_table table;
@@ -102,7 +75,7 @@ static int live_mocs_init(struct live_mocs *arg, struct intel_gt *gt)
 	if (flags & (HAS_GLOBAL_MOCS | HAS_ENGINE_MOCS))
 		arg->mocs = table;
 
-	arg->scratch = create_scratch(gt);
+	arg->scratch = __vm_create_scratch_for_read(&gt->ggtt->vm, PAGE_SIZE);
 	if (IS_ERR(arg->scratch))
 		return PTR_ERR(arg->scratch);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 703b77207a47..2070b91cb607 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -486,10 +486,11 @@ static int check_dirty_whitelist(struct intel_context *ce)
 	struct intel_engine_cs *engine = ce->engine;
 	struct i915_vma *scratch;
 	struct i915_vma *batch;
-	int err = 0, i, v;
+	int err = 0, i, v, sz;
 	u32 *cs, *results;
 
-	scratch = create_scratch(ce->vm, 2 * ARRAY_SIZE(values) + 1);
+	sz = (2 * ARRAY_SIZE(values) + 1) * sizeof(u32);
+	scratch = __vm_create_scratch_for_read(ce->vm, sz);
 	if (IS_ERR(scratch))
 		return PTR_ERR(scratch);
 
@@ -1028,13 +1029,15 @@ static int live_isolated_whitelist(void *arg)
 		return 0;
 
 	for (i = 0; i < ARRAY_SIZE(client); i++) {
-		client[i].scratch[0] = create_scratch(gt->vm, 1024);
+		client[i].scratch[0] =
+			__vm_create_scratch_for_read(gt->vm, 4096);
 		if (IS_ERR(client[i].scratch[0])) {
 			err = PTR_ERR(client[i].scratch[0]);
 			goto err;
 		}
 
-		client[i].scratch[1] = create_scratch(gt->vm, 1024);
+		client[i].scratch[1] =
+			__vm_create_scratch_for_read(gt->vm, 4096);
 		if (IS_ERR(client[i].scratch[1])) {
 			err = PTR_ERR(client[i].scratch[1]);
 			i915_vma_unpin_and_release(&client[i].scratch[0], 0);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
