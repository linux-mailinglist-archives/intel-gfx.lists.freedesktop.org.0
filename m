Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B81A153042
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 12:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845B06F55D;
	Wed,  5 Feb 2020 11:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 603956F55B;
 Wed,  5 Feb 2020 11:59:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20123538-1500050 
 for multiple; Wed, 05 Feb 2020 11:59:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Wed,  5 Feb 2020 11:59:15 +0000
Message-Id: <20200205115915.1823074-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_exec: Update the list of
 engines on the actual context
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to iterate the set of physical engines on this context, so
update the iterators to act on a particular context.

This tunnel keeps on getting longer.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/i915/gem_engine_topology.h | 7 +++++--
 tests/i915/gem_ctx_exec.c      | 2 +-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/lib/i915/gem_engine_topology.h b/lib/i915/gem_engine_topology.h
index e40d7ec83..027d86be2 100644
--- a/lib/i915/gem_engine_topology.h
+++ b/lib/i915/gem_engine_topology.h
@@ -67,9 +67,12 @@ struct intel_execution_engine2 gem_eb_flags_to_engine(unsigned int flags);
 	     intel_next_engine(&i__))
 
 /* needs to replace "for_each_physical_engine" when conflicts are fixed */
-#define __for_each_physical_engine(fd__, e__) \
-	for (struct intel_engine_data i__ = intel_init_engine_list(fd__, 0); \
+#define ____for_each_physical_engine(fd__, ctx__, e__) \
+	for (struct intel_engine_data i__ = intel_init_engine_list(fd__, ctx__); \
 	     ((e__) = intel_get_current_physical_engine(&i__)); \
 	     intel_next_engine(&i__))
 
+#define __for_each_physical_engine(fd__, e__) \
+	____for_each_physical_engine(fd__, 0, e__)
+
 #endif /* GEM_ENGINE_TOPOLOGY_H */
diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
index aeb8d2976..5b4e4b3db 100644
--- a/tests/i915/gem_ctx_exec.c
+++ b/tests/i915/gem_ctx_exec.c
@@ -226,7 +226,7 @@ static void nohangcheck_hostile(int i915)
 
 	igt_require(__enable_hangcheck(dir, false));
 
-	__for_each_physical_engine(i915, e) {
+	____for_each_physical_engine(i915, ctx, e) {
 		igt_spin_t *spin;
 
 		spin = igt_spin_new(i915, ctx,
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
