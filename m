Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB78D1354FB
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 09:59:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C193A6E8E1;
	Thu,  9 Jan 2020 08:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57E206E8D8
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 08:59:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19817535-1500050 
 for multiple; Thu, 09 Jan 2020 08:58:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 08:58:37 +0000
Message-Id: <20200109085839.873553-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200109085839.873553-1-chris@chris-wilson.co.uk>
References: <20200109085839.873553-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/14] drm/i915: Drop the shadow w/a batch buffer
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
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index a35aad439281..796c9ce0c494 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1423,8 +1423,6 @@ intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
 	vma = request_record_user(rq, vma, gfp);
 	vma = capture_vma(vma, rq->ring->vma, "ring", gfp);
 	vma = capture_vma(vma, rq->context->state, "HW context", gfp);
-	if (HAS_BROKEN_CS_TLB(rq->i915))
-		vma = capture_vma(vma, ee->engine->gt->scratch, "WA batch", gfp);
 
 	ee->rq_head = rq->head;
 	ee->rq_post = rq->postfix;
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
