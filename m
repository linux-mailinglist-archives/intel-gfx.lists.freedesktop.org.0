Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D15228DF17
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 12:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8F96EA45;
	Wed, 14 Oct 2020 10:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C95AB6EA3C;
 Wed, 14 Oct 2020 10:40:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22711489-1500050 
 for multiple; Wed, 14 Oct 2020 11:40:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Wed, 14 Oct 2020 11:40:30 +0100
Message-Id: <20201014104038.2554985-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
References: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 02/10] i915/gem_exec_balancer: Check
 balancer submission latency
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While CI is unreliable in terms of detecting performance deltas, it
should still be able to detect when we are orders of magnitude off
expectations. In this case, latency/throughput when submitting to a load
balancer should be on par with a native engine.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_balancer.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index 35a032ccb..0c334b91b 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -2380,6 +2380,7 @@ static void nop(int i915)
 	for (int class = 0; class < 32; class++) {
 		struct i915_engine_class_instance *ci;
 		unsigned int count;
+		double max = 0;
 		uint32_t ctx;
 
 		ci = list_engines(i915, 1u << class, &count);
@@ -2410,6 +2411,8 @@ static void nop(int i915)
 
 			t = igt_nsec_elapsed(&tv) * 1e-3 / nops;
 			igt_info("%s:%d %.3fus\n", class_to_str(class), n, t);
+			if (t > max)
+				max = t;
 		}
 
 		{
@@ -2433,9 +2436,10 @@ static void nop(int i915)
 
 			t = igt_nsec_elapsed(&tv) * 1e-3 / nops;
 			igt_info("%s:* %.3fus\n", class_to_str(class), t);
+			if (t > 10 * max)
+				igt_warn("Balancer submission %.1fx worse than normal!\n", t / max);
 		}
 
-
 		igt_fork(child, count) {
 			struct drm_i915_gem_execbuffer2 execbuf = {
 				.buffers_ptr = to_user_pointer(&batch),
@@ -2476,6 +2480,8 @@ static void nop(int i915)
 			t = igt_nsec_elapsed(&tv) * 1e-3 / nops;
 			igt_info("[%d] %s:* %.3fus\n",
 				 child, class_to_str(class), t);
+			if (t > 20 * max)
+				igt_warn("[%d] Balancer submission %.1fx worse than normal!\n", child, t / max);
 
 			gem_context_destroy(i915, execbuf.rsvd1);
 		}
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
