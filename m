Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7959F220C3F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C33236EB03;
	Wed, 15 Jul 2020 11:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF9946EAD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826121-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:50:55 +0100
Message-Id: <20200715115147.11866-14-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/66] drm/i915/gem: Rename execbuf.bind_link to
 unbound_link
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

Rename the current list of unbound objects so that we can track of all
objects that we need to bind, as well as the list of currently unbound
[unprocessed] objects.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index af3499aafd22..40ee2718007e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -33,7 +33,7 @@ struct eb_vma {
 
 	/** This vma's place in the execbuf reservation list */
 	struct drm_i915_gem_exec_object2 *exec;
-	struct list_head bind_link;
+	struct list_head unbound_link;
 	struct list_head reloc_link;
 
 	struct hlist_node node;
@@ -594,7 +594,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 		}
 	} else {
 		eb_unreserve_vma(ev);
-		list_add_tail(&ev->bind_link, &eb->unbound);
+		list_add_tail(&ev->unbound_link, &eb->unbound);
 	}
 }
 
@@ -714,7 +714,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
 			return -EINTR;
 
-		list_for_each_entry(ev, &eb->unbound, bind_link) {
+		list_for_each_entry(ev, &eb->unbound, unbound_link) {
 			err = eb_reserve_vma(eb, ev, pin_flags);
 			if (err)
 				break;
@@ -740,15 +740,15 @@ static int eb_reserve(struct i915_execbuffer *eb)
 
 			if (flags & EXEC_OBJECT_PINNED)
 				/* Pinned must have their slot */
-				list_add(&ev->bind_link, &eb->unbound);
+				list_add(&ev->unbound_link, &eb->unbound);
 			else if (flags & __EXEC_OBJECT_NEEDS_MAP)
 				/* Map require the lowest 256MiB (aperture) */
-				list_add_tail(&ev->bind_link, &eb->unbound);
+				list_add_tail(&ev->unbound_link, &eb->unbound);
 			else if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
 				/* Prioritise 4GiB region for restricted bo */
-				list_add(&ev->bind_link, &last);
+				list_add(&ev->unbound_link, &last);
 			else
-				list_add_tail(&ev->bind_link, &last);
+				list_add_tail(&ev->unbound_link, &last);
 		}
 		list_splice_tail(&last, &eb->unbound);
 		mutex_unlock(&eb->i915->drm.struct_mutex);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
