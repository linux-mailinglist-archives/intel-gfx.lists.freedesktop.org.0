Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F4519F8F1
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 17:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 448436E40F;
	Mon,  6 Apr 2020 15:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81AD16E40F;
 Mon,  6 Apr 2020 15:35:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20817864-1500050 
 for multiple; Mon, 06 Apr 2020 16:35:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 16:35:18 +0100
Message-Id: <20200406153518.1642031-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/i915_hangman: Drop last reference to
 bygone 'i915_error_state'
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

The test is looking at sysfs/error so dumping the old
debugfs/i915_error_state looks quite silly. The only dilemma is whether
it is worth replacing with a line-by-line dump. I propose we make that a
future problem -- and leave it to whoever has to debug it next time.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/igt_aux.c             | 1 -
 tests/i915/i915_hangman.c | 2 --
 2 files changed, 3 deletions(-)

diff --git a/lib/igt_aux.c b/lib/igt_aux.c
index 1a5648444..ecab5d998 100644
--- a/lib/igt_aux.c
+++ b/lib/igt_aux.c
@@ -484,7 +484,6 @@ hang_detector_process(int fd, pid_t pid, dev_t rdev)
 
 			str = udev_device_get_property_value(dev, "ERROR");
 			if (str && atoi(str) == 1) {
-				igt_debugfs_dump(fd, "i915_error_state");
 				show_kernel_stack(pid);
 				kill(pid, SIGIO);
 			}
diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 08b06217e..13cd62087 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -140,8 +140,6 @@ static void check_error_state(const char *expected_ring_name,
 	size_t line_size = 0;
 	bool found = false;
 
-	igt_debugfs_dump(device, "i915_error_state");
-
 	igt_assert(getline(&line, &line_size, file) != -1);
 	igt_require(strcasecmp(line, "No error state collected"));
 
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
