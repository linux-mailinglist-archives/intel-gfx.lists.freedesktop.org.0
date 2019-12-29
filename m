Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF5F12CA5C
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Dec 2019 19:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F10D89AEA;
	Sun, 29 Dec 2019 18:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B444B89AB7
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Dec 2019 18:32:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19720974-1500050 
 for multiple; Sun, 29 Dec 2019 18:31:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 29 Dec 2019 18:31:48 +0000
Message-Id: <20191229183153.3719869-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/gt: Avoid using tag 0 for the very
 first submission
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

Assume that the HW starts off with tag 0 "active" and so avoid using tag
0 for our own first ELSP submission.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 723914a41ef4..14e7e179855f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1108,7 +1108,7 @@ __execlists_schedule_in(struct i915_request *rq)
 		/* We don't need a strict matching tag, just different values */
 		ce->lrc_desc &= ~GENMASK_ULL(47, 37);
 		ce->lrc_desc |=
-			(u64)(engine->context_tag++ % NUM_CONTEXT_TAG) <<
+			(u64)(++engine->context_tag % NUM_CONTEXT_TAG) <<
 			GEN11_SW_CTX_ID_SHIFT;
 		BUILD_BUG_ON(NUM_CONTEXT_TAG > GEN12_MAX_CONTEXT_HW_ID);
 	}
@@ -2925,6 +2925,8 @@ static void enable_execlists(struct intel_engine_cs *engine)
 			RING_HWS_PGA,
 			i915_ggtt_offset(engine->status_page.vma));
 	ENGINE_POSTING_READ(engine, RING_HWS_PGA);
+
+	engine->context_tag = 0;
 }
 
 static bool unexpected_starting_state(struct intel_engine_cs *engine)
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
