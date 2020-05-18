Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E66041D729D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 10:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AA1C6E1A4;
	Mon, 18 May 2020 08:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DC06E1AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 08:14:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21226271-1500050 
 for multiple; Mon, 18 May 2020 09:14:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 09:14:35 +0100
Message-Id: <20200518081440.17948-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518081440.17948-1-chris@chris-wilson.co.uk>
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/gt: Reuse the tasklet priority for
 virtual as their siblings
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

In order to keep all the tasklets in the same execution lists and so
fifo ordered, be consistent and use the same priority for all.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e597325d04f1..80885ba87db5 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1403,7 +1403,7 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 	struct i915_request *next = READ_ONCE(ve->request);
 
 	if (next && next->execution_mask & ~rq->execution_mask)
-		tasklet_schedule(&ve->base.execlists.tasklet);
+		tasklet_hi_schedule(&ve->base.execlists.tasklet);
 }
 
 static inline void
@@ -5560,7 +5560,7 @@ static void virtual_submit_request(struct i915_request *rq)
 		GEM_BUG_ON(!list_empty(virtual_queue(ve)));
 		list_move_tail(&rq->sched.link, virtual_queue(ve));
 
-		tasklet_schedule(&ve->base.execlists.tasklet);
+		tasklet_hi_schedule(&ve->base.execlists.tasklet);
 	}
 
 	spin_unlock_irqrestore(&ve->base.active.lock, flags);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
