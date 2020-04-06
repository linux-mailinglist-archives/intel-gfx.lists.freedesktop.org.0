Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EBA19F1DB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 10:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36CB6E229;
	Mon,  6 Apr 2020 08:53:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D47AF6E07B;
 Mon,  6 Apr 2020 08:53:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20811801-1500050 
 for multiple; Mon, 06 Apr 2020 09:53:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Mon,  6 Apr 2020 09:53:09 +0100
Message-Id: <20200406085309.1585743-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Add the missing
 igt_dynamic to dynamic rcs* test selection
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

An important ingredient to using igt_subtest_with_dynamic is to include
an igt_dynamic at some point.

Reported-by: Petri Latvala <petri.latvala@intel.com>
Fixes: 311cb1b360b7 ("i915/perf_pmu: Dynamic active engine tests")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 tests/perf_pmu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tests/perf_pmu.c b/tests/perf_pmu.c
index 92aee1d1d..b9ca6a493 100644
--- a/tests/perf_pmu.c
+++ b/tests/perf_pmu.c
@@ -1866,7 +1866,8 @@ static void faulting_read(int gem_fd, const struct mmap_offset *t)
 
 #define test_each_rcs(T, i915, e) \
 	igt_subtest_with_dynamic(T) __for_each_physical_engine(i915, e) \
-		for_each_if((e)->class == I915_ENGINE_CLASS_RENDER)
+		for_each_if((e)->class == I915_ENGINE_CLASS_RENDER) \
+			igt_dynamic_f("%s", e->name)
 
 igt_main
 {
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
