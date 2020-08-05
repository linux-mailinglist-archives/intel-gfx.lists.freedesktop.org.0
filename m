Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1406723C7EA
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 10:38:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDEE899BC;
	Wed,  5 Aug 2020 08:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9DE9899BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 08:38:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22037045-1500050 
 for multiple; Wed, 05 Aug 2020 09:37:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 09:37:51 +0100
Message-Id: <20200805083751.31226-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Prevent immediate reuse of the
 last context tag
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

While we only release the context tag after we have processed the
context-switch event away from the context, be paranoid in case that
value remains live in HW and so avoid reusing the last tag for the next
context after a brief idle.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 20 ++++++++++++++++----
 2 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index c400aaa2287b..bfa0199b7a2c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -330,6 +330,7 @@ struct intel_engine_cs {
 	atomic_t fw_active;
 
 	unsigned long context_tag;
+	unsigned long context_last;
 
 	struct rb_node uabi_node;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 417f6b0c6c61..f8a0ee67d930 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1335,6 +1335,21 @@ static void intel_context_update_runtime(struct intel_context *ce)
 	ce->runtime.total += dt;
 }
 
+static unsigned int next_cyclic_tag(struct intel_engine_cs *engine)
+{
+	unsigned long tag, mask = ~0ul << engine->context_last;
+
+	/* Cyclically allocate unused ids, prevent immediate reuse of last */
+	tag = READ_ONCE(engine->context_tag);
+	tag = (tag & mask) ?: tag;
+	GEM_BUG_ON(tag == 0);
+
+	tag = __ffs(tag);
+	clear_bit(tag, &engine->context_tag);
+
+	return engine->context_last = tag + 1;
+}
+
 static inline struct intel_engine_cs *
 __execlists_schedule_in(struct i915_request *rq)
 {
@@ -1355,12 +1370,9 @@ __execlists_schedule_in(struct i915_request *rq)
 		ce->lrc.ccid = ce->tag;
 	} else {
 		/* We don't need a strict matching tag, just different values */
-		unsigned int tag = ffs(READ_ONCE(engine->context_tag));
+		unsigned int tag = next_cyclic_tag(engine);
 
-		GEM_BUG_ON(tag == 0 || tag >= BITS_PER_LONG);
-		clear_bit(tag - 1, &engine->context_tag);
 		ce->lrc.ccid = tag << (GEN11_SW_CTX_ID_SHIFT - 32);
-
 		BUILD_BUG_ON(BITS_PER_LONG > GEN12_MAX_CONTEXT_HW_ID);
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
