Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B20607DA6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 19:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1038910E632;
	Fri, 21 Oct 2022 17:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BCA910E5E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666373853; x=1697909853;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nXc0vYC1/TsI9d3WB/pomqPe3eANMwrB31/wm81k10o=;
 b=D/BCliiuD2h/OtxRE8xJvPNvjUFa7pN+iu0GikiDMJhZSfwbeMP6srF6
 xPNTOo/RS3nHv1gL5siG/Y2Hl7ns6JeYgkwBA5HMCSMndTQIlYCXvA4Ej
 YJvSco7ynC8WOihWj0FOsyUkg2DFfZz3+YHULaAaYXrHSj4QJLtndjwuj
 IhrKsHoAXgeOF2jg2/RLlJq0pAaWgplt8VLBFLFNFRLrCn7kK6m4Bxjp3
 slyDhTGbZR9NvviD6n0BlTHCxEWVv9oL6DXJPNymLU98FdsKd1pkJVq1t
 PU2AGksESgHYErfIzJfG2fhqylQ/RItKrdCOxwF84jqSn+vtIh4nIZ6wA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="286781668"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="286781668"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 10:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="755898790"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="755898790"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2022 10:37:32 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 10:39:45 -0700
Message-Id: <20221021173946.366210-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/6] drm/i915/pxp: Make intel_pxp_start
 implicitly sort PXP-owning-GT
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

Make intel_pxp_is_start implicitly find the PXP-owning-GT.
Callers of this function shall now pass in i915 since PXP
is a global GPU feature. Make intel_pxp_start implicitly
find the right gt to start PXP arb session so
it's transparent to the callers.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c        | 9 ++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp.h        | 2 +-
 3 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 798e77398acc..af60f6494947 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -272,7 +272,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 		if (!intel_pxp_is_active(i915))
-			ret = intel_pxp_start(&to_gt(i915)->pxp);
+			ret = intel_pxp_start(i915);
 	}
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 2c835c38c527..c87f812ba13a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -259,10 +259,17 @@ static bool pxp_component_bound(struct intel_pxp *pxp)
  * the arb session is restarted from the irq work when we receive the
  * termination completion interrupt
  */
-int intel_pxp_start(struct intel_pxp *pxp)
+int intel_pxp_start(struct drm_i915_private *i915)
 {
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+	struct intel_pxp *pxp;
 	int ret = 0;
 
+	if (!gt)
+		return -ENODEV;
+
+	pxp = &gt->pxp;
+
 	if (!intel_gtpxp_is_enabled(pxp))
 		return -ENODEV;
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 7d93055cdd6b..c45949bb1f7b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -31,7 +31,7 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
 
 void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 
-int intel_pxp_start(struct intel_pxp *pxp);
+int intel_pxp_start(struct drm_i915_private *i915);
 
 int intel_pxp_key_check(struct intel_pxp *pxp,
 			struct drm_i915_gem_object *obj,
-- 
2.34.1

