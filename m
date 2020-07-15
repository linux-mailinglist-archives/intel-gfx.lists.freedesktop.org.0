Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFBE220C36
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CC46EB0B;
	Wed, 15 Jul 2020 11:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4903A6EACC
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826174-1500050 
 for multiple; Wed, 15 Jul 2020 12:52:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:47 +0100
Message-Id: <20200715115147.11866-66-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 66/66] drm/i915/gem: Remove timeline nesting
 from snb relocs
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

As snb is the only one to require an alternative engine for performing
relocations, we know that we can reuse a common timeline between
engines.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 22 +++++--------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d9f1403ddfa4..28f5c28a9449 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1965,16 +1965,9 @@ nested_request_create(struct intel_context *ce, struct i915_execbuffer *eb)
 {
 	struct i915_request *rq;
 
-	/* XXX This only works once; replace with shared timeline */
-	if (ce->timeline != eb->context->timeline)
-		mutex_lock_nested(&ce->timeline->mutex, SINGLE_DEPTH_NESTING);
 	intel_context_enter(ce);
-
 	rq = __i915_request_create(ce, GFP_KERNEL);
-
 	intel_context_exit(ce);
-	if (IS_ERR(rq) && ce->timeline != eb->context->timeline)
-		mutex_unlock(&ce->timeline->mutex);
 
 	return rq;
 }
@@ -2021,9 +2014,6 @@ reloc_gpu_flush(struct i915_execbuffer *eb, struct i915_request *rq, int err)
 	intel_gt_chipset_flush(rq->engine->gt);
 	__i915_request_add(rq, &eb->gem_context->sched);
 
-	if (i915_request_timeline(rq) != eb->context->timeline)
-		mutex_unlock(&i915_request_timeline(rq)->mutex);
-
 	return err;
 }
 
@@ -2426,10 +2416,7 @@ static struct i915_request *reloc_gpu_alloc(struct i915_execbuffer *eb)
 	struct reloc_cache *cache = &eb->reloc_cache;
 	struct i915_request *rq;
 
-	if (cache->ce == eb->context)
-		rq = __i915_request_create(cache->ce, GFP_KERNEL);
-	else
-		rq = nested_request_create(cache->ce, eb);
+	rq = nested_request_create(cache->ce, eb);
 	if (IS_ERR(rq))
 		return rq;
 
@@ -2968,13 +2955,14 @@ static int __eb_pin_reloc_engine(struct i915_execbuffer *eb)
 	if (!engine)
 		return -ENODEV;
 
+	if (!intel_engine_has_scheduler(engine))
+		return -ENODEV;
+
 	ce = intel_context_create(engine);
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	/* Reuse eb->context->timeline with scheduler! */
-	if (intel_engine_has_scheduler(engine))
-		ce->timeline = intel_timeline_get(eb->context->timeline);
+	ce->timeline = intel_timeline_get(eb->context->timeline);
 
 	i915_vm_put(ce->vm);
 	ce->vm = i915_vm_get(eb->context->vm);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
