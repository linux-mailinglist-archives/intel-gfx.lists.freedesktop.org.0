Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F22C6B3669
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 07:11:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB00110E959;
	Fri, 10 Mar 2023 06:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C76610E956
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 06:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678428680; x=1709964680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b9GE4IMV12RfDpQpzpbwZ8wJHfeDYzWGPXXGjQJIGHY=;
 b=a5ieYyaGV2jjOZA2gG4//ttclxZ0hYIccOjHz3WCX2gRB3SsCelPUY2E
 rrlwirKefDuq44suIJ5/w02bOeE3J2wkYY7o6k59CI7QYBRrvnJwnOvbb
 gguyALyPUGqkeDkX73EdHFr9a8+UDbk3PYPXvKvEnrRgtW8GZmYOMoOqY
 I0qPSQguP6+z0O4ee/2MzkOfWZx7t2nbrA6CdJlI3j74Z8cFsuivkXr85
 MetCm8uFHF873ZZIHhs3Rn8OvsilfPXSzdsYXKGm41vMVwVtRBgW+eBld
 w2HFBObI/vNOcTVt0qxxRfE1e69+3nd/gsrbC1H2GjOGUjjx+2XaEbDGy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="399254222"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; d="scan'208";a="399254222"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 22:11:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="801460536"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; d="scan'208";a="801460536"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 22:11:17 -0800
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Mar 2023 11:43:39 +0530
Message-Id: <20230310061339.2495416-2-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230310061339.2495416-1-badal.nilawar@intel.com>
References: <20230310061339.2495416-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/mtl: Disable MC6 for MTL A step
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
Cc: hima.b.chilmakuru@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, srikanth.nandamuri@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The Wa_14017073508 require to send Media Busy/Idle mailbox while
accessing Media tile. As of now it is getting handled while __gt_unpark,
__gt_park. But there are various corner cases where forcewakes are taken
without __gt_unpark i.e. without sending Busy Mailbox especially during
register reads. Forcewakes are taken without busy mailbox leads to
GPU HANG. So bringing mailbox calls under forcewake calls are no feasible
option as forcewake calls are atomic and mailbox calls are blocking.
The issue already fixed in B step so disabling MC6 on A step and
reverting previous commit which handles Wa_14017073508

Fixes: 8f70f1ec587d ("drm/i915/mtl: Add Wa_14017073508 for SAMedia")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 27 -----------------------
 drivers/gpu/drm/i915/gt/intel_rc6.c       |  8 +++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c | 13 +----------
 drivers/gpu/drm/i915/i915_reg.h           |  9 --------
 4 files changed, 9 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 85ae7dc079f2..e02cb90723ae 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -20,31 +20,10 @@
 #include "intel_rc6.h"
 #include "intel_rps.h"
 #include "intel_wakeref.h"
-#include "intel_pcode.h"
 #include "pxp/intel_pxp_pm.h"
 
 #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
 
-static void mtl_media_busy(struct intel_gt *gt)
-{
-	/* Wa_14017073508: mtl */
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
-	    gt->type == GT_MEDIA)
-		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
-				  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
-				  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
-}
-
-static void mtl_media_idle(struct intel_gt *gt)
-{
-	/* Wa_14017073508: mtl */
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
-	    gt->type == GT_MEDIA)
-		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
-				  PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
-				  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
-}
-
 static void user_forcewake(struct intel_gt *gt, bool suspend)
 {
 	int count = atomic_read(&gt->user_wakeref);
@@ -92,9 +71,6 @@ static int __gt_unpark(struct intel_wakeref *wf)
 
 	GT_TRACE(gt, "\n");
 
-	/* Wa_14017073508: mtl */
-	mtl_media_busy(gt);
-
 	/*
 	 * It seems that the DMC likes to transition between the DC states a lot
 	 * when there are no connected displays (no active power domains) during
@@ -144,9 +120,6 @@ static int __gt_park(struct intel_wakeref *wf)
 	GEM_BUG_ON(!wakeref);
 	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
 
-	/* Wa_14017073508: mtl */
-	mtl_media_idle(gt);
-
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 5c91622dfca4..f4150f61f39c 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -486,6 +486,7 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 static bool rc6_supported(struct intel_rc6 *rc6)
 {
 	struct drm_i915_private *i915 = rc6_to_i915(rc6);
+	struct intel_gt *gt = rc6_to_gt(rc6);
 
 	if (!HAS_RC6(i915))
 		return false;
@@ -502,6 +503,13 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 	}
 
+	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
+	    gt->type == GT_MEDIA) {
+		drm_notice(&i915->drm,
+			   "Media RC6 disabled on A step\n");
+		return false;
+	}
+
 	return true;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
index fcf51614f9a4..1adec6de223c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
@@ -12,20 +12,9 @@
 
 static bool __guc_rc_supported(struct intel_guc *guc)
 {
-	struct intel_gt *gt = guc_to_gt(guc);
-
-	/*
-	 * Wa_14017073508: mtl
-	 * Do not enable gucrc to avoid additional interrupts which
-	 * may disrupt pcode wa.
-	 */
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
-	    gt->type == GT_MEDIA)
-		return false;
-
 	/* GuC RC is unavailable for pre-Gen12 */
 	return guc->submission_supported &&
-		GRAPHICS_VER(gt->i915) >= 12;
+		GRAPHICS_VER(guc_to_gt(guc)->i915) >= 12;
 }
 
 static bool __guc_rc_selected(struct intel_guc *guc)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b9b6d46dfe1b..9db6b3f06a74 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6460,15 +6460,6 @@
 /*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
 #define     PCODE_MBOX_DOMAIN_NONE		0x0
 #define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
-
-/* Wa_14017210380: mtl */
-#define   PCODE_MBOX_GT_STATE			0x50
-/* sub-commands (param1) */
-#define     PCODE_MBOX_GT_STATE_MEDIA_BUSY	0x1
-#define     PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY	0x2
-/* param2 */
-#define     PCODE_MBOX_GT_STATE_DOMAIN_MEDIA	0x1
-
 #define GEN6_PCODE_DATA				_MMIO(0x138128)
 #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
 #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
-- 
2.25.1

