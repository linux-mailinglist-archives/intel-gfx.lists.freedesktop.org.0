Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FF25F5A8A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 21:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F2510E759;
	Wed,  5 Oct 2022 19:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C22210E757
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 19:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664997410; x=1696533410;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IOeNIDa15Z3Mt7/Y3QEbhYeF0ezGdUj66rJ0eFE3iaA=;
 b=THVG/gYasoqvhYMYd2KsK2znQm7Uem4ZSe3LYt2d5CpnLzsaxkdyRk63
 +zAFY19WIMEwE4cLtBkA3hS/XJNJvB7PMlvPkg2iAvl2ajks7qSbJZSZk
 pBtqkJDtW0eAQpvu/Zql0+T5XjtZKIiSh3U3QhTQmMEHrgLYwLDPLdacg
 c8qzVOPh15rTGigEnedKfp+QCYZ+9jzy+7KCH3C6w6KOnVby349wbtEYd
 RaOip+LHm6QbwiZapCY3plflLEYv602xuZzI3VcDHn4GZBhZ6EzHjAkYt
 zJkL5ZPAsf5uNg5ebsdD+G2e3TCqn/DJhKhiK5k1JtcRygjQzaqr+D+UW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="329668562"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="329668562"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 12:16:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="602132219"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="602132219"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 05 Oct 2022 12:16:36 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 12:18:36 -0700
Message-Id: <20221005191838.466351-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
References: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/pxp: Make PXP tee component
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

