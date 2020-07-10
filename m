Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E93121B4D7
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 522DB6E0BC;
	Fri, 10 Jul 2020 12:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48356E0BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:16:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21777162-1500050 
 for multiple; Fri, 10 Jul 2020 13:16:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 13:16:09 +0100
Message-Id: <20200710121609.6775-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200710120717.32484-1-chris@chris-wilson.co.uk>
References: <20200710120717.32484-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Be defensive in the face of false
 CS events
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

If the HW throws a curve ball and reports either en event before it is
possible, or just a completely impossible event, we have to grin and
bear it. The first few events, we will likely not notice as we would be
expecting some event, but as soon as we stop expecting an event and yet
they still keep coming, then we enter into undefined state territory.
In which case, bail out, stop processing the events, and reset the
engine and our set of queued requests to recover.

The sporadic hangs and warnings will continue to plague CI, but at least
system stability should not be compromised.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2045
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index fbcfeaed6441..c86324d2d2bb 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2567,6 +2567,7 @@ static void process_csb(struct intel_engine_cs *engine)
 	tail = READ_ONCE(*execlists->csb_write);
 	if (unlikely(head == tail))
 		return;
+	execlists->csb_head = tail;
 
 	/*
 	 * Hopefully paired with a wmb() in HW!
@@ -2613,6 +2614,9 @@ static void process_csb(struct intel_engine_cs *engine)
 		if (promote) {
 			struct i915_request * const *old = execlists->active;
 
+			if (GEM_WARN_ON(!*execlists->pending))
+				break;
+
 			ring_set_paused(engine, 0);
 
 			/* Point active to the new ELSP; prevent overwriting */
@@ -2635,7 +2639,8 @@ static void process_csb(struct intel_engine_cs *engine)
 
 			WRITE_ONCE(execlists->pending[0], NULL);
 		} else {
-			GEM_BUG_ON(!*execlists->active);
+			if (GEM_WARN_ON(!*execlists->active))
+				break;
 
 			/* port0 completed, advanced to port1 */
 			trace_ports(execlists, "completed", execlists->active);
@@ -2686,7 +2691,6 @@ static void process_csb(struct intel_engine_cs *engine)
 		}
 	} while (head != tail);
 
-	execlists->csb_head = head;
 	set_timeslice(engine);
 
 	/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
