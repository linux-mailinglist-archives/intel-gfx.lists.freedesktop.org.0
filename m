Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9872217350E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 11:12:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5E76EEC1;
	Fri, 28 Feb 2020 10:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46F366EEC1;
 Fri, 28 Feb 2020 10:12:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20382417-1500050 
 for multiple; Fri, 28 Feb 2020 10:12:38 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 10:12:36 +0000
Message-Id: <20200228101236.2707161-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_softpin: Limit the noreloc test
 runtime
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

Use a fixed duration rather than a fixed amount of work.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1325
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_softpin.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tests/i915/gem_softpin.c b/tests/i915/gem_softpin.c
index 2c258f443..98c7ab63b 100644
--- a/tests/i915/gem_softpin.c
+++ b/tests/i915/gem_softpin.c
@@ -442,7 +442,7 @@ static void test_noreloc(int fd, enum sleep sleep)
 	uint64_t offset;
 	uint32_t handle;
 	uint32_t *batch, *b;
-	int i, loop;
+	int i, loop = 0;
 
 	handle = gem_create(fd, (ARRAY_SIZE(object)+1)*size);
 	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
@@ -494,11 +494,11 @@ static void test_noreloc(int fd, enum sleep sleep)
 	munmap(batch, size);
 
 	execbuf.buffer_count = ARRAY_SIZE(object);
-	for (loop = 0; loop < 1024; loop++) {
+	igt_until_timeout(5) {
 		igt_permute_array(object, ARRAY_SIZE(object)-1, xchg_offset);
 		gem_execbuf(fd, &execbuf);
 
-		if ((loop & 127) == 0) {
+		if ((loop++ & 127) == 0) {
 			switch (sleep) {
 			case NOSLEEP:
 				break;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
