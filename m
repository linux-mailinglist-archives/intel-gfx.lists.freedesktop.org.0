Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB25E1C2F0C
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 22:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1926E0BC;
	Sun,  3 May 2020 20:10:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ABB46E0BC
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 20:10:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21100966-1500050 
 for multiple; Sun, 03 May 2020 21:09:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  3 May 2020 21:09:52 +0100
Message-Id: <20200503200952.10671-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200503200952.10671-1-chris@chris-wilson.co.uk>
References: <20200503200952.10671-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Drop pread/pwrite tracepoints
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

These pair provide no insight into the driver, are extremely rare in
userspace and only capture the same information as can be gathered from
looking at the syscalls [ioctl].

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_gem.c   |  4 ----
 drivers/gpu/drm/i915/i915_trace.h | 40 -------------------------------
 2 files changed, 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 0cbcb9f54e7d..a8e1969df562 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -517,8 +517,6 @@ i915_gem_pread_ioctl(struct drm_device *dev, void *data,
 		goto out;
 	}
 
-	trace_i915_gem_object_pread(obj, args->offset, args->size);
-
 	ret = i915_gem_object_wait(obj,
 				   I915_WAIT_INTERRUPTIBLE,
 				   MAX_SCHEDULE_TIMEOUT);
@@ -813,8 +811,6 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 		goto err;
 	}
 
-	trace_i915_gem_object_pwrite(obj, args->offset, args->size);
-
 	ret = -ENODEV;
 	if (obj->ops->pwrite)
 		ret = obj->ops->pwrite(obj, args);
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index ef8767b880d6..dcc26131c69c 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -561,46 +561,6 @@ TRACE_EVENT(i915_vma_unbind,
 		      __entry->obj, __entry->offset, __entry->size, __entry->vm)
 );
 
-TRACE_EVENT(i915_gem_object_pwrite,
-	    TP_PROTO(struct drm_i915_gem_object *obj, u64 offset, u64 len),
-	    TP_ARGS(obj, offset, len),
-
-	    TP_STRUCT__entry(
-			     __field(struct drm_i915_gem_object *, obj)
-			     __field(u64, offset)
-			     __field(u64, len)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->obj = obj;
-			   __entry->offset = offset;
-			   __entry->len = len;
-			   ),
-
-	    TP_printk("obj=%p, offset=0x%llx, len=0x%llx",
-		      __entry->obj, __entry->offset, __entry->len)
-);
-
-TRACE_EVENT(i915_gem_object_pread,
-	    TP_PROTO(struct drm_i915_gem_object *obj, u64 offset, u64 len),
-	    TP_ARGS(obj, offset, len),
-
-	    TP_STRUCT__entry(
-			     __field(struct drm_i915_gem_object *, obj)
-			     __field(u64, offset)
-			     __field(u64, len)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->obj = obj;
-			   __entry->offset = offset;
-			   __entry->len = len;
-			   ),
-
-	    TP_printk("obj=%p, offset=0x%llx, len=0x%llx",
-		      __entry->obj, __entry->offset, __entry->len)
-);
-
 DECLARE_EVENT_CLASS(i915_gem_object,
 	    TP_PROTO(struct drm_i915_gem_object *obj),
 	    TP_ARGS(obj),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
