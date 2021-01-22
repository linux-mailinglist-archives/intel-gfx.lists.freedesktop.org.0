Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4841B300C71
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 20:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD556EA3E;
	Fri, 22 Jan 2021 19:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA1DD6EA36
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 19:29:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23675687-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 19:29:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 19:29:08 +0000
Message-Id: <20210122192913.4518-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210122192913.4518-1-chris@chris-wilson.co.uk>
References: <20210122192913.4518-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 05/10] drm/i915/gt: Remove a bonus newline
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

Trailing newlines before closing the function are best forgotten, or
else checkpatch moans.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 1 -
 drivers/gpu/drm/i915/gt/intel_rc6.c            | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index a4242ca8dcd7..582fcaee11aa 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -165,7 +165,6 @@ void intel_gt_init_clock_frequency(struct intel_gt *gt)
 		 gt->clock_period_ns,
 		 div_u64(mul_u32_u32(gt->clock_period_ns, S32_MAX),
 			 USEC_PER_SEC));
-
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 76966def123d..91c1f58c1b25 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -175,7 +175,6 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
 	/* 3a: Enable RC6 */
 	set(uncore, GEN6_RC6_THRESHOLD, 37500); /* 37.5/125ms per EI */
 
-
 	rc6->ctl_enable =
 		GEN6_RC_CTL_HW_ENABLE |
 		GEN6_RC_CTL_RC6_ENABLE |
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
