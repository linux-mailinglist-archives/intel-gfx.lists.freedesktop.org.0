Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBCD435F3B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 12:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AAF26EC4F;
	Thu, 21 Oct 2021 10:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 605396EC38;
 Thu, 21 Oct 2021 10:36:12 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Thu, 21 Oct 2021 12:35:54 +0200
Message-Id: <20211021103605.735002-17-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
References: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/28] drm/i915: Ensure gem_contexts selftests
 work with unbind changes.
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

In the next commit, we don't evict when refcount = 0.

igt_vm_isolation() continuously tries to pin/unpin at same address,
but also calls put() on the object, which means the object may not
be unpinned in time.

Instead of this, re-use the same object over and over, so they can
be unbound as required.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_context.c | 54 +++++++++++--------
 1 file changed, 32 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index b32f7fed2d9c..3fc595b57cf4 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1481,10 +1481,10 @@ static int check_scratch(struct i915_address_space *vm, u64 offset)
 
 static int write_to_scratch(struct i915_gem_context *ctx,
 			    struct intel_engine_cs *engine,
+			    struct drm_i915_gem_object *obj,
 			    u64 offset, u32 value)
 {
 	struct drm_i915_private *i915 = ctx->i915;
-	struct drm_i915_gem_object *obj;
 	struct i915_address_space *vm;
 	struct i915_request *rq;
 	struct i915_vma *vma;
@@ -1497,15 +1497,9 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 	if (err)
 		return err;
 
-	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
-	if (IS_ERR(obj))
-		return PTR_ERR(obj);
-
 	cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
-	if (IS_ERR(cmd)) {
-		err = PTR_ERR(cmd);
-		goto out;
-	}
+	if (IS_ERR(cmd))
+		return PTR_ERR(cmd);
 
 	*cmd++ = MI_STORE_DWORD_IMM_GEN4;
 	if (GRAPHICS_VER(i915) >= 8) {
@@ -1569,17 +1563,19 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 	i915_vma_unpin(vma);
 out_vm:
 	i915_vm_put(vm);
-out:
-	i915_gem_object_put(obj);
+
+	if (!err)
+		err = i915_gem_object_wait(obj, 0, MAX_SCHEDULE_TIMEOUT);
+
 	return err;
 }
 
 static int read_from_scratch(struct i915_gem_context *ctx,
 			     struct intel_engine_cs *engine,
+			     struct drm_i915_gem_object *obj,
 			     u64 offset, u32 *value)
 {
 	struct drm_i915_private *i915 = ctx->i915;
-	struct drm_i915_gem_object *obj;
 	struct i915_address_space *vm;
 	const u32 result = 0x100;
 	struct i915_request *rq;
@@ -1594,10 +1590,6 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	if (err)
 		return err;
 
-	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
-	if (IS_ERR(obj))
-		return PTR_ERR(obj);
-
 	if (GRAPHICS_VER(i915) >= 8) {
 		const u32 GPR0 = engine->mmio_base + 0x600;
 
@@ -1615,7 +1607,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 		if (IS_ERR(cmd)) {
 			err = PTR_ERR(cmd);
-			goto out;
+			goto err_unpin;
 		}
 
 		memset(cmd, POISON_INUSE, PAGE_SIZE);
@@ -1651,7 +1643,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 		if (IS_ERR(cmd)) {
 			err = PTR_ERR(cmd);
-			goto out;
+			goto err_unpin;
 		}
 
 		memset(cmd, POISON_INUSE, PAGE_SIZE);
@@ -1722,8 +1714,10 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	i915_vma_unpin(vma);
 out_vm:
 	i915_vm_put(vm);
-out:
-	i915_gem_object_put(obj);
+
+	if (!err)
+		err = i915_gem_object_wait(obj, 0, MAX_SCHEDULE_TIMEOUT);
+
 	return err;
 }
 
@@ -1765,6 +1759,7 @@ static int igt_vm_isolation(void *arg)
 	u64 vm_total;
 	u32 expected;
 	int err;
+	struct drm_i915_gem_object *obj_a, *obj_b;
 
 	if (GRAPHICS_VER(i915) < 7)
 		return 0;
@@ -1810,6 +1805,18 @@ static int igt_vm_isolation(void *arg)
 	vm_total = ctx_a->vm->total;
 	GEM_BUG_ON(ctx_b->vm->total != vm_total);
 
+	obj_a = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	if (IS_ERR(obj_a)) {
+		err = PTR_ERR(obj_a);
+		goto out_file;
+	}
+
+	obj_b = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	if (IS_ERR(obj_b)) {
+		err = PTR_ERR(obj_b);
+		goto put_a;
+	}
+
 	count = 0;
 	num_engines = 0;
 	for_each_uabi_engine(engine, i915) {
@@ -1832,10 +1839,10 @@ static int igt_vm_isolation(void *arg)
 						   I915_GTT_PAGE_SIZE, vm_total,
 						   sizeof(u32), alignof_dword);
 
-			err = write_to_scratch(ctx_a, engine,
+			err = write_to_scratch(ctx_a, engine, obj_a,
 					       offset, 0xdeadbeef);
 			if (err == 0)
-				err = read_from_scratch(ctx_b, engine,
+				err = read_from_scratch(ctx_b, engine, obj_b,
 							offset, &value);
 			if (err)
 				goto out_file;
@@ -1858,6 +1865,9 @@ static int igt_vm_isolation(void *arg)
 	pr_info("Checked %lu scratch offsets across %lu engines\n",
 		count, num_engines);
 
+	i915_gem_object_put(obj_b);
+put_a:
+	i915_gem_object_put(obj_a);
 out_file:
 	if (igt_live_test_end(&t))
 		err = -EIO;
-- 
2.33.0

