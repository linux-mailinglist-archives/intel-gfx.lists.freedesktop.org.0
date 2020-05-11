Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A57F1CD57B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81CFB6E41F;
	Mon, 11 May 2020 09:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C9D6E415;
 Mon, 11 May 2020 09:39:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21157965-1500050 
 for multiple; Mon, 11 May 2020 10:39:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 10:39:24 +0100
Message-Id: <20200511093924.65748-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511082141.65494-1-chris@chris-wilson.co.uk>
References: <20200511082141.65494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ringfill: Do a basic pass over
 all engines simultaneously
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Change the basic pre-mergetest to do a single pass over all engines
simultaneously. This should take no longer than checking a single
engine, while providing just the right amount of stress regardless of
machine size.

v2: Move around the quiescence and requires to avoid calling them from
the children.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 tests/i915/gem_ringfill.c             | 31 ++++++++++++++++++++-------
 tests/intel-ci/fast-feedback.testlist |  2 +-
 2 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/tests/i915/gem_ringfill.c b/tests/i915/gem_ringfill.c
index a2157bd6f..05b997ed4 100644
--- a/tests/i915/gem_ringfill.c
+++ b/tests/i915/gem_ringfill.c
@@ -178,13 +178,11 @@ static void run_test(int fd, unsigned ring, unsigned flags, unsigned timeout)
 	struct drm_i915_gem_execbuffer2 execbuf;
 	igt_hang_t hang;
 
-	gem_require_ring(fd, ring);
-	igt_require(gem_can_store_dword(fd, ring));
-
-	if (flags & (SUSPEND | HIBERNATE))
+	if (flags & (SUSPEND | HIBERNATE)) {
 		run_test(fd, ring, 0, 0);
+		gem_quiescent_gpu(fd);
+	}
 
-	gem_quiescent_gpu(fd);
 	igt_require(setup_execbuf(fd, &execbuf, obj, reloc, ring) == 0);
 
 	memset(&hang, 0, sizeof(hang));
@@ -233,10 +231,10 @@ static void run_test(int fd, unsigned ring, unsigned flags, unsigned timeout)
 	gem_close(fd, obj[1].handle);
 	gem_close(fd, obj[0].handle);
 
-	gem_quiescent_gpu(fd);
-
-	if (flags & (SUSPEND | HIBERNATE))
+	if (flags & (SUSPEND | HIBERNATE)) {
+		gem_quiescent_gpu(fd);
 		run_test(fd, ring, 0, 0);
+	}
 }
 
 igt_main
@@ -287,11 +285,28 @@ igt_main
 				      e->name,
 				      m->suffix) {
 				igt_skip_on(m->flags & NEWFD && master);
+				gem_require_ring(fd, eb_ring(e));
+				igt_require(gem_can_store_dword(fd, eb_ring(e)));
 				run_test(fd, eb_ring(e), m->flags, m->timeout);
+				gem_quiescent_gpu(fd);
 			}
 		}
 	}
 
+	igt_subtest("basic-all") {
+		const struct intel_execution_engine2 *e;
+
+		__for_each_physical_engine(fd, e) {
+			if (!gem_class_can_store_dword(fd, e->class))
+				continue;
+
+			igt_fork(child, 1)
+				run_test(fd, e->flags, 0, 1);
+		}
+
+		igt_waitchildren();
+	}
+
 	igt_fixture
 		close(fd);
 }
diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
index 2ccad4386..e2ed0a1d6 100644
--- a/tests/intel-ci/fast-feedback.testlist
+++ b/tests/intel-ci/fast-feedback.testlist
@@ -35,7 +35,7 @@ igt@gem_mmap@basic
 igt@gem_mmap_gtt@basic
 igt@gem_render_linear_blits@basic
 igt@gem_render_tiled_blits@basic
-igt@gem_ringfill@basic-default-forked
+igt@gem_ringfill@basic-all
 igt@gem_sync@basic-all
 igt@gem_sync@basic-each
 igt@gem_tiled_blits@basic
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
