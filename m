Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E99A15C644
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 17:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A76E6E33F;
	Thu, 13 Feb 2020 16:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACAAF6E33F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 16:12:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20213933-1500050 
 for multiple; Thu, 13 Feb 2020 16:11:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2020 16:11:22 +0000
Message-Id: <20200213161122.3689609-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161122.3689609-1-chris@chris-wilson.co.uk>
References: <20200213161122.3689609-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Compute PP_DIR_BASE explicitly
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

Since it was not obvious that 10 == (16 - 6), do it in a couple of steps
to match up clearly with bspec.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index ab58694c3320..72ca85a86af2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -635,6 +635,12 @@ static struct i915_address_space *vm_alias(struct i915_address_space *vm)
 	return vm;
 }
 
+static u32 pp_dir_base(const struct i915_ppgtt *ppgtt)
+{
+	/* 31:16 contains the cacheline (64-byte) offset into the GGTT */
+	return px_base(ppgtt->pd)->ggtt_offset / 64 << 16;
+}
+
 static void set_pp_dir(struct intel_engine_cs *engine)
 {
 	struct i915_address_space *vm = vm_alias(engine->gt->vm);
@@ -646,8 +652,7 @@ static void set_pp_dir(struct intel_engine_cs *engine)
 				 0, GEN6_MBCTL_ENABLE_BOOT_FETCH);
 
 		ENGINE_WRITE(engine, RING_PP_DIR_DCLV, PP_DIR_DCLV_2G);
-		ENGINE_WRITE(engine, RING_PP_DIR_BASE,
-			     px_base(ppgtt->pd)->ggtt_offset << 10);
+		ENGINE_WRITE(engine, RING_PP_DIR_BASE, pp_dir_base(ppgtt));
 	}
 }
 
@@ -1346,7 +1351,7 @@ static int load_pd_dir(struct i915_request *rq,
 
 	*cs++ = MI_LOAD_REGISTER_IMM(1);
 	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
-	*cs++ = px_base(ppgtt->pd)->ggtt_offset << 10;
+	*cs++ = pp_dir_base(ppgtt);
 
 	/* Stall until the page table load is complete? */
 	*cs++ = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
