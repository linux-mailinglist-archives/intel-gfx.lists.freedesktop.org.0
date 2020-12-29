Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AD02E6FB6
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 11:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B69AE892B8;
	Tue, 29 Dec 2020 10:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FF5D892B1;
 Tue, 29 Dec 2020 10:49:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23454552-1500050 
 for multiple; Tue, 29 Dec 2020 10:49:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 10:49:30 +0000
Message-Id: <20201229104930.272826-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0.rc2
In-Reply-To: <20201229103852.234352-1-chris@chris-wilson.co.uk>
References: <20201229103852.234352-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_reset_stats: Check noop
 submission before bans
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
Cc: igt-dev@lists.freedesktop.org, Apoorva Singh <apoorva1.singh@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Apoorva Singh <apoorva1.singh@intel.com>

Signed-off-by: Apoorva Singh <apoorva1.singh@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_reset_stats.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/tests/i915/gem_reset_stats.c b/tests/i915/gem_reset_stats.c
index d55b85869..afe2cd99b 100644
--- a/tests/i915/gem_reset_stats.c
+++ b/tests/i915/gem_reset_stats.c
@@ -337,8 +337,8 @@ static void test_ban(const struct intel_execution_engine *e)
 	assert_reset_status(fd_bad, fd_bad, 0, RS_NO_ERROR);
 	assert_reset_status(fd_good, fd_good, 0, RS_NO_ERROR);
 
-	noop(fd_bad, 0, e);
-	noop(fd_good, 0, e);
+	igt_assert_lt(0, noop(fd_bad, 0, e));
+	igt_assert_lt(0, noop(fd_good, 0, e));
 
 	assert_reset_status(fd_bad, fd_bad, 0, RS_NO_ERROR);
 	assert_reset_status(fd_good, fd_good, 0, RS_NO_ERROR);
@@ -346,8 +346,8 @@ static void test_ban(const struct intel_execution_engine *e)
 	inject_hang(fd_bad, 0, e, BAN | ASYNC);
 	active_count++;
 
-	noop(fd_good, 0, e);
-	noop(fd_good, 0, e);
+	igt_assert_lt(0, noop(fd_good, 0, e));
+	igt_assert_lt(0, noop(fd_good, 0, e));
 
 	while (retry--) {
 		inject_hang(fd_bad, 0, e, BAN);
@@ -396,8 +396,8 @@ static void test_ban_ctx(const struct intel_execution_engine *e)
 	assert_reset_status(fd, fd, ctx_good, RS_NO_ERROR);
 	assert_reset_status(fd, fd, ctx_bad, RS_NO_ERROR);
 
-	noop(fd, ctx_bad, e);
-	noop(fd, ctx_good, e);
+	igt_assert_lt(0, noop(fd, ctx_bad, e));
+	igt_assert_lt(0, noop(fd, ctx_good, e));
 
 	assert_reset_status(fd, fd, ctx_good, RS_NO_ERROR);
 	assert_reset_status(fd, fd, ctx_bad, RS_NO_ERROR);
@@ -405,8 +405,8 @@ static void test_ban_ctx(const struct intel_execution_engine *e)
 	inject_hang(fd, ctx_bad, e, BAN | ASYNC);
 	active_count++;
 
-	noop(fd, ctx_good, e);
-	noop(fd, ctx_good, e);
+	igt_assert_lt(0, noop(fd, ctx_good, e));
+	igt_assert_lt(0, noop(fd, ctx_good, e));
 
 	while (retry--) {
 		inject_hang(fd, ctx_bad, e, BAN);
-- 
2.30.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
