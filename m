Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3328118CA3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 16:36:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70A46E124;
	Tue, 10 Dec 2019 15:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFE1C6E12C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 15:36:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19528874-1500050 
 for multiple; Tue, 10 Dec 2019 15:36:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 15:36:20 +0000
Message-Id: <20191210153620.3929372-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Check we are the Ironlake IPS
 provider before deregistering
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

Check that we own the global pointer before deregistering.

Reported-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 08a38a3b90b0..fd01e4100fc1 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1715,6 +1715,7 @@ void intel_rps_driver_register(struct intel_rps *rps)
 	 * set up, to avoid intel-ips sneaking in and reading bogus values.
 	 */
 	if (IS_GEN(gt->i915, 5)) {
+		GEM_BUG_ON(ips_mchdev);
 		rcu_assign_pointer(ips_mchdev, gt->i915);
 		ips_ping_for_i915_load();
 	}
@@ -1722,7 +1723,8 @@ void intel_rps_driver_register(struct intel_rps *rps)
 
 void intel_rps_driver_unregister(struct intel_rps *rps)
 {
-	rcu_assign_pointer(ips_mchdev, NULL);
+	if (ips_mchdev == rps_to_i915(rps))
+		rcu_assign_pointer(ips_mchdev, NULL);
 }
 
 static struct drm_i915_private *mchdev_get(void)
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
