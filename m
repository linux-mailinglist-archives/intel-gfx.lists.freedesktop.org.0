Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89386192534
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 11:14:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E47F26E06E;
	Wed, 25 Mar 2020 10:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D04FB6E06E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 10:14:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20684824-1500050 
 for multiple; Wed, 25 Mar 2020 10:13:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Mar 2020 10:13:58 +0000
Message-Id: <20200325101358.12231-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Drop setting sibling
 priority hint on virtual engines
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

We set the priority hint on execlists to avoid executing the tasklet for
when we know that there will be no change in execution order. However,
as we set it from the virtual engine for all siblings, but only one
physical engine may respond, we leave the hint set on the others
stopping direct submission that could take place.

If we do not set the hint, we may attempt direct submission even if we
don't expect to submit. If we set the hint, we may not do any submission
until the tasklet is run (and sometimes we may park the engine before
that has had a chance). Ergo there's only a minor ill-effect on mixed
virtual/physical engine workloads where we may try and fail to do direct
submission more often than required. (Pure virtual / engine workloads
will have redundant tasklet execution suppressed as normal.)

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1522
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 210f60e14ef4..f88d3b95c4e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4985,10 +4985,8 @@ static void virtual_submission_tasklet(unsigned long data)
 submit_engine:
 		GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
 		node->prio = prio;
-		if (first && prio > sibling->execlists.queue_priority_hint) {
-			sibling->execlists.queue_priority_hint = prio;
+		if (first && prio > sibling->execlists.queue_priority_hint)
 			tasklet_hi_schedule(&sibling->execlists.tasklet);
-		}
 
 		spin_unlock(&sibling->active.lock);
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
