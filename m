Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D846154D86
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 21:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17E606FB49;
	Thu,  6 Feb 2020 20:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8476E3D8
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 20:49:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20141832-1500050 
 for multiple; Thu, 06 Feb 2020 20:49:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 20:49:14 +0000
Message-Id: <20200206204915.2636606-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
References: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/gt: Protect execlists_hold/unhold
 from new waiters
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

As we may add new waiters to a request as it is being run, we need to
mark the list iteration as being safe for concurrent addition.

Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b350e01d86d2..354a5d245cee 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2378,7 +2378,7 @@ static void __execlists_hold(struct i915_request *rq)
 		list_move_tail(&rq->sched.link, &rq->engine->active.hold);
 		i915_request_set_hold(rq);
 
-		list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
+		for_each_waiter(p, rq) {
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
@@ -2496,7 +2496,7 @@ static void __execlists_unhold(struct i915_request *rq)
 		RQ_TRACE(rq, "hold release\n");
 
 		/* Also release any children on this engine that are ready */
-		list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
+		for_each_waiter(p, rq) {
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
