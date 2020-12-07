Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 741DF2D1592
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 17:12:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2A989DFC;
	Mon,  7 Dec 2020 16:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0C689D58;
 Mon,  7 Dec 2020 16:12:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23243235-1500050 
 for multiple; Mon, 07 Dec 2020 16:11:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Dec 2020 16:11:50 +0000
Message-Id: <20201207161150.1841453-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201207161150.1841453-1-chris@chris-wilson.co.uk>
References: <20201207161150.1841453-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/query: Directly check query
 results against GETPARAM
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

Simplify the cross-check by asserting that the existence of an engine in
the list matches the existence of the engine as reported by GETPARAM.
By using the comparison, we check both directions at once.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 tests/i915/i915_query.c | 49 ++++++++---------------------------------
 1 file changed, 9 insertions(+), 40 deletions(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index cdf2d3403..b415650ae 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -719,46 +719,15 @@ static void engines(int fd)
 	gem_context_reset_engines(fd, 0);
 
 	/* Check results match the legacy GET_PARAM (where we can). */
-	for (i = 0; i < engines->num_engines; i++) {
-		struct drm_i915_engine_info *engine =
-			(struct drm_i915_engine_info *)&engines->engines[i];
-
-		switch (engine->engine.engine_class) {
-		case I915_ENGINE_CLASS_RENDER:
-			/* Will be tested later. */
-			break;
-		case I915_ENGINE_CLASS_COPY:
-			igt_assert(gem_has_blt(fd));
-			break;
-		case I915_ENGINE_CLASS_VIDEO:
-			switch (engine->engine.engine_instance) {
-			case 0:
-				igt_assert(gem_has_bsd(fd));
-				break;
-			case 1:
-				igt_assert(gem_has_bsd2(fd));
-				break;
-			}
-			break;
-		case I915_ENGINE_CLASS_VIDEO_ENHANCE:
-			igt_assert(gem_has_vebox(fd));
-			break;
-		default:
-			igt_assert(0);
-		}
-	}
-
-	/* Reverse check to the above - all GET_PARAM engines are present. */
-	igt_assert(has_engine(engines, I915_ENGINE_CLASS_RENDER, 0));
-	if (gem_has_blt(fd))
-		igt_assert(has_engine(engines, I915_ENGINE_CLASS_COPY, 0));
-	if (gem_has_bsd(fd))
-		igt_assert(has_engine(engines, I915_ENGINE_CLASS_VIDEO, 0));
-	if (gem_has_bsd2(fd))
-		igt_assert(has_engine(engines, I915_ENGINE_CLASS_VIDEO, 1));
-	if (gem_has_vebox(fd))
-		igt_assert(has_engine(engines, I915_ENGINE_CLASS_VIDEO_ENHANCE,
-				       0));
+	igt_assert_eq(has_engine(engines, I915_ENGINE_CLASS_RENDER, 0), 1);
+	igt_assert_eq(has_engine(engines, I915_ENGINE_CLASS_COPY, 0),
+		      gem_has_blt(fd));
+	igt_assert_eq(has_engine(engines, I915_ENGINE_CLASS_VIDEO, 0),
+		      gem_has_bsd(fd));
+	igt_assert_eq(has_engine(engines, I915_ENGINE_CLASS_VIDEO, 1),
+		      gem_has_bsd2(fd));
+	igt_assert_eq(has_engine(engines, I915_ENGINE_CLASS_VIDEO_ENHANCE, 0),
+		      gem_has_vebox(fd));
 
 	free(engines);
 }
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
