Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C6A757648
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E40E10E2FF;
	Tue, 18 Jul 2023 08:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4496A10E2FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689667910; x=1721203910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0YmfZC+GYuptdRS+dhoGIeztjm+H9+FYK3SNjED9pYs=;
 b=IcWxmKOvvBXlrwrYjat+QYmw1u8+RKHP9bXGlLLSgbkd/Y+0nK4bD8FT
 aY66OeID0ClXOiB0QQOYW+Iz+gI0Ip7rLGuP0YJ7g4FJSdrFRqZoVe0b3
 3E4vhGDy29UAf15KnATV7eB5s79s1ZXaLmEadjLy7dhzTSJMbFL86v9DY
 f7KeLbjSAXTDdc0XL1Puizqb7oSNKktpJd9gjzbTH8dlyhBZpFaYCRb++
 Iqm9KLH8IMv1OWusmGZLmKBsccQqA4WMZqjxp6N8IWFLvSo4RL/tGC1T3
 TfEJZOJmQJKDiqK0Va7cgn14QXMU4NRGk8iIamj2TIsH3qG7sIJ+1MdEC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="369696606"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="369696606"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:11:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723518293"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723518293"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2023 01:11:46 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 13:41:09 +0530
Message-Id: <20230718081115.166212-10-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3 09/15] drm/i915/tgl: s/TGL/TIGERLAKE for
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
-  Unrolled wrapper IS_TGL_DISPLAY_STEP and Replace
with IS_SKYLAKE() && IS_DISPLAY_STEP() (Jani/Tvrtko).

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 4 ++--
 drivers/gpu/drm/i915/intel_step.c                  | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 1313e0a9586c..53916f91928f 100644
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
index 228936ee2f4c..ffb73554a55b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -647,7 +647,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ICL_WITH_PORT_F(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
 
-#define IS_TGL_UY(i915) \
+#define IS_TIGERLAKE_UY(i915) \
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
 
@@ -659,7 +659,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))
 
 
-#define IS_TGL_DISPLAY_STEP(__i915, since, until) \
+#define IS_TIGERLAKE_DISPLAY_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
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

