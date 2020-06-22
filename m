Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D56E20341E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 11:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7FE6E247;
	Mon, 22 Jun 2020 09:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ECC06E21F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 09:59:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21574665-1500050 
 for multiple; Mon, 22 Jun 2020 10:59:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 10:59:20 +0100
Message-Id: <20200622095921.15530-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200622095921.15530-1-chris@chris-wilson.co.uk>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/gem: Break apart the early
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
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 43 +++++++++++--------
 1 file changed, 25 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 60926209b1fc..46fcbdf8161c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -664,16 +664,6 @@ eb_add_vma(struct i915_execbuffer *eb,
 						    eb->lut_size)]);
 	}
 
-	if (eb_pin_vma(eb, entry, ev)) {
-		if (entry->offset != vma->node.start) {
-			entry->offset = vma->node.start | UPDATE;
-			eb->args->flags |= __EXEC_HAS_RELOC;
-		}
-	} else {
-		eb_unreserve_vma(ev);
-		list_add_tail(&ev->bind_link, &eb->unbound);
-	}
-
 	list_add_tail(&ev->lock_link, &eb->lock);
 }
 
@@ -1339,18 +1329,37 @@ static int eb_prepare_vma(struct eb_vma *ev)
 	return 0;
 }
 
-static int eb_reserve(struct i915_execbuffer *eb)
+static int eb_reserve_vm(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
 	struct i915_address_space *vm = eb->context->vm;
-	struct list_head last;
 	unsigned int i, pass;
-	struct eb_vma *ev;
 	int err = 0;
 
+	for (i = 0; i < count; i++) {
+		struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
+		struct eb_vma *ev = &eb->vma[i];
+
+		if (eb_pin_vma(eb, entry, ev)) {
+			struct i915_vma *vma = ev->vma;
+
+			if (entry->offset != vma->node.start) {
+				entry->offset = vma->node.start | UPDATE;
+				eb->args->flags |= __EXEC_HAS_RELOC;
+			}
+		} else {
+			eb_unreserve_vma(ev);
+			list_add_tail(&ev->bind_link, &eb->unbound);
+		}
+	}
+	if (list_empty(&eb->unbound))
+		return 0;
+
 	pass = 0;
 	do {
 		struct eb_vm_work *work;
+		struct list_head last;
+		struct eb_vma *ev;
 
 		list_for_each_entry(ev, &eb->unbound, bind_link) {
 			err = eb_prepare_vma(ev);
@@ -2404,11 +2413,9 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
-	if (!list_empty(&eb->unbound)) {
-		err = eb_reserve(eb);
-		if (err)
-			return err;
-	}
+	err = eb_reserve_vm(eb);
+	if (err)
+		return err;
 
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
