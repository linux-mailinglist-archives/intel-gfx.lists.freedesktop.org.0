Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40055763FC2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 21:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A999710E4C1;
	Wed, 26 Jul 2023 19:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A2510E4B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 19:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690400043; x=1721936043;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cRNQaNp2qoj9Ku6G3VNnDN4kBFpw7T0SMAlufnssLW0=;
 b=nHw1o2wQ4eB3XaOlAPdivsllttFHAQ9sfaWkhIuKuNpq0jFPfFJdjnbw
 ZvT95myG6U9tgzhsl+t2zOqVqjZJSwbFLy1j1zVvYfzsEQe7tE/Ck46Be
 cEeal48lZ3aMzgzPiZKS9OKxuXoiVLPnQbzUEsoRyO/5en/4fh774AEnI
 ivYk7GFOBaCEGfn5SYfCUaSxFfQsyGVEarTGO5nF5DBy+7zmQ3eKqt2+z
 50khfbg4pviNXB8DDkjr2vwstmZizaF0R69YKUPmmjuOoEb7+IZTqxRkb
 5jNcoJJGthlWBr8Sr643EvOJ8F72aJAUP0C+8cUbpU5MhuKnXaMio6Cr8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="353013287"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="353013287"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 12:34:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="840383464"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="840383464"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2023 12:34:00 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 01:03:28 +0530
Message-Id: <20230726193333.2759197-10-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
References: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 09/14] drm/i915/tgl: s/TGL/TIGERLAKE for
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace TGL with
TIGERLAKE.Replace IS_TGL_DISPLAY_STEP with
IS_TIGERLAKE() && IS_DISPLAY_STEP().

v2:
- s/TGL/tgl in the subject prefix(Anusha)

v3:
- Unrolled wrapper IS_TGL_DISPLAY_STEP and Replace 
- Replace IS_PLATFORM && DISPLAY_STEP (Jani/Tvrtko).

v4:
- Removed unused macros

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 5 +----
 drivers/gpu/drm/i915/intel_step.c                  | 2 +-
 4 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 35e6e3a5ddf1..de809e2d9cac 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1410,7 +1410,7 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	if (crtc_state->port_clock > 270000) {
-		if (IS_TGL_UY(dev_priv)) {
+		if (IS_TIGERLAKE_UY(dev_priv)) {
 			return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
 						   n_entries);
 		} else {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 6b01a0b68b97..4ed1244c1a17 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2196,7 +2196,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 
 	/* Wa_14010477008 */
 	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
-	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
+		(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
 		return false;
 
 	/* Wa_22011186057 */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 704c0991e7d3..44f3a368607e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -646,15 +646,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ICL_WITH_PORT_F(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
 
-#define IS_TGL_UY(i915) \
+#define IS_TIGERLAKE_UY(i915) \
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
 
 
 
-#define IS_TGL_DISPLAY_STEP(__i915, since, until) \
-	(IS_TIGERLAKE(__i915) && \
-	 IS_DISPLAY_STEP(__i915, since, until))
 
 
 #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index f9068086b956..de0abe99951b 100644
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

