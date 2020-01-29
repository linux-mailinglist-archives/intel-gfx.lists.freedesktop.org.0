Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA5E14D30D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 23:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650C16F89F;
	Wed, 29 Jan 2020 22:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63C8B6F8A1;
 Wed, 29 Jan 2020 22:25:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20053177-1500050 
 for multiple; Wed, 29 Jan 2020 22:24:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 22:24:56 +0000
Message-Id: <20200129222456.1503424-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_reloc: Add SIGINT injection
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

Do a pass over gem_exec_reloc where we inject lots of SIGINTs.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Antonio Argenziano <antonio.argenziano@intel.com>
---
 tests/i915/gem_exec_reloc.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/tests/i915/gem_exec_reloc.c b/tests/i915/gem_exec_reloc.c
index bc904a0ae..1aa03fba3 100644
--- a/tests/i915/gem_exec_reloc.c
+++ b/tests/i915/gem_exec_reloc.c
@@ -379,7 +379,8 @@ static bool has_64b_reloc(int fd)
 
 #define NORELOC 1
 #define ACTIVE 2
-#define HANG 4
+#define INTERRUPTIBLE 4
+#define HANG 8
 static void basic_reloc(int fd, unsigned before, unsigned after, unsigned flags)
 {
 #define OBJSZ 8192
@@ -735,6 +736,7 @@ igt_main
 		{ "", 0 , true},
 		{ "-noreloc", NORELOC, true },
 		{ "-active", ACTIVE, true },
+		{ "-interruptible", ACTIVE | INTERRUPTIBLE },
 		{ "-hang", ACTIVE | HANG },
 		{ },
 	}, *f;
@@ -762,14 +764,17 @@ igt_main
 					      f->name) {
 					if ((m->before | m->after) & I915_GEM_DOMAIN_WC)
 						igt_require(gem_mmap__has_wc(fd));
-					basic_reloc(fd, m->before, m->after, f->flags);
+					igt_while_interruptible(f->flags & INTERRUPTIBLE)
+						basic_reloc(fd, m->before, m->after, f->flags);
 				}
 			}
 
 			if (!(f->flags & NORELOC)) {
 				igt_subtest_f("%srange%s",
-					      f->basic ? "basic-" : "", f->name)
-					basic_range(fd, f->flags);
+					      f->basic ? "basic-" : "", f->name) {
+					igt_while_interruptible(f->flags & INTERRUPTIBLE)
+						basic_range(fd, f->flags);
+				}
 			}
 
 			igt_fixture {
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
