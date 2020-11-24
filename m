Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A022C3005
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 19:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9792889149;
	Tue, 24 Nov 2020 18:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4C089149
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 18:35:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23095651-1500050 
 for multiple; Tue, 24 Nov 2020 18:35:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 18:35:21 +0000
Message-Id: <20201124183521.28623-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Limit frequency drop to RPe on
 parking
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We treat idling the GT (intel_rps_park) as a downclock event, and reduce
the frequency we intend to restart the GT with. Since the two workloads
are likely related (e.g. a compositor rendering every 16ms), we want to
carry the frequency and load information from across the idling.
However, we do also need to update the frequencies so that workloads
that run for less than 1ms are autotuned by RPS (otherwise we leave
compositors running at max clocks, draining excess power). Conversely,
if we try to run too slowly, the next workload has to run longer. Since
there is a hysteresis in the power graph, below a certain frequency
running a short workload for longer consumes more energy than running it
slightly higher for less time. The exact balance point is unknown
beforehand, but measurements with 30fps media playback indicate that RPe
is a better choice.

Reported-by: Edward Baker <edward.baker@intel.com>
Fixes: 043cd2d14ede ("drm/i915/gt: Leave rps->cur_freq on unpark")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Edward Baker <edward.baker@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: <stable@vger.kernel.org> # v5.8+
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index b13e7845d483..f74d5e09e176 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -907,6 +907,10 @@ void intel_rps_park(struct intel_rps *rps)
 		adj = -2;
 	rps->last_adj = adj;
 	rps->cur_freq = max_t(int, rps->cur_freq + adj, rps->min_freq);
+	if (rps->cur_freq < rps->efficient_freq) {
+		rps->cur_freq = rps->efficient_freq;
+		rps->last_adj = 0;
+	}
 
 	GT_TRACE(rps_to_gt(rps), "park:%x\n", rps->cur_freq);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
