Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3344523CA75
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4EEE6E566;
	Wed,  5 Aug 2020 12:22:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007AF6E56D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039487-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:22:22 +0100
Message-Id: <20200805122231.23313-29-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/37] drm/i915: Acquire the object lock around
 page directories
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

Now that the page directories are backed by an object, and we wish to
acquire multiple objects together under the same acquire context, teach
i915_vm_map_pt_stash() to use i915_acquire_ctx.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           | 14 +++++++-
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  4 +++
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         | 34 +++++++++++++++++--
 4 files changed, 49 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3ac2542a039..94ec3536cac4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1450,7 +1450,7 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 			return eb_vm_work_cancel(work, err);
 
 		/* We also need to prepare mappings to write the PD pages */
-		err = i915_vm_map_pt_stash(work->vm, &work->stash);
+		err = __i915_vm_map_pt_stash_locked(work->vm, &work->stash);
 		if (err)
 			return eb_vm_work_cancel(work, err);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 1a7efbad8f74..b0629de490a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -19,7 +19,8 @@ struct drm_i915_gem_object *alloc_pt_dma(struct i915_address_space *vm, int sz)
 	return i915_gem_object_create_internal(vm->i915, sz);
 }
 
-int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
+int __map_pt_dma_locked(struct i915_address_space *vm,
+			struct drm_i915_gem_object *obj)
 {
 	void *vaddr;
 
@@ -31,6 +32,17 @@ int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
 	return 0;
 }
 
+int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
+{
+	int err;
+
+	i915_gem_object_lock(obj);
+	err = __map_pt_dma_locked(vm, obj);
+	i915_gem_object_unlock(obj);
+
+	return err;
+}
+
 void __i915_vm_close(struct i915_address_space *vm)
 {
 	struct i915_vma *vma, *vn;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index c659dbd6cda2..b4e1519e4028 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -525,6 +525,8 @@ struct i915_page_directory *alloc_pd(struct i915_address_space *vm);
 struct i915_page_directory *__alloc_pd(int npde);
 
 int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj);
+int __map_pt_dma_locked(struct i915_address_space *vm,
+			struct drm_i915_gem_object *obj);
 
 void free_px(struct i915_address_space *vm,
 	     struct i915_page_table *pt, int lvl);
@@ -573,6 +575,8 @@ int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
 			   u64 size);
 int i915_vm_map_pt_stash(struct i915_address_space *vm,
 			 struct i915_vm_pt_stash *stash);
+int __i915_vm_map_pt_stash_locked(struct i915_address_space *vm,
+				  struct i915_vm_pt_stash *stash);
 void i915_vm_free_pt_stash(struct i915_address_space *vm,
 			   struct i915_vm_pt_stash *stash);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 11e7288464c0..ada894885795 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -5,6 +5,8 @@
 
 #include <linux/slab.h>
 
+#include "mm/i915_acquire_ctx.h"
+
 #include "i915_trace.h"
 #include "intel_gtt.h"
 #include "gen6_ppgtt.h"
@@ -253,15 +255,15 @@ int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
 	return 0;
 }
 
-int i915_vm_map_pt_stash(struct i915_address_space *vm,
-			 struct i915_vm_pt_stash *stash)
+int __i915_vm_map_pt_stash_locked(struct i915_address_space *vm,
+				  struct i915_vm_pt_stash *stash)
 {
 	struct i915_page_table *pt;
 	int n, err;
 
 	for (n = 0; n < ARRAY_SIZE(stash->pt); n++) {
 		for (pt = stash->pt[n]; pt; pt = pt->stash) {
-			err = map_pt_dma(vm, pt->base);
+			err = __map_pt_dma_locked(vm, pt->base);
 			if (err)
 				return err;
 		}
@@ -270,6 +272,32 @@ int i915_vm_map_pt_stash(struct i915_address_space *vm,
 	return 0;
 }
 
+int i915_vm_map_pt_stash(struct i915_address_space *vm,
+			 struct i915_vm_pt_stash *stash)
+{
+	struct i915_acquire_ctx acquire;
+	struct i915_page_table *pt;
+	int n, err;
+
+	/* Acquire all the pages for the page directories simultaneously */
+	i915_acquire_ctx_init(&acquire);
+	for (n = 0; n < ARRAY_SIZE(stash->pt); n++) {
+		for (pt = stash->pt[n]; pt; pt = pt->stash) {
+			err = i915_acquire_ctx_lock(&acquire, pt->base);
+			if (err)
+				goto out;
+		}
+	}
+
+	err = i915_acquire_mm(&acquire);
+	if (err == 0)
+		err = __i915_vm_map_pt_stash_locked(vm, stash);
+
+out:
+	i915_acquire_ctx_fini(&acquire);
+	return err;
+}
+
 void i915_vm_free_pt_stash(struct i915_address_space *vm,
 			   struct i915_vm_pt_stash *stash)
 {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
