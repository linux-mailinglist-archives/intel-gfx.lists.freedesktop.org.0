Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE17F375B43
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 21:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140446EE1C;
	Thu,  6 May 2021 18:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD526ED9C;
 Thu,  6 May 2021 18:57:14 +0000 (UTC)
IronPort-SDR: rRTA9+i0nu+vwQTl7MeI0ZPcIsY9urNuSGLX2U7liUvliBt1QG2ElnLux9uLeB8rz31HsouwzO
 isOR+PDM7JnQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="198195469"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="198195469"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:14 -0700
IronPort-SDR: Y3NklEJw07Xe+dlbmrvl/cs7jbFTJPBClQInu1M+mC2lxiQKpbWXBh9Yo3xTrQ8WG3bXE8zdIi
 kpdUHRmxxpIg==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="469583681"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:14 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  6 May 2021 12:14:51 -0700
Message-Id: <20210506191451.77768-98-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210506191451.77768-1-matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 97/97] drm/i915/guc: Unblock GuC submission
 on Gen11+
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Unblock GuC submission on Gen11+ platforms.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  8 ++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h |  3 +--
 drivers/gpu/drm/i915/gt/uc/intel_uc.c             | 14 +++++++++-----
 4 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 169daaf8a189..ac7ece2f4c8c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -66,6 +66,7 @@ struct intel_guc {
 	struct list_head destroyed_contexts;
 	struct intel_gt_pm_delayed_work destroy_worker;
 
+	bool submission_supported;
 	bool submission_selected;
 
 	struct i915_vma *ads_vma;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 594a99ea4f5c..b9c86e0f02b2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3477,6 +3477,13 @@ void intel_guc_submission_disable(struct intel_guc *guc)
 	/* Note: By the time we're here, GuC may have already been reset */
 }
 
+static bool __guc_submission_supported(struct intel_guc *guc)
+{
+	/* GuC submission is unavailable for pre-Gen11 */
+	return intel_guc_is_supported(guc) &&
+	       INTEL_GEN(guc_to_gt(guc)->i915) >= 11;
+}
+
 static bool __guc_submission_selected(struct intel_guc *guc)
 {
 	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
@@ -3491,6 +3498,7 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
 {
 	guc->max_guc_ids = GUC_MAX_LRC_DESCRIPTORS;
 	guc->num_guc_ids = GUC_MAX_LRC_DESCRIPTORS;
+	guc->submission_supported = __guc_submission_supported(guc);
 	guc->submission_selected = __guc_submission_selected(guc);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
index 60c8b9aaad6e..9431ec52a6c4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
@@ -37,8 +37,7 @@ int intel_guc_wait_for_pending_msg(struct intel_guc *guc,
 
 static inline bool intel_guc_submission_is_supported(struct intel_guc *guc)
 {
-	/* XXX: GuC submission is unavailable for now */
-	return false;
+	return guc->submission_supported;
 }
 
 static inline bool intel_guc_submission_is_wanted(struct intel_guc *guc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 4a79db4a739f..8cfb226da62e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -34,8 +34,15 @@ static void uc_expand_default_options(struct intel_uc *uc)
 		return;
 	}
 
-	/* Default: enable HuC authentication only */
-	i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
+	/* Intermediate platforms are HuC authentication only */
+	if (IS_DG1(i915) || IS_ALDERLAKE_S(i915)) {
+		drm_dbg(&i915->drm, "Disabling GuC only due to old platform\n");
+		i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
+		return;
+	}
+
+	/* Default: enable HuC authentication and GuC submission */
+	i915->params.enable_guc = ENABLE_GUC_LOAD_HUC | ENABLE_GUC_SUBMISSION;
 }
 
 /* Reset GuC providing us with fresh state for both GuC and HuC.
@@ -313,9 +320,6 @@ static int __uc_init(struct intel_uc *uc)
 	if (i915_inject_probe_failure(uc_to_gt(uc)->i915))
 		return -ENOMEM;
 
-	/* XXX: GuC submission is unavailable for now */
-	GEM_BUG_ON(intel_uc_uses_guc_submission(uc));
-
 	ret = intel_guc_init(guc);
 	if (ret)
 		return ret;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
