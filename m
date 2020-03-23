Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B52A318F1CC
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 10:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15C7894FE;
	Mon, 23 Mar 2020 09:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F8F6893C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 09:29:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20657883-1500050 
 for multiple; Mon, 23 Mar 2020 09:28:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 09:28:37 +0000
Message-Id: <20200323092841.22240-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200323092841.22240-1-chris@chris-wilson.co.uk>
References: <20200323092841.22240-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/gt: Delay release of engine-pm
 after last retirement
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

Keep the engine-pm awake until the next jiffie, to avoid immediate
ping-pong under moderate load. (Forcing the idle barrier excerbates the
moderate load, dramatically increasing the driver overhead.) On the
other hand, delaying the idle-barrier slightly incurs longer rc6-off
and so more power consumption.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/848
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context.c | 2 +-
 drivers/gpu/drm/i915/i915_active.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e4aece20bc80..622ff425fce9 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -350,7 +350,7 @@ void intel_context_enter_engine(struct intel_context *ce)
 void intel_context_exit_engine(struct intel_context *ce)
 {
 	intel_timeline_exit(ce->timeline);
-	intel_engine_pm_put(ce->engine);
+	intel_engine_pm_put_delay(ce->engine, 1);
 }
 
 int intel_context_prepare_remote_request(struct intel_context *ce,
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index c4048628188a..a0d31f7bfb42 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -818,7 +818,7 @@ void i915_active_acquire_barrier(struct i915_active *ref)
 
 		GEM_BUG_ON(!intel_engine_pm_is_awake(engine));
 		llist_add(barrier_to_ll(node), &engine->barrier_tasks);
-		intel_engine_pm_put(engine);
+		intel_engine_pm_put_delay(engine, 1);
 	}
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
