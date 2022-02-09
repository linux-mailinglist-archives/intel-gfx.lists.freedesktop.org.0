Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE0A4AF006
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 12:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F416210E700;
	Wed,  9 Feb 2022 11:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D10D310E700
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 11:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644406547; x=1675942547;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tbcCUMruo9o7AZZYJxZM5ouoIUPlOdSvk/Q+K5LZB+A=;
 b=mXIk5tqlk0OBfoGFIrgQdmZCjw04fIehyRG1mi/BYeKPEvfrKIx+3AcB
 Bptw3MscwCqIEYJzLz70h7OLX5/pcwDjNN+IiSr4g7cUVu47L3gTeyMYc
 2j8XA/EoCSAR/qrxMkV5sZ+rkn0Lf0rEp4S40HxH5gFtxFpULtENngG3T
 1RRLL7SYZZ5AyfwQ7yVKh24w0xKDKLraDnOCZaIFE8Dlr/ZVQEYeiq6x9
 rgEOfLtyXjNRTBUfpZovjQz+rhNGO4aHCG7UWBzYQIGBZ+c7i2lDz9jZP
 eF242KoPVarmNmEVO1S4obhWJXmAoc07bhIV2GZSaM0Qod17F8rvxx4Qw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="229154089"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="229154089"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 03:35:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="629246220"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 09 Feb 2022 03:35:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 13:35:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 13:35:26 +0200
Message-Id: <20220209113526.7595-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Consolidate all pre plane update
 vblank waits
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

There are several reasons why we might have to do a vblank wait
between some of the pre_plane_update() steps and the actual
plane update. Currently we do a vblank wait for each of those
individually. Let's consolidate things so that we just do a
single vblank wait at the end of the pre_plane_update() step.

Note that I don't think we should be hitting multiple vblank
waits here currently, at least in most cases. But no real
reason that couldn't happen in the future when some new
features/workarounds are introduced.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 35 ++++++++++++--------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 401a339973bf..7c37c4355606 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -742,6 +742,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
+	bool need_vblank_wait = false;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Disabling [PLANE:%d:%s] on [CRTC:%d:%s]\n",
@@ -756,7 +757,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) == 0 &&
 	    hsw_ips_disable(crtc_state)) {
 		crtc_state->ips_enabled = false;
-		intel_crtc_wait_for_next_vblank(crtc);
+		need_vblank_wait = true;
 	}
 
 	/*
@@ -770,7 +771,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	 */
 	if (HAS_GMCH(dev_priv) &&
 	    intel_set_memory_cxsr(dev_priv, false))
-		intel_crtc_wait_for_next_vblank(crtc);
+		need_vblank_wait = true;
 
 	/*
 	 * Gen2 reports pipe underruns whenever all planes are disabled.
@@ -779,6 +780,9 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	if (DISPLAY_VER(dev_priv) == 2 && !crtc_state->active_planes)
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
 
+	if (need_vblank_wait)
+		intel_crtc_wait_for_next_vblank(crtc);
+
 	intel_plane_disable_arm(plane, crtc_state);
 	intel_crtc_wait_for_next_vblank(crtc);
 }
@@ -1258,7 +1262,7 @@ static void intel_crtc_disable_flip_done(struct intel_atomic_state *state,
 	}
 }
 
-static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
+static bool intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 					     struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *old_crtc_state =
@@ -1268,7 +1272,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 	u8 update_planes = new_crtc_state->update_planes;
 	const struct intel_plane_state *old_plane_state;
 	struct intel_plane *plane;
-	bool need_vbl_wait = false;
+	bool need_vblank_wait = false;
 	int i;
 
 	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
@@ -1281,12 +1285,11 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 			 */
 			plane->async_flip(plane, old_crtc_state,
 					  old_plane_state, false);
-			need_vbl_wait = true;
+			need_vblank_wait = true;
 		}
 	}
 
-	if (need_vbl_wait)
-		intel_crtc_wait_for_next_vblank(crtc);
+	return need_vblank_wait;
 }
 
 static void intel_pre_plane_update(struct intel_atomic_state *state,
@@ -1298,14 +1301,15 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
+	bool need_vblank_wait = false;
 
 	intel_psr_pre_plane_update(state, crtc);
 
 	if (hsw_ips_pre_update(state, crtc))
-		intel_crtc_wait_for_next_vblank(crtc);
+		need_vblank_wait = true;
 
 	if (intel_fbc_pre_update(state, crtc))
-		intel_crtc_wait_for_next_vblank(crtc);
+		need_vblank_wait = true;
 
 	if (!needs_async_flip_vtd_wa(old_crtc_state) &&
 	    needs_async_flip_vtd_wa(new_crtc_state))
@@ -1337,7 +1341,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 */
 	if (HAS_GMCH(dev_priv) && old_crtc_state->hw.active &&
 	    new_crtc_state->disable_cxsr && intel_set_memory_cxsr(dev_priv, false))
-		intel_crtc_wait_for_next_vblank(crtc);
+		need_vblank_wait = true;
 
 	/*
 	 * IVB workaround: must disable low power watermarks for at least
@@ -1348,7 +1352,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 */
 	if (old_crtc_state->hw.active &&
 	    new_crtc_state->disable_lp_wm && ilk_disable_lp_wm(dev_priv))
-		intel_crtc_wait_for_next_vblank(crtc);
+		need_vblank_wait = true;
 
 	/*
 	 * If we're doing a modeset we don't need to do any
@@ -1389,8 +1393,13 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * WA for platforms where async address update enable bit
 	 * is double buffered and only latched at start of vblank.
 	 */
-	if (old_crtc_state->uapi.async_flip && !new_crtc_state->uapi.async_flip)
-		intel_crtc_async_flip_disable_wa(state, crtc);
+	if (old_crtc_state->uapi.async_flip &&
+	    !new_crtc_state->uapi.async_flip &&
+	    intel_crtc_async_flip_disable_wa(state, crtc))
+		need_vblank_wait = true;
+
+	if (need_vblank_wait)
+		intel_crtc_wait_for_next_vblank(crtc);
 }
 
 static void intel_crtc_disable_planes(struct intel_atomic_state *state,
-- 
2.34.1

