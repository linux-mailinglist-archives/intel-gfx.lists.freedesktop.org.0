Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C31156113
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 23:15:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740AF6FDCA;
	Fri,  7 Feb 2020 22:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E95B6FDCA;
 Fri,  7 Feb 2020 22:15:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20153841-1500050 
 for multiple; Fri, 07 Feb 2020 22:15:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Feb 2020 22:15:03 +0000
Message-Id: <20200207221503.2928585-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_flush: Drop assertion the
 object is not moved
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

Each set of relocations track the content of their particular portion of
the batch, the presumed offset they use encode matches their own view.
It is legal for the object to be moved, and the execbuf will have to
relocation -- we can't just assert that the relocations were not
required as that is beyond our own control (unless we switch to
softpin).

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1097
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_flush.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/tests/i915/gem_exec_flush.c b/tests/i915/gem_exec_flush.c
index 778bc18c6..9b6f2ed19 100644
--- a/tests/i915/gem_exec_flush.c
+++ b/tests/i915/gem_exec_flush.c
@@ -251,8 +251,6 @@ static void run(int fd, unsigned ring, int nchild, int timeout,
 			i = 16 * (idx % 64) + (idx / 64);
 			obj[1].relocs_ptr = to_user_pointer(&reloc0[i]);
 			obj[2].relocs_ptr = to_user_pointer(&reloc1[i]);
-			igt_assert_eq_u64(reloc0[i].presumed_offset, obj[0].offset);
-			igt_assert_eq_u64(reloc1[i].presumed_offset, obj[0].offset);
 			execbuf.batch_start_offset =  64*i;
 
 overwrite:
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
