Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 592E511F42A
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 22:12:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D626E08E;
	Sat, 14 Dec 2019 21:12:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9401B6E08E
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Dec 2019 21:12:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19580839-1500050 
 for multiple; Sat, 14 Dec 2019 21:12:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Dec 2019 21:12:41 +0000
Message-Id: <20191214211241.2243420-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Unpin vma->obj on early error
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

If we inherit an error along the fence chain, we skip the main work
callback and go straight to the error. In the case of the vma bind
worker, we only dropped the pinned pages from the worker.

In the process, make sure we call the release earlier rather than wait
until the final reference to the fence is dropped (as a reference is
kept while being listened upon).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c | 12 +++++-------
 drivers/gpu/drm/i915/i915_sw_fence_work.c   |  5 ++---
 drivers/gpu/drm/i915/i915_vma.c             | 17 +++++++++++++----
 3 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index b9f504ba3b32..29baa4698b25 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -26,27 +26,24 @@ static void __do_clflush(struct drm_i915_gem_object *obj)
 static int clflush_work(struct dma_fence_work *base)
 {
 	struct clflush *clflush = container_of(base, typeof(*clflush), base);
-	struct drm_i915_gem_object *obj = fetch_and_zero(&clflush->obj);
+	struct drm_i915_gem_object *obj = clflush->obj;
 	int err;
 
 	err = i915_gem_object_pin_pages(obj);
 	if (err)
-		goto put;
+		return err;
 
 	__do_clflush(obj);
 	i915_gem_object_unpin_pages(obj);
 
-put:
-	i915_gem_object_put(obj);
-	return err;
+	return 0;
 }
 
 static void clflush_release(struct dma_fence_work *base)
 {
 	struct clflush *clflush = container_of(base, typeof(*clflush), base);
 
-	if (clflush->obj)
-		i915_gem_object_put(clflush->obj);
+	i915_gem_object_put(clflush->obj);
 }
 
 static const struct dma_fence_work_ops clflush_ops = {
@@ -116,6 +113,7 @@ bool i915_gem_clflush_object(struct drm_i915_gem_object *obj,
 		dma_fence_work_commit(&clflush->base);
 	} else if (obj->mm.pages) {
 		__do_clflush(obj);
+		i915_gem_object_put(obj);
 	} else {
 		GEM_BUG_ON(obj->write_domain != I915_GEM_DOMAIN_CPU);
 	}
diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
index 8538ee7a521d..0c27f316ba83 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
@@ -37,6 +37,8 @@ fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 		break;
 
 	case FENCE_FREE:
+		if (f->ops->release)
+			f->ops->release(f);
 		dma_fence_put(&f->dma);
 		break;
 	}
@@ -60,9 +62,6 @@ static void fence_release(struct dma_fence *fence)
 {
 	struct dma_fence_work *f = container_of(fence, typeof(*f), dma);
 
-	if (f->ops->release)
-		f->ops->release(f);
-
 	i915_sw_fence_fini(&f->chain);
 
 	BUILD_BUG_ON(offsetof(typeof(*f), dma));
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 6794c742fbbf..878975b37a45 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -292,6 +292,7 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
 struct i915_vma_work {
 	struct dma_fence_work base;
 	struct i915_vma *vma;
+	struct drm_i915_gem_object *pin;
 	enum i915_cache_level cache_level;
 	unsigned int flags;
 };
@@ -306,15 +307,21 @@ static int __vma_bind(struct dma_fence_work *work)
 	if (err)
 		atomic_or(I915_VMA_ERROR, &vma->flags);
 
-	if (vma->obj)
-		__i915_gem_object_unpin_pages(vma->obj);
-
 	return err;
 }
 
+static void __vma_release(struct dma_fence_work *work)
+{
+	struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
+
+	if (vw->pin)
+		__i915_gem_object_unpin_pages(vw->pin);
+}
+
 static const struct dma_fence_work_ops bind_ops = {
 	.name = "bind",
 	.work = __vma_bind,
+	.release = __vma_release,
 };
 
 struct i915_vma_work *i915_vma_work(void)
@@ -395,8 +402,10 @@ int i915_vma_bind(struct i915_vma *vma,
 		i915_active_set_exclusive(&vma->active, &work->base.dma);
 		work->base.dma.error = 0; /* enable the queue_work() */
 
-		if (vma->obj)
+		if (vma->obj) {
 			__i915_gem_object_pin_pages(vma->obj);
+			work->pin = vma->obj;
+		}
 	} else {
 		GEM_BUG_ON((bind_flags & ~vma_flags) & vma->vm->bind_async_flags);
 		ret = vma->ops->bind_vma(vma, cache_level, bind_flags);
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
