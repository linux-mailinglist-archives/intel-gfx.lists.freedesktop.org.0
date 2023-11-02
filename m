Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0987DFC1D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 22:55:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B65710E0CE;
	Thu,  2 Nov 2023 21:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4EE510E0CE
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 21:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698962141; x=1730498141;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vYMVmrdVjn0sG+LCnd3iFo5I7/aa++kwZbqzH4bEyB8=;
 b=GHTneEyYc3ysAfTvx9LmWKXzTB51qMmcRbIEkFYSzrnKtFIsFXPXTpQp
 lfoc42x3gA+FHEqwtVOp9xEU4LBE7hrZqDXsxlHQv66gVyczf2/pRdcxt
 UoaHrQmpvjqwTMDj/ibrgN+VOmKeE9agVece1rNrsLkJwp0wQJhtKwsZl
 hi2CeTblyELvoVoYtz5wtg1WuT1zQw04BdXGdG5BUO3j8QwEkrE4MKjs1
 ylxeblj40nU7cnpojWH7ghGWwpInbTW2ZFCsWVAP0N/aP5qmwIzz5eGIP
 KtYnJgKU/6thVQDdT/kPc3+hXxHcTOG2nT1akQZBvwf3tTKOHJrI7V2Fm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="7464324"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="7464324"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 14:55:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="737895693"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="737895693"
Received: from jpauw-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.251.215.30])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 14:55:37 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 23:55:18 +0200
Message-Id: <20231102215519.135847-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231102215519.135847-1-vinod.govindapillai@intel.com>
References: <20231102215519.135847-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/2] drm/i915/xe2lpd: check selective fetch
 is optimal in some cases
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
Cc: ville.syrjala@intel.com, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If both PSR2 + FBC is supported, in cases where the selective
fetch area is greater than 25% of the screen area, FBC might
be more efficient. So have a possibility to check this and add
provision to enable FBC in such cases.

Bspec: 68881
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 42 ++++++++++++++++---
 2 files changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 047fe3f8905a..bcc5fd8d8a00 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1207,6 +1207,7 @@ struct intel_crtc_state {
 	bool has_psr;
 	bool has_psr2;
 	bool enable_psr2_sel_fetch;
+	bool full_frame_fetch;
 	bool req_psr2_sdp_prior_scanline;
 	bool wm_level_disabled;
 	u32 dc3co_exitline;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ecd24a0b86cb..6cb32fd29d10 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1987,10 +1987,35 @@ static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *c
 	return true;
 }
 
+/*
+ * Check selective fetch is optimum
+ *
+ * Compare selective fetch area w.r.t screen size in case both FBC and PSR2
+ * is supported. If the selective fetch area is more than 25% of screen
+ * size, FBC is might be more efficient than PSR2. So force full frame
+ * update.
+ */
+static bool psr2_sel_fetch_not_optimal(struct drm_i915_private *i915,
+				       struct drm_rect *sel_fetch,
+				       struct drm_rect *src)
+{
+	int screen_area, selfetch_area;
+
+	/* This is needed where FBC + PSR can be supported */
+	if (DISPLAY_VER(i915) < 20 || !i915->display.params.enable_fbc ||
+	    !HAS_FBC(i915))
+		return false;
+
+	selfetch_area = drm_rect_height(sel_fetch) * drm_rect_width(sel_fetch);
+	screen_area = drm_rect_height(src) * drm_rect_width(src);
+
+	return DIV_ROUND_CLOSEST(screen_area, selfetch_area) <= 4;
+}
+
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_rect pipe_clip = { .x1 = 0, .y1 = -1, .x2 = INT_MAX, .y2 = -1 };
 	struct intel_plane_state *new_plane_state, *old_plane_state;
@@ -2082,7 +2107,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	 * calculation for those.
 	 */
 	if (pipe_clip.y1 == -1) {
-		drm_info_once(&dev_priv->drm,
+		drm_info_once(&i915->drm,
 			      "Selective fetch area calculation failed in pipe %c\n",
 			      pipe_name(crtc->pipe));
 		full_update = true;
@@ -2092,9 +2117,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		goto skip_sel_fetch_set_loop;
 
 	/* Wa_14014971492 */
-	if ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
-	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
-	    crtc_state->splitter.enable)
+	if ((IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B0) ||
+	     IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915)) &&
+	     crtc_state->splitter.enable)
 		pipe_clip.y1 = 0;
 
 	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
@@ -2149,7 +2174,14 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		}
 	}
 
+	if (full_update)
+		goto skip_sel_fetch_set_loop;
+
+	full_update = psr2_sel_fetch_not_optimal(i915, &pipe_clip,
+						 &crtc_state->pipe_src);
+
 skip_sel_fetch_set_loop:
+	crtc_state->full_frame_fetch = full_update;
 	psr2_man_trk_ctl_calc(crtc_state, &pipe_clip, full_update);
 	return 0;
 }
-- 
2.34.1

