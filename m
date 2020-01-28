Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C5514B41B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 13:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D686EE15;
	Tue, 28 Jan 2020 12:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 556DD6EE15;
 Tue, 28 Jan 2020 12:21:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20033986-1500050 
 for multiple; Tue, 28 Jan 2020 12:21:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 12:21:43 +0000
Message-Id: <20200128122143.3765164-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Convert to use
 gem_mmap__device_coherent()
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace gem_mmap_gtt and write-once mmaps with
gem_mmap__device_coherent.

For use as an invalid pointer, we need only worry about having an
mmap_offset (gtt or wc) as they work alike inside the kernel with
respect to locking. (GTT has the extra vm->mutex, but if there's no
aperture, there's never going to be such a mutex to worry about!)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_balancer.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index 6b0c47f09..150eba0db 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -278,7 +278,8 @@ static void invalid_balancer(int i915)
 		igt_assert_eq(__gem_context_set_param(i915, &p), -EFAULT);
 
 		handle = gem_create(i915, 4096 * 3);
-		ptr = gem_mmap__gtt(i915, handle, 4096 * 3, PROT_WRITE);
+		ptr = gem_mmap__device_coherent(i915, handle, 0, 4096 * 3,
+						PROT_WRITE);
 		gem_close(i915, handle);
 
 		memset(&engines, 0, sizeof(engines));
@@ -369,7 +370,7 @@ static void invalid_bonds(int i915)
 	gem_context_set_param(i915, &p);
 
 	handle = gem_create(i915, 4096 * 3);
-	ptr = gem_mmap__gtt(i915, handle, 4096 * 3, PROT_WRITE);
+	ptr = gem_mmap__device_coherent(i915, handle, 0, 4096 * 3, PROT_WRITE);
 	gem_close(i915, handle);
 
 	memcpy(ptr + 4096, &bonds[0], sizeof(bonds[0]));
@@ -720,7 +721,7 @@ static uint32_t create_semaphore_to_spinner(int i915, igt_spin_t *spin)
 	uint64_t addr;
 
 	handle = gem_create(i915, 4096);
-	cs = map = gem_mmap__cpu(i915, handle, 0, 4096, PROT_WRITE);
+	cs = map = gem_mmap__device_coherent(i915, handle, 0, 4096, PROT_WRITE);
 
 	/* Wait until the spinner is running */
 	addr = spin->obj[0].offset + 4 * SPIN_POLL_START_IDX;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
