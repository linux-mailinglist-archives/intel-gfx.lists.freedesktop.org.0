Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE09231A098
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 15:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B53F6E194;
	Fri, 12 Feb 2021 14:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CCB96E194;
 Fri, 12 Feb 2021 14:29:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from haswell.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23850592-1500050 
 for multiple; Fri, 12 Feb 2021 14:29:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 14:29:42 +0000
Message-Id: <20210212142942.27603-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210212142926.27547-1-chris@chris-wilson.co.uk>
References: <20210212142926.27547-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_userptr_blts: Move readonly test
 into common block
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

Since we only run test_readonly for a single sync-flag, place it in the
common block.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_userptr_blits.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index 1bc2d3600..a4f137f93 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -2474,6 +2474,9 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 		igt_subtest("set-cache-level")
 			test_set_caching(fd);
 
+		igt_subtest("readonly")
+			test_readonly(fd);
+
 		igt_subtest("userfault")
 			test_userfault(fd);
 
@@ -2515,9 +2518,6 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 		igt_subtest("dmabuf-unsync")
 			test_dmabuf();
 
-		igt_subtest("readonly-unsync")
-			test_readonly(fd);
-
 		igt_describe("Examine mmap-offset mapping to read-only userptr");
 		igt_subtest_with_dynamic("readonly-mmap-unsync")
 			for_each_mmap_offset_type(fd, t)
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
