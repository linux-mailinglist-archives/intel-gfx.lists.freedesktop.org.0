Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 926D411D1C8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 17:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 015E16E1BA;
	Thu, 12 Dec 2019 16:04:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE2386E1BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 16:04:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19557245-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 16:04:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 16:04:21 +0000
Message-Id: <20191212160421.1631908-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Set vm again after MI_SET_CONTEXT
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

Reloading the PD after MI_SET_CONTEXT, along with copious amounts of
flushes, so far is making Baytrail more content.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 25 +++++++++++++++----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 5c22ca6f998a..336eb3f864c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1609,11 +1609,7 @@ static int switch_context(struct i915_request *rq)
 		 * post-sync op, this extra pass appears vital before a
 		 * mm switch!
 		 */
-		ret = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
-		if (ret)
-			return ret;
-
-		ret = flush_tlb(rq);
+		ret = rq->engine->emit_flush(rq, EMIT_FLUSH);
 		if (ret)
 			return ret;
 
@@ -1632,6 +1628,7 @@ static int switch_context(struct i915_request *rq)
 		ret = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
 		if (ret)
 			return ret;
+
 	}
 
 	if (ce->state) {
@@ -1645,6 +1642,24 @@ static int switch_context(struct i915_request *rq)
 			return ret;
 	}
 
+	if (vm) {
+		ret = rq->engine->emit_flush(rq, EMIT_FLUSH);
+		if (ret)
+			return ret;
+
+		ret = load_pd_dir(rq, i915_vm_to_ppgtt(vm), PP_DIR_DCLV_2G);
+		if (ret)
+			return ret;
+
+		ret = flush_tlb(rq);
+		if (ret)
+			return ret;
+
+		ret = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
+		if (ret)
+			return ret;
+	}
+
 	ret = remap_l3(rq);
 	if (ret)
 		return ret;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
