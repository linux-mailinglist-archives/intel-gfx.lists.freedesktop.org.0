Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C1B141408
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 23:22:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631816F94F;
	Fri, 17 Jan 2020 22:22:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F36B76F948
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 22:22:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19923000-1500050 
 for multiple; Fri, 17 Jan 2020 22:22:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 22:22:40 +0000
Message-Id: <20200117222240.3410108-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200117222240.3410108-1-chris@chris-wilson.co.uk>
References: <20200117222240.3410108-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_mmap_offset: Relax isolation
 rules
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It is legal for mmap_offset_ioctl to return the same offset for
different clients, so long as that offset is only valid for use with the
client's fd and no one elses.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_mmap_offset.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/tests/i915/gem_mmap_offset.c b/tests/i915/gem_mmap_offset.c
index c3b85d29e..83e9890a5 100644
--- a/tests/i915/gem_mmap_offset.c
+++ b/tests/i915/gem_mmap_offset.c
@@ -233,15 +233,17 @@ static void isolation(int i915)
 		igt_assert(ptr == MAP_FAILED);
 		igt_assert_eq(errno, EACCES);
 
-		errno = 0;
-		ptr = mmap64(0, 4096, PROT_READ, MAP_SHARED, B, offset_a);
-		igt_assert(ptr == MAP_FAILED);
-		igt_assert_eq(errno, EACCES);
-
-		errno = 0;
-		ptr = mmap64(0, 4096, PROT_READ, MAP_SHARED, A, offset_b);
-		igt_assert(ptr == MAP_FAILED);
-		igt_assert_eq(errno, EACCES);
+		if (offset_a != offset_b) {
+			errno = 0;
+			ptr = mmap(0, 4096, PROT_READ, MAP_SHARED, B, offset_a);
+			igt_assert(ptr == MAP_FAILED);
+			igt_assert_eq(errno, EACCES);
+
+			errno = 0;
+			ptr = mmap(0, 4096, PROT_READ, MAP_SHARED, A, offset_b);
+			igt_assert(ptr == MAP_FAILED);
+			igt_assert_eq(errno, EACCES);
+		}
 
 		close(B);
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
