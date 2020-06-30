Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CFA20F38D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 13:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771496E0D1;
	Tue, 30 Jun 2020 11:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1DE26E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 11:29:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21661833-1500050 
 for multiple; Tue, 30 Jun 2020 12:28:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 12:28:54 +0100
Message-Id: <20200630112854.30361-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Always do pin_user_pages under
 the mmu-notifier
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

If the user replaces their vma as we are looking up their pages in the
pin_user_pages fast path, we miss the revocation as the mmu-notifier is
not yet installed. We end up with a bunch of stale pages mixed in with
the fresh. However, the slow path is always run in the worker after
first attaching to the notifier, and so will not miss a revocation as
the pages are being looked up. Since this is safer, despite it hitting
range-invalidate caused by the pin_user_pages themselves, always take
the slow path.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 114 ++++----------------
 1 file changed, 21 insertions(+), 93 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index e946032b13e4..9d4e69825987 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -512,58 +512,13 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 	kfree(work);
 }
 
-static struct sg_table *
-__i915_gem_userptr_get_pages_schedule(struct drm_i915_gem_object *obj)
-{
-	struct get_pages_work *work;
-
-	/* Spawn a worker so that we can acquire the
-	 * user pages without holding our mutex. Access
-	 * to the user pages requires mmap_lock, and we have
-	 * a strict lock ordering of mmap_lock, struct_mutex -
-	 * we already hold struct_mutex here and so cannot
-	 * call gup without encountering a lock inversion.
-	 *
-	 * Userspace will keep on repeating the operation
-	 * (thanks to EAGAIN) until either we hit the fast
-	 * path or the worker completes. If the worker is
-	 * cancelled or superseded, the task is still run
-	 * but the results ignored. (This leads to
-	 * complications that we may have a stray object
-	 * refcount that we need to be wary of when
-	 * checking for existing objects during creation.)
-	 * If the worker encounters an error, it reports
-	 * that error back to this function through
-	 * obj->userptr.work = ERR_PTR.
-	 */
-	work = kmalloc(sizeof(*work), GFP_KERNEL);
-	if (work == NULL)
-		return ERR_PTR(-ENOMEM);
-
-	obj->userptr.work = &work->work;
-
-	work->obj = i915_gem_object_get(obj);
-
-	work->task = current;
-	get_task_struct(work->task);
-
-	INIT_WORK(&work->work, __i915_gem_userptr_get_pages_worker);
-	queue_work(to_i915(obj->base.dev)->mm.userptr_wq, &work->work);
-
-	return ERR_PTR(-EAGAIN);
-}
-
 static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 {
-	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
-	struct mm_struct *mm = obj->userptr.mm->mm;
-	struct page **pvec;
-	struct sg_table *pages;
-	bool active;
-	int pinned;
-	unsigned int gup_flags = 0;
+	struct get_pages_work *work;
+	struct work_struct *prev;
 
-	/* If userspace should engineer that these pages are replaced in
+	/*
+	 * If userspace should engineer that these pages are replaced in
 	 * the vma between us binding this page into the GTT and completion
 	 * of rendering... Their loss. If they change the mapping of their
 	 * pages they need to create a new bo to point to the new vma.
@@ -580,59 +535,32 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 	 * egregious cases from causing harm.
 	 */
 
-	if (obj->userptr.work) {
+	prev = READ_ONCE(obj->userptr.work);
+	if (prev) {
 		/* active flag should still be held for the pending work */
-		if (IS_ERR(obj->userptr.work))
-			return PTR_ERR(obj->userptr.work);
+		if (IS_ERR(prev))
+			return PTR_ERR(prev);
 		else
 			return -EAGAIN;
 	}
 
-	pvec = NULL;
-	pinned = 0;
+	work = kmalloc(sizeof(*work), GFP_KERNEL);
+	if (work == NULL)
+		return -ENOMEM;
 
-	if (mm == current->mm) {
-		pvec = kvmalloc_array(num_pages, sizeof(struct page *),
-				      GFP_KERNEL |
-				      __GFP_NORETRY |
-				      __GFP_NOWARN);
-		/*
-		 * Using __get_user_pages_fast() with a read-only
-		 * access is questionable. A read-only page may be
-		 * COW-broken, and then this might end up giving
-		 * the wrong side of the COW..
-		 *
-		 * We may or may not care.
-		 */
-		if (pvec) {
-			/* defer to worker if malloc fails */
-			if (!i915_gem_object_is_readonly(obj))
-				gup_flags |= FOLL_WRITE;
-			pinned = pin_user_pages_fast_only(obj->userptr.ptr,
-							  num_pages, gup_flags,
-							  pvec);
-		}
-	}
+	/* Attach our mmu-notifier first to catch revocations as we work */
+	__i915_gem_userptr_set_active(obj, true);
 
-	active = false;
-	if (pinned < 0) {
-		pages = ERR_PTR(pinned);
-		pinned = 0;
-	} else if (pinned < num_pages) {
-		pages = __i915_gem_userptr_get_pages_schedule(obj);
-		active = pages == ERR_PTR(-EAGAIN);
-	} else {
-		pages = __i915_gem_userptr_alloc_pages(obj, pvec, num_pages);
-		active = !IS_ERR(pages);
-	}
-	if (active)
-		__i915_gem_userptr_set_active(obj, true);
+	obj->userptr.work = &work->work;
+	work->obj = i915_gem_object_get(obj);
 
-	if (IS_ERR(pages))
-		unpin_user_pages(pvec, pinned);
-	kvfree(pvec);
+	work->task = current;
+	get_task_struct(work->task);
 
-	return PTR_ERR_OR_ZERO(pages);
+	INIT_WORK(&work->work, __i915_gem_userptr_get_pages_worker);
+	queue_work(to_i915(obj->base.dev)->mm.userptr_wq, &work->work);
+
+	return 0;
 }
 
 static void
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
