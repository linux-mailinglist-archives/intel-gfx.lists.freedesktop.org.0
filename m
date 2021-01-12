Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D221F2F2C3E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 11:08:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22A766E19C;
	Tue, 12 Jan 2021 10:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3E8A6E19C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 10:08:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23567451-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 10:08:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jan 2021 10:07:58 +0000
Message-Id: <20210112100759.32698-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gt: Check for arbitration after
 writing start seqno
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

On the off chance that we need to arbitrate before launching the
payload, perform the check after we signal the request is ready to
start. Assuming instantaneous processing of the CS event, the request
will then be treated as having started when we make the decisions as to
how to process that CS event.

v2: More commentary about the users of i915_request_started() as a
reminder about why we are marking the initial breadcrumb.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 2e36e0a9d8a6..1ed9f572c8a4 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -361,19 +361,30 @@ int gen8_emit_init_breadcrumb(struct i915_request *rq)
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
+	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+	*cs++ = hwsp_offset(rq);
+	*cs++ = 0;
+	*cs++ = rq->fence.seqno - 1;
+
 	/*
 	 * Check if we have been preempted before we even get started.
 	 *
 	 * After this point i915_request_started() reports true, even if
 	 * we get preempted and so are no longer running.
+	 *
+	 * i915_request_started() is used during preemption processing
+	 * to decide if the request is currently inside the user payload
+	 * or spinning on a kernel semaphore (or earlier). For no-preemption
+	 * requests, we do allow preemption on the semaphore before the user
+	 * payload, but do not allow preemption once the request is started.
+	 *
+	 * i915_request_started() is similarly used during GPU hangs to
+	 * determine if the user's payload was guilty, and if so, the
+	 * request is banned. Before the request is started, it is assumed
+	 * to be unharmed and an innocent victim of another's hang.
 	 */
-	*cs++ = MI_ARB_CHECK;
 	*cs++ = MI_NOOP;
-
-	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
-	*cs++ = hwsp_offset(rq);
-	*cs++ = 0;
-	*cs++ = rq->fence.seqno - 1;
+	*cs++ = MI_ARB_CHECK;
 
 	intel_ring_advance(rq, cs);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
