Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3359118EA77
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 17:33:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026116E0D2;
	Sun, 22 Mar 2020 16:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8397C6E0D2
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Mar 2020 16:32:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20652718-1500050 
 for multiple; Sun, 22 Mar 2020 16:32:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Mar 2020 16:32:25 +0000
Message-Id: <20200322163225.28791-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200322163225.28791-1-chris@chris-wilson.co.uk>
References: <20200322163225.28791-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Leave rps->cur_freq on unpark
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't override our previous frequency we used after parking, and avoid
continually spiking back to the efficient frequency for mostly idle
workloads. Trust our ability to autotune across a workload switch.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 50884aeac49c..487c89593125 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -187,10 +187,8 @@ static void gen5_rps_init(struct intel_rps *rps)
 		fmax, fmin, fstart);
 
 	rps->min_freq = fmax;
+	rps->efficient_freq = fstart;
 	rps->max_freq = fmin;
-
-	rps->idle_freq = rps->min_freq;
-	rps->cur_freq = rps->idle_freq;
 }
 
 static unsigned long
@@ -726,7 +724,6 @@ void intel_rps_unpark(struct intel_rps *rps)
 
 	WRITE_ONCE(rps->active, true);
 
-	freq = max(rps->cur_freq, rps->efficient_freq),
 	freq = clamp(freq, rps->min_freq_softlimit, rps->max_freq_softlimit);
 	intel_rps_set(rps, freq);
 
@@ -1672,7 +1669,7 @@ void intel_rps_init(struct intel_rps *rps)
 	/* Finally allow us to boost to max by default */
 	rps->boost_freq = rps->max_freq;
 	rps->idle_freq = rps->min_freq;
-	rps->cur_freq = rps->idle_freq;
+	rps->cur_freq = rps->efficient_freq; /* start in the middle */
 
 	rps->pm_intrmsk_mbz = 0;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
