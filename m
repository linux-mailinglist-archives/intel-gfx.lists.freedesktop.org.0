Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA64718355D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 16:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3388A6EAF0;
	Thu, 12 Mar 2020 15:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA806EAF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 15:47:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20538288-1500050 
 for multiple; Thu, 12 Mar 2020 15:47:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Mar 2020 15:47:08 +0000
Message-Id: <20200312154708.1720-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Use igt_random_offset()
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Switch igt_vm_isolation() to using igt_random_offset().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 77c7e65de7c3..62157e7567da 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1809,7 +1809,6 @@ static int igt_vm_isolation(void *arg)
 
 	vm_total = ctx_vm(ctx_a)->total;
 	GEM_BUG_ON(ctx_vm(ctx_b)->total != vm_total);
-	vm_total -= I915_GTT_PAGE_SIZE;
 
 	count = 0;
 	num_engines = 0;
@@ -1828,10 +1827,9 @@ static int igt_vm_isolation(void *arg)
 			u32 value = 0xc5c5c5c5;
 			u64 offset;
 
-			div64_u64_rem(i915_prandom_u64_state(&prng),
-				      vm_total, &offset);
-			offset = round_down(offset, alignof_dword);
-			offset += I915_GTT_PAGE_SIZE;
+			offset = igt_random_offset(&prng, 0, vm_total,
+						   I915_GTT_PAGE_SIZE,
+						   I915_GTT_PAGE_SIZE);
 
 			err = write_to_scratch(ctx_a, engine,
 					       offset, 0xdeadbeef);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
