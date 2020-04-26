Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 473681B8E66
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Apr 2020 11:41:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 027F16E029;
	Sun, 26 Apr 2020 09:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1C56E029
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2020 09:41:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21024693-1500050 
 for multiple; Sun, 26 Apr 2020 10:41:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 26 Apr 2020 10:41:40 +0100
Message-Id: <20200426094140.17125-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Apply the magic PM interval
 roundup to all!
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have a note that a PM interval value (e.g. for RPS EI) that is not a
multiple of 25 causes missed interrupts on some Sandybridge machines. We
are observing missed interrupts (which I speculate is due to some sort
of internal rounding in the PCU) on more recent machines as well, so
let's experiment with applying the empirical rounding of yore.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/1791
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 852a7d731b3b..400a3a916931 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -87,6 +87,8 @@ u32 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u32 ns)
 {
 	u32 val;
 
+	val = DIV_ROUND_UP(intel_gt_ns_to_clock_interval(gt, ns), 16);
+
 	/*
 	 * Make these a multiple of magic 25 to avoid SNB (eg. Dell XPS
 	 * 8300) freezing up around GPU hangs. Looks as if even
@@ -94,9 +96,6 @@ u32 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u32 ns)
 	 * EI/thresholds are "bad", leading to a very sluggish or even
 	 * frozen machine.
 	 */
-	val = DIV_ROUND_UP(intel_gt_ns_to_clock_interval(gt, ns), 16);
-	if (IS_GEN(gt->i915, 6))
-		val = roundup(val, 25);
+	return roundup(val, 25);
 
-	return val;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
