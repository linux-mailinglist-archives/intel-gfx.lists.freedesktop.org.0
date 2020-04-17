Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB8D1AD85A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 10:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D17E6E3B7;
	Fri, 17 Apr 2020 08:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F1C6E3B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 08:13:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20929504-1500050 
 for multiple; Fri, 17 Apr 2020 09:13:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 09:13:50 +0100
Message-Id: <20200417081350.23377-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200417071700.22234-4-chris@chris-wilson.co.uk>
References: <20200417071700.22234-4-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Always take fw around RPS
 frequency changes
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

In the selftest, we are observing that requests to change frequency are
simply not occuring [within a 20ms period]. The assumption was that with
an active GPU, these writes would be flush naturally; this appears to be
false.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 33 ++++++++++++++---------------
 1 file changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 4dcfae16a7ce..3c68358040dd 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -698,18 +698,32 @@ static int rps_set(struct intel_rps *rps, u8 val, bool update)
 	if (val == rps->last_freq)
 		return 0;
 
+	/*
+	 * The punit delays the write of the frequency and voltage until it
+	 * determines the GPU is awake. During normal usage we don't want to
+	 * waste power changing the frequency if the GPU is sleeping (rc6).
+	 * However, the GPU and driver is now idle and we do not want to delay
+	 * switching to minimum voltage (reducing power whilst idle) as we do
+	 * not expect to be woken in the near future and so must flush the
+	 * change by waking the device.
+	 */
+	intel_uncore_forcewake_get(rps_to_uncore(rps), FORCEWAKE_ALL);
+
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		err = vlv_rps_set(rps, val);
 	else
 		err = gen6_rps_set(rps, val);
 	if (err)
-		return err;
+		goto out_fw;
 
 	if (update)
 		gen6_rps_set_thresholds(rps, val);
+
 	rps->last_freq = val;
 
-	return 0;
+out_fw:
+	intel_uncore_forcewake_put(rps_to_uncore(rps), FORCEWAKE_ALL);
+	return err;
 }
 
 void intel_rps_unpark(struct intel_rps *rps)
@@ -755,22 +769,7 @@ void intel_rps_park(struct intel_rps *rps)
 	if (rps->last_freq <= rps->idle_freq)
 		return;
 
-	/*
-	 * The punit delays the write of the frequency and voltage until it
-	 * determines the GPU is awake. During normal usage we don't want to
-	 * waste power changing the frequency if the GPU is sleeping (rc6).
-	 * However, the GPU and driver is now idle and we do not want to delay
-	 * switching to minimum voltage (reducing power whilst idle) as we do
-	 * not expect to be woken in the near future and so must flush the
-	 * change by waking the device.
-	 *
-	 * We choose to take the media powerwell (either would do to trick the
-	 * punit into committing the voltage change) as that takes a lot less
-	 * power than the render powerwell.
-	 */
-	intel_uncore_forcewake_get(rps_to_uncore(rps), FORCEWAKE_MEDIA);
 	rps_set(rps, rps->idle_freq, false);
-	intel_uncore_forcewake_put(rps_to_uncore(rps), FORCEWAKE_MEDIA);
 
 	/*
 	 * Since we will try and restart from the previously requested
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
