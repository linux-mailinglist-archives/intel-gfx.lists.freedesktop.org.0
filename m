Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49009171384
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 09:58:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC646EC60;
	Thu, 27 Feb 2020 08:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D02246EC50
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 08:57:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20366842-1500050 
 for multiple; Thu, 27 Feb 2020 08:57:28 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 08:57:22 +0000
Message-Id: <20200227085723.1961649-19-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/20] drm/i915/execlists: Check the sentinel is
 alone in the ELSP
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

We only use sentinel requests for "preempt-to-idle" passes, so assert
that they are the only request in a new submission.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 253e89fecd95..d907b5ebc1a4 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1448,6 +1448,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 {
 	struct i915_request * const *port, *rq;
 	struct intel_context *ce = NULL;
+	bool sentinel = false;
 
 	trace_ports(execlists, msg, execlists->pending);
 
@@ -1481,6 +1482,26 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		}
 		ce = rq->context;
 
+		/*
+		 * Sentinels are supposed to be lonely so they flush the
+		 * current exection off the HW. Check that they are the
+		 * only request in the pending submission.
+		 */
+		if (sentinel) {
+			GEM_TRACE_ERR("context:%llx after sentinel in pending[%zd]\n",
+				      ce->timeline->fence_context,
+				      port - execlists->pending);
+			return false;
+		}
+
+		sentinel = i915_request_has_sentinel(rq);
+		if (sentinel && port != execlists->pending) {
+			GEM_TRACE_ERR("sentinel context:%llx not in prime position[%zd]\n",
+				      ce->timeline->fence_context,
+				      port - execlists->pending);
+			return false;
+		}
+
 		/* Hold tightly onto the lock to prevent concurrent retires! */
 		if (!spin_trylock_irqsave(&rq->lock, flags))
 			continue;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
