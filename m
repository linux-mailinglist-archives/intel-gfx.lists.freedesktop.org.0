Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE53165A57
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 10:41:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D15D26ED0D;
	Thu, 20 Feb 2020 09:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F8E6ED08;
 Thu, 20 Feb 2020 09:41:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20284811-1500050 
 for multiple; Thu, 20 Feb 2020 09:41:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 09:41:32 +0000
Message-Id: <20200220094134.1560435-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] igt/kms_frontbuffer_tracking: Skip
 over IGT_DRAW_BLT when there's no BLT
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

If the blitter is not available, we cannot use it as a source for dirty
rectangles. We shall have to rely on the other engines to create GPU
dirty instead.

v2: Try using lots of subgroup+fixtures

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/kms_frontbuffer_tracking.c | 57 ++++++++++++++++++++++++++++++--
 1 file changed, 55 insertions(+), 2 deletions(-)

diff --git a/tests/kms_frontbuffer_tracking.c b/tests/kms_frontbuffer_tracking.c
index c4b4af43a..9e00fa2e1 100644
--- a/tests/kms_frontbuffer_tracking.c
+++ b/tests/kms_frontbuffer_tracking.c
@@ -3043,6 +3043,8 @@ static void basic_subtest(const struct test_mode *t)
 	fb1 = params->primary.fb;
 
 	for (r = 0, method = 0; method < IGT_DRAW_METHOD_COUNT; method++) {
+		if (method == IGT_DRAW_BLT && !gem_has_blitter(drm.fd))
+			continue;
 		if (method == IGT_DRAW_MMAP_GTT &&
 		    !gem_has_mappable_ggtt(drm.fd))
 			continue;
@@ -3275,10 +3277,11 @@ static const char *flip_str(enum flip_type flip)
 			continue;					   \
 		if (!opt.show_hidden && t.fbs == FBS_SHARED &&		   \
 		    (t.plane == PLANE_CUR || t.plane == PLANE_SPR))	   \
-			continue;
+			continue;					   \
+		igt_subtest_group {
 
 
-#define TEST_MODE_ITER_END } } } } } }
+#define TEST_MODE_ITER_END } } } } } } }
 
 struct option long_options[] = {
 	{ "no-status-check",          0, 0, 's'},
@@ -3324,6 +3327,10 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 	}
 
 	TEST_MODE_ITER_BEGIN(t)
+		igt_fixture {
+			if (t.method == IGT_DRAW_BLT)
+				gem_require_blitter(drm.fd);
+		}
 		igt_subtest_f("%s-%s-%s-%s-%s-draw-%s",
 			      feature_str(t.feature),
 			      pipes_str(t.pipes),
@@ -3340,6 +3347,11 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		    (!opt.show_hidden && t.method != IGT_DRAW_BLT))
 			continue;
 
+		igt_fixture {
+			if (t.method == IGT_DRAW_BLT)
+				gem_require_blitter(drm.fd);
+		}
+
 		for (t.flip = 0; t.flip < FLIP_COUNT; t.flip++)
 			igt_subtest_f("%s-%s-%s-%s-%sflip-%s",
 				      feature_str(t.feature),
@@ -3358,6 +3370,11 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		    (t.feature & FEATURE_FBC) == 0)
 			continue;
 
+		igt_fixture {
+			if (t.method == IGT_DRAW_BLT)
+				gem_require_blitter(drm.fd);
+		}
+
 		igt_subtest_f("%s-%s-%s-fliptrack",
 			      feature_str(t.feature),
 			      pipes_str(t.pipes),
@@ -3371,6 +3388,11 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		    t.plane == PLANE_PRI)
 			continue;
 
+		igt_fixture {
+			if (t.method == IGT_DRAW_BLT)
+				gem_require_blitter(drm.fd);
+		}
+
 		igt_subtest_f("%s-%s-%s-%s-%s-move",
 			      feature_str(t.feature),
 			      pipes_str(t.pipes),
@@ -3394,6 +3416,11 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		    t.plane != PLANE_SPR)
 			continue;
 
+		igt_fixture {
+			if (t.method == IGT_DRAW_BLT)
+				gem_require_blitter(drm.fd);
+		}
+
 		igt_subtest_f("%s-%s-%s-%s-%s-fullscreen",
 			      feature_str(t.feature),
 			      pipes_str(t.pipes),
@@ -3410,6 +3437,11 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		    (!opt.show_hidden && t.fbs != FBS_INDIVIDUAL))
 			continue;
 
+		igt_fixture {
+			if (t.method == IGT_DRAW_BLT)
+				gem_require_blitter(drm.fd);
+		}
+
 		igt_subtest_f("%s-%s-%s-%s-multidraw",
 			      feature_str(t.feature),
 			      pipes_str(t.pipes),
@@ -3426,6 +3458,11 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		    t.method != IGT_DRAW_MMAP_GTT)
 			continue;
 
+		igt_fixture {
+			if (t.method == IGT_DRAW_BLT)
+				gem_require_blitter(drm.fd);
+		}
+
 		igt_subtest_f("%s-farfromfence", feature_str(t.feature))
 			farfromfence_subtest(&t);
 	TEST_MODE_ITER_END
@@ -3437,6 +3474,11 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		    t.fbs != FBS_INDIVIDUAL)
 			continue;
 
+		igt_fixture {
+			if (t.method == IGT_DRAW_BLT)
+				gem_require_blitter(drm.fd);
+		}
+
 		for (t.format = 0; t.format < FORMAT_COUNT; t.format++) {
 			/* Skip what we already tested. */
 			if (t.format == FORMAT_DEFAULT)
@@ -3456,6 +3498,12 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		    t.plane != PLANE_PRI ||
 		    t.method != IGT_DRAW_BLT)
 			continue;
+
+		igt_fixture {
+			if (t.method == IGT_DRAW_BLT)
+				gem_require_blitter(drm.fd);
+		}
+
 		igt_subtest_f("%s-%s-scaledprimary",
 			      feature_str(t.feature),
 			      fbs_str(t.fbs))
@@ -3470,6 +3518,11 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		    t.method != IGT_DRAW_BLT)
 			continue;
 
+		igt_fixture {
+			if (t.method == IGT_DRAW_BLT)
+				gem_require_blitter(drm.fd);
+		}
+
 		igt_subtest_f("%s-modesetfrombusy", feature_str(t.feature))
 			modesetfrombusy_subtest(&t);
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
