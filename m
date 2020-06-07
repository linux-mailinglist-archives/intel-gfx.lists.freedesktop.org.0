Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C08D61F1035
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 00:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669566E43B;
	Sun,  7 Jun 2020 22:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C706E42D
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 22:21:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21425609-1500050 
 for multiple; Sun, 07 Jun 2020 23:21:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 23:21:01 +0100
Message-Id: <20200607222108.14401-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/28] drm/i915/gt: Do not suspend bonded
 requests if one hangs
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

Treat the dependency between bonded requests as weak and leave the
remainder of the pair on the GPU if one hangs.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3199c65fa7e8..af6f78eca9ad 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2726,6 +2726,9 @@ static void __execlists_hold(struct i915_request *rq)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
+			if (p->flags & I915_DEPENDENCY_WEAK)
+				continue;
+
 			/* Leave semaphores spinning on the other engines */
 			if (w->engine != rq->engine)
 				continue;
@@ -2850,6 +2853,9 @@ static void __execlists_unhold(struct i915_request *rq)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
+			if (p->flags & I915_DEPENDENCY_WEAK)
+				continue;
+
 			/* Propagate any change in error status */
 			if (rq->fence.error)
 				i915_request_set_error_once(w, rq->fence.error);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
