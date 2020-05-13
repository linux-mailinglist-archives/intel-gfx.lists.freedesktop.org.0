Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4A51D1022
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 12:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7226E97A;
	Wed, 13 May 2020 10:47:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5776E162;
 Wed, 13 May 2020 10:47:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21185131-1500050 
 for multiple; Wed, 13 May 2020 11:47:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 11:47:15 +0100
Message-Id: <20200513104715.792111-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/sysfs_heartbeat_interval: Watch out
 for CPU scheduler delays
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

If our CPU client is very slow to notice that the GPU spinner has
started, we may consume the full heartbeat interval without noticing.
This is bad if we are trying to test that a client that yield within the
heartbeat interval is not selected for termination.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1879
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/sysfs_heartbeat_interval.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/tests/i915/sysfs_heartbeat_interval.c b/tests/i915/sysfs_heartbeat_interval.c
index 6d4413d62..fe0cc046c 100644
--- a/tests/i915/sysfs_heartbeat_interval.c
+++ b/tests/i915/sysfs_heartbeat_interval.c
@@ -308,8 +308,13 @@ static void client(int i915, int engine, int *ctl, int duration, int expect)
 					      IGT_SPIN_POLL_RUN |
 					      IGT_SPIN_FENCE_OUT));
 
+		/* XXX we need more precise means of limiting the spinner */
 		igt_spin_busywait_until_started(spin);
-		igt_assert_eq(sync_fence_status(spin->out_fence), 0);
+		if (sync_fence_status(spin->out_fence)) {
+			/* CPU too slow! */
+			igt_spin_free(i915, spin);
+			continue;
+		}
 
 		elapsed = measured_usleep(duration * 1000);
 		igt_spin_end(spin);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
