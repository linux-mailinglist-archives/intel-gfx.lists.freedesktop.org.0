Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF238175670
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 09:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1EA56E19A;
	Mon,  2 Mar 2020 08:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610896E155
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 08:58:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20409410-1500050 
 for multiple; Mon, 02 Mar 2020 08:58:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 08:57:54 +0000
Message-Id: <20200302085812.4172450-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/22] drm/i915: Drop inspection of execbuf
 flags during evict
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

With the goal of removing the serialisation from around execbuf, we will
no longer have the privilege of there being a single execbuf in flight
at any time and so will only be able to inspect the user's flags within
the carefully controlled execbuf context. i915_gem_evict_for_node() is
the only user outside of execbuf that currently peeks at the flag to
convert an overlapping softpinned request from ENOSPC to EINVAL. Retract
this nicety and only report ENOSPC if the location is in current use,
either due to this execbuf or another.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 16 ++++++++--------
 drivers/gpu/drm/i915/i915_gem_evict.c          | 15 ++++++---------
 2 files changed, 14 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b2a3653b9d5d..2cc236c28333 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -562,14 +562,13 @@ static inline int use_cpu_reloc(const struct reloc_cache *cache,
 }
 
 static int eb_reserve_vma(const struct i915_execbuffer *eb,
-			  struct i915_vma *vma)
+			  struct i915_vma *vma,
+			  u64 pin_flags)
 {
 	struct drm_i915_gem_exec_object2 *entry = exec_entry(eb, vma);
 	unsigned int exec_flags = *vma->exec_flags;
-	u64 pin_flags;
 	int err;
 
-	pin_flags = PIN_USER | PIN_NONBLOCK;
 	if (exec_flags & EXEC_OBJECT_NEEDS_GTT)
 		pin_flags |= PIN_GLOBAL;
 
@@ -583,12 +582,10 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
 	if (exec_flags & __EXEC_OBJECT_NEEDS_MAP)
 		pin_flags |= PIN_MAPPABLE;
 
-	if (exec_flags & EXEC_OBJECT_PINNED) {
+	if (exec_flags & EXEC_OBJECT_PINNED)
 		pin_flags |= entry->offset | PIN_OFFSET_FIXED;
-		pin_flags &= ~PIN_NONBLOCK; /* force overlapping checks */
-	} else if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS) {
+	else if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS)
 		pin_flags |= BATCH_OFFSET_BIAS | PIN_OFFSET_BIAS;
-	}
 
 	err = i915_vma_pin(vma,
 			   entry->pad_to_size, entry->alignment,
@@ -621,6 +618,7 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
 static int eb_reserve(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
+	unsigned int pin_flags = PIN_USER | PIN_NONBLOCK;
 	struct list_head last;
 	struct i915_vma *vma;
 	unsigned int i, pass;
@@ -644,7 +642,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 	err = 0;
 	do {
 		list_for_each_entry(vma, &eb->unbound, exec_link) {
-			err = eb_reserve_vma(eb, vma);
+			err = eb_reserve_vma(eb, vma, pin_flags);
 			if (err)
 				break;
 		}
@@ -694,6 +692,8 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		default:
 			return -ENOSPC;
 		}
+
+		pin_flags = PIN_USER;
 	} while (1);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 1f53cac7271b..4518b9b35c3d 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -290,7 +290,8 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 		GEM_BUG_ON(!drm_mm_node_allocated(node));
 		vma = container_of(node, typeof(*vma), node);
 
-		/* If we are using coloring to insert guard pages between
+		/*
+		 * If we are using coloring to insert guard pages between
 		 * different cache domains within the address space, we have
 		 * to check whether the objects on either side of our range
 		 * abutt and conflict. If they are in conflict, then we evict
@@ -307,22 +308,18 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 			}
 		}
 
-		if (flags & PIN_NONBLOCK &&
-		    (i915_vma_is_pinned(vma) || i915_vma_is_active(vma))) {
+		if (i915_vma_is_pinned(vma)) {
 			ret = -ENOSPC;
 			break;
 		}
 
-		/* Overlap of objects in the same batch? */
-		if (i915_vma_is_pinned(vma)) {
+		if (flags & PIN_NONBLOCK && i915_vma_is_active(vma)) {
 			ret = -ENOSPC;
-			if (vma->exec_flags &&
-			    *vma->exec_flags & EXEC_OBJECT_PINNED)
-				ret = -EINVAL;
 			break;
 		}
 
-		/* Never show fear in the face of dragons!
+		/*
+		 * Never show fear in the face of dragons!
 		 *
 		 * We cannot directly remove this node from within this
 		 * iterator and as with i915_gem_evict_something() we employ
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
