Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A580F5531E3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C950110ECCD;
	Tue, 21 Jun 2022 12:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E18A510ECB2
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814158; x=1687350158;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V7kpV9gGAaN9vX7VzMuTZ+hWKit8/dfpfzQazuRXF2w=;
 b=m21DmzaQzCs+hK/V4pRh8/u9BozMUvGIZTOkngEVkjoC6dnHNu4b3+0p
 fjo6mUb3/kHBhX2vZtBcEnBO6JGP97USvNQFF+TedZI5g8HY1RXLMaYmN
 9Wk0dXh/4cHmZaIJBc41LpKX+uSb8sW0H2tnagndDoXNNUf3b5CbLk1Bx
 Vck3kL5aaijjFdCp5cCCgs4CZiJYyIXxiVWPzL5tH2WhxaLFazTwmWgSH
 jogk2u8u9lXF2aJwy1/MWtsUiRNf1RUPoyqXMSM9YFzHxygIUx0I0Q5Os
 +1rAEWP4IHZ5AUMo9A07Xm3hOYNhzLe9INoOx20YaeqyHVm4V9pMKwGce w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280835586"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="280835586"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:22:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="585577565"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 21 Jun 2022 05:22:35 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjo013778; Tue, 21 Jun 2022 13:22:31 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:08 +0530
Message-Id: <20220621123516.370479-4-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/11] drm/i915: Avoid rpm helpers in
 intel_gt_suspend_late
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removed rpm helpers from intel_gt_suspend_late
and added rpm helpers at below high level functions
-__intel_gt_disable
-live_gt_resume

intel_gt_suspend_late is used in i915_gem_suspend_late
and i915_gem_suspend_late need to avoid rpm helpers
so added rpm helpers at higher level functions
-i915_gem_driver_remove
-i915_drm_suspend_late(already holds rpm wakeref)
-do_suspend (already holds rpm wakeref)

Removed rpm helpers from intel_uc_suspend and
acquired rpm wakref from above high functions.

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c       |  4 +++-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c    | 11 ++++-------
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |  4 +++-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    |  9 +++------
 drivers/gpu/drm/i915/i915_gem.c          |  5 ++++-
 5 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index be9877c4b496..bb04ec32c54f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -590,10 +590,12 @@ static int __engines_verify_workarounds(struct intel_gt *gt)
 
 static void __intel_gt_disable(struct intel_gt *gt)
 {
+	intel_wakeref_t wakeref = 0;
 	intel_gt_set_wedged_on_fini(gt);
 
 	intel_gt_suspend_prepare(gt);
-	intel_gt_suspend_late(gt);
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		intel_gt_suspend_late(gt);
 
 	GEM_BUG_ON(intel_gt_pm_is_awake(gt));
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index f553e2173bda..be99b01a0984 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -326,8 +326,6 @@ static suspend_state_t pm_suspend_target(void)
 
 void intel_gt_suspend_late(struct intel_gt *gt)
 {
-	intel_wakeref_t wakeref;
-
 	/* We expect to be idle already; but also want to be independent */
 	wait_for_suspend(gt);
 
@@ -352,11 +350,10 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 	if (pm_suspend_target() == PM_SUSPEND_TO_IDLE)
 		return;
 
-	with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
-		intel_rps_disable(&gt->rps);
-		intel_rc6_disable(&gt->rc6);
-		intel_llc_disable(&gt->llc);
-	}
+	intel_rps_disable(&gt->rps);
+	intel_rc6_disable(&gt->rc6);
+	intel_llc_disable(&gt->llc);
+
 
 	gt_sanitize(gt, false);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index be94f863bdef..50f30a5295c4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -142,13 +142,15 @@ static int live_gt_clocks(void *arg)
 static int live_gt_resume(void *arg)
 {
 	struct intel_gt *gt = arg;
+	intel_wakeref_t wakeref = 0;
 	IGT_TIMEOUT(end_time);
 	int err;
 
 	/* Do several suspend/resume cycles to check we don't explode! */
 	do {
 		intel_gt_suspend_prepare(gt);
-		intel_gt_suspend_late(gt);
+		with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+			intel_gt_suspend_late(gt);
 
 		if (gt->rc6.enabled) {
 			pr_err("rc6 still enabled after suspend!\n");
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index f2e7c82985ef..425ad2ef1644 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -652,17 +652,14 @@ void intel_uc_runtime_suspend(struct intel_uc *uc)
 void intel_uc_suspend(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
-	intel_wakeref_t wakeref;
 	int err;
 
 	if (!intel_guc_is_ready(guc))
 		return;
 
-	with_intel_runtime_pm(&uc_to_gt(uc)->i915->runtime_pm, wakeref) {
-		err = intel_guc_suspend(guc);
-		if (err)
-			DRM_DEBUG_DRIVER("Failed to suspend GuC, err=%d", err);
-	}
+	err = intel_guc_suspend(guc);
+	if (err)
+		DRM_DEBUG_DRIVER("Failed to suspend GuC, err=%d", err);
 }
 
 static int __uc_resume(struct intel_uc *uc, bool enable_communication)
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 702e5b89be22..bbe1dac2341c 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1173,9 +1173,12 @@ void i915_gem_driver_unregister(struct drm_i915_private *i915)
 
 void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 {
+	intel_wakeref_t wakeref;
+
 	intel_wakeref_auto_fini(&to_gt(dev_priv)->ggtt->userfault_wakeref);
 
-	i915_gem_suspend_late(dev_priv);
+	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
+		i915_gem_suspend_late(dev_priv);
 	intel_gt_driver_remove(to_gt(dev_priv));
 	dev_priv->uabi_engines = RB_ROOT;
 
-- 
2.25.1

