Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 005731B2859
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 15:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577F46E972;
	Tue, 21 Apr 2020 13:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187AD6E972
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 13:45:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20972007-1500050 
 for multiple; Tue, 21 Apr 2020 14:45:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Apr 2020 14:45:12 +0100
Message-Id: <20200421134512.27910-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Make the slice:unslice ratio
 request explicit for RPS
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

In RPS, we have the option to only specify the unslice [ring] clock
ratio and for the pcu to derive the slice [gpu] clock ratio from its
magic table. We also have the option to tell the pcu to use our
requested gpu clock ratio, and for it to try and throttle the unslice
and slice ratios separately.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 4dcfae16a7ce..07321e1b22f6 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -662,14 +662,17 @@ static int gen6_rps_set(struct intel_rps *rps, u8 val)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 swreq;
 
-	if (INTEL_GEN(i915) >= 9)
-		swreq = GEN9_FREQUENCY(val);
-	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+	if (INTEL_GEN(i915) >= 9) {
+		swreq = 0x2; /* only throttle slice, not unslice */
+		swreq |= val << 14; /* slice [gpu] ratio */
+		swreq |= val << 23; /* unslice [ring] ratio */
+	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		swreq = HSW_FREQUENCY(val);
-	else
+	} else {
 		swreq = (GEN6_FREQUENCY(val) |
 			 GEN6_OFFSET(0) |
 			 GEN6_AGGRESSIVE_TURBO);
+	}
 	set(uncore, GEN6_RPNSWREQ, swreq);
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
