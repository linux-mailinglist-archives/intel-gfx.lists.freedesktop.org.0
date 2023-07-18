Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC43F758868
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 00:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6E910E3E6;
	Tue, 18 Jul 2023 22:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A050810E3E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 22:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689719282; x=1721255282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nUpq9ZiUiDT8MYmRyEAtF6pPvOI5VaJspwQOZMNVusE=;
 b=RegJ9rbgtHF6Y7QeBCBSK440+4iGAX1yXej5+bVM+8ThEHKxyfScZmLf
 Txm2tOfj/CxAiGxQUNcwucFunmt3JpOgWP9rrQgLuftH0AVFbnspPrb0B
 JHB8HL7bXehHe5q1ZypdHuviDItNG5tcNoEUUDRvKmK8rXW6gJSL5YTLB
 b1XA9WgrakGxYNWxGDcVeIznnXpgN+L8x7mkAPgBrwT76gSFo6yQ9yup/
 qjctdKpgIKpancQVz7NK/dkz/+GAJ7oTU9Wnt5boiY/6+W9IfAReA2Nb0
 7vetER9IHlBj8Ywf21/Kc0DAovK/E7kAWvJ2X+S+7uQCDWUCvPoMyxm2u g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="432508075"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="432508075"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="970403899"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="970403899"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:28:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 15:27:59 -0700
Message-ID: <20230718222753.1075713-15-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230718222753.1075713-10-matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915: Eliminate IS_MTL_DISPLAY_STEP
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Stepping-specific display behavior shouldn't be tied to MTL as a
platform, but rather specifically to the Xe_LPM+ IP.  Future non-MTL
platforms may re-use this IP and will need to follow the exact same
logic and apply the same workarounds.  IS_MTL_DISPLAY_STEP() is dropped
in favor of a new macro IS_DISPLAY_IPVER_STEP() that only checks the
display IP version.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h |  5 +++++
 drivers/gpu/drm/i915/display/intel_fbc.c            |  3 ++-
 drivers/gpu/drm/i915/display/intel_pmdemand.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c            | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h                     |  6 ++----
 5 files changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 3324bd453ca7..d8dccf7f1b5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -71,6 +71,11 @@ struct drm_printer;
 #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
 #define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
 
+#define IS_DISPLAY_IPVER_STEP(__i915, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 DISPLAY_VER_FULL(__i915) == ipver && \
+	 IS_DISPLAY_STEP(__i915, since, until))
+
 struct intel_display_runtime_info {
 	struct {
 		u16 ver;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 7f8b2d7713c7..a3a42e29b766 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -49,6 +49,7 @@
 #include "i915_vgpu.h"
 #include "intel_cdclk.h"
 #include "intel_de.h"
+#include "intel_display_device.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fbc.h"
@@ -1093,7 +1094,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 
 	/* Wa_14016291713 */
 	if ((IS_DISPLAY_VER(i915, 12, 13) ||
-	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
+	     IS_DISPLAY_IPVER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
 	    crtc_state->has_psr) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index f7608d363634..3b37beedc95c 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
 				     &pmdemand_state->base,
 				     &intel_pmdemand_funcs);
 
-	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
+	if (IS_DISPLAY_IPVER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
 		/* Wa_14016740474 */
 		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 04ab034a8d57..5770cbfef435 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1360,7 +1360,7 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 	bool set_wa_bit = false;
 
 	/* Wa_14015648006 */
-	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	if (IS_DISPLAY_IPVER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
 	    IS_DISPLAY_VER(dev_priv, 11, 13))
 		set_wa_bit |= crtc_state->wm_level_disabled;
 
@@ -1447,7 +1447,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * All supported adlp panels have 1-based X granularity, this may
 		 * cause issues if non-supported panels are used.
 		 */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_DISPLAY_IPVER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
 				     ADLP_1_BASED_X_GRANULARITY);
 		else if (IS_ALDERLAKE_P(dev_priv))
@@ -1455,7 +1455,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				     ADLP_1_BASED_X_GRANULARITY);
 
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_DISPLAY_IPVER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
@@ -1613,7 +1613,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	if (intel_dp->psr.psr2_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_DISPLAY_IPVER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
@@ -2087,7 +2087,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		goto skip_sel_fetch_set_loop;
 
 	/* Wa_14014971492 */
-	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	if ((IS_DISPLAY_IPVER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
 	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
 	    crtc_state->splitter.enable)
 		pipe_clip.y1 = 0;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 10741177b654..cf72c34bca10 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -443,6 +443,8 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
 
 #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
+#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
+				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)
 #define IS_DISPLAY_VER(i915, from, until) \
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
@@ -704,10 +706,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	  MEDIA_VER_FULL(__gt->i915) == ipver && \
 	  IS_MEDIA_STEP(__gt->i915, since, until)))
 
-#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
-	(IS_METEORLAKE(__i915) && \
-	 IS_DISPLAY_STEP(__i915, since, until))
-
 /*
  * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
  * create three variants (G10, G11, and G12) which each have distinct
-- 
2.41.0

