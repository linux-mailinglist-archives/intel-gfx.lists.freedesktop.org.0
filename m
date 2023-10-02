Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 682377B59F1
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 20:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E476710E07E;
	Mon,  2 Oct 2023 18:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3B6910E07E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 18:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696270985; x=1727806985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CLpbvdSW2DpyODTdxlEwVl6UHZsKBgDfitA6ssaRax8=;
 b=eptO7CW7WcvACnnpdfaWacG88bvo3H0xanfdsOGpplkNCW3C+i61HbSX
 3Esbd3Rx1LtjosnXtc6bcz1JD9xuwE66xI5JTYuC/O9uHU5hHTGkZyZsp
 wesZ5Je17jC9wop66u2Ch5lfFvbctyStM94Ch9eZg3538XpP6tjMpGU6p
 06r/XWOmVkOLGtPfE/RAjBdtNXll3gePYG2f/zFiawJaMi0ciuoYKV0Tn
 /2EaGfBJmT9RttX/gwRn8uJBe7iiuHSFs9QhnhM6j2lW+jXyEXl6u7J9I
 sghwemo/xVtgXth/hAS+a4k9W5kACYcnrztWBQ+RSXln6LWJ95rEhH2JX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="413607937"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="413607937"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 10:35:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="785836326"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="785836326"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 10:35:01 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Oct 2023 10:24:18 -0700
Message-Id: <20231002172419.1017044-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915: Perform TLB invalidation on
 all GTs during suspend/resume
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Consider multi-gt support when cancelling all tlb invalidations on
suspend, and when submitting tlb invalidations on resume.

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f5175103ea900..d7655a7b60eda 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1077,6 +1077,8 @@ static int i915_drm_suspend(struct drm_device *dev)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
+	struct intel_gt *gt;
+	int i;
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
@@ -1094,7 +1096,8 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_runtime_pm_disable_interrupts(dev_priv);
 
-	wake_up_all_tlb_invalidate(&to_gt(dev_priv)->uc.guc);
+	for_each_gt(gt, dev_priv, i)
+		wake_up_all_tlb_invalidate(&gt->uc.guc);
 
 	intel_hpd_cancel_work(dev_priv);
 
@@ -1267,9 +1270,11 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_gvt_resume(dev_priv);
 
-	if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&to_gt(dev_priv)->uc.guc)) {
-		intel_guc_invalidate_tlb_full(&to_gt(dev_priv)->uc.guc);
-		intel_guc_invalidate_tlb(&to_gt(dev_priv)->uc.guc);
+	for_each_gt(gt, dev_priv, i) {
+		if (!INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&gt->uc.guc))
+			continue;
+		intel_guc_invalidate_tlb_full(&gt->uc.guc);
+		intel_guc_invalidate_tlb(&gt->uc.guc);
 	}
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
-- 
2.25.1

