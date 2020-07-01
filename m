Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 292AB2106B7
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:50:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9976E865;
	Wed,  1 Jul 2020 08:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B81F6E865
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 08:50:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21672141-1500050 
 for multiple; Wed, 01 Jul 2020 09:50:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 09:50:41 +0100
Message-Id: <20200701085041.17700-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200701083936.28723-1-chris@chris-wilson.co.uk>
References: <20200701083936.28723-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Harden the heartbeat against a
 stuck driver
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

If the driver gets stuck holding the kernel timeline, we cannot issue a
heartbeat and so fail to discover that the driver is indeed stuck and do
not issue a GPU reset (which would hopefully unstick the driver!).
Switch to using a trylock so that we can query if the heartbeat's
timeline mutex is locked elsewhere, and then use the timer to probe if it
remains stuck at the same spot for consecutive heartbeats, indicating
that the mutex has not been released and the engine has not progressed.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 14 ++++++++++++--
 drivers/gpu/drm/i915/gt/intel_engine_types.h     |  1 +
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 8db7e93abde5..1c6c6692dd17 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -65,6 +65,7 @@ static void heartbeat(struct work_struct *wrk)
 		container_of(wrk, typeof(*engine), heartbeat.work.work);
 	struct intel_context *ce = engine->kernel_context;
 	struct i915_request *rq;
+	unsigned long serial;
 
 	/* Just in case everything has gone horribly wrong, give it a kick */
 	intel_engine_flush_submission(engine);
@@ -122,10 +123,19 @@ static void heartbeat(struct work_struct *wrk)
 		goto out;
 	}
 
-	if (engine->wakeref_serial == engine->serial)
+	serial = READ_ONCE(engine->serial);
+	if (engine->wakeref_serial == serial)
 		goto out;
 
-	mutex_lock(&ce->timeline->mutex);
+	if (!mutex_trylock(&ce->timeline->mutex)) {
+		/* Unable to lock the kernel timeline, is the engine stuck? */
+		if (xchg(&engine->heartbeat.blocked, serial) == serial)
+			intel_gt_handle_error(engine->gt, engine->mask,
+					      I915_ERROR_CAPTURE,
+					      "no heartbeat on %s",
+					      engine->name);
+		goto out;
+	}
 
 	intel_context_enter(ce);
 	rq = __i915_request_create(ce, GFP_NOWAIT | __GFP_NOWARN);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 073c3769e8cc..490af81bd6f3 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -348,6 +348,7 @@ struct intel_engine_cs {
 	struct {
 		struct delayed_work work;
 		struct i915_request *systole;
+		unsigned long blocked;
 	} heartbeat;
 
 	unsigned long serial;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
