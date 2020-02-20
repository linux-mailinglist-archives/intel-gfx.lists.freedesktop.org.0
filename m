Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB64165A59
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 10:41:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 993476ED0F;
	Thu, 20 Feb 2020 09:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7BE6ED0A;
 Thu, 20 Feb 2020 09:41:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20284813-1500050 
 for multiple; Thu, 20 Feb 2020 09:41:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 09:41:34 +0000
Message-Id: <20200220094134.1560435-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200220094134.1560435-1-chris@chris-wilson.co.uk>
References: <20200220094134.1560435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] igt/kms_draw_crc: Test for a working
 GPU first
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

The draw-method-blt subtests require a working GPU, so create a subtest
group for the draw-methods, and skip the BLT group using
 igt_require_gem() in its fixture.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/kms_draw_crc.c | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/tests/kms_draw_crc.c b/tests/kms_draw_crc.c
index fa7433ab2..917a55432 100644
--- a/tests/kms_draw_crc.c
+++ b/tests/kms_draw_crc.c
@@ -331,14 +331,24 @@ igt_main
 
 	for (format_idx = 0; format_idx < N_FORMATS; format_idx++) {
 	for (method = 0; method < IGT_DRAW_METHOD_COUNT; method++) {
-	for (tiling_idx = 0; tiling_idx < N_TILING_METHODS; tiling_idx++) {
-		igt_subtest_f("draw-method-%s-%s-%s",
-			      format_str(format_idx),
-			      igt_draw_get_method_name(method),
-			      tiling_str(tiling_idx))
-			draw_method_subtest(method, format_idx,
-					    tilings[tiling_idx]);
-	} } }
+	igt_subtest_group {
+		igt_fixture {
+			if (method == IGT_DRAW_BLT)
+				igt_require_gem(drm_fd);
+		}
+
+		for (tiling_idx = 0;
+		     tiling_idx < N_TILING_METHODS;
+		     tiling_idx++) {
+			igt_subtest_f("draw-method-%s-%s-%s",
+				      format_str(format_idx),
+				      igt_draw_get_method_name(method),
+				      tiling_str(tiling_idx))
+				draw_method_subtest(method,
+						    format_idx,
+						    tilings[tiling_idx]);
+		}
+	}}}
 
 	igt_subtest("fill-fb")
 		fill_fb_subtest();
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
