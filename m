Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBD6285B9B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 11:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 208D16E249;
	Wed,  7 Oct 2020 09:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA1446E249
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 09:09:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22644418-1500050 
 for multiple; Wed, 07 Oct 2020 10:09:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Oct 2020 10:09:47 +0100
Message-Id: <20201007090947.19950-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Perform all asynchronous waits
 prior to marking payload start
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

The initial breadcrumb marks the transition from context wait and setup
into the request payload. We use the marker to determine if the request
is merely waiting to begin, or is inside the payload and hung.
Forgetting to include a breadcrumb before the user payload would mean we
do not reset the guilty user request, and conversely if the initial
breadcrumb is too early we blame the user for a problem elsewhere.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_client_blt.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
index 272cf3ea68d5..44821d94544f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
@@ -202,12 +202,6 @@ static void clear_pages_worker(struct work_struct *work)
 	if (unlikely(err))
 		goto out_request;
 
-	if (w->ce->engine->emit_init_breadcrumb) {
-		err = w->ce->engine->emit_init_breadcrumb(rq);
-		if (unlikely(err))
-			goto out_request;
-	}
-
 	/*
 	 * w->dma is already exported via (vma|obj)->resv we need only
 	 * keep track of the GPU activity within this vma/request, and
@@ -217,9 +211,15 @@ static void clear_pages_worker(struct work_struct *work)
 	if (err)
 		goto out_request;
 
-	err = w->ce->engine->emit_bb_start(rq,
-					   batch->node.start, batch->node.size,
-					   0);
+	if (rq->engine->emit_init_breadcrumb) {
+		err = rq->engine->emit_init_breadcrumb(rq);
+		if (unlikely(err))
+			goto out_request;
+	}
+
+	err = rq->engine->emit_bb_start(rq,
+					batch->node.start, batch->node.size,
+					0);
 out_request:
 	if (unlikely(err)) {
 		i915_request_set_error_once(rq, err);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
