Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E192158F59
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 13:59:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94996EA54;
	Tue, 11 Feb 2020 12:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 677886EA54
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 12:59:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20186895-1500050 
 for multiple; Tue, 11 Feb 2020 12:58:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 12:58:56 +0000
Message-Id: <20200211125856.978559-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Poison rings after use
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

On retiring the request, we should not re-use these elements in the ring
(at least not until we fill the ringbuffer and knowingly reuse the space).
Leave behind some poison to (hopefully) trap ourselves if we make a
mistake.

Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 0ecc2cf64216..9ee7bf0200b0 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -203,6 +203,19 @@ static void free_capture_list(struct i915_request *request)
 	}
 }
 
+static void __i915_request_fill(struct i915_request *rq, u8 val)
+{
+	void *vaddr = rq->ring->vaddr;
+	u32 head;
+
+	head = rq->infix;
+	if (rq->postfix < head) {
+		memset(vaddr + head, val, rq->ring->size - head);
+		head = 0;
+	}
+	memset(vaddr + head, val, rq->postfix - head);
+}
+
 static void remove_from_engine(struct i915_request *rq)
 {
 	struct intel_engine_cs *engine, *locked;
@@ -247,6 +260,9 @@ bool i915_request_retire(struct i915_request *rq)
 	 */
 	GEM_BUG_ON(!list_is_first(&rq->link,
 				  &i915_request_timeline(rq)->requests));
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		/* Poison before we release our space in the ring */
+		__i915_request_fill(rq, POISON_FREE);
 	rq->ring->head = rq->postfix;
 
 	/*
@@ -1175,9 +1191,6 @@ i915_request_await_object(struct i915_request *to,
 
 void i915_request_skip(struct i915_request *rq, int error)
 {
-	void *vaddr = rq->ring->vaddr;
-	u32 head;
-
 	GEM_BUG_ON(!IS_ERR_VALUE((long)error));
 	dma_fence_set_error(&rq->fence, error);
 
@@ -1189,12 +1202,7 @@ void i915_request_skip(struct i915_request *rq, int error)
 	 * context, clear out all the user operations leaving the
 	 * breadcrumb at the end (so we get the fence notifications).
 	 */
-	head = rq->infix;
-	if (rq->postfix < head) {
-		memset(vaddr + head, 0, rq->ring->size - head);
-		head = 0;
-	}
-	memset(vaddr + head, 0, rq->postfix - head);
+	__i915_request_fill(rq, 0);
 	rq->infix = rq->postfix;
 }
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
