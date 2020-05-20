Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 023ED1DAE75
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 11:15:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949616E11F;
	Wed, 20 May 2020 09:15:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513766E11F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 09:15:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21237656-1500050 
 for multiple; Wed, 20 May 2020 10:15:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 10:15:01 +0100
Message-Id: <20200520091501.30109-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200520091230.29974-1-chris@chris-wilson.co.uk>
References: <20200520091230.29974-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Disable semaphore inter-engine sync
 without timeslicing
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

Since the remove of the no-semaphore boosting, we rely on timeslicing to
reorder past inter-dependency hogs across the engines. However, we
require preemption to support timeslicing into user payloads, and not all
machine support preemption so we do not universally enable timeslicing
even when it would preempt our own inter-engine semaphores.

Testcase: igt/gem_exec_schedule/semaphore-codependency # bdw/bsw
Fixes: 18e4af04d218 ("drm/i915: Drop no-semaphore boosting")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 900ea8b7fc8f..f5d59d18cd5b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -230,7 +230,7 @@ static void intel_context_set_gem(struct intel_context *ce,
 		ce->timeline = intel_timeline_get(ctx->timeline);
 
 	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
-	    intel_engine_has_semaphores(ce->engine))
+	    intel_engine_has_timeslices(ce->engine))
 		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
 }
 
@@ -1969,7 +1969,7 @@ static int __apply_priority(struct intel_context *ce, void *arg)
 {
 	struct i915_gem_context *ctx = arg;
 
-	if (!intel_engine_has_semaphores(ce->engine))
+	if (!intel_engine_has_timeslices(ce->engine))
 		return 0;
 
 	if (ctx->sched.priority >= I915_PRIORITY_NORMAL)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
