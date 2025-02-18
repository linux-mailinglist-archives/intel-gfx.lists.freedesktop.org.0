Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61350A3AAB1
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5D1110E76D;
	Tue, 18 Feb 2025 21:19:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JmfZPHPA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AE4310E76B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913596; x=1771449596;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2u/ZWsMif4xoh9R/f79KoBbsvuS3VGHaPO1xD2/ZlQY=;
 b=JmfZPHPAhO8S6+LjKwlGB70j1B+NMVspDS8x7OalLasQLlfivdE9bpxx
 lqOayAs0+VLq/IhLLlQV4Y7mi5epCUYrsDwiEmuhXUp2y6uFUNqy1KWu+
 V6EXJB6w+UG87EbXbO62vxSCNE1nxwBxOdGZO5SBKOuUr1GVWSGlf4xxL
 mqPxZmCJn7w6gJetienZ/t2QgNrsmNRc06ufqntDPQIPO67GbCvil1FA2
 sXl2XcedHaa8wl0TyEzBY7pTAfUBym2GbcbU//PqvMErKq6RQ5EytfT77
 hIsnoG9VRwPvbca4govkRF/hxjSLXNDUpttzMTu32XJJJobN7lKTfP/nJ A==;
X-CSE-ConnectionGUID: ARxMV9mEQHimQi8EFkQ3Mw==
X-CSE-MsgGUID: NQWq77IqTyyN+6heucazMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862309"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862309"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:55 -0800
X-CSE-ConnectionGUID: j3vC42X8Rbi3pqu3dzQCig==
X-CSE-MsgGUID: 5+3LeexCQT6BmgQbkMAszg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693480"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/19] drm/i915: Extract intel_bw_update_hw_state()
Date: Tue, 18 Feb 2025 23:19:05 +0200
Message-ID: <20250218211913.27867-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hoist the bw stuff into a separate function from
intel_modeset_readout_hw_state() so that the details
are better hidden inside intel_bw.c.

We can also skip the whole thing on pre-skl since the dbuf state
isn't actually used on those platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 21 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_bw.h       |  4 ++--
 .../drm/i915/display/intel_modeset_setup.c    |  5 +----
 3 files changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 417d2d527ae4..0090ee7e73a1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -806,8 +806,8 @@ static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
 }
 
-void intel_bw_crtc_update(struct intel_bw_state *bw_state,
-			  const struct intel_crtc_state *crtc_state)
+static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
+				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -1422,6 +1422,23 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	return 0;
 }
 
+void intel_bw_update_hw_state(struct intel_display *display)
+{
+	struct intel_bw_state *bw_state =
+		to_intel_bw_state(display->bw.obj.state);
+	struct intel_crtc *crtc;
+
+	if (DISPLAY_VER(display) < 9)
+		return;
+
+	for_each_intel_crtc(display->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		intel_bw_crtc_update(bw_state, crtc_state);
+	}
+}
+
 void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index bd94dde207ee..3313e4eac4f0 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -16,6 +16,7 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 
 struct intel_dbuf_bw {
 	unsigned int max_bw[I915_MAX_DBUF_SLICES];
@@ -74,14 +75,13 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 void intel_bw_init_hw(struct drm_i915_private *dev_priv);
 int intel_bw_init(struct drm_i915_private *dev_priv);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
-void intel_bw_crtc_update(struct intel_bw_state *bw_state,
-			  const struct intel_crtc_state *crtc_state);
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc);
 int intel_bw_min_cdclk(struct drm_i915_private *i915,
 		       const struct intel_bw_state *bw_state);
+void intel_bw_update_hw_state(struct intel_display *display);
 void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 1cfa03bd3224..70fad9f89cea 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -825,8 +825,6 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 	drm_connector_list_iter_end(&conn_iter);
 
 	for_each_intel_crtc(&i915->drm, crtc) {
-		struct intel_bw_state *bw_state =
-			to_intel_bw_state(i915->display.bw.obj.state);
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane;
@@ -880,10 +878,9 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 
 		intel_pmdemand_update_port_clock(display, pmdemand_state, pipe,
 						 crtc_state->port_clock);
-
-		intel_bw_crtc_update(bw_state, crtc_state);
 	}
 
+	intel_bw_update_hw_state(display);
 	intel_cdclk_update_hw_state(display);
 
 	intel_pmdemand_init_pmdemand_params(display, pmdemand_state);
-- 
2.45.3

