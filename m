Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 254B118EA78
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 17:33:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E8A86E0DC;
	Sun, 22 Mar 2020 16:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDE2D6E0DC
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Mar 2020 16:33:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20652717-1500050 
 for multiple; Sun, 22 Mar 2020 16:32:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Mar 2020 16:32:24 +0000
Message-Id: <20200322163225.28791-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Treat idling as a RPS
 downclock event
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

If we park/unpark faster than we can respond to RPS events, we never
will process a downlock event after expiring a waitboost, and thus we
will forever restart the GPU at max clocks even if the workload switches
and doesn't justify full power.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1500
Fixes: 3e7abf814193 ("drm/i915: Extract GT render power state management")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 7bf631ca560b..50884aeac49c 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -771,6 +771,19 @@ void intel_rps_park(struct intel_rps *rps)
 	intel_uncore_forcewake_get(rps_to_uncore(rps), FORCEWAKE_MEDIA);
 	rps_set(rps, rps->idle_freq, false);
 	intel_uncore_forcewake_put(rps_to_uncore(rps), FORCEWAKE_MEDIA);
+
+	/*
+	 * Since we will try and restart from the previously requested
+	 * frequency on unparking, treat this idle point as a downlock
+	 * interrupt and reduce the frequency for resume. If we park/unpark
+	 * more frequently than the rps worker can run, we will not respond
+	 * to any EI and never see a change in frequency.
+	 *
+	 * (Note the we accommodate Cherryview's limitation of only using
+	 * an even bin by applying it to all.)
+	 */
+	rps->cur_freq =
+		max_t(u8, round_down(rps->cur_freq - 1, 2), rps->min_freq);
 }
 
 void intel_rps_boost(struct i915_request *rq)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
