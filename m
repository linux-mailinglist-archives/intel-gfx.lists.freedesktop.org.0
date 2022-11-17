Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDF162CF97
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 01:29:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEFF510E4F9;
	Thu, 17 Nov 2022 00:28:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965A110E50B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 00:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668644890; x=1700180890;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sOFvRKH/ULgfTSsQYThhX9caxvOm2uDcWLMER5PQ74U=;
 b=gx2ZOzgfnuF/p4QBSzcJp/5l635XXscS6mC5/n1Y0xzsNFekal2YnZdT
 GKYVwAI1unt9HQy0mc4+VoKDlsXGOQXUWYZN8dAkcSO24nTFm2XFFhtty
 r4PJqLubDEWK5gnS+o/Rzm2zw6OEoxIbCrIR3A6g33WsiJXajGJu0QbOr
 3XuEtr8MKnQZbZpWzwVHYTRW+hF6tBi4GrI0qVs5iq0d5l2vzHGlmoBsp
 abqpt18TNu+yarqrVoSLLPiP2OGPy620lkhnMJ/hp6moyrQUS7mqBicHz
 ydNhotg12MmVr8VLw82rubj6Z1EsLqoF7esYUxGc0Najzs1eTE2D8j8WB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312722095"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="312722095"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 16:27:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="781985085"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="781985085"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2022 16:27:48 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 16:30:16 -0800
Message-Id: <20221117003018.1433115-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/6] drm/i915/pxp: Make PXP tee component
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
getting the correct per-GT PXP control-context from the PXP-owning-GT
when establishing or ending connection. Thus, replace _i915_to_pxp_gt
with intel_pxp_get_owning_gt (also takes in i915).

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     |  6 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h     |  2 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 14 ++++++++++++--
 3 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 76a924587543..6a78b6ef0235 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -64,7 +64,7 @@ bool intel_pxp_is_enabled_on_gt(const struct intel_pxp *pxp)
 	return pxp->ce;
 }
 
-static struct intel_gt *i915_to_pxp_gt(struct drm_i915_private *i915)
+struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915)
 {
 	struct intel_gt *gt = NULL;
 	int i = 0;
@@ -79,7 +79,7 @@ static struct intel_gt *i915_to_pxp_gt(struct drm_i915_private *i915)
 
 bool intel_pxp_is_enabled(struct drm_i915_private *i915)
 {
-	struct intel_gt *gt = i915_to_pxp_gt(i915);
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
 
 	if (!gt)
 		return false;
@@ -94,7 +94,7 @@ bool intel_pxp_is_active_on_gt(const struct intel_pxp *pxp)
 
 bool intel_pxp_is_active(struct drm_i915_private *i915)
 {
-	struct intel_gt *gt = i915_to_pxp_gt(i915);
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
 
 	if (!gt)
 		return false;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index fe981eebf0ec..c798c3bde957 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -13,6 +13,8 @@ struct intel_pxp;
 struct drm_i915_gem_object;
 struct drm_i915_private;
 
+struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915);
+
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
 
 bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index a5c9c692c20d..b9198e961cb6 100644
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
-- 
2.34.1

