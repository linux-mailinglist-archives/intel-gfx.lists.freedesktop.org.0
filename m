Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD54F1C1DE0
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 21:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1477C6ED39;
	Fri,  1 May 2020 19:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6E6C6ECE8
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 19:29:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21087606-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 May 2020 20:29:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 20:29:45 +0100
Message-Id: <20200501192945.22215-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501192945.22215-1-chris@chris-wilson.co.uk>
References: <20200501192945.22215-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/gem: Try an alternate engine for
 relocations
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

If at first we don't succeed, try try again.

Not all engines may support the MI ops we need to perform asynchronous
relocation patching, and so we end up falling back to a synchronous
operation that has a liability of blocking. However, Tvrtko pointed out
we don't need to use the same engine to perform the relocations as we
are planning to execute the execbuf on, and so if we switch over to a
working engine, we can perform the relocation asynchronously. The user
execbuf will be queued after the relocations by virtue of fencing.

This patch creates a new context per execbuf requiring asynchronous
relocations on an unusable engines. This is perhaps a bit excessive and
can be ameliorated by a small context cache, but for the moment we only
need it for working around a little used engine on Sandybridge, and only
if relocations are actually required to an active batch buffer.

Now we just need to teach the relocation code to handle physical
addressing for gen2/3, and we should then have universal support!

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Testcase: igt/gem_exec_reloc/basic-spin # snb
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 32 ++++++++++++++++---
 1 file changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 3c01c4193c5f..cce7df231cb9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1285,6 +1285,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 }
 
 static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
+			     struct intel_engine_cs *engine,
 			     unsigned int len)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
@@ -1294,7 +1295,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	u32 *cmd;
 	int err;
 
-	pool = intel_gt_get_buffer_pool(eb->engine->gt, PAGE_SIZE);
+	pool = intel_gt_get_buffer_pool(engine->gt, PAGE_SIZE);
 	if (IS_ERR(pool))
 		return PTR_ERR(pool);
 
@@ -1317,7 +1318,23 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_unmap;
 
-	rq = i915_request_create(eb->context);
+	if (engine == eb->context->engine) {
+		rq = i915_request_create(eb->context);
+	} else {
+		struct intel_context *ce;
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(rq);
+			goto err_unpin;
+		}
+
+		i915_vm_put(ce->vm);
+		ce->vm = i915_vm_get(eb->context->vm);
+
+		rq = intel_context_create_request(ce);
+		intel_context_put(ce);
+	}
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		goto err_unpin;
@@ -1368,10 +1385,15 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 	int err;
 
 	if (unlikely(!cache->rq)) {
-		if (!intel_engine_can_store_dword(eb->engine))
-			return ERR_PTR(-ENODEV);
+		struct intel_engine_cs *engine = eb->engine;
+
+		if (!intel_engine_can_store_dword(engine)) {
+			engine = engine->gt->engine_class[COPY_ENGINE_CLASS][0];
+			if (!engine || !intel_engine_can_store_dword(engine))
+				return ERR_PTR(-ENODEV);
+		}
 
-		err = __reloc_gpu_alloc(eb, len);
+		err = __reloc_gpu_alloc(eb, engine, len);
 		if (unlikely(err))
 			return ERR_PTR(err);
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
