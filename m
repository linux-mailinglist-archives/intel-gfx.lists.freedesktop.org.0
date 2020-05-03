Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5F81C2F0D
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 22:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712F06E15E;
	Sun,  3 May 2020 20:10:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 945736E0BC
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 20:10:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21100964-1500050 
 for multiple; Sun, 03 May 2020 21:09:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  3 May 2020 21:09:50 +0100
Message-Id: <20200503200952.10671-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Remove trace_i915_gem_object_fault
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

The tracepoint is only covering one of the possible fault handlers;
clearly no longer of interest.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |  2 --
 drivers/gpu/drm/i915/i915_trace.h        | 25 ------------------------
 2 files changed, 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 70f5f82da288..97a58b592c37 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -296,8 +296,6 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	/* We don't use vmf->pgoff since that has the fake offset */
 	page_offset = (vmf->address - area->vm_start) >> PAGE_SHIFT;
 
-	trace_i915_gem_object_fault(obj, page_offset, true, write);
-
 	ret = i915_gem_object_pin_pages(obj);
 	if (ret)
 		goto err;
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index bc854ad60954..af4d1c74b54c 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -601,31 +601,6 @@ TRACE_EVENT(i915_gem_object_pread,
 		      __entry->obj, __entry->offset, __entry->len)
 );
 
-TRACE_EVENT(i915_gem_object_fault,
-	    TP_PROTO(struct drm_i915_gem_object *obj, u64 index, bool gtt, bool write),
-	    TP_ARGS(obj, index, gtt, write),
-
-	    TP_STRUCT__entry(
-			     __field(struct drm_i915_gem_object *, obj)
-			     __field(u64, index)
-			     __field(bool, gtt)
-			     __field(bool, write)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->obj = obj;
-			   __entry->index = index;
-			   __entry->gtt = gtt;
-			   __entry->write = write;
-			   ),
-
-	    TP_printk("obj=%p, %s index=%llu %s",
-		      __entry->obj,
-		      __entry->gtt ? "GTT" : "CPU",
-		      __entry->index,
-		      __entry->write ? ", writable" : "")
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
