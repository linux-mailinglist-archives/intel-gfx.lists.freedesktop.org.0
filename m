Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 702521CFA70
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 18:21:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D526E93F;
	Tue, 12 May 2020 16:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44DDF6E93E;
 Tue, 12 May 2020 16:20:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21175386-1500050 
 for multiple; Tue, 12 May 2020 17:20:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 May 2020 17:20:45 +0100
Message-Id: <20200512162046.674703-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512162046.674703-1-chris@chris-wilson.co.uk>
References: <20200512162046.674703-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/3] i915/gem_eio: Drop redundant "health
 check"
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

After triggering the reset, we would ping the engines with a no-op. But
we already validate the reset, so this would seem superfluous.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_eio.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
index e0d8390f6..6cec7cd4a 100644
--- a/tests/i915/gem_eio.c
+++ b/tests/i915/gem_eio.c
@@ -72,16 +72,6 @@ static void trigger_reset(int fd)
 
 	/* The forced reset should be immediate */
 	igt_assert_lte(igt_seconds_elapsed(&ts), 2);
-
-	/* And just check the gpu is indeed running again */
-	igt_kmsg(KMSG_DEBUG "Checking that the GPU recovered\n");
-	gem_test_engine(fd, ALL_ENGINES);
-
-	igt_debugfs_dump(fd, "i915_engine_info");
-	igt_drop_caches_set(fd, DROP_ACTIVE);
-
-	/* We expect the health check to be quick! */
-	igt_assert_lte(igt_seconds_elapsed(&ts), 10);
 }
 
 static void manual_hang(int drm_fd)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
