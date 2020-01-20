Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1712B1429A7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 12:37:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7222C6E8FF;
	Mon, 20 Jan 2020 11:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2AF16E8FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 11:37:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19945106-1500050 
 for multiple; Mon, 20 Jan 2020 11:36:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jan 2020 11:36:40 +0000
Message-Id: <20200120113642.4121605-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] intel-ci: Drop gem_ctx_switch from
 fast feedback
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

Only a couple of tests from gem_ctx_switch are run in BAT, to check we
have multiple contexts on RCS. It doesn't actually verify the switch,
just that the execbuf API accepts the context argument.

This test is redundant as actual context switching (and more) is verified by
live_gem_contexts and live_gt_contexts selftests.

Instead of using the mediocre gem_ctx_switch stress test in BAT, use
gem_exec_parallel/contexs and gem_exec_parallel/fds as both ensure
multiple contexts are supported for simultaneous use, in a fraction of
the time.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/intel-ci/fast-feedback.testlist | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
index 37a92b4e7..f697eb0cf 100644
--- a/tests/intel-ci/fast-feedback.testlist
+++ b/tests/intel-ci/fast-feedback.testlist
@@ -14,8 +14,6 @@ igt@gem_ctx_create@basic-files
 igt@gem_ctx_exec@basic
 igt@gem_ctx_param@basic
 igt@gem_ctx_param@basic-default
-igt@gem_ctx_switch@legacy-render
-igt@gem_ctx_switch@rcs0
 igt@gem_exec_basic@basic
 igt@gem_exec_create@basic
 igt@gem_exec_fence@basic-busy-default
@@ -24,6 +22,8 @@ igt@gem_exec_fence@basic-await-default
 igt@gem_exec_fence@nb-await-default
 igt@gem_exec_gttfill@basic
 igt@gem_exec_parallel@basic
+igt@gem_exec_parallel@contexts
+igt@gem_exec_parallel@fds
 igt@gem_exec_store@basic-all
 igt@gem_exec_suspend@basic
 igt@gem_exec_suspend@basic-s0
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
