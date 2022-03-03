Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F115F4CC5BC
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 20:12:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD7B610EF54;
	Thu,  3 Mar 2022 19:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE09610EF54
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 19:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646334746; x=1677870746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8rn95JWMI0qOpZalz1iQam0oB/TIkjfenKi+UM5zX44=;
 b=kFVggzgAK7E+23r0Ncd7/kSxz86vm9FrSSpyJ1q1taTBb6BG0cUJSuuH
 Dzzd646IKYWSR4uH9QVWL6w0nlqpIyH1dpDwKNVShy55jPqNWCDAOMj07
 3Jl+6anr2CSC9gpXDOGPSJwIULWHXULD1jXrVLOLUqCRqNwzDD0q9iF1e
 lUjsDcE9DqZhQFhU/7JRuMtB88Rah8HUribaF7WewvCpsu9OwJZ3Zg0Su
 6PSBIFWSBlizzB0Ls0L+iMtT6UGB3gdS6H0AJQ9wNtjfcH/J94zD4JygO
 x7RqjPJKj/JD+f9Sh3Jx+MUOOzqqQaV+vRW5A8mL5OlZsE8skuIK8OkyG g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="251362531"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="251362531"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 11:12:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="630909450"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 03 Mar 2022 11:12:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 21:12:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 21:12:03 +0200
Message-Id: <20220303191207.27931-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915: Nuke intel_bw_calc_min_cdclk()
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

intel_bw_calc_min_cdclk() is entirely pointless. All it manages to do is
somehow conflate the per-pipe min cdclk with dbuf min cdclk. There is no
(at least documented) dbuf min cdclk limit on pre-skl so let's just get
rid of all this confusion.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c    | 49 ++--------------------
 drivers/gpu/drm/i915/display/intel_bw.h    |  1 -
 drivers/gpu/drm/i915/display/intel_cdclk.c | 31 +-------------
 3 files changed, 5 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index fa51fa85e431..df98b1d7a6f7 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -717,7 +717,7 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 	}
 }
 
-int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
+int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_bw_state *new_bw_state = NULL;
@@ -728,6 +728,9 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
 	enum pipe pipe;
 	int i;
 
+	if (DISPLAY_VER(dev_priv) < 9)
+		return 0;
+
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		new_bw_state = intel_atomic_get_bw_state(state);
 		if (IS_ERR(new_bw_state))
@@ -772,50 +775,6 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
 	return 0;
 }
 
-int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_bw_state *new_bw_state = NULL;
-	struct intel_bw_state *old_bw_state = NULL;
-	const struct intel_crtc_state *crtc_state;
-	struct intel_crtc *crtc;
-	int min_cdclk = 0;
-	enum pipe pipe;
-	int i;
-
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		new_bw_state = intel_atomic_get_bw_state(state);
-		if (IS_ERR(new_bw_state))
-			return PTR_ERR(new_bw_state);
-
-		old_bw_state = intel_atomic_get_old_bw_state(state);
-	}
-
-	if (!old_bw_state)
-		return 0;
-
-	for_each_pipe(dev_priv, pipe) {
-		struct intel_cdclk_state *cdclk_state;
-
-		cdclk_state = intel_atomic_get_new_cdclk_state(state);
-		if (!cdclk_state)
-			return 0;
-
-		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
-	}
-
-	new_bw_state->min_cdclk = min_cdclk;
-
-	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
-		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
-
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
 static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
 {
 	unsigned int num_psf_gv_points = i915->max_bw[0].num_psf_gv_points;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 0ceaed1c9656..6acdf1245b3a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -65,6 +65,5 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
-int skl_bw_calc_min_cdclk(struct intel_atomic_state *state);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8888fda8b701..5d0c2f8b0533 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -72,7 +72,6 @@ struct intel_cdclk_funcs {
 	void (*set_cdclk)(struct drm_i915_private *i915,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe);
-	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
 	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
 	u8 (*calc_voltage_level)(int cdclk);
 };
@@ -83,12 +82,6 @@ void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
 	dev_priv->cdclk_funcs->get_cdclk(dev_priv, cdclk_config);
 }
 
-static int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	return dev_priv->cdclk_funcs->bw_calc_min_cdclk(state);
-}
-
 static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *cdclk_config,
 				  enum pipe pipe)
@@ -2683,7 +2676,7 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk)
 		*need_cdclk_calc = true;
 
-	ret = intel_cdclk_bw_calc_min_cdclk(state);
+	ret = intel_bw_calc_min_cdclk(state);
 	if (ret)
 		return ret;
 
@@ -3072,7 +3065,6 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
-	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
 	.calc_voltage_level = tgl_calc_voltage_level,
 };
@@ -3080,7 +3072,6 @@ static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
 static const struct intel_cdclk_funcs ehl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
-	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
 	.calc_voltage_level = ehl_calc_voltage_level,
 };
@@ -3088,7 +3079,6 @@ static const struct intel_cdclk_funcs ehl_cdclk_funcs = {
 static const struct intel_cdclk_funcs icl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
-	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
 	.calc_voltage_level = icl_calc_voltage_level,
 };
@@ -3096,7 +3086,6 @@ static const struct intel_cdclk_funcs icl_cdclk_funcs = {
 static const struct intel_cdclk_funcs bxt_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
-	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
 	.calc_voltage_level = bxt_calc_voltage_level,
 };
@@ -3104,53 +3093,45 @@ static const struct intel_cdclk_funcs bxt_cdclk_funcs = {
 static const struct intel_cdclk_funcs skl_cdclk_funcs = {
 	.get_cdclk = skl_get_cdclk,
 	.set_cdclk = skl_set_cdclk,
-	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = skl_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs bdw_cdclk_funcs = {
 	.get_cdclk = bdw_get_cdclk,
 	.set_cdclk = bdw_set_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = bdw_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs chv_cdclk_funcs = {
 	.get_cdclk = vlv_get_cdclk,
 	.set_cdclk = chv_set_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = vlv_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs vlv_cdclk_funcs = {
 	.get_cdclk = vlv_get_cdclk,
 	.set_cdclk = vlv_set_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = vlv_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs hsw_cdclk_funcs = {
 	.get_cdclk = hsw_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 /* SNB, IVB, 965G, 945G */
 static const struct intel_cdclk_funcs fixed_400mhz_cdclk_funcs = {
 	.get_cdclk = fixed_400mhz_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs ilk_cdclk_funcs = {
 	.get_cdclk = fixed_450mhz_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs gm45_cdclk_funcs = {
 	.get_cdclk = gm45_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
@@ -3158,7 +3139,6 @@ static const struct intel_cdclk_funcs gm45_cdclk_funcs = {
 
 static const struct intel_cdclk_funcs i965gm_cdclk_funcs = {
 	.get_cdclk = i965gm_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
@@ -3166,19 +3146,16 @@ static const struct intel_cdclk_funcs i965gm_cdclk_funcs = {
 
 static const struct intel_cdclk_funcs pnv_cdclk_funcs = {
 	.get_cdclk = pnv_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs g33_cdclk_funcs = {
 	.get_cdclk = g33_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs i945gm_cdclk_funcs = {
 	.get_cdclk = i945gm_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
@@ -3186,37 +3163,31 @@ static const struct intel_cdclk_funcs i945gm_cdclk_funcs = {
 
 static const struct intel_cdclk_funcs i915gm_cdclk_funcs = {
 	.get_cdclk = i915gm_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs i915g_cdclk_funcs = {
 	.get_cdclk = fixed_333mhz_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs i865g_cdclk_funcs = {
 	.get_cdclk = fixed_266mhz_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs i85x_cdclk_funcs = {
 	.get_cdclk = i85x_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs i845g_cdclk_funcs = {
 	.get_cdclk = fixed_200mhz_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs i830_cdclk_funcs = {
 	.get_cdclk = fixed_133mhz_get_cdclk,
-	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
-- 
2.34.1

