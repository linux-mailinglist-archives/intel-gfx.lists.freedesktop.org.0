Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF8C1FEF33
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:04:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E93D6EB3C;
	Thu, 18 Jun 2020 10:04:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B8B6E39B
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 10:04:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21535911-1500050 
 for multiple; Thu, 18 Jun 2020 11:03:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jun 2020 11:03:51 +0100
Message-Id: <20200618100356.15744-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618100356.15744-1-chris@chris-wilson.co.uk>
References: <20200618100356.15744-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/11] drm/i915/gt: Drop atomic for
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
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 60881c8b5b7c..a0723c474e03 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1535,7 +1535,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	drm_printf(m, "\tLatency: %luus\n",
 		   ewma__engine_latency_read(&engine->latency));
 	drm_printf(m, "\tForcewake: %x domains, %d active\n",
-		   engine->fw_domain, atomic_read(&engine->fw_active));
+		   engine->fw_domain, READ_ONCE(engine->fw_active));
 
 	rcu_read_lock();
 	rq = READ_ONCE(engine->heartbeat.systole);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 073c3769e8cc..fc399a39579c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -322,7 +322,7 @@ struct intel_engine_cs {
 	 * as possible.
 	 */
 	enum forcewake_domains fw_domain;
-	atomic_t fw_active;
+	unsigned int fw_active;
 
 	unsigned long context_tag;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f36d35ac3b75..72355578377b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1382,7 +1382,7 @@ __execlists_schedule_in(struct i915_request *rq)
 	ce->lrc.ccid |= engine->execlists.ccid;
 
 	__intel_gt_pm_get(engine->gt);
-	if (engine->fw_domain && !atomic_fetch_inc(&engine->fw_active))
+	if (engine->fw_domain && !engine->fw_active++)
 		intel_uncore_forcewake_get(engine->uncore, engine->fw_domain);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
 	intel_engine_context_in(engine);
@@ -1453,7 +1453,7 @@ static inline void __execlists_schedule_out(struct i915_request *rq)
 	intel_context_update_runtime(ce);
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
