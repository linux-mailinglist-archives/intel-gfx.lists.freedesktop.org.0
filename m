Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2D1215295
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 08:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3DD46E1F1;
	Mon,  6 Jul 2020 06:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 776DC6E14C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 06:19:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21724451-1500050 
 for multiple; Mon, 06 Jul 2020 07:19:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 07:19:14 +0100
Message-Id: <20200706061926.6687-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200706061926.6687-1-chris@chris-wilson.co.uk>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/20] drm/i915: Always defer fenced work to the
 worker
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

Currently, if an error is raised we always call the cleanup locally
[and skip the main work callback]. However, some future users may need
to take a mutex to cleanup and so we cannot immediately execute the
cleanup as we may still be in interrupt context.

With the execute-immediate flag, for most cases this should result in
immediate cleanup of an error.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_sw_fence_work.c | 25 +++++++++++------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
index a3a81bb8f2c3..29f63ebc24e8 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
@@ -16,11 +16,14 @@ static void fence_complete(struct dma_fence_work *f)
 static void fence_work(struct work_struct *work)
 {
 	struct dma_fence_work *f = container_of(work, typeof(*f), work);
-	int err;
 
-	err = f->ops->work(f);
-	if (err)
-		dma_fence_set_error(&f->dma, err);
+	if (!f->dma.error) {
+		int err;
+
+		err = f->ops->work(f);
+		if (err)
+			dma_fence_set_error(&f->dma, err);
+	}
 
 	fence_complete(f);
 	dma_fence_put(&f->dma);
@@ -36,15 +39,11 @@ fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 		if (fence->error)
 			dma_fence_set_error(&f->dma, fence->error);
 
-		if (!f->dma.error) {
-			dma_fence_get(&f->dma);
-			if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
-				fence_work(&f->work);
-			else
-				queue_work(system_unbound_wq, &f->work);
-		} else {
-			fence_complete(f);
-		}
+		dma_fence_get(&f->dma);
+		if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
+			fence_work(&f->work);
+		else
+			queue_work(system_unbound_wq, &f->work);
 		break;
 
 	case FENCE_FREE:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
