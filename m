Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 010BF1E9F26
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 09:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71E2B6E17C;
	Mon,  1 Jun 2020 07:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 332866E125
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 07:25:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21356609-1500050 
 for multiple; Mon, 01 Jun 2020 08:24:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 08:24:19 +0100
Message-Id: <20200601072446.19548-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/36] drm/i915: Support inter-engine semaphores
 on gen6/7
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

Should we gain per-client timelines, we can then utilise the separate
HWSP in order to use MI_SEMAPHORE_MBOX with the unique GGTT addresses
required for synchronising between clients across different engines.
Teach the emit_semaphore_wait about MI_SEMAPHORE_MBOX for the older
generations.

Note that the engine must still indicate support for the semaphore
synchronisation before the context is allowed to use them.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c | 31 +++++++++++++++++++----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index c5d7220de529..9537e30f9439 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1016,7 +1016,7 @@ __emit_semaphore_wait(struct i915_request *to,
 	int len, err;
 	u32 *cs;
 
-	GEM_BUG_ON(INTEL_GEN(to->i915) < 8);
+	GEM_BUG_ON(INTEL_GEN(to->i915) < 6);
 	GEM_BUG_ON(i915_request_has_initial_breadcrumb(to));
 
 	/* We need to pin the signaler's HWSP until we are finished reading. */
@@ -1040,17 +1040,26 @@ __emit_semaphore_wait(struct i915_request *to,
 	 * (post-wrap) values than they were expecting (and so wait
 	 * forever).
 	 */
-	*cs++ = (MI_SEMAPHORE_WAIT |
-		 MI_SEMAPHORE_GLOBAL_GTT |
-		 MI_SEMAPHORE_POLL |
-		 MI_SEMAPHORE_SAD_GTE_SDD) +
-		has_token;
-	*cs++ = seqno;
-	*cs++ = hwsp_offset;
-	*cs++ = 0;
-	if (has_token) {
+	if (INTEL_GEN(to->i915) >= 8) {
+		*cs++ = (MI_SEMAPHORE_WAIT |
+			 MI_SEMAPHORE_GLOBAL_GTT |
+			 MI_SEMAPHORE_POLL |
+			 MI_SEMAPHORE_SAD_GTE_SDD) +
+			has_token;
+		*cs++ = seqno;
+		*cs++ = hwsp_offset;
+		*cs++ = 0;
+		if (has_token) {
+			*cs++ = 0;
+			*cs++ = MI_NOOP;
+		}
+	} else {
+		*cs++ = (MI_SEMAPHORE_MBOX |
+			 MI_SEMAPHORE_GLOBAL_GTT |
+			 MI_SEMAPHORE_COMPARE);
+		*cs++ = seqno - 1; /* COMPARE is a strict greater-than */
+		*cs++ = hwsp_offset;
 		*cs++ = 0;
-		*cs++ = MI_NOOP;
 	}
 
 	intel_ring_advance(to, cs);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
