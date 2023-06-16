Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BA173302A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 13:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D521A10E606;
	Fri, 16 Jun 2023 11:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E670E10E5F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 11:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686915734; x=1718451734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s8BAEis4eoO91PNqC48hDX6Bygx5flm5gkLViZCwC+I=;
 b=QCllgZGAlOqrgeIVmMFaV0uuVgz4dxZ2Gd6hQDyYZXXhmtMrdmK3Y8+t
 GA2BAx034I+dKzdKseeL1eB2V3O7JTmGwuPJ9dCokvrEi6SIGsH3vl1T6
 HMYoOI9u2toJKqnPjOGh59FSERVq2y1rkHlm2G0nhb+yx8qfXf98TuAIM
 2LUuJbmDUaebGXadF/WD2Mx+ay5x3z40yfSX7aPefC9THfngnh3EJXRx+
 FXgZ9P9V2FnlcOQJ7pD8YEWVS1/oUG8ZG+T0fUrvVTsAsMK+xJPXp0NA9
 4WsXy4vNqH4Dky5nT4cdlXLLyFqix+JULA5H5XbKfoOB55PxMjqGHqb9i A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="358067437"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="358067437"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 04:42:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="742646284"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="742646284"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga008.jf.intel.com with ESMTP; 16 Jun 2023 04:42:13 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 17:11:54 +0530
Message-Id: <20230616114200.3228284-6-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616114200.3228284-1-dnyaneshwar.bhadane@intel.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <20230616114200.3228284-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] drm/i915/tgl: s/TGL/TIGERLAKE for
 platform/subplatform defines
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace TGL with
TIGERLAKE.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 4 ++--
 drivers/gpu/drm/i915/intel_step.c                  | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index cd6915e9e138..ab84d003232c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1390,7 +1390,7 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	if (crtc_state->port_clock > 270000) {
-		if (IS_TGL_UY(dev_priv)) {
+		if (IS_TIGERLAKE_UY(dev_priv)) {
 			return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
 						   n_entries);
 		} else {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 6b01a0b68b97..26def9cb86e4 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2196,7 +2196,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 
 	/* Wa_14010477008 */
 	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
-	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
+	    IS_TIGERLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
 		return false;
 
 	/* Wa_22011186057 */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b6a720ac48bf..865977d69f7e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -647,7 +647,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ICL_WITH_PORT_F(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
 
-#define IS_TGL_UY(i915) \
+#define IS_TIGERLAKE_UY(i915) \
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
 #define IS_SKYLAKE_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
@@ -662,7 +662,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_JASPERLAKE_EHL_DISPLAY_STEP(p, since, until) \
 	(IS_JASPERLAKE_EHL(p) && IS_DISPLAY_STEP(p, since, until))
 
-#define IS_TGL_DISPLAY_STEP(__i915, since, until) \
+#define IS_TIGERLAKE_DISPLAY_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 3469d912e83e..847c7de50e1f 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -213,7 +213,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ROCKETLAKE(i915)) {
 		revids = rkl_revids;
 		size = ARRAY_SIZE(rkl_revids);
-	} else if (IS_TGL_UY(i915)) {
+	} else if (IS_TIGERLAKE_UY(i915)) {
 		revids = tgl_uy_revids;
 		size = ARRAY_SIZE(tgl_uy_revids);
 	} else if (IS_TIGERLAKE(i915)) {
-- 
2.34.1

