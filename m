Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC33290361
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B7C6ED9E;
	Fri, 16 Oct 2020 10:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 208C46EB1A
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:51 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:44:06 +0200
Message-Id: <20201016104444.1492028-24-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 23/61] drm/i915: Move pinning to inside
 engine_wa_list_verify()
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

This should be done as part of the ww loop, in order to remove a
i915_vma_pin that needs ww held.

Now only i915_ggtt_pin() callers remaining.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 24 ++++++++----------
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 25 ++++++++++++++++---
 2 files changed, 32 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index fed9503a7c4e..0f2c09d62322 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2071,7 +2071,6 @@ create_scratch(struct i915_address_space *vm, int count)
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	unsigned int size;
-	int err;
 
 	size = round_up(count * sizeof(u32), PAGE_SIZE);
 	obj = i915_gem_object_create_internal(vm->i915, size);
@@ -2082,20 +2081,11 @@ create_scratch(struct i915_address_space *vm, int count)
 
 	vma = i915_vma_instance(obj, vm, NULL);
 	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
+		i915_gem_object_put(obj);
+		return vma;
 	}
 
-	err = i915_vma_pin(vma, 0, 0,
-			   i915_vma_is_ggtt(vma) ? PIN_GLOBAL : PIN_USER);
-	if (err)
-		goto err_obj;
-
 	return vma;
-
-err_obj:
-	i915_gem_object_put(obj);
-	return ERR_PTR(err);
 }
 
 struct mcr_range {
@@ -2213,10 +2203,15 @@ static int engine_wa_list_verify(struct intel_context *ce,
 	if (err)
 		goto err_pm;
 
+	err = i915_vma_pin_ww(vma, &ww, 0, 0,
+			   i915_vma_is_ggtt(vma) ? PIN_GLOBAL : PIN_USER);
+	if (err)
+		goto err_unpin;
+
 	rq = i915_request_create(ce);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
-		goto err_unpin;
+		goto err_vma;
 	}
 
 	err = i915_request_await_object(rq, vma->obj, true);
@@ -2257,6 +2252,8 @@ static int engine_wa_list_verify(struct intel_context *ce,
 
 err_rq:
 	i915_request_put(rq);
+err_vma:
+	i915_vma_unpin(vma);
 err_unpin:
 	intel_context_unpin(ce);
 err_pm:
@@ -2267,7 +2264,6 @@ static int engine_wa_list_verify(struct intel_context *ce,
 	}
 	i915_gem_ww_ctx_fini(&ww);
 	intel_engine_pm_put(ce->engine);
-	i915_vma_unpin(vma);
 	i915_vma_put(vma);
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 61a0532d0f3d..810ab026a55e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -386,6 +386,25 @@ static struct i915_vma *create_batch(struct i915_address_space *vm)
 	return ERR_PTR(err);
 }
 
+static struct i915_vma *
+create_scratch_pinned(struct i915_address_space *vm, int count)
+{
+	struct i915_vma *vma = create_scratch(vm, count);
+	int err;
+
+	if (IS_ERR(vma))
+		return vma;
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
 static u32 reg_write(u32 old, u32 new, u32 rsvd)
 {
 	if (rsvd == 0x0000ffff) {
@@ -489,7 +508,7 @@ static int check_dirty_whitelist(struct intel_context *ce)
 	int err = 0, i, v;
 	u32 *cs, *results;
 
-	scratch = create_scratch(ce->vm, 2 * ARRAY_SIZE(values) + 1);
+	scratch = create_scratch_pinned(ce->vm, 2 * ARRAY_SIZE(values) + 1);
 	if (IS_ERR(scratch))
 		return PTR_ERR(scratch);
 
@@ -1043,7 +1062,7 @@ static int live_isolated_whitelist(void *arg)
 
 		vm = i915_gem_context_get_vm_rcu(c);
 
-		client[i].scratch[0] = create_scratch(vm, 1024);
+		client[i].scratch[0] = create_scratch_pinned(vm, 1024);
 		if (IS_ERR(client[i].scratch[0])) {
 			err = PTR_ERR(client[i].scratch[0]);
 			i915_vm_put(vm);
@@ -1051,7 +1070,7 @@ static int live_isolated_whitelist(void *arg)
 			goto err;
 		}
 
-		client[i].scratch[1] = create_scratch(vm, 1024);
+		client[i].scratch[1] = create_scratch_pinned(vm, 1024);
 		if (IS_ERR(client[i].scratch[1])) {
 			err = PTR_ERR(client[i].scratch[1]);
 			i915_vma_unpin_and_release(&client[i].scratch[0], 0);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
