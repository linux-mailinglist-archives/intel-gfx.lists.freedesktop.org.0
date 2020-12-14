Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A1D2D9616
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4BE76E3AA;
	Mon, 14 Dec 2020 10:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73CEB6E15A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317792-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:01 +0000
Message-Id: <20201214100949.11387-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/69] drm/i915/gt: Use ppHWSP for unshared
 non-semaphore related timelines
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

When we are not using semaphores with a context/engine, we can simply
reuse the same seqno location across wraps, but we still require each
timeline to have its own address. For LRC submission, each context is
prefixed by a per-process HWSP, which provides us with a unique location
for each context-local timeline. A shared timeline that is common to
multiple contexts will continue to use a separate page.

This enables us to create position invariant contexts should we feel the
need to relocate them.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 37 +++++++++++--------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index c5b013cc10b3..974cca0cfe76 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -4749,6 +4749,14 @@ static struct intel_timeline *pinned_timeline(struct intel_context *ce)
 						 page_unmask_bits(tl));
 }
 
+static struct intel_timeline *pphwsp_timeline(struct intel_context *ce,
+					      struct i915_vma *state)
+{
+	return __intel_timeline_create(ce->engine->gt, state,
+				       I915_GEM_HWS_SEQNO_ADDR |
+				       INTEL_TIMELINE_RELATIVE_CONTEXT);
+}
+
 static int __execlists_context_alloc(struct intel_context *ce,
 				     struct intel_engine_cs *engine)
 {
@@ -4779,6 +4787,16 @@ static int __execlists_context_alloc(struct intel_context *ce,
 		goto error_deref_obj;
 	}
 
+	ring = intel_engine_create_ring(engine, (unsigned long)ce->ring);
+	if (IS_ERR(ring)) {
+		ret = PTR_ERR(ring);
+		goto error_deref_obj;
+	}
+
+	ret = populate_lr_context(ce, ctx_obj, engine, ring);
+	if (ret)
+		goto error_ring_free;
+
 	if (!page_mask_bits(ce->timeline)) {
 		struct intel_timeline *tl;
 
@@ -4788,29 +4806,18 @@ static int __execlists_context_alloc(struct intel_context *ce,
 		 */
 		if (unlikely(ce->timeline))
 			tl = pinned_timeline(ce);
-		else
+		else if (intel_engine_has_semaphores(engine))
 			tl = intel_timeline_create(engine->gt);
+		else
+			tl = pphwsp_timeline(ce, vma);
 		if (IS_ERR(tl)) {
 			ret = PTR_ERR(tl);
-			goto error_deref_obj;
+			goto error_ring_free;
 		}
 
 		ce->timeline = tl;
 	}
 
-	ring = intel_engine_create_ring(engine, (unsigned long)ce->ring);
-	if (IS_ERR(ring)) {
-		ret = PTR_ERR(ring);
-		goto error_deref_obj;
-	}
-
-	ret = populate_lr_context(ce, ctx_obj, engine, ring);
-	if (ret) {
-		drm_dbg(&engine->i915->drm,
-			"Failed to populate LRC: %d\n", ret);
-		goto error_ring_free;
-	}
-
 	ce->ring = ring;
 	ce->state = vma;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
