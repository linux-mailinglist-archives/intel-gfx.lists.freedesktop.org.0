Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE2C2EB612
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 00:21:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC2A96E10E;
	Tue,  5 Jan 2021 23:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF8676E10E
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 23:21:21 +0000 (UTC)
IronPort-SDR: Q6kDHOFSsM1IpilvjIzHWpi4iKY3JRV0hMaFVPWeqr681SF0Sfar38xZzHYya5+FowxCALaXqK
 /RtxO4DZgxcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="177296732"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="177296732"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 15:21:21 -0800
IronPort-SDR: RZXBYJud9oeCZx2p/FqcX8xM4TLdZzFrgr/e2oqmwpCtZb1QIQesU6495ldKyDHjWYzvEL/+HE
 MsJB4z3W5rYg==
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="565617204"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 15:21:21 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 15:19:47 -0800
Message-Id: <20210105231947.31235-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/guc: enable only the user
 interrupt when using GuC submission
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

In GuC submission mode the CS is owned by the GuC FW, so all CS status
interrupts are handled by it. We only need the user interrupt as that
signals request completion.

Since we're now starting the engines directly in GuC submission mode
when selected, we can stop switching back and forth between the
execlists and the GuC programming and select directly the correct
interrupt mask.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 18 ++++++-----
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 31 -------------------
 2 files changed, 11 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 9830342aa6f4..7b2b8cb2d2be 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -237,14 +237,18 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
 
 void gen11_gt_irq_postinstall(struct intel_gt *gt)
 {
-	const u32 irqs =
-		GT_CS_MASTER_ERROR_INTERRUPT |
-		GT_RENDER_USER_INTERRUPT |
-		GT_CONTEXT_SWITCH_INTERRUPT |
-		GT_WAIT_SEMAPHORE_INTERRUPT;
 	struct intel_uncore *uncore = gt->uncore;
-	const u32 dmask = irqs << 16 | irqs;
-	const u32 smask = irqs << 16;
+	u32 irqs = GT_RENDER_USER_INTERRUPT;
+	u32 dmask;
+	u32 smask;
+
+	if (!intel_uc_wants_guc_submission(&gt->uc))
+		irqs |= GT_CS_MASTER_ERROR_INTERRUPT |
+			GT_CONTEXT_SWITCH_INTERRUPT |
+			GT_WAIT_SEMAPHORE_INTERRUPT;
+
+	dmask = irqs << 16 | irqs;
+	smask = irqs << 16;
 
 	BUILD_BUG_ON(irqs & 0xffff0000);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 3993f1d75e87..84ec118f270d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -424,32 +424,6 @@ void intel_guc_submission_fini(struct intel_guc *guc)
 	}
 }
 
-static void guc_interrupts_capture(struct intel_gt *gt)
-{
-	struct intel_uncore *uncore = gt->uncore;
-	u32 irqs = GT_CONTEXT_SWITCH_INTERRUPT;
-	u32 dmask = irqs << 16 | irqs;
-
-	GEM_BUG_ON(INTEL_GEN(gt->i915) < 11);
-
-	/* Don't handle the ctx switch interrupt in GuC submission mode */
-	intel_uncore_rmw(uncore, GEN11_RENDER_COPY_INTR_ENABLE, dmask, 0);
-	intel_uncore_rmw(uncore, GEN11_VCS_VECS_INTR_ENABLE, dmask, 0);
-}
-
-static void guc_interrupts_release(struct intel_gt *gt)
-{
-	struct intel_uncore *uncore = gt->uncore;
-	u32 irqs = GT_CONTEXT_SWITCH_INTERRUPT;
-	u32 dmask = irqs << 16 | irqs;
-
-	GEM_BUG_ON(INTEL_GEN(gt->i915) < 11);
-
-	/* Handle ctx switch interrupts again */
-	intel_uncore_rmw(uncore, GEN11_RENDER_COPY_INTR_ENABLE, 0, dmask);
-	intel_uncore_rmw(uncore, GEN11_VCS_VECS_INTR_ENABLE, 0, dmask);
-}
-
 static int guc_context_alloc(struct intel_context *ce)
 {
 	return lrc_alloc(ce, ce->engine);
@@ -751,9 +725,6 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
 void intel_guc_submission_enable(struct intel_guc *guc)
 {
 	guc_stage_desc_init(guc);
-
-	/* Take over from manual control of ELSP (execlists) */
-	guc_interrupts_capture(guc_to_gt(guc));
 }
 
 void intel_guc_submission_disable(struct intel_guc *guc)
@@ -764,8 +735,6 @@ void intel_guc_submission_disable(struct intel_guc *guc)
 
 	/* Note: By the time we're here, GuC may have already been reset */
 
-	guc_interrupts_release(gt);
-
 	guc_stage_desc_fini(guc);
 }
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
