Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DAA1249B7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 15:31:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDBFD6E46F;
	Wed, 18 Dec 2019 14:31:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A28E6E48D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 14:31:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19622416-1500050 
 for multiple; Wed, 18 Dec 2019 14:31:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 14:31:04 +0000
Message-Id: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/gt: Teach veng to defer the
 context allocation
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

Since we added the context_alloc callback to intel_context_ops, we can
safely install a custom hook for the deferred virtual context allocation.
This means that all new contexts behave the same upon creation,
simplifying later code.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4ebfecd95032..f0078b54b693 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4240,6 +4240,13 @@ static void virtual_engine_initial_hint(struct virtual_engine *ve)
 						ve->siblings[0]);
 }
 
+static int virtual_context_alloc(struct intel_context *ce)
+{
+	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
+
+	return __execlists_context_alloc(ce, ve->siblings[0]);
+}
+
 static int virtual_context_pin(struct intel_context *ce)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
@@ -4277,6 +4284,8 @@ static void virtual_context_exit(struct intel_context *ce)
 }
 
 static const struct intel_context_ops virtual_context_ops = {
+	.alloc = virtual_context_alloc,
+
 	.pin = virtual_context_pin,
 	.unpin = execlists_context_unpin,
 
@@ -4594,12 +4603,6 @@ intel_execlists_create_virtual(struct i915_gem_context *ctx,
 
 	ve->base.flags |= I915_ENGINE_IS_VIRTUAL;
 
-	err = __execlists_context_alloc(&ve->context, siblings[0]);
-	if (err)
-		goto err_put;
-
-	__set_bit(CONTEXT_ALLOC_BIT, &ve->context.flags);
-
 	return &ve->context;
 
 err_put:
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
