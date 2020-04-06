Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0819E19F402
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 13:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2786E321;
	Mon,  6 Apr 2020 11:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 243AE6E320;
 Mon,  6 Apr 2020 11:01:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20814411-1500050 
 for multiple; Mon, 06 Apr 2020 12:00:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 12:00:26 +0100
Message-Id: <20200406110026.1641189-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_busy: Drop i915_hangcheck_info
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

All the information for hangcheck is pulled into i915_engine_info so the
separate dump is redundant.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 tests/i915/gem_busy.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/tests/i915/gem_busy.c b/tests/i915/gem_busy.c
index 64e6fe6bd..5e4e2d939 100644
--- a/tests/i915/gem_busy.c
+++ b/tests/i915/gem_busy.c
@@ -452,7 +452,6 @@ static void basic(int fd, const struct intel_execution_engine2 *e, unsigned flag
 	while (gem_bo_busy(fd, spin->handle)) {
 		if (igt_seconds_elapsed(&tv) > timeout) {
 			igt_debugfs_dump(fd, "i915_engine_info");
-			igt_debugfs_dump(fd, "i915_hangcheck_info");
 			igt_assert_f(igt_seconds_elapsed(&tv) < timeout,
 				     "%s batch did not complete within %ds\n",
 				     flags & HANG ? "Hanging" : "Normal",
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
