Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C02C22EF973
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 21:40:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD166E8CF;
	Fri,  8 Jan 2021 20:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E6BC6E811
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 20:40:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23542765-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Jan 2021 20:40:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 20:40:26 +0000
Message-Id: <20210108204026.20682-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210108204026.20682-1-chris@chris-wilson.co.uk>
References: <20210108204026.20682-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 7/7] drm/i915/gt: Disable arbitration on no-preempt
 requests
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

If a request is submitted and known to require no preemption, disable
arbitration around the batch which prevents the HW from handling a
preemption request during the payload.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 +++---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c       | 3 +++
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cf9a6b4eb913..b91b32195dcf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2534,6 +2534,9 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
 {
 	int err;
 
+	if (intel_context_nopreempt(eb->context))
+		__set_bit(I915_FENCE_FLAG_NOPREEMPT, &eb->request->fence.flags);
+
 	err = eb_move_to_gpu(eb);
 	if (err)
 		return err;
@@ -2574,9 +2577,6 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
 			return err;
 	}
 
-	if (intel_context_nopreempt(eb->context))
-		__set_bit(I915_FENCE_FLAG_NOPREEMPT, &eb->request->fence.flags);
-
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 1972dd5dca00..2e36e0a9d8a6 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -427,6 +427,9 @@ int gen8_emit_bb_start(struct i915_request *rq,
 {
 	u32 *cs;
 
+	if (unlikely(i915_request_has_nopreempt(rq)))
+		return gen8_emit_bb_start_noarb(rq, offset, len, flags);
+
 	cs = intel_ring_begin(rq, 6);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
