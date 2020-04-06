Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E0219F258
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 11:20:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEBE6E313;
	Mon,  6 Apr 2020 09:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6540F6E313;
 Mon,  6 Apr 2020 09:20:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20812624-1500050 
 for multiple; Mon, 06 Apr 2020 10:20:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Mon,  6 Apr 2020 10:20:24 +0100
Message-Id: <20200406092024.1640627-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/suspend: Suspend once before taking
 forcewake to confirm suspend
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If we take the user-forcewake and then exit, we find outselves in a
deadlock as the atexit handlers wait for our own forcewake to be
released. We could either not use the automatically attached exit
handler (__drm_open_driver), more carefully unwind the exit handler, or
simply avoid doing late requirement checks. This patch does the later by
testing for working suspend prior to taking the user-forcewake.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1637
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/i915_suspend.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/tests/i915/i915_suspend.c b/tests/i915/i915_suspend.c
index 47e134b12..83a4fa546 100644
--- a/tests/i915/i915_suspend.c
+++ b/tests/i915/i915_suspend.c
@@ -186,17 +186,16 @@ test_shrink(int fd, unsigned int mode)
 static void
 test_forcewake(int fd, bool hibernate)
 {
+	int suspend = hibernate ? SUSPEND_STATE_DISK : SUSPEND_STATE_MEM;
 	int fw_fd;
 
+	/* Once before to verify we can suspend */
+	igt_system_suspend_autoresume(suspend, SUSPEND_TEST_NONE);
+
 	fw_fd = igt_open_forcewake_handle(fd);
 	igt_assert_lte(0, fw_fd);
 
-	if (hibernate)
-		igt_system_suspend_autoresume(SUSPEND_STATE_DISK,
-					      SUSPEND_TEST_NONE);
-	else
-		igt_system_suspend_autoresume(SUSPEND_STATE_MEM,
-					      SUSPEND_TEST_NONE);
+	igt_system_suspend_autoresume(suspend, SUSPEND_TEST_NONE);
 
 	close (fw_fd);
 }
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
