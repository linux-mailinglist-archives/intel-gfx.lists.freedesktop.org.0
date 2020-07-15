Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45333220C2E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1116EACF;
	Wed, 15 Jul 2020 11:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28BF6EAD2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826122-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:50:56 +0100
Message-Id: <20200715115147.11866-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/66] drm/i915/gem: Break apart the early
 i915_vma_pin from execbuf object lookup
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

As a prelude to the next step where we want to perform all the object
allocations together under the same lock, we first must delay the
i915_vma_pin() as that implicitly does the allocations for us, one by
one. As it only does the allocations one by one, it is not allowed to
wait/evict, whereas pulling all the allocations together the entire set
can be scheduled as one.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 74 ++++++++++---------
 1 file changed, 41 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 40ee2718007e..28cf28fcf80a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -33,6 +33,8 @@ struct eb_vma {
 
 	/** This vma's place in the execbuf reservation list */
 	struct drm_i915_gem_exec_object2 *exec;
+
+	struct list_head bind_link;
 	struct list_head unbound_link;
 	struct list_head reloc_link;
 
@@ -240,8 +242,8 @@ struct i915_execbuffer {
 	/** actual size of execobj[] as we may extend it for the cmdparser */
 	unsigned int buffer_count;
 
-	/** list of vma not yet bound during reservation phase */
-	struct list_head unbound;
+	/** list of all vma required to be bound for this execbuf */
+	struct list_head bind_list;
 
 	/** list of vma that have execobj.relocation_count */
 	struct list_head relocs;
@@ -565,6 +567,8 @@ eb_add_vma(struct i915_execbuffer *eb,
 						    eb->lut_size)]);
 	}
 
+	list_add_tail(&ev->bind_link, &eb->bind_list);
+
 	if (entry->relocation_count)
 		list_add_tail(&ev->reloc_link, &eb->relocs);
 
@@ -586,16 +590,6 @@ eb_add_vma(struct i915_execbuffer *eb,
 
 		eb->batch = ev;
 	}
-
-	if (eb_pin_vma(eb, entry, ev)) {
-		if (entry->offset != vma->node.start) {
-			entry->offset = vma->node.start | UPDATE;
-			eb->args->flags |= __EXEC_HAS_RELOC;
-		}
-	} else {
-		eb_unreserve_vma(ev);
-		list_add_tail(&ev->unbound_link, &eb->unbound);
-	}
 }
 
 static int eb_reserve_vma(const struct i915_execbuffer *eb,
@@ -670,13 +664,31 @@ static int wait_for_timeline(struct intel_timeline *tl)
 	} while (1);
 }
 
-static int eb_reserve(struct i915_execbuffer *eb)
+static int eb_reserve_vm(struct i915_execbuffer *eb)
 {
-	const unsigned int count = eb->buffer_count;
 	unsigned int pin_flags = PIN_USER | PIN_NONBLOCK;
-	struct list_head last;
+	struct list_head last, unbound;
 	struct eb_vma *ev;
-	unsigned int i, pass;
+	unsigned int pass;
+
+	INIT_LIST_HEAD(&unbound);
+	list_for_each_entry(ev, &eb->bind_list, bind_link) {
+		struct drm_i915_gem_exec_object2 *entry = ev->exec;
+		struct i915_vma *vma = ev->vma;
+
+		if (eb_pin_vma(eb, entry, ev)) {
+			if (entry->offset != vma->node.start) {
+				entry->offset = vma->node.start | UPDATE;
+				eb->args->flags |= __EXEC_HAS_RELOC;
+			}
+		} else {
+			eb_unreserve_vma(ev);
+			list_add_tail(&ev->unbound_link, &unbound);
+		}
+	}
+
+	if (list_empty(&unbound))
+		return 0;
 
 	/*
 	 * Attempt to pin all of the buffers into the GTT.
@@ -714,7 +726,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
 			return -EINTR;
 
-		list_for_each_entry(ev, &eb->unbound, unbound_link) {
+		list_for_each_entry(ev, &unbound, unbound_link) {
 			err = eb_reserve_vma(eb, ev, pin_flags);
 			if (err)
 				break;
@@ -725,13 +737,11 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		}
 
 		/* Resort *all* the objects into priority order */
-		INIT_LIST_HEAD(&eb->unbound);
+		INIT_LIST_HEAD(&unbound);
 		INIT_LIST_HEAD(&last);
-		for (i = 0; i < count; i++) {
-			unsigned int flags;
+		list_for_each_entry(ev, &eb->bind_list, bind_link) {
+			unsigned int flags = ev->flags;
 
-			ev = &eb->vma[i];
-			flags = ev->flags;
 			if (flags & EXEC_OBJECT_PINNED &&
 			    flags & __EXEC_OBJECT_HAS_PIN)
 				continue;
@@ -740,17 +750,17 @@ static int eb_reserve(struct i915_execbuffer *eb)
 
 			if (flags & EXEC_OBJECT_PINNED)
 				/* Pinned must have their slot */
-				list_add(&ev->unbound_link, &eb->unbound);
+				list_add(&ev->unbound_link, &unbound);
 			else if (flags & __EXEC_OBJECT_NEEDS_MAP)
 				/* Map require the lowest 256MiB (aperture) */
-				list_add_tail(&ev->unbound_link, &eb->unbound);
+				list_add_tail(&ev->unbound_link, &unbound);
 			else if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
 				/* Prioritise 4GiB region for restricted bo */
 				list_add(&ev->unbound_link, &last);
 			else
 				list_add_tail(&ev->unbound_link, &last);
 		}
-		list_splice_tail(&last, &eb->unbound);
+		list_splice_tail(&last, &unbound);
 		mutex_unlock(&eb->i915->drm.struct_mutex);
 
 		if (err == -EAGAIN) {
@@ -921,8 +931,8 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	unsigned int i;
 	int err = 0;
 
+	INIT_LIST_HEAD(&eb->bind_list);
 	INIT_LIST_HEAD(&eb->relocs);
-	INIT_LIST_HEAD(&eb->unbound);
 
 	for (i = 0; i < eb->buffer_count; i++) {
 		struct i915_vma *vma;
@@ -1565,16 +1575,10 @@ static int eb_relocate(struct i915_execbuffer *eb)
 {
 	int err;
 
-	err = eb_lookup_vmas(eb);
+	err = eb_reserve_vm(eb);
 	if (err)
 		return err;
 
-	if (!list_empty(&eb->unbound)) {
-		err = eb_reserve(eb);
-		if (err)
-			return err;
-	}
-
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
 		struct eb_vma *ev;
@@ -2550,6 +2554,10 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_context;
 
+	err = eb_lookup_vmas(&eb);
+	if (unlikely(err))
+		goto err_engine;
+
 	/* *** TIMELINE LOCK *** */
 	err = eb_lock_engine(&eb);
 	if (unlikely(err))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
