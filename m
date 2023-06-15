Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 295167314A3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 11:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2357B10E4C3;
	Thu, 15 Jun 2023 09:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BF6410E4BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 09:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686822885; x=1718358885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SDrMiQK5D8mWaTOUR57agphZLR7w+o0TG8xbfgSaGEQ=;
 b=CgVm+ly4daCTF2oK07mgbBnwDyXiYGztR5CpUohSeGOA1Z8/ivRbdvuO
 lKyQSxQ76KZ97MOiMJX/ttfsfSfJiY+gUdRKTKk47teKkMlPQlAR8UJ/u
 SFVivR0ncsJb57XWqGDfuZmHx5hrtCHl1Kf5NS3PISMJDSsLwRPcppPCK
 hHu3LUwY2kiIYgJdP3DV0HyNmTEHr6H2LWDkURtgo+rW2t3nXXT/pfFW0
 cjqVejtuK4kprDDBS1rIaZvNigbWS7dnH55aOnik/EW82LXsW0a5FU909
 tdrt6t7EqNBftNfBp5n8p2Qwr0BmXG6eRl2Jh26ZnQb0AGl0D+zkzI8eb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="339214241"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="339214241"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 02:54:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="802274088"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="802274088"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jun 2023 02:54:38 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 15:24:20 +0530
Message-Id: <20230615095421.3135415-11-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915/adls: s/ADLS/ALDERLAKE_S in
 platform and subplatform defines
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

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Driver refers to the platfrom Alderlake S as ADLS in places
and ALDERLAKE_S in some. Making the consistent change
to avoid confusion of the right naming convention for
the platform.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c               | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                     | 6 +++---
 drivers/gpu/drm/i915/intel_step.c                   | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 3fd30e7f0062..f3090b8afc60 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -797,7 +797,7 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 	enum pipe pipe;
 
 	/* Wa_14011765242: adl-s A0,A1 */
-	if (IS_ADLS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
+	if (IS_ALDERLAKE_S_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
 		for_each_pipe(i915, pipe)
 			display_runtime->num_scalers[pipe] = 0;
 	else if (DISPLAY_VER(i915) >= 11) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 18250fb64bd8..eb28705b88bd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -43,7 +43,7 @@ static void uc_expand_default_options(struct intel_uc *uc)
 	}
 
 	/* Intermediate platforms are HuC authentication only */
-	if (IS_ALDERLAKE_S(i915) && !IS_ADLS_RPLS(i915)) {
+	if (IS_ALDERLAKE_S(i915) && !IS_ALDERLAKE_S_RPLS(i915)) {
 		i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
 		return;
 	}
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d3ce6ed3be86..1dad0c9b4f30 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -585,7 +585,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
 #define IS_DG2_G12(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
-#define IS_ADLS_RPLS(i915) \
+#define IS_ALDERLAKE_S_RPLS(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
 #define IS_ALDERLAKE_P_N(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
@@ -669,11 +669,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ROCKETLAKE_DISPLAY_STEP(p, since, until) \
 	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
-#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
+#define IS_ALDERLAKE_S_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_ADLS_GRAPHICS_STEP(__i915, since, until) \
+#define IS_ALDERLAKE_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))
 
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index fe447063a064..f410aa2a8077 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -201,7 +201,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ALDERLAKE_P(i915)) {
 		revids = adlp_revids;
 		size = ARRAY_SIZE(adlp_revids);
-	} else if (IS_ADLS_RPLS(i915)) {
+	} else if (IS_ALDERLAKE_S_RPLS(i915)) {
 		revids = adls_rpls_revids;
 		size = ARRAY_SIZE(adls_rpls_revids);
 	} else if (IS_ALDERLAKE_S(i915)) {
-- 
2.34.1

