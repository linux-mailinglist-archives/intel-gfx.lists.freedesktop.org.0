Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED4097A5ED
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D2510E3BA;
	Mon, 16 Sep 2024 16:24:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GGovdmTG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0D410E3BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503873; x=1758039873;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Rl0C/EZWk+t3Ga13Qs75kXPTYY3bYFZiN1tBMcBQK8E=;
 b=GGovdmTGhhbs40SmTDwFMGs45QpKXX8saRS8tEzhl6bI5xAGzTDgFpLy
 mtnCLhsVL5xS0q3yzw6zhYcj5MYUpG57wWQ/G0Y3gKlH++aspMajfgpyk
 o55bfiafgifDYWroCVbkPoZ4kmp/Pjg5UQJA6F98PvYKKzHQ91A5E+Ycw
 CG00GVbV+scOADNt771u/2WFjsPoMgfbFJA5cWAFVd8VIDf9s6wegve9l
 gtOpBLwMX0s6Ts5qPNEf5S1uZVpr+5W9NQ68aqZw0odu3a9YOqXykIAcN
 ysLHufjdFc73PoraqIJfs3+16s+7y5bjAnLJjab0btaTAqNdlE5kzi0uo g==;
X-CSE-ConnectionGUID: OZPsPv+GSTqDlzfdjXbV8w==
X-CSE-MsgGUID: i77D9ngnRwS+nq8tzLZJNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42811736"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="42811736"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:24:33 -0700
X-CSE-ConnectionGUID: ZD+8Fng1S9CgsQAQGahGrA==
X-CSE-MsgGUID: 9d6n9s7fQWq2+S597LK1oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69029967"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 09:24:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 19:24:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/7] drm/i915: s/disable_lp_wm/disable_cxsr/
Date: Mon, 16 Sep 2024 19:24:12 +0300
Message-ID: <20240916162413.8555-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
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

The ilk+ disable_lp_wm boolean has the exact same role as
disable_cxsr for gmch platforms. The documentation also
still talks about CxSR on ilk+ even theough the way you
control it has now change to involve toggling the LP watermarks.
Get rid of disable_lp_wm and just use disable_cxsr for ilk+
as well.

TODO: Unify even more to not have any gmch vs. ilk+
      details in high level modeset code...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c             |  2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.h             |  4 ++--
 drivers/gpu/drm/i915/display/intel_atomic.c        |  1 -
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_display.c       |  4 ++--
 drivers/gpu/drm/i915/display/intel_display_types.h |  3 ---
 6 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 15ed3b810947..cfc487563c25 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3396,7 +3396,7 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 	dev_priv->display.wm.hw = *results;
 }
 
-bool ilk_disable_lp_wm(struct drm_i915_private *dev_priv)
+bool ilk_disable_cxsr(struct drm_i915_private *dev_priv)
 {
 	return _ilk_disable_lp_wm(dev_priv, WM_DIRTY_LP_ALL);
 }
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.h b/drivers/gpu/drm/i915/display/i9xx_wm.h
index de0920730ab2..06ac37c6c94b 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.h
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.h
@@ -13,12 +13,12 @@ struct intel_crtc_state;
 struct intel_plane_state;
 
 #ifdef I915
-bool ilk_disable_lp_wm(struct drm_i915_private *i915);
+bool ilk_disable_cxsr(struct drm_i915_private *i915);
 void ilk_wm_sanitize(struct drm_i915_private *i915);
 bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable);
 void i9xx_wm_init(struct drm_i915_private *i915);
 #else
-static inline bool ilk_disable_lp_wm(struct drm_i915_private *i915)
+static inline bool ilk_disable_cxsr(struct drm_i915_private *i915)
 {
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 12d6ed940751..6cac26af128c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -266,7 +266,6 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->update_pipe = false;
 	crtc_state->update_m_n = false;
 	crtc_state->update_lrr = false;
-	crtc_state->disable_lp_wm = false;
 	crtc_state->disable_cxsr = false;
 	crtc_state->update_wm_pre = false;
 	crtc_state->update_wm_post = false;
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 33fec36ec0bd..ef6cffd50275 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -471,9 +471,9 @@ static bool i9xx_must_disable_cxsr(const struct intel_crtc_state *new_crtc_state
 	return old_ctl != new_ctl;
 }
 
-static bool ilk_must_disable_lp_wm(const struct intel_crtc_state *new_crtc_state,
-				   const struct intel_plane_state *old_plane_state,
-				   const struct intel_plane_state *new_plane_state)
+static bool ilk_must_disable_cxsr(const struct intel_crtc_state *new_crtc_state,
+				  const struct intel_plane_state *old_plane_state,
+				  const struct intel_plane_state *new_plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
 	bool old_visible = old_plane_state->uapi.visible;
@@ -588,8 +588,8 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 		new_crtc_state->disable_cxsr = true;
 
 	if ((IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) &&
-	    ilk_must_disable_lp_wm(new_crtc_state, old_plane_state, new_plane_state))
-		new_crtc_state->disable_lp_wm = true;
+	    ilk_must_disable_cxsr(new_crtc_state, old_plane_state, new_plane_state))
+		new_crtc_state->disable_cxsr = true;
 
 	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
 		new_crtc_state->do_async_flip = true;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 60866316fc68..a2257096bd29 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1250,8 +1250,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 *
 	 * WaCxSRDisabledForSpriteScaling:ivb
 	 */
-	if (old_crtc_state->hw.active &&
-	    new_crtc_state->disable_lp_wm && ilk_disable_lp_wm(dev_priv))
+	if (!HAS_GMCH(dev_priv) && old_crtc_state->hw.active &&
+	    new_crtc_state->disable_cxsr && ilk_disable_cxsr(dev_priv))
 		intel_crtc_wait_for_next_vblank(crtc);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 000ab373c887..e4c8fb55a92f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1143,9 +1143,6 @@ struct intel_crtc_state {
 	/* w/a for waiting 2 vblanks during crtc enable */
 	enum pipe hsw_workaround_pipe;
 
-	/* IVB sprite scaling w/a (WaCxSRDisabledForSpriteScaling:ivb) */
-	bool disable_lp_wm;
-
 	struct intel_crtc_wm_state wm;
 
 	int min_cdclk[I915_MAX_PLANES];
-- 
2.44.2

