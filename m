Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB291DC060
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 22:42:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EAA56E8A4;
	Wed, 20 May 2020 20:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42B7E6E8A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 20:42:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21245723-1500050 
 for multiple; Wed, 20 May 2020 21:41:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 21:41:52 +0100
Message-Id: <20200520204152.3032831-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Cancel the flush worker more
 thoroughly
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

Since the worker may rearm, we currently are only guaranteed to flush
the work if we cancel the timer. If the work was running at the time we
try and cancel it, we will wait for it to complete, but it may leave
items in the pool and requeue the work. If we rearrange the immediate
discard of the pool then cancel the work, we know that the work cannot
rearm and so our flush will be final.

<0> [314.146044] i915_mod-1321    2.... 299799443us : intel_gt_fini_buffer_pool: intel_gt_fini_buffer_pool:227 GEM_BUG_ON(!list_empty(&pool->cache_list[n]))

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index 1495054a4305..77487732d53f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -212,8 +212,8 @@ void intel_gt_flush_buffer_pool(struct intel_gt *gt)
 {
 	struct intel_gt_buffer_pool *pool = &gt->buffer_pool;
 
-	if (cancel_delayed_work_sync(&pool->work))
-		pool_free_imm(pool);
+	pool_free_imm(pool);
+	cancel_delayed_work_sync(&pool->work);
 }
 
 void intel_gt_fini_buffer_pool(struct intel_gt *gt)
-- 
2.27.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
