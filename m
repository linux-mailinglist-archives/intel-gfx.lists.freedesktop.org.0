Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A3F12D9F6
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 16:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E92FF6E249;
	Tue, 31 Dec 2019 15:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C1DF6E249
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 15:54:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19735735-1500050 
 for multiple; Tue, 31 Dec 2019 15:53:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Dec 2019 15:53:46 +0000
Message-Id: <20191231155346.3024-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use common priotree lists for virtual
 engine
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

Since commit 422d7df4f090 ("drm/i915: Replace engine->timeline with a
plain list"), we used the default embedded priotree slot for the virtual
engine request queue, which means we can also use the same solitary slot
with the scheduler, so long as we mark the priotree as forever being
that single slot (which we can do by permanently setting no_priotree).

References: 422d7df4f090 ("drm/i915: Replace engine->timeline with a plain list")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c   | 1 +
 drivers/gpu/drm/i915/i915_scheduler.c | 3 +--
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b7c963cfad04..789b0261050d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4538,6 +4538,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	INIT_LIST_HEAD(virtual_queue(ve));
 	ve->base.execlists.queue_priority_hint = INT_MIN;
+	ve->base.execlists.no_priolist = true;
 	tasklet_init(&ve->base.execlists.tasklet,
 		     virtual_submission_tasklet,
 		     (unsigned long)ve);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index bf87c70bfdd9..ea03c1cf6250 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -338,8 +338,7 @@ static void __i915_schedule(struct i915_sched_node *node,
 			continue;
 		}
 
-		if (!intel_engine_is_virtual(engine) &&
-		    !i915_request_is_active(node_to_request(node))) {
+		if (!i915_request_is_active(node_to_request(node))) {
 			if (!cache.priolist)
 				cache.priolist =
 					i915_sched_lookup_priolist(engine,
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
