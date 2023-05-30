Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E519F716CE2
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 20:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987D310E410;
	Tue, 30 May 2023 18:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E305810E409
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 18:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685472843; x=1717008843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VZ1sUbPjMlgbCZLbwi0mMzBeA0hKLEbtjeihHjb1s0U=;
 b=JovVff/FOJTIz6aOsf6fsBjSMSi/WKdRugSEitDF8fCJ/KihHjhjLw3U
 ClJ5hvMhyF2Pc8KizPRTX4Gmbkq8DPNqcVZ/Fy8P7yNh42w7nnx99fYrc
 LlYoRAM/dfif6uZYdaKUCDlKNFhlLFqLYugTO2esfECkxyLztDYAyKHjw
 Zb1n/w+2nNyoDgA8qAg6IQVCI/Ttlx7GflCL44TcWczvLwvD44UFO9MwX
 9bcacbGBov3AAOoorRUQiNFJwxfEHPqvBby3tG06lgVrYcJ3QFR04yFSO
 WQOn8GtfEeV2y1bJp2cku4YcIqKpm6wvfIm1qjxXNw3zrS+E119RG5c6i Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="418504051"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="418504051"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 11:54:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796381501"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="796381501"
Received: from anushasr-simics.jf.intel.com ([10.165.21.205])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 11:54:01 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 May 2023 11:55:29 -0700
Message-Id: <20230530185529.3378520-6-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
References: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/adls: s/ADLS/ALDERLAKE_S in
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

Driver refers to the platfrom Alderlake S as ADLS in places
and ALDERLAKE_S in some. Making the consistent change
to avoid confusion of the right naming convention for
the platform.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 2 +-
 drivers/gpu/drm/i915/i915_drv.h          | 6 +++---
 drivers/gpu/drm/i915/intel_device_info.c | 2 +-
 drivers/gpu/drm/i915/intel_step.c        | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index c8b9cbb7ba3a..2bd908953e18 100644
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
index 4ef336f6f24b..3ef2eb9fde02 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -577,7 +577,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
 #define IS_DG2_G12(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
-#define IS_ADLS_RPLS(i915) \
+#define IS_ALDERLAKE_S_RPLS(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
 #define IS_ALDERLAKE_P_N(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
@@ -661,11 +661,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_RKL_DISPLAY_STEP(p, since, until) \
 	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
-#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
+#define IS_ALDERLAKE_S_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_ADLS_GRAPHICS_STEP(__i915, since, until) \
+#define IS_ALDERLAKE_S_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 2f79d232b04a..559697c65664 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -416,7 +416,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	enum pipe pipe;
 
 	/* Wa_14011765242: adl-s A0,A1 */
-	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
+	if (IS_ALDERLAKE_S_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
 		for_each_pipe(dev_priv, pipe)
 			display_runtime->num_scalers[pipe] = 0;
 	else if (DISPLAY_VER(dev_priv) >= 11) {
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 0afe113b295a..15c23c8982b9 100644
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
2.25.1

