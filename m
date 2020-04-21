Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 644841B2DE6
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 19:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 893676E087;
	Tue, 21 Apr 2020 17:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336D06E087
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 17:14:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20975047-1500050 
 for multiple; Tue, 21 Apr 2020 18:13:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Apr 2020 18:13:51 +0100
Message-Id: <20200421171351.19575-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Unroll the CS frequency loop
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

Having noticed that MI_BB_START is incurring a memory stall (see the
correlation with uncore frequency), we have to unroll the loop in order
to diminish the impact of the MI_BB_START on the instruction throughput.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 32 +++++++++++++++-----------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index e2afc2003caa..d80c0ee1e654 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -49,14 +49,17 @@ create_spin_counter(struct intel_engine_cs *engine,
 #define CS_GPR(x) GEN8_RING_CS_GPR(engine->mmio_base, x)
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
+	unsigned long end;
 	u32 *base, *cs;
 	int loop, i;
 	int err;
 
-	obj = i915_gem_object_create_internal(vm->i915, 4096);
+	obj = i915_gem_object_create_internal(vm->i915, 64 << 10);
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
+	end = obj->base.size / sizeof(u32) - 1;
+
 	vma = i915_vma_instance(obj, vm, NULL);
 	if (IS_ERR(vma)) {
 		i915_gem_object_put(obj);
@@ -90,27 +93,30 @@ create_spin_counter(struct intel_engine_cs *engine,
 
 	loop = cs - base;
 
-	*cs++ = MI_MATH(4);
-	*cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCA, MI_MATH_REG(COUNT));
-	*cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCB, MI_MATH_REG(INC));
-	*cs++ = MI_MATH_ADD;
-	*cs++ = MI_MATH_STORE(MI_MATH_REG(COUNT), MI_MATH_REG_ACCU);
-
-	if (srm) {
-		*cs++ = MI_STORE_REGISTER_MEM_GEN8;
-		*cs++ = i915_mmio_reg_offset(CS_GPR(COUNT));
-		*cs++ = lower_32_bits(vma->node.start + 1000 * sizeof(*cs));
-		*cs++ = upper_32_bits(vma->node.start + 1000 * sizeof(*cs));
+	for (i = 0; i < 1024; i++) {
+		*cs++ = MI_MATH(4);
+		*cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCA, MI_MATH_REG(COUNT));
+		*cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCB, MI_MATH_REG(INC));
+		*cs++ = MI_MATH_ADD;
+		*cs++ = MI_MATH_STORE(MI_MATH_REG(COUNT), MI_MATH_REG_ACCU);
+
+		if (srm) {
+			*cs++ = MI_STORE_REGISTER_MEM_GEN8;
+			*cs++ = i915_mmio_reg_offset(CS_GPR(COUNT));
+			*cs++ = lower_32_bits(vma->node.start + end * sizeof(*cs));
+			*cs++ = upper_32_bits(vma->node.start + end * sizeof(*cs));
+		}
 	}
 
 	*cs++ = MI_BATCH_BUFFER_START_GEN8;
 	*cs++ = lower_32_bits(vma->node.start + loop * sizeof(*cs));
 	*cs++ = upper_32_bits(vma->node.start + loop * sizeof(*cs));
+	GEM_BUG_ON(cs - base > end);
 
 	i915_gem_object_flush_map(obj);
 
 	*cancel = base + loop;
-	*counter = srm ? memset32(base + 1000, 0, 1) : NULL;
+	*counter = srm ? memset32(base + end, 0, 1) : NULL;
 	return vma;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
