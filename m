Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 660551E88F9
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 22:34:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B867E6E96E;
	Fri, 29 May 2020 20:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C0B96E96E
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 20:34:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21339526-1500050 
 for multiple; Fri, 29 May 2020 21:34:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 May 2020 21:34:08 +0100
Message-Id: <20200529203408.1425362-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0.rc2
In-Reply-To: <20200529201534.474853-1-arnd@arndb.de>
References: <20200529201534.474853-1-arnd@arndb.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] compact-test-array
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ok, so count was variable, how about something like this. By my back of
the paper calcs this should reduce it from 408 bytes to 272 bytes.

---
 drivers/gpu/drm/selftests/test-drm_mm.c | 42 ++++++++++++-------------
 1 file changed, 20 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/selftests/test-drm_mm.c b/drivers/gpu/drm/selftests/test-drm_mm.c
index 9aabe82dcd3a..fa643cc54b0b 100644
--- a/drivers/gpu/drm/selftests/test-drm_mm.c
+++ b/drivers/gpu/drm/selftests/test-drm_mm.c
@@ -323,32 +323,30 @@ static bool expect_reserve_fail(struct drm_mm *mm, struct drm_mm_node *node)
 	return false;
 }
 
-static bool check_reserve_boundaries(struct drm_mm *mm,
-				     unsigned int count,
-				     u64 size)
+static bool check_reserve_boundaries(struct drm_mm *mm, int count, u64 size)
 {
 	const struct boundary {
-		u64 start, size;
+		int start, size;
 		const char *name;
 	} boundaries[] = {
 #define B(st, sz) { (st), (sz), "{ " #st ", " #sz "}" }
 		B(0, 0),
-		B(-size, 0),
-		B(size, 0),
-		B(size * count, 0),
-		B(-size, size),
-		B(-size, -size),
-		B(-size, 2*size),
-		B(0, -size),
-		B(size, -size),
-		B(count*size, size),
-		B(count*size, -size),
-		B(count*size, count*size),
-		B(count*size, -count*size),
-		B(count*size, -(count+1)*size),
-		B((count+1)*size, size),
-		B((count+1)*size, -size),
-		B((count+1)*size, -2*size),
+		B(-1, 0),
+		B(1, 0),
+		B(count, 0),
+		B(-1, 1),
+		B(-1, -1),
+		B(-1, 2),
+		B(0, -1),
+		B(1, -1),
+		B(count, 1),
+		B(count, -1),
+		B(count, count),
+		B(count, -count),
+		B(count, -(count + 1)),
+		B(count + 1, 1),
+		B(count + 1, -1),
+		B(count + 1, -2),
 #undef B
 	};
 	struct drm_mm_node tmp = {};
@@ -357,8 +355,8 @@ static bool check_reserve_boundaries(struct drm_mm *mm,
 	for (n = 0; n < ARRAY_SIZE(boundaries); n++) {
 		if (!expect_reserve_fail(mm,
 					 set_node(&tmp,
-						  boundaries[n].start,
-						  boundaries[n].size))) {
+						  boundaries[n].start * size,
+						  boundaries[n].size * size))) {
 			pr_err("boundary[%d:%s] failed, count=%u, size=%lld\n",
 			       n, boundaries[n].name, count, size);
 			return false;
-- 
2.27.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
