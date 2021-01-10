Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 265172F0683
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jan 2021 11:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9451D89F5F;
	Sun, 10 Jan 2021 10:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A037A89F53
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Jan 2021 10:55:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23551743-1500050 
 for multiple; Sun, 10 Jan 2021 10:55:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 Jan 2021 10:55:36 +0000
Message-Id: <20210110105538.31663-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Check for arbitration after
 writing start seqno
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

On the off chance that we need to arbitrate before launching the
payload, perform the check after we signal the request is ready to
start. Assuming instantaneous processing of the CS event, the request
will then be treated as having started when we make the decisions as to
how to process that CS event.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 2e36e0a9d8a6..9a182652a35e 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -361,19 +361,19 @@ int gen8_emit_init_breadcrumb(struct i915_request *rq)
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
+	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+	*cs++ = hwsp_offset(rq);
+	*cs++ = 0;
+	*cs++ = rq->fence.seqno - 1;
+
 	/*
 	 * Check if we have been preempted before we even get started.
 	 *
 	 * After this point i915_request_started() reports true, even if
 	 * we get preempted and so are no longer running.
 	 */
-	*cs++ = MI_ARB_CHECK;
 	*cs++ = MI_NOOP;
-
-	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
-	*cs++ = hwsp_offset(rq);
-	*cs++ = 0;
-	*cs++ = rq->fence.seqno - 1;
+	*cs++ = MI_ARB_CHECK;
 
 	intel_ring_advance(rq, cs);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
