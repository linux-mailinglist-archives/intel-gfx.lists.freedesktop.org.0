Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D68D2D46E7
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 17:40:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38916EA31;
	Wed,  9 Dec 2020 16:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423CB6EA31
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 16:40:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23269946-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Dec 2020 16:40:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Dec 2020 16:40:07 +0000
Message-Id: <20201209164008.5487-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201209164008.5487-1-chris@chris-wilson.co.uk>
References: <20201209164008.5487-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915: Sleep around performing iommu unmaps
 on Tigerlake
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

Tigerlake is plagued by spontaneous DMAR faults [reason 7, next page
table ptr is invalid] which lead to GPU hangs. These faults occur when
an iommu map is immediately reused. Adding further clflushes and
barriers around either the GTT PTE or iommu PTE updates do not prevent
the faults. So far the only effect has been from inducing a delay
between reuse of the iommu on the GPU, and applying the delay at the
iommu map allows for the smallest stable delay.

Note that such a delay clearly does not fix the root cause, and so
should only be a bandaid until a complete solution is found. The delay
was determined by running igt/gem_exec_fence/parallel in a loop for a
few hours (unpatched MTBF is about 10s).

Testcase: igt/gem_exec_fence/parallel
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index cf94525be2c1..f5b981443117 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -101,7 +101,16 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
 	 * Query intel_iommu to see if we need the workaround. Presumably that
 	 * was loaded first.
 	 */
-	return IS_GEN(i915, 5) && IS_MOBILE(i915) && intel_vtd_active();
+	if (!intel_vtd_active())
+		return false;
+
+	if (IS_GEN(i915, 5) && IS_MOBILE(i915))
+		return true;
+
+	if (IS_GEN(i915, 12))
+		return true; /* XXX DMAR fault reason 7 */
+
+	return false;
 }
 
 void i915_ggtt_suspend(struct i915_ggtt *ggtt)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
