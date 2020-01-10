Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5A8136D0F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 13:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 487EC6E9F5;
	Fri, 10 Jan 2020 12:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83F166E9DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 12:31:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19833854-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 12:30:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 12:30:57 +0000
Message-Id: <20200110123059.1348712-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
References: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915: Drop the shadow w/a batch buffer
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

While this is technically the batch as executed by the HW (in part at
least), it is confusing, and only used for a minority of gen.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Acked-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index faa93c4296a7..b2b34be8eb0a 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1428,8 +1428,6 @@ intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
 	vma = capture_user(vma, rq, gfp);
 	vma = capture_vma(vma, rq->ring->vma, "ring", gfp);
 	vma = capture_vma(vma, rq->context->state, "HW context", gfp);
-	if (HAS_BROKEN_CS_TLB(rq->i915))
-		vma = capture_vma(vma, ee->engine->gt->scratch, "WA batch", gfp);
 
 	ee->cpu_ring_head = rq->ring->head;
 	ee->cpu_ring_tail = rq->ring->tail;
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
