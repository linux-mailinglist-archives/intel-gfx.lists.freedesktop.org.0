Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4874915CADD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 20:03:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C696F62E;
	Thu, 13 Feb 2020 19:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DE46F62D;
 Thu, 13 Feb 2020 19:03:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20216058-1500050 
 for multiple; Thu, 13 Feb 2020 19:03:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2020 19:03:16 +0000
Message-Id: <20200213190316.3693878-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_flush: Forgo
 I915_EXEC_NORELOC
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

As we do not maintain the contents of the batch buffers as we reuse and
may move the objects between cycles, the requirements for
I915_EXEC_NORELOC are not met. Rely on natural reloc skipping instead,
so long as the ioctl overhead is less than the GPU, it should not have
any impact on the incoherency detection rates.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1203
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_flush.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tests/i915/gem_exec_flush.c b/tests/i915/gem_exec_flush.c
index 9b6f2ed19..513cde364 100644
--- a/tests/i915/gem_exec_flush.c
+++ b/tests/i915/gem_exec_flush.c
@@ -163,7 +163,7 @@ static void run(int fd, unsigned ring, int nchild, int timeout,
 		memset(&execbuf, 0, sizeof(execbuf));
 		execbuf.buffers_ptr = to_user_pointer(obj);
 		execbuf.buffer_count = 3;
-		execbuf.flags = ring | (1 << 11) | (1<<12);
+		execbuf.flags = ring | (1 << 12);
 		if (gen < 6)
 			execbuf.flags |= I915_EXEC_SECURE;
 
@@ -251,7 +251,7 @@ static void run(int fd, unsigned ring, int nchild, int timeout,
 			i = 16 * (idx % 64) + (idx / 64);
 			obj[1].relocs_ptr = to_user_pointer(&reloc0[i]);
 			obj[2].relocs_ptr = to_user_pointer(&reloc1[i]);
-			execbuf.batch_start_offset =  64*i;
+			execbuf.batch_start_offset = 64 * i;
 
 overwrite:
 			if ((flags & BEFORE) &&
@@ -396,7 +396,7 @@ static void batch(int fd, unsigned ring, int nchild, int timeout,
 		memset(&execbuf, 0, sizeof(execbuf));
 		execbuf.buffers_ptr = to_user_pointer(obj);
 		execbuf.buffer_count = 2;
-		execbuf.flags = ring | (1 << 11) | (1<<12);
+		execbuf.flags = ring | (1 << 12);
 		if (gen < 6)
 			execbuf.flags |= I915_EXEC_SECURE;
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
