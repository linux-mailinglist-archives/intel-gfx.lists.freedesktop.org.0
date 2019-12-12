Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA4211D139
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 16:42:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13CB06E197;
	Thu, 12 Dec 2019 15:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CAE66E197
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 15:42:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19556947-1500050 
 for multiple; Thu, 12 Dec 2019 15:42:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 15:42:24 +0000
Message-Id: <20191212154224.1631531-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Set fence_work.ops before
 dma_fence_init
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
Cc: Vince Weaver <vincent.weaver@maine.edu>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since dma_fence_init may call ops (because of a meaningless
trace_dma_fence), we need to set the worker ops prior to that call.

Reported-by: Vince Weaver <vincent.weaver@maine.edu>
Fixes: 8e458fe2ee05 ("drm/i915: Generalise the clflush dma-worker")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Vince Weaver <vincent.weaver@maine.edu>
---
 drivers/gpu/drm/i915/i915_sw_fence_work.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
index 07552cd544f2..8538ee7a521d 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
@@ -78,12 +78,11 @@ static const struct dma_fence_ops fence_ops = {
 void dma_fence_work_init(struct dma_fence_work *f,
 			 const struct dma_fence_work_ops *ops)
 {
+	f->ops = ops;
 	spin_lock_init(&f->lock);
 	dma_fence_init(&f->dma, &fence_ops, &f->lock, 0, 0);
 	i915_sw_fence_init(&f->chain, fence_notify);
 	INIT_WORK(&f->work, fence_work);
-
-	f->ops = ops;
 }
 
 int dma_fence_work_chain(struct dma_fence_work *f, struct dma_fence *signal)
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
