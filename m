Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E663025EB
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:02:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDCBF6E11A;
	Mon, 25 Jan 2021 14:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7440A6E0A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:02:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693622-1500050 
 for multiple; Mon, 25 Jan 2021 14:01:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:00:57 +0000
Message-Id: <20210125140136.10494-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/41] drm/i915/gt: Move the defer_request
 waiter active assertion
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In defer_request() we start with the request we just unsubmitted (that
should be the active request on the gpu) and then defer all of its
waiters. No waiter should be ahead of the active request, so none should
be marked as active. That assert failed.

Of particular note this machine was undergoing persistent GPU result due
to underlying HW issues, so that may be a clue. A request is also marked
as active when it is retired, regardless of current queue status, and so
this assertion failure may be a result of the queue being completed by
the reset and then subsequently processed by the tasklet.

We can filter out retired requests here by doing the assertion check
after the is-ready check (active is a subset of being ready).

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2978
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 24731be6e462..56e36d938851 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1061,7 +1061,6 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
 				   __i915_request_has_started(w) &&
 				   !__i915_request_is_complete(rq));
 
-			GEM_BUG_ON(i915_request_is_active(w));
 			if (!i915_request_is_ready(w))
 				continue;
 
@@ -1069,6 +1068,7 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
 				continue;
 
 			GEM_BUG_ON(rq_prio(w) > rq_prio(rq));
+			GEM_BUG_ON(i915_request_is_active(w));
 			list_move_tail(&w->sched.link, &list);
 		}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
