Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2152DB596
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 22:07:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B489896F7;
	Tue, 15 Dec 2020 21:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF97C896BF;
 Tue, 15 Dec 2020 21:07:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23337662-1500050 
 for multiple; Tue, 15 Dec 2020 21:06:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Dec 2020 21:06:57 +0000
Message-Id: <20201215210658.1188718-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] i915/gem_exec_params: Assert a 4G
 object does _not_ fit without 48b
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

Without opting into 48B addressing, objects are strictly limited to
being placed only the first (4G - 4K). This is to avoid an issue with
stateless 32b addressing being unable to access the last 32b page.
Assert that we do indeed fail to fit in a 4G object without setting the
EXEC_OBJECT_SUPPORTS_48B_ADDRESS flag.

Reported-by: CQ Tang <cq.tang@intel.com>
References:: 48ea1e32c39d ("drm/i915/gen9: Set PIN_ZONE_4G end to 4GB - 1 page")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: CQ Tang <cq.tang@intel.com>
---
 tests/i915/gem_exec_params.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_exec_params.c b/tests/i915/gem_exec_params.c
index c405f4eb7..e679c512a 100644
--- a/tests/i915/gem_exec_params.c
+++ b/tests/i915/gem_exec_params.c
@@ -340,7 +340,13 @@ static void test_larger_than_life_batch(int fd)
        for_each_engine(e, fd) {
 	       /* Keep the batch_len implicit [0] */
 	       execbuf.flags = eb_ring(e);
-	       gem_execbuf(fd, &execbuf);
+
+	       /* non-48b objects are limited to the low (4G - 4K) */
+	       igt_assert_eq(__gem_execbuf(fd, &execbuf), -ENOSPC);
+
+	       exec.flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+	       igt_assert_eq(__gem_execbuf(fd, &execbuf), 0);
+	       exec.flags = 0;
        }
 
        gem_sync(fd, exec.handle);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
