Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C9D2E9450
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 12:52:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 299A689B4D;
	Mon,  4 Jan 2021 11:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9371089B4D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 11:52:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23495868-1500050 
 for multiple; Mon, 04 Jan 2021 11:51:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 11:51:43 +0000
Message-Id: <20210104115145.24460-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210104115145.24460-1-chris@chris-wilson.co.uk>
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Check the virtual still
 matches upon locking
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

If another sibling is able to claim the virtual request, by the time we
inspect the request under the lock if may no longer match the local
engine.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2877
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index f02e3ae10d28..a5b442683c18 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1016,6 +1016,9 @@ static bool virtual_matches(const struct virtual_engine *ve,
 {
 	const struct intel_engine_cs *inflight;
 
+	if (!rq)
+		return false;
+
 	if (!(rq->execution_mask & engine->mask)) /* We peeked too soon! */
 		return false;
 
@@ -1423,8 +1426,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		spin_lock(&ve->base.active.lock);
 
 		rq = ve->request;
-		if (unlikely(!rq)) /* lost the race to a sibling */
-			goto unlock;
+		if (unlikely(!virtual_matches(ve, rq, engine)))
+			goto unlock; /* lost the race to a sibling */
 
 		GEM_BUG_ON(rq->engine != &ve->base);
 		GEM_BUG_ON(rq->context != &ve->context);
@@ -1434,8 +1437,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			break;
 		}
 
-		GEM_BUG_ON(!virtual_matches(ve, rq, engine));
-
 		if (last && !can_merge_rq(last, rq)) {
 			spin_unlock(&ve->base.active.lock);
 			spin_unlock(&engine->active.lock);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
