Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CD616255C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 12:16:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 493656E1F9;
	Tue, 18 Feb 2020 11:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9AB36E1D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 11:16:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20262314-1500050 
 for multiple; Tue, 18 Feb 2020 11:16:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 11:16:19 +0000
Message-Id: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/gt: Show the cumulative context
 runtime in engine debug
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

As we have the total runtime known to us, show it when dumping the
engine state for debug.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f6f5e1ec48fc..e46e55354e95 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1376,7 +1376,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 		execlists_active_lock_bh(execlists);
 		rcu_read_lock();
 		for (port = execlists->active; (rq = *port); port++) {
-			char hdr[80];
+			char hdr[160];
 			int len;
 
 			len = snprintf(hdr, sizeof(hdr),
@@ -1386,10 +1386,12 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 				struct intel_timeline *tl = get_timeline(rq);
 
 				len += snprintf(hdr + len, sizeof(hdr) - len,
-						"ring:{start:%08x, hwsp:%08x, seqno:%08x}, ",
+						"ring:{start:%08x, hwsp:%08x, seqno:%08x, runtime:%llums}, ",
 						i915_ggtt_offset(rq->ring->vma),
 						tl ? tl->hwsp_offset : 0,
-						hwsp_seqno(rq));
+						hwsp_seqno(rq),
+						DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),
+								      1000 * 1000));
 
 				if (tl)
 					intel_timeline_put(tl);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
