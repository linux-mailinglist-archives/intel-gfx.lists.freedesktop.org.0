Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AC72F4B94
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 13:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EFF16E981;
	Wed, 13 Jan 2021 12:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F136E979
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 12:46:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23584211-1500050 
 for multiple; Wed, 13 Jan 2021 12:46:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 12:45:56 +0000
Message-Id: <20210113124600.656-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210113124600.656-1-chris@chris-wilson.co.uk>
References: <20210113124600.656-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/10] drm/i915/gt: Drop atomic for
 engine->fw_active tracking
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

Since schedule-in/out is now entirely serialised by the tasklet bitlock,
we do not need to worry about concurrent in/out operations and so reduce
the atomic operations to plain instructions.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c            | 2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h         | 2 +-
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 7583b6e48a9d..005ae2c54273 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1665,7 +1665,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 			   ktime_to_ms(intel_engine_get_busy_time(engine,
 								  &dummy)));
 	drm_printf(m, "\tForcewake: %x domains, %d active\n",
-		   engine->fw_domain, atomic_read(&engine->fw_active));
+		   engine->fw_domain, READ_ONCE(engine->fw_active));
 
 	rcu_read_lock();
 	rq = READ_ONCE(engine->heartbeat.systole);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index df62e793e747..75c9093b5e7f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -319,7 +319,7 @@ struct intel_engine_cs {
 	 * as possible.
 	 */
 	enum forcewake_domains fw_domain;
-	atomic_t fw_active;
+	unsigned int fw_active;
 
 	unsigned long context_tag;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e28f32661df4..d5affdda6eb8 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -539,7 +539,7 @@ __execlists_schedule_in(struct i915_request *rq)
 	ce->lrc.ccid |= engine->execlists.ccid;
 
 	__intel_gt_pm_get(engine->gt);
-	if (engine->fw_domain && !atomic_fetch_inc(&engine->fw_active))
+	if (engine->fw_domain && !engine->fw_active++)
 		intel_uncore_forcewake_get(engine->uncore, engine->fw_domain);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
 	intel_engine_context_in(engine);
@@ -645,7 +645,7 @@ static inline void __execlists_schedule_out(struct i915_request *rq)
 	lrc_update_runtime(ce);
 	intel_engine_context_out(engine);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
-	if (engine->fw_domain && !atomic_dec_return(&engine->fw_active))
+	if (engine->fw_domain && !--engine->fw_active)
 		intel_uncore_forcewake_put(engine->uncore, engine->fw_domain);
 	intel_gt_pm_put_async(engine->gt);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
