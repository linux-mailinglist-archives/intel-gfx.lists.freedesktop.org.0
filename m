Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACE5201AEB
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 21:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82B996E4CB;
	Fri, 19 Jun 2020 19:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1ED06E4CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 19:11:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21554108-1500050 
 for multiple; Fri, 19 Jun 2020 20:10:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Jun 2020 20:10:53 +0100
Message-Id: <20200619191053.9654-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Show the culmative runtime as part
 of the engine info
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

Since we always enable the busy-stats, the culmulative runtime should be
accurate, and might be useful for diagnosing issues with the engine.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index c62b3cbdbbf9..7bf2f76212f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1510,6 +1510,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	struct i915_request *rq;
 	intel_wakeref_t wakeref;
 	unsigned long flags;
+	ktime_t dummy;
 
 	if (header) {
 		va_list ap;
@@ -1527,6 +1528,10 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 		   yesno(!llist_empty(&engine->barrier_tasks)));
 	drm_printf(m, "\tLatency: %luus\n",
 		   ewma__engine_latency_read(&engine->latency));
+	if (intel_engine_supports_stats(engine))
+		drm_printf(m, "\tRuntime: %llums\n",
+			   ktime_to_ms(intel_engine_get_busy_time(engine,
+								  &dummy)));
 	drm_printf(m, "\tForcewake: %x domains, %d active\n",
 		   engine->fw_domain, atomic_read(&engine->fw_active));
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
