Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF21E2F0682
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jan 2021 11:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A93F189F61;
	Sun, 10 Jan 2021 10:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE63389F61
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Jan 2021 10:55:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23551744-1500050 
 for multiple; Sun, 10 Jan 2021 10:55:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 Jan 2021 10:55:37 +0000
Message-Id: <20210110105538.31663-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210110105538.31663-1-chris@chris-wilson.co.uk>
References: <20210110105538.31663-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Perform an arbitration check
 before busywaiting
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

During igt_reset_nop_engine, it was observed that an unexpected failed
engine reset lead to us busywaiting on the stop-ring semaphore (set
during the reset preparations) on the first request afterwards. There was
no explicit MI_ARB_CHECK in this sequence as the presumption was that
the failed MI_SEMAPHORE_WAIT would itself act as an arbitration point.
It did not in this circumstance, so force it.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 9a182652a35e..e9ac281644cc 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -567,6 +567,7 @@ u32 *gen11_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 
 static u32 *gen12_emit_preempt_busywait(struct i915_request *rq, u32 *cs)
 {
+	*cs++ = MI_ARB_CHECK;
 	*cs++ = MI_SEMAPHORE_WAIT_TOKEN |
 		MI_SEMAPHORE_GLOBAL_GTT |
 		MI_SEMAPHORE_POLL |
@@ -575,7 +576,6 @@ static u32 *gen12_emit_preempt_busywait(struct i915_request *rq, u32 *cs)
 	*cs++ = preempt_address(rq->engine);
 	*cs++ = 0;
 	*cs++ = 0;
-	*cs++ = MI_NOOP;
 
 	return cs;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
