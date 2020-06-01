Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0E21EB04A
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 22:36:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACAF76E0E8;
	Mon,  1 Jun 2020 20:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F3376E0E6
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 20:35:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21365695-1500050 
 for multiple; Mon, 01 Jun 2020 21:35:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 21:35:50 +0100
Message-Id: <20200601203550.19192-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601203550.19192-1-chris@chris-wilson.co.uk>
References: <20200601203550.19192-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Always check to enable
 timeslicing if not submitting
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

We may choose not to submit for a number of reasons, yet not fill both
ELSP. In which case we must start timeslicing (there will be no ACK
event on which to hook the start) if the queue would benefit from the
currently active context being evicted.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 7a3c55e3ad9d..8e611470c121 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2358,10 +2358,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				if (last->context == rq->context)
 					goto done;
 
-				if (i915_request_has_sentinel(last)) {
-					start_timeslice(engine, rq_prio(rq));
+				if (i915_request_has_sentinel(last))
 					goto done;
-				}
 
 				/*
 				 * If GVT overrides us we only ever submit
@@ -2442,6 +2440,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		set_preempt_timeout(engine, *active);
 		execlists_submit_ports(engine);
 	} else {
+		start_timeslice(engine, execlists->queue_priority_hint);
 skip_submit:
 		ring_set_paused(engine, 0);
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
