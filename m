Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F62810E5F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:25:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91DC910E77F;
	Wed, 13 Dec 2023 10:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D01C10E77F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702463134; x=1733999134;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jhLCEReZ9k000KO5g6q2R2hW81wZHePPI8ze7nM1cuo=;
 b=XtwjbmwJk5PkNjmH11D2TQatBXWEYUI12hH/naJVb+C4u9nh7JGMnQ7M
 qwtWYUCx6XcjA/FsjYIqxKbI/1n5bEt1bsGLdYIniore5MstOMQ6rL+n2
 UWSqX0mbkCIzB46MQ7Cela6PNsywgFTvUgfuD5EPTocgxRkHNTlmX8YuY
 t114WdGcRmRCuPmkMPDsKURg3OxaXI08QPl9qUYkgKhvfX/To7JN4Tzsg
 q40sLDlUCdA/Z9AChe7TSHCKhMXZo4mgK6E9tkR0Ix1ihaJh3ajLWW2Qt
 IpBGRBSEaL0c0rgSNuOMjcEjWrD5oTdFSwgTpdcuZAMG3dRugOxVnbOGk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="393816084"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="393816084"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:25:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767161649"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767161649"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 02:25:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 12:25:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915: Include need_vlv_dsi_wa in
 intel_vblank_evade_ctx
Date: Wed, 13 Dec 2023 12:25:14 +0200
Message-ID: <20231213102519.13500-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
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

Pull the need_vlv_dsi_wa details into intel_vblank_evade_init()
so that caller doesn't have to care about it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 93474fc9e502..92cfb7c8eadb 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -473,6 +473,7 @@ static int intel_mode_vblank_start(const struct drm_display_mode *mode)
 
 struct intel_vblank_evade_ctx {
 	int min, max, vblank_start;
+	bool need_vlv_dsi_wa;
 };
 
 static void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
@@ -480,9 +481,13 @@ static void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_stat
 				    struct intel_vblank_evade_ctx *evade)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct intel_crtc_state *crtc_state;
 	const struct drm_display_mode *adjusted_mode;
 
+	evade->need_vlv_dsi_wa = (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
+		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
+
 	/*
 	 * During fastsets/etc. the transcoder is still
 	 * running with the old timings at this point.
@@ -550,8 +555,6 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	long timeout = msecs_to_jiffies_timeout(1);
 	int scanline;
 	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
-	bool need_vlv_dsi_wa = (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
 	struct intel_vblank_evade_ctx evade;
 	DEFINE_WAIT(wait);
 
@@ -633,7 +636,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	 *
 	 * FIXME figure out if BXT+ DSI suffers from this as well
 	 */
-	while (need_vlv_dsi_wa && scanline == evade.vblank_start)
+	while (evade.need_vlv_dsi_wa && scanline == evade.vblank_start)
 		scanline = intel_get_crtc_scanline(crtc);
 
 	drm_crtc_vblank_put(&crtc->base);
-- 
2.41.0

