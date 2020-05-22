Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5E71DEE71
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 19:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 965006EA11;
	Fri, 22 May 2020 17:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8166EA11
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 17:42:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21264153-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 18:42:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 May 2020 18:42:09 +0100
Message-Id: <20200522174209.8885-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522174209.8885-1-chris@chris-wilson.co.uk>
References: <20200522174209.8885-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915: convert get_user_pages() -->
 pin_user_pages()
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

From: John Hubbard <jhubbard@nvidia.com>

This code was using get_user_pages*(), in a "Case 2" scenario
(DMA/RDMA), using the categorization from [1]. That means that it's
time to convert the get_user_pages*() + put_page() calls to
pin_user_pages*() + unpin_user_pages() calls.

There is some helpful background in [2]: basically, this is a small
part of fixing a long-standing disconnect between pinning pages, and
file systems' use of those pages.

[1] Documentation/core-api/pin_user_pages.rst

[2] "Explicit pinning of user-space pages":
    https://lwn.net/Articles/807108/

Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 22 ++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 8b0708708671..4d3c0c2fdbb0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -471,7 +471,7 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 					down_read(&mm->mmap_sem);
 					locked = 1;
 				}
-				ret = get_user_pages_remote
+				ret = pin_user_pages_remote
 					(work->task, mm,
 					 obj->userptr.ptr + pinned * PAGE_SIZE,
 					 npages - pinned,
@@ -507,7 +507,7 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 	}
 	mutex_unlock(&obj->mm.lock);
 
-	release_pages(pvec, pinned);
+	unpin_user_pages(pvec, pinned);
 	kvfree(pvec);
 
 	i915_gem_object_put(obj);
@@ -564,6 +564,7 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 	struct sg_table *pages;
 	bool active;
 	int pinned;
+	unsigned int gup_flags = 0;
 
 	/* If userspace should engineer that these pages are replaced in
 	 * the vma between us binding this page into the GTT and completion
@@ -598,11 +599,14 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 				      GFP_KERNEL |
 				      __GFP_NORETRY |
 				      __GFP_NOWARN);
-		if (pvec) /* defer to worker if malloc fails */
-			pinned = __get_user_pages_fast(obj->userptr.ptr,
-						       num_pages,
-						       !i915_gem_object_is_readonly(obj),
-						       pvec);
+		/* defer to worker if malloc fails */
+		if (pvec) {
+			if (!i915_gem_object_is_readonly(obj))
+				gup_flags |= FOLL_WRITE;
+			pinned = pin_user_pages_fast_only(obj->userptr.ptr,
+							  num_pages, gup_flags,
+							  pvec);
+		}
 	}
 
 	active = false;
@@ -620,7 +624,7 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 		__i915_gem_userptr_set_active(obj, true);
 
 	if (IS_ERR(pages))
-		release_pages(pvec, pinned);
+		unpin_user_pages(pvec, pinned);
 	kvfree(pvec);
 
 	return PTR_ERR_OR_ZERO(pages);
@@ -675,7 +679,7 @@ i915_gem_userptr_put_pages(struct drm_i915_gem_object *obj,
 		}
 
 		mark_page_accessed(page);
-		put_page(page);
+		unpin_user_page(page);
 	}
 	obj->mm.dirty = false;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
