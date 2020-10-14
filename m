Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F41C28DF15
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 12:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 888F66EA48;
	Wed, 14 Oct 2020 10:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD9A66EA3E;
 Wed, 14 Oct 2020 10:40:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22711490-1500050 
 for multiple; Wed, 14 Oct 2020 11:40:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Wed, 14 Oct 2020 11:40:31 +0100
Message-Id: <20201014104038.2554985-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
References: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 03/10] i915/gen9_exec_parse: Check
 oversized batch with length==0
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Include the implicit eb.batch_len=0 into the mix of various offsets and
lengths.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 tests/i915/gen9_exec_parse.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/tests/i915/gen9_exec_parse.c b/tests/i915/gen9_exec_parse.c
index 7ddb5bf2b..087d6f35f 100644
--- a/tests/i915/gen9_exec_parse.c
+++ b/tests/i915/gen9_exec_parse.c
@@ -628,6 +628,8 @@ static void test_bb_oversize(int i915)
 	gem_write(i915, obj.handle, (4ull << 30) - sizeof(bbe),
 		  &bbe, sizeof(bbe));
 
+	igt_assert_eq(__checked_execbuf(i915, &execbuf), 0);
+
 	for (int i = 13; i <= 32; i++) {
 		igt_debug("Checking length %#llx\n", 1ull << i);
 
@@ -638,6 +640,9 @@ static void test_bb_oversize(int i915)
 		igt_assert_eq(__checked_execbuf(i915, &execbuf), 0);
 	}
 
+	execbuf.batch_len = 0;
+	igt_assert_eq(__checked_execbuf(i915, &execbuf), 0);
+
 	gem_close(i915, obj.handle);
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
