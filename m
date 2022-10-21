Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E86D607DA4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 19:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E0F10E5E2;
	Fri, 21 Oct 2022 17:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 115B710E5E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666373853; x=1697909853;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MNUtCGXWxXc9KXMLh87cnAml9cvUbyTlivi1UKKgTvU=;
 b=PV2zYbikWYFeb2Uc69jp/ZQEOoNt9ibgpWT1K316iybJhnHhIJ8fFCYN
 0xII77Xf3RjRHkRWhZxJicOgtLNvbFD67ZZs4zX8pOl6l/eMHTDeYpQqf
 ar1XQDDHJpbNCTfd8OBKr6wtbauD/TBJjtA08Yj7mibhgudD+J6Wonn7D
 oPthuX/OgomHw+YQEUy0uGVJPRKZp07a/+1zKKAgUpiKmxaWT8RZ6sZ5P
 zQmxEcvffCnRDGMtvZ84poQX1FMt+V6RL8XcIpL8VWNzDmRDC2EZwPKrb
 9jhK87Ps9HGGUgMYLAzn0doq/5G6R+ddidG4rKDjqhnzxLbnqWQkq6kXX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="286781667"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="286781667"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 10:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="755898789"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="755898789"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2022 10:37:32 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 10:39:44 -0700
Message-Id: <20221021173946.366210-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/6] drm/i915/pxp: Make PXP tee component
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
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     |  6 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h     |  2 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 14 ++++++++++++--
 3 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 15f7983f6da8..2c835c38c527 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -74,7 +74,7 @@ bool intel_gtpxp_is_enabled(const struct intel_pxp *pxp)
 	return pxp->ce;
 }
 
-static struct intel_gt *_i915_to_pxp_gt(struct drm_i915_private *i915)
+struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915)
 {
 	struct intel_gt *gt = NULL;
 	int i = 0;
@@ -89,7 +89,7 @@ static struct intel_gt *_i915_to_pxp_gt(struct drm_i915_private *i915)
 
 bool intel_pxp_is_enabled(struct drm_i915_private *i915)
 {
-	struct intel_gt *gt = _i915_to_pxp_gt(i915);
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
 
 	if (!gt)
 		return false;
@@ -104,7 +104,7 @@ bool intel_gtpxp_is_active(const struct intel_pxp *pxp)
 
 bool intel_pxp_is_active(struct drm_i915_private *i915)
 {
-	struct intel_gt *gt = _i915_to_pxp_gt(i915);
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
 
 	if (!gt)
 		return false;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 70383394adb4..7d93055cdd6b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -13,6 +13,8 @@ struct intel_pxp;
 struct drm_i915_gem_object;
 struct drm_i915_private;
 
+struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915);
+
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
 bool intel_gtpxp_is_supported(struct intel_pxp *pxp);
 bool intel_gtpxp_is_enabled(const struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 1c6bc56391b7..eb7adb972610 100644
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

