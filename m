Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4581E76B662
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 15:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE3210E40D;
	Tue,  1 Aug 2023 13:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E8110E40C
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 13:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690898063; x=1722434063;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yP1jr2kur5h0EaJJjlkVBtO89cy3CR/wEvzpNqMZeRQ=;
 b=CRBD04KHwSKGTSRxHLvD2rooSJNHkTxcuOYB5HveCSNCp19O71e7cWXR
 /z8sPnmIdLQy/IyWlAWL1c6ccI/DY5DU1bAmuOZIciwsViZbczztE3oje
 FLoVwp/Xt9A1AruVMvdct0GNg7beOZRQMM4tPTkoLMS7XliSWgGjqHjJx
 i5MhHc1brpCJ2/QsRAP0l88uMNuIfFHV0CWvFAEDeUtJ1l1ocprGjjDzp
 j9b1TJ2nxWix+Iitmo+EfNavjAJ0fpDN/UQMu7zIkFKQoZPJ3R3EJLKcq
 tN/6SgSm1I6fYbOzyOtfiV0IvINXcbO8M1HPTUeOJKnprCCCdE1vYHYr8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435629412"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435629412"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:54:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="818804032"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="818804032"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2023 06:54:21 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 19:23:44 +0530
Message-Id: <20230801135344.3797924-15-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
References: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 14/14] drm/i915/adls:
 s/ADLS_RPLS/RAPTORLAKE_S in platform and subplatform defines
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Driver refers to the platform Alderlake S as ADLS_RPLS in places
and RAPTORLAKE_S in some.

v2:
- Unrolled wrapper IS_ADLS_GRAPHICS_STEP

v3:
- Replace IS_RAPTORLAKE_S instead of IS_ADLS_RPLS. (Tvrtko/Lucas).
- Remove unused macro IS_ADLS_GRAPHICS/DISPLAY_STEP
- Change the subject

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c               | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                     | 9 +--------
 drivers/gpu/drm/i915/intel_step.c                   | 2 +-
 4 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 8286e79522d1..dcb272327281 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -858,7 +858,7 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORTS);
 
 	/* Wa_14011765242: adl-s A0,A1 */
-	if (IS_ADLS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
+	if (IS_ALDERLAKE_S(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
 		for_each_pipe(i915, pipe)
 			display_runtime->num_scalers[pipe] = 0;
 	else if (DISPLAY_VER(i915) >= 11) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 18250fb64bd8..98b103375b7a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -43,7 +43,7 @@ static void uc_expand_default_options(struct intel_uc *uc)
 	}
 
 	/* Intermediate platforms are HuC authentication only */
-	if (IS_ALDERLAKE_S(i915) && !IS_ADLS_RPLS(i915)) {
+	if (IS_ALDERLAKE_S(i915) && !IS_RAPTORLAKE_S(i915)) {
 		i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
 		return;
 	}
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 853687d9e3f8..9ddba8a8ab1a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -584,7 +584,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
 #define IS_DG2_G12(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
-#define IS_ADLS_RPLS(i915) \
+#define IS_RAPTORLAKE_S(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
 #define IS_ALDERLAKE_P_N(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
@@ -654,13 +654,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 
 
-#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
-	(IS_ALDERLAKE_S(__i915) && \
-	 IS_DISPLAY_STEP(__i915, since, until))
-
-#define IS_ADLS_GRAPHICS_STEP(__i915, since, until) \
-	(IS_ALDERLAKE_S(__i915) && \
-	 IS_GRAPHICS_STEP(__i915, since, until))
 
 
 #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 5553de469fa0..c02a6f156a00 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -201,7 +201,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ALDERLAKE_P(i915)) {
 		revids = adlp_revids;
 		size = ARRAY_SIZE(adlp_revids);
-	} else if (IS_ADLS_RPLS(i915)) {
+	} else if (IS_RAPTORLAKE_S(i915)) {
 		revids = adls_rpls_revids;
 		size = ARRAY_SIZE(adls_rpls_revids);
 	} else if (IS_ALDERLAKE_S(i915)) {
-- 
2.34.1

