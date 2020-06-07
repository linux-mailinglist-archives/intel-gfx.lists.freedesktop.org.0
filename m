Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCE31F103C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 00:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0D06E42F;
	Sun,  7 Jun 2020 22:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 324B66E432
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 22:21:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21425589-1500050 
 for multiple; Sun, 07 Jun 2020 23:21:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 23:20:41 +0100
Message-Id: <20200607222108.14401-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/28] drm/i915: Adjust the sentinel assert to
 match implementation
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Sentinels are supposed to be last reqeusts in the elsp queue, not the
only one, so adjust the assert accordingly.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d55a5e0466e5..db8a170b0e5c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1635,9 +1635,9 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		ccid = ce->lrc.ccid;
 
 		/*
-		 * Sentinels are supposed to be lonely so they flush the
-		 * current exection off the HW. Check that they are the
-		 * only request in the pending submission.
+		 * Sentinels are supposed to be the last request so they flush
+		 * the current exection off the HW. Check that they are the only
+		 * request in the pending submission.
 		 */
 		if (sentinel) {
 			GEM_TRACE_ERR("%s: context:%llx after sentinel in pending[%zd]\n",
@@ -1646,15 +1646,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 				      port - execlists->pending);
 			return false;
 		}
-
 		sentinel = i915_request_has_sentinel(rq);
-		if (sentinel && port != execlists->pending) {
-			GEM_TRACE_ERR("%s: sentinel context:%llx not in prime position[%zd]\n",
-				      engine->name,
-				      ce->timeline->fence_context,
-				      port - execlists->pending);
-			return false;
-		}
 
 		/* Hold tightly onto the lock to prevent concurrent retires! */
 		if (!spin_trylock_irqsave(&rq->lock, flags))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
