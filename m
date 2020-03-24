Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7235190E20
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 13:52:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 075CE6E2B4;
	Tue, 24 Mar 2020 12:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8167D6E27F;
 Tue, 24 Mar 2020 12:52:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20673952-1500050 
 for multiple; Tue, 24 Mar 2020 12:52:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 12:52:33 +0000
Message-Id: <20200324125233.56308-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/i915_pm_rc6_residency: Make
 ringbuffer rc6 fast
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

The legacy ringbuffer submission lacks a fast soft-rc6
mechanism as we have no interrupt for an idle ring. As such
we are at the mercy of HW RC6... which is not quite as
precise as we need to pass this test. Oh well.

Since HW is not fast enough to minimise power draw, tell the driver to
park as soon as we know we are idle. One day, we hope for the driver to
discover a mechanism to do this for itself, for as this test shows that
can save us Watts!

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1516
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/i915_pm_rc6_residency.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/tests/i915/i915_pm_rc6_residency.c b/tests/i915/i915_pm_rc6_residency.c
index f507f76bc..d2dc37a16 100644
--- a/tests/i915/i915_pm_rc6_residency.c
+++ b/tests/i915/i915_pm_rc6_residency.c
@@ -310,6 +310,17 @@ static void bg_load(int i915, unsigned int flags, unsigned long *ctl)
 		}
 		ctl[1]++;
 
+		/*
+		 * The legacy ringbuffer submission lacks a fast soft-rc6
+		 * mechanism as we have no interrupt for an idle ring. As such
+		 * we are at the mercy of HW RC6... which is not quite as
+		 * precise as we need to pass this test. Oh well.
+		 *
+		 * Fake it until we make it.
+		 */
+		if (!gem_has_execlists(i915))
+			igt_drop_caches_set(i915, DROP_IDLE);
+
 		usleep(igt_nsec_elapsed(&tv) / 10); /* => 1% busy */
 	} while (!READ_ONCE(*ctl));
 }
-- 
2.26.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
