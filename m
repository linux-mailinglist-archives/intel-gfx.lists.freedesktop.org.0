Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E23A75F602E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 06:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0692E10E7DA;
	Thu,  6 Oct 2022 04:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 168EB10E4DB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665030993; x=1696566993;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IOeNIDa15Z3Mt7/Y3QEbhYeF0ezGdUj66rJ0eFE3iaA=;
 b=LtwYkSiaSiTZ0pJFU7SyAS45yw2falrcWv0D9rdxYu0psHmzQ5eNs9sn
 1WA7qdoJQE9XomT1eDNY0OBrrBrsDXAMIdU4iiEKF1xkISY+TGwSCJtqj
 Trone/2u2jtvzvgJwD4B04ExAxceVYruqzCbASVlmS3bg/wOFxP3KFpCw
 gqAGVgVTIIF1b1YBYYk1f3YazXbjw4axATlthsyj9wnMuS106/gMfrfyW
 SzgjNT8SIhCXvI7xrGNvQikYHinDXb19pak8HzU8OV+ynR/xer3whyei+
 n2AzR2eACZp67CpKzNwBxbPvANuFpSEdOb5DRaJvQBOU/vcmXO6SYgBAx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="290599851"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="290599851"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 21:36:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="953462913"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="953462913"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 05 Oct 2022 21:36:31 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 21:38:30 -0700
Message-Id: <20221006043834.606220-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/7] drm/i915/pxp: Make PXP tee component
 bind/unbind aware of PXP-owning-GT
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

Ensure i915_pxp_tee_component_bind / unbind implicitly sorts out
getting the correct PXP control-context from the PXP-owning-GT
when establishing or ending connection.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 792a56edfde7..05d5ad1092b8 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -20,8 +20,12 @@
 static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
 
-	return &to_gt(i915)->pxp;
+	if (!gt)
+		return NULL;
+
+	return &gt->pxp;
 }
 
 static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
@@ -128,10 +132,16 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
-	struct intel_uc *uc = &pxp_to_gt(pxp)->uc;
+	struct intel_uc *uc;
 	intel_wakeref_t wakeref;
 	int ret = 0;
 
+	if (!pxp) {
+		drm_warn(&i915->drm, "tee comp binding without a PXP-owner GT\n");
+		return -ENODEV;
+	}
+	uc = &pxp_to_gt(pxp)->uc;
+
 	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = data;
 	pxp->pxp_component->tee_dev = tee_kdev;
@@ -167,6 +177,9 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
 	intel_wakeref_t wakeref;
 
+	if (!pxp)
+		return;
+
 	if (intel_pxp_is_enabled(i915))
 		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
 			intel_pxp_fini_hw(pxp);
-- 
2.34.1

