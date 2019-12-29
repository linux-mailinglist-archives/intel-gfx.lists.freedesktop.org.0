Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E78B512CA5E
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Dec 2019 19:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94D289B12;
	Sun, 29 Dec 2019 18:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F27E89ACC
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Dec 2019 18:32:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19720976-1500050 
 for multiple; Sun, 29 Dec 2019 18:31:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 29 Dec 2019 18:31:50 +0000
Message-Id: <20191229183153.3719869-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/gt: Do not restore invalid RS state
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

Only restore valid resource streamer state from the context image, i.e.
avoid restoring if we know the image is invalid.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/446
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 24 +++++++++----------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 81f872f9ef03..066c4eddf5d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1408,14 +1408,6 @@ static inline int mi_set_context(struct i915_request *rq, u32 flags)
 	int len;
 	u32 *cs;
 
-	flags |= MI_MM_SPACE_GTT;
-	if (IS_HASWELL(i915))
-		/* These flags are for resource streamer on HSW+ */
-		flags |= HSW_MI_RS_SAVE_STATE_EN | HSW_MI_RS_RESTORE_STATE_EN;
-	else
-		/* We need to save the extended state for powersaving modes */
-		flags |= MI_SAVE_EXT_STATE_EN | MI_RESTORE_EXT_STATE_EN;
-
 	len = 4;
 	if (IS_GEN(i915, 7))
 		len += 2 + (num_engines ? 4 * num_engines + 6 : 0);
@@ -1607,15 +1599,21 @@ static int switch_context(struct i915_request *rq)
 		return ret;
 
 	if (ce->state) {
-		u32 hw_flags;
+		u32 flags;
 
 		GEM_BUG_ON(rq->engine->id != RCS0);
 
-		hw_flags = 0;
-		if (!test_bit(CONTEXT_VALID_BIT, &ce->flags))
-			hw_flags = MI_RESTORE_INHIBIT;
+		/* For resource streamer on HSW+ and power context elsewhere */
+		BUILD_BUG_ON(HSW_MI_RS_SAVE_STATE_EN != MI_SAVE_EXT_STATE_EN);
+		BUILD_BUG_ON(HSW_MI_RS_RESTORE_STATE_EN != MI_RESTORE_EXT_STATE_EN);
+
+		flags = MI_SAVE_EXT_STATE_EN | MI_MM_SPACE_GTT;
+		if (test_bit(CONTEXT_VALID_BIT, &ce->flags))
+			flags |= MI_RESTORE_EXT_STATE_EN;
+		else
+			flags |= MI_RESTORE_INHIBIT;
 
-		ret = mi_set_context(rq, hw_flags);
+		ret = mi_set_context(rq, flags);
 		if (ret)
 			return ret;
 	}
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
