Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A813415847E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 21:57:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 435B66E9E9;
	Mon, 10 Feb 2020 20:57:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910066E9E9
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 20:57:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20180248-1500050 
 for multiple; Mon, 10 Feb 2020 20:57:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Feb 2020 20:57:20 +0000
Message-Id: <20200210205722.794180-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210205722.794180-1-chris@chris-wilson.co.uk>
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Disable use of hwsp_cacheline for
 kernel_context
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

Currently on execlists, we use a local hwsp for the kernel_context,
rather than the engine's HWSP, as this is the default for execlists.
However, seqno rollover requires allocating a new HWSP cachline, and may
require pinning a new HWSP page in the GTT. This operation requiring
pinning in the GGTT is not allowed within the kernel_context timeline,
as doing so may require re-entering the kernel_context in order to evict
from the GGTT. As we want to avoid requiring a new HWSP for the
kernel_context, we can use the permanently pinned engine's HWSP instead.
However to do so we must prevent the use of semaphores reading the
kernel_context's HWSP, as the use of semaphores do not support rollover
onto the same cacheline. Fortunately, the kernel_context is mostly
isolated, so unlikely to give benefit to semaphores.

Reported-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 14 ++++++++++++--
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 12 +++++++++---
 drivers/gpu/drm/i915/i915_request.c    | 14 +++++++++-----
 3 files changed, 30 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 70d91ad923ef..902d440ef07d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2964,7 +2964,8 @@ static int gen8_emit_init_breadcrumb(struct i915_request *rq)
 {
 	u32 *cs;
 
-	GEM_BUG_ON(!i915_request_timeline(rq)->has_initial_breadcrumb);
+	if (!i915_request_timeline(rq)->has_initial_breadcrumb)
+		return 0;
 
 	cs = intel_ring_begin(rq, 6);
 	if (IS_ERR(cs))
@@ -4616,8 +4617,17 @@ static int __execlists_context_alloc(struct intel_context *ce,
 
 	if (!ce->timeline) {
 		struct intel_timeline *tl;
+		struct i915_vma *hwsp;
+
+		/*
+		 * Use the static global HWSP for the kernel context, and
+		 * a dynamically allocated cacheline for everyone else.
+		 */
+		hwsp = NULL;
+		if (unlikely(intel_context_is_barrier(ce)))
+			hwsp = engine->status_page.vma;
 
-		tl = intel_timeline_create(engine->gt, NULL);
+		tl = intel_timeline_create(engine->gt, hwsp);
 		if (IS_ERR(tl)) {
 			ret = PTR_ERR(tl);
 			goto error_deref_obj;
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index ccd4cd2c202d..6f458f6d5523 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -3494,15 +3494,21 @@ static int bond_virtual_engine(struct intel_gt *gt,
 	rq[0] = ERR_PTR(-ENOMEM);
 	for_each_engine(master, gt, id) {
 		struct i915_sw_fence fence = {};
+		struct intel_context *ce;
 
 		if (master->class == class)
 			continue;
 
+		ce = intel_context_create(master);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			goto out;
+		}
+
 		memset_p((void *)rq, ERR_PTR(-EINVAL), ARRAY_SIZE(rq));
 
-		rq[0] = igt_spinner_create_request(&spin,
-						   master->kernel_context,
-						   MI_NOOP);
+		rq[0] = igt_spinner_create_request(&spin, ce, MI_NOOP);
+		intel_context_put(ce);
 		if (IS_ERR(rq[0])) {
 			err = PTR_ERR(rq[0]);
 			goto out;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 0ecc2cf64216..1adb8cf35f75 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -886,6 +886,12 @@ emit_semaphore_wait(struct i915_request *to,
 		    struct i915_request *from,
 		    gfp_t gfp)
 {
+	if (!intel_context_use_semaphores(to->context))
+		goto await_fence;
+
+	if (!rcu_access_pointer(from->hwsp_cacheline))
+		goto await_fence;
+
 	/* Just emit the first semaphore we see as request space is limited. */
 	if (already_busywaiting(to) & from->engine->mask)
 		goto await_fence;
@@ -931,12 +937,8 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 		ret = i915_sw_fence_await_sw_fence_gfp(&to->submit,
 						       &from->submit,
 						       I915_FENCE_GFP);
-	else if (intel_context_use_semaphores(to->context))
-		ret = emit_semaphore_wait(to, from, I915_FENCE_GFP);
 	else
-		ret = i915_sw_fence_await_dma_fence(&to->submit,
-						    &from->fence, 0,
-						    I915_FENCE_GFP);
+		ret = emit_semaphore_wait(to, from, I915_FENCE_GFP);
 	if (ret < 0)
 		return ret;
 
@@ -1035,6 +1037,8 @@ __i915_request_await_execution(struct i915_request *to,
 {
 	int err;
 
+	GEM_BUG_ON(intel_context_is_barrier(from->context));
+
 	/* Submit both requests at the same time */
 	err = __await_execution(to, from, hook, I915_FENCE_GFP);
 	if (err)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
