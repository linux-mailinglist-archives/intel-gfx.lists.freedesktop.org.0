Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C1C1B4DFD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 22:07:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4498D6E084;
	Wed, 22 Apr 2020 20:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 158DE6E084
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 20:07:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20989123-1500050 
 for multiple; Wed, 22 Apr 2020 21:07:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 21:07:09 +0100
Message-Id: <20200422200709.7122-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Warn more clearly if the context
 state is still pinned
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

When recording the default context state, we submit an ordinary context
and then steal the context image for our defaults. To be able to steal
the state, we must have total ownership of the context. During CI we
want to make this error extremely obvious, as otherwise we will fail the
user's module load.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/1763
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 1c99cc72305a..c263f2e94703 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -379,6 +379,11 @@ static int __intel_context_flush_retire(struct intel_context *ce)
 		return PTR_ERR(tl);
 
 	intel_context_timeline_unlock(tl);
+
+	/* Wait for the barrier */
+	if (i915_active_wait(&ce->active))
+		return -EINTR;
+
 	return 0;
 }
 
@@ -472,6 +477,7 @@ static int __engines_record_defaults(struct intel_gt *gt)
 
 		/* We want to be able to unbind the state from the GGTT */
 		GEM_BUG_ON(intel_context_is_pinned(rq->context));
+		GEM_BUG_ON(i915_vma_is_pinned(state));
 
 		/*
 		 * As we will hold a reference to the logical state, it will
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
