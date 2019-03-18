Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAC3197E29
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578C96E3EC;
	Mon, 30 Mar 2020 14:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx.sdf.org (mx.sdf.org [205.166.94.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 448A189AB7
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2020 16:43:25 +0000 (UTC)
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02SGhBkr028015
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Sat, 28 Mar 2020 16:43:11 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02SGhBxX000080;
 Sat, 28 Mar 2020 16:43:11 GMT
Message-Id: <202003281643.02SGhBxX000080@sdf.org>
From: George Spelvin <lkml@sdf.org>
Date: Mon, 18 Mar 2019 02:46:05 -0400
To: linux-kernel@vger.kernel.org, lkml@sdf.org
X-Mailman-Approved-At: Mon, 30 Mar 2020 14:16:11 +0000
Subject: [Intel-gfx] [RFC PATCH v1 12/50] Treewide: Extirpate
 prandom_u32_state(rnd) % range
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
Cc: Davidlohr Bueso <dave@stgolabs.net>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's no prandom_u32_state_max, so we're using reciprocal_scale()
here directly.

(Also add a missing "const" to drivers/gpu/drm/i915/selftests/scatterist.c)

Signed-off-by: George Spelvin <lkml@sdf.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: Davidlohr Bueso <dave@stgolabs.net>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/selftests/scatterlist.c | 4 ++--
 lib/interval_tree_test.c                     | 7 ++++---
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/scatterlist.c b/drivers/gpu/drm/i915/selftests/scatterlist.c
index d599186d5b714..be9ff9d03eada 100644
--- a/drivers/gpu/drm/i915/selftests/scatterlist.c
+++ b/drivers/gpu/drm/i915/selftests/scatterlist.c
@@ -195,13 +195,13 @@ static unsigned int random_page_size_pages(unsigned long n,
 					   struct rnd_state *rnd)
 {
 	/* 4K, 64K, 2M */
-	static unsigned int page_count[] = {
+	static const unsigned int page_count[] = {
 		BIT(12) >> PAGE_SHIFT,
 		BIT(16) >> PAGE_SHIFT,
 		BIT(21) >> PAGE_SHIFT,
 	};
 
-	return page_count[(prandom_u32_state(rnd) % 3)];
+	return page_count[reciprocal_scale(prandom_u32_state(rnd), 3)];
 }
 
 static inline bool page_contiguous(struct page *first,
diff --git a/lib/interval_tree_test.c b/lib/interval_tree_test.c
index f37f4d44faa90..8c129c8c638b9 100644
--- a/lib/interval_tree_test.c
+++ b/lib/interval_tree_test.c
@@ -43,8 +43,8 @@ static void init(void)
 	int i;
 
 	for (i = 0; i < nnodes; i++) {
-		u32 b = (prandom_u32_state(&rnd) >> 4) % max_endpoint;
-		u32 a = (prandom_u32_state(&rnd) >> 4) % b;
+		u32 b = reciprocal_scale(prandom_u32_state(&rnd), max_endpoint);
+		u32 a = reciprocal_scale(prandom_u32_state(&rnd), b);
 
 		nodes[i].start = a;
 		nodes[i].last = b;
@@ -56,7 +56,8 @@ static void init(void)
 	 * which is pointless.
 	 */
 	for (i = 0; i < nsearches; i++)
-		queries[i] = (prandom_u32_state(&rnd) >> 4) % max_endpoint;
+		queries[i] = reciprocal_scale(prandom_u32_state(&rnd),
+					      max_endpoint);
 }
 
 static int interval_tree_test_init(void)
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
