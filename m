Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ABD20F373
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 13:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D623A6E0AB;
	Tue, 30 Jun 2020 11:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F636E0AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 11:14:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21661655-1500050 
 for multiple; Tue, 30 Jun 2020 12:14:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 12:14:21 +0100
Message-Id: <20200630111421.12301-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Delay attach mmu-notifier until
 we acquire the pinned userptr
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

On the fast path, we first try to pin the user pages and then attach the
mmu-notifier. On the slow path, we did it the opposite way around,
carrying the mmu-notifier over from the tail of the fast path. However,
if we are mapping a fresh batch of user pages, we will always hit a pmd
split operation (to replace the zero pages with real pages), triggering
a invalidate-range callback for this userptr, and so we have to cancel
the work [after completing the pinning] and cause the caller to retry
(an extra EAGAIN return from an ioctl for some paths). If we follow the
fast path and attach the callback after completion, we only see the
invalidate-range for revocations of our pages.

The risk (the same as for the fast path) is that if the mmu-notifier
should have been run during the page lookup, we will have missed it and
the pages will be mixed. One might conclude that the fast path is wrong,
and we should always attach the mmu-notifier first and bear the cost of
redundant repetition.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index e946032b13e4..c74c357cd180 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -479,6 +479,7 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 
 				pinned += ret;
 			}
+			__i915_gem_userptr_set_active(obj, true);
 			if (locked)
 				mmap_read_unlock(mm);
 			mmput(mm);
@@ -559,7 +560,6 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 	struct mm_struct *mm = obj->userptr.mm->mm;
 	struct page **pvec;
 	struct sg_table *pages;
-	bool active;
 	int pinned;
 	unsigned int gup_flags = 0;
 
@@ -614,19 +614,16 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 		}
 	}
 
-	active = false;
 	if (pinned < 0) {
 		pages = ERR_PTR(pinned);
 		pinned = 0;
 	} else if (pinned < num_pages) {
 		pages = __i915_gem_userptr_get_pages_schedule(obj);
-		active = pages == ERR_PTR(-EAGAIN);
 	} else {
 		pages = __i915_gem_userptr_alloc_pages(obj, pvec, num_pages);
-		active = !IS_ERR(pages);
+		if (!IS_ERR(pages))
+			__i915_gem_userptr_set_active(obj, true);
 	}
-	if (active)
-		__i915_gem_userptr_set_active(obj, true);
 
 	if (IS_ERR(pages))
 		unpin_user_pages(pvec, pinned);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
