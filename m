Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A60AF1C2F0B
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 22:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A64556E0C2;
	Sun,  3 May 2020 20:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C7DE6E0C2
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 20:10:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21100965-1500050 
 for multiple; Sun, 03 May 2020 21:09:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  3 May 2020 21:09:51 +0100
Message-Id: <20200503200952.10671-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200503200952.10671-1-chris@chris-wilson.co.uk>
References: <20200503200952.10671-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Remove eviction tracepoints
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

The eviction tracepoints are an odd mismash in the middle of the
bind/unbind sequence. I added them primarily to try and tell why a spate
of unbinds occurred, but in reality they were just noise and not
information or instrumental in refining code.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_gem_evict.c |  4 --
 drivers/gpu/drm/i915/i915_trace.h     | 70 ---------------------------
 2 files changed, 74 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 0ba7b1e881c0..b9433b013ad4 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -100,7 +100,6 @@ i915_gem_evict_something(struct i915_address_space *vm,
 	int ret;
 
 	lockdep_assert_held(&vm->mutex);
-	trace_i915_gem_evict(vm, min_size, alignment, flags);
 
 	/*
 	 * The goal is to evict objects and amalgamate space in rough LRU order.
@@ -265,8 +264,6 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 	GEM_BUG_ON(!IS_ALIGNED(start, I915_GTT_PAGE_SIZE));
 	GEM_BUG_ON(!IS_ALIGNED(end, I915_GTT_PAGE_SIZE));
 
-	trace_i915_gem_evict_node(vm, target, flags);
-
 	/*
 	 * Retire before we search the active list. Although we have
 	 * reasonable accuracy in our retirement lists, we may have
@@ -362,7 +359,6 @@ int i915_gem_evict_vm(struct i915_address_space *vm)
 	int ret = 0;
 
 	lockdep_assert_held(&vm->mutex);
-	trace_i915_gem_evict_vm(vm);
 
 	/* Switch back to the default context in order to unpin
 	 * the existing context objects. However, such objects only
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index af4d1c74b54c..ef8767b880d6 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -626,76 +626,6 @@ DEFINE_EVENT(i915_gem_object, i915_gem_object_destroy,
 	    TP_ARGS(obj)
 );
 
-TRACE_EVENT(i915_gem_evict,
-	    TP_PROTO(struct i915_address_space *vm, u64 size, u64 align, unsigned int flags),
-	    TP_ARGS(vm, size, align, flags),
-
-	    TP_STRUCT__entry(
-			     __field(u32, dev)
-			     __field(struct i915_address_space *, vm)
-			     __field(u64, size)
-			     __field(u64, align)
-			     __field(unsigned int, flags)
-			    ),
-
-	    TP_fast_assign(
-			   __entry->dev = vm->i915->drm.primary->index;
-			   __entry->vm = vm;
-			   __entry->size = size;
-			   __entry->align = align;
-			   __entry->flags = flags;
-			  ),
-
-	    TP_printk("dev=%d, vm=%p, size=0x%llx, align=0x%llx %s",
-		      __entry->dev, __entry->vm, __entry->size, __entry->align,
-		      __entry->flags & PIN_MAPPABLE ? ", mappable" : "")
-);
-
-TRACE_EVENT(i915_gem_evict_node,
-	    TP_PROTO(struct i915_address_space *vm, struct drm_mm_node *node, unsigned int flags),
-	    TP_ARGS(vm, node, flags),
-
-	    TP_STRUCT__entry(
-			     __field(u32, dev)
-			     __field(struct i915_address_space *, vm)
-			     __field(u64, start)
-			     __field(u64, size)
-			     __field(unsigned long, color)
-			     __field(unsigned int, flags)
-			    ),
-
-	    TP_fast_assign(
-			   __entry->dev = vm->i915->drm.primary->index;
-			   __entry->vm = vm;
-			   __entry->start = node->start;
-			   __entry->size = node->size;
-			   __entry->color = node->color;
-			   __entry->flags = flags;
-			  ),
-
-	    TP_printk("dev=%d, vm=%p, start=0x%llx size=0x%llx, color=0x%lx, flags=%x",
-		      __entry->dev, __entry->vm,
-		      __entry->start, __entry->size,
-		      __entry->color, __entry->flags)
-);
-
-TRACE_EVENT(i915_gem_evict_vm,
-	    TP_PROTO(struct i915_address_space *vm),
-	    TP_ARGS(vm),
-
-	    TP_STRUCT__entry(
-			     __field(u32, dev)
-			     __field(struct i915_address_space *, vm)
-			    ),
-
-	    TP_fast_assign(
-			   __entry->dev = vm->i915->drm.primary->index;
-			   __entry->vm = vm;
-			  ),
-
-	    TP_printk("dev=%d, vm=%p", __entry->dev, __entry->vm)
-);
-
 TRACE_EVENT(i915_request_queue,
 	    TP_PROTO(struct i915_request *rq, u32 flags),
 	    TP_ARGS(rq, flags),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
