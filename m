Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 218451F1024
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 00:21:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC15E6E42D;
	Sun,  7 Jun 2020 22:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD3A6E3F9
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 22:21:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21425590-1500050 
 for multiple; Sun, 07 Jun 2020 23:21:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 23:20:42 +0100
Message-Id: <20200607222108.14401-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/28] drm/i915/selftests: Make the hanging
 request non-preemptible
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

In some of our hangtests, we try to reset an active engine while it is
spinning inside the recursive spinner. However, we also try to flood the
engine with requests that preempt the hang, and so should disable the
preemption to be sure that we reset the right request.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 36 ++++++++++++++------
 1 file changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 4aa4cc917d8b..035f363fb0f8 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -203,12 +203,12 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 		*batch++ = lower_32_bits(hws_address(hws, rq));
 		*batch++ = upper_32_bits(hws_address(hws, rq));
 		*batch++ = rq->fence.seqno;
-		*batch++ = MI_ARB_CHECK;
+		*batch++ = MI_NOOP;
 
 		memset(batch, 0, 1024);
 		batch += 1024 / sizeof(*batch);
 
-		*batch++ = MI_ARB_CHECK;
+		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
 		*batch++ = lower_32_bits(vma->node.start);
 		*batch++ = upper_32_bits(vma->node.start);
@@ -217,12 +217,12 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 		*batch++ = 0;
 		*batch++ = lower_32_bits(hws_address(hws, rq));
 		*batch++ = rq->fence.seqno;
-		*batch++ = MI_ARB_CHECK;
+		*batch++ = MI_NOOP;
 
 		memset(batch, 0, 1024);
 		batch += 1024 / sizeof(*batch);
 
-		*batch++ = MI_ARB_CHECK;
+		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 1 << 8;
 		*batch++ = lower_32_bits(vma->node.start);
 	} else if (INTEL_GEN(gt->i915) >= 4) {
@@ -230,24 +230,24 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 		*batch++ = 0;
 		*batch++ = lower_32_bits(hws_address(hws, rq));
 		*batch++ = rq->fence.seqno;
-		*batch++ = MI_ARB_CHECK;
+		*batch++ = MI_NOOP;
 
 		memset(batch, 0, 1024);
 		batch += 1024 / sizeof(*batch);
 
-		*batch++ = MI_ARB_CHECK;
+		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
 		*batch++ = lower_32_bits(vma->node.start);
 	} else {
 		*batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
 		*batch++ = lower_32_bits(hws_address(hws, rq));
 		*batch++ = rq->fence.seqno;
-		*batch++ = MI_ARB_CHECK;
+		*batch++ = MI_NOOP;
 
 		memset(batch, 0, 1024);
 		batch += 1024 / sizeof(*batch);
 
-		*batch++ = MI_ARB_CHECK;
+		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
 		*batch++ = lower_32_bits(vma->node.start);
 	}
@@ -866,13 +866,29 @@ static int __igt_reset_engines(struct intel_gt *gt,
 			count++;
 
 			if (rq) {
+				if (rq->fence.error != -EIO) {
+					pr_err("i915_reset_engine(%s:%s):"
+					       " failed to reset request %llx:%lld\n",
+					       engine->name, test_name,
+					       rq->fence.context,
+					       rq->fence.seqno);
+					i915_request_put(rq);
+
+					GEM_TRACE_DUMP();
+					intel_gt_set_wedged(gt);
+					err = -EIO;
+					break;
+				}
+
 				if (i915_request_wait(rq, 0, HZ / 5) < 0) {
 					struct drm_printer p =
 						drm_info_printer(gt->i915->drm.dev);
 
 					pr_err("i915_reset_engine(%s:%s):"
-					       " failed to complete request after reset\n",
-					       engine->name, test_name);
+					       " failed to complete request %llx:%lld after reset\n",
+					       engine->name, test_name,
+					       rq->fence.context,
+					       rq->fence.seqno);
 					intel_engine_dump(engine, &p,
 							  "%s\n", engine->name);
 					i915_request_put(rq);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
