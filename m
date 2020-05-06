Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DB51C7BB3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 22:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9BD6E8DE;
	Wed,  6 May 2020 20:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 227796E8E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 20:59:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21131958-1500050 
 for multiple; Wed, 06 May 2020 21:59:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 21:59:09 +0100
Message-Id: <20200506205920.24233-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506205920.24233-1-chris@chris-wilson.co.uk>
References: <20200506205920.24233-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/15] drm/i915: Pull waiting on an external
 dma-fence into its routine
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

As a means for a small code consolidation, but primarily to start
thinking more carefully about internal-vs-external linkage, pull the
pair of i915_sw_fence_await_dma_fence() calls into a common routine.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 51b9e820ffe8..a185d0300df2 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1067,6 +1067,14 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 	return 0;
 }
 
+static int
+i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
+{
+	return i915_sw_fence_await_dma_fence(&rq->submit, fence,
+					     fence->context ? I915_FENCE_TIMEOUT : 0,
+					     I915_FENCE_GFP);
+}
+
 int
 i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 {
@@ -1114,9 +1122,7 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 		if (dma_fence_is_i915(fence))
 			ret = i915_request_await_request(rq, to_request(fence));
 		else
-			ret = i915_sw_fence_await_dma_fence(&rq->submit, fence,
-							    fence->context ? I915_FENCE_TIMEOUT : 0,
-							    I915_FENCE_GFP);
+			ret = i915_request_await_external(rq, fence);
 		if (ret < 0)
 			return ret;
 
@@ -1255,9 +1261,7 @@ i915_request_await_execution(struct i915_request *rq,
 							     to_request(fence),
 							     hook);
 		else
-			ret = i915_sw_fence_await_dma_fence(&rq->submit, fence,
-							    I915_FENCE_TIMEOUT,
-							    GFP_KERNEL);
+			ret = i915_request_await_external(rq, fence);
 		if (ret < 0)
 			return ret;
 	} while (--nchild);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
