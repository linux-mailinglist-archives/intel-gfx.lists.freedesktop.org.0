Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61925810E5B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:25:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13ED610E76B;
	Wed, 13 Dec 2023 10:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F6610E76B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702463125; x=1733999125;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hGpY4svXRUBdu8YNHIuhTdCl+eu1IydgB5OS/GykPdk=;
 b=D8X2766NIrctFtUZ1QNuTPPdLfkYGTcTBzp06fCieQKCo/U64onFDtab
 ocqzDmw+ZmCN2jOe6hi1XT+P08tSBh35tdJNd954eAOYxFlRWW3510rf4
 3Rv1lF1blAzSOQ+0f0542AO4nZH1fxJdBXghIM4t2HyQMJ/4GZFaDpHa/
 m0Z2c5FpjSJrODe7QBeAFm005+KZQ/8LbiRcd1d3xh1xMfwRAA9r4pxAT
 Ac+T066ANUEkbRSEya2aVFAi9mrDsc0p3nSo4EIA8nCI8aEgPTExCUtJ+
 R7pLpv3cn3UISYH3NXJOsrzmZIONekrQjHsL42DyC5kUbQUWUVD9ENio7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="393816075"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="393816075"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:25:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767161636"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767161636"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 02:25:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 12:25:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/9] drm/i915: Decouple intel_crtc_vblank_evade_scanlines()
 from atomic commits
Date: Wed, 13 Dec 2023 12:25:11 +0200
Message-ID: <20231213102519.13500-2-ville.syrjala@linux.intel.com>
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

We'll be needing to do vblank evasion around legacy cursor updates,
which don't have the intel_atomic_state around. So let's remove
this dependency on a full commit and pass the crtc state in by hand.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 8a84a31c7b48..d5c3f6078e42 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -471,14 +471,11 @@ static int intel_mode_vblank_start(const struct drm_display_mode *mode)
 	return vblank_start;
 }
 
-static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state *state,
-					      struct intel_crtc *crtc,
+static void intel_crtc_vblank_evade_scanlines(const struct intel_crtc_state *old_crtc_state,
+					      const struct intel_crtc_state *new_crtc_state,
 					      int *min, int *max, int *vblank_start)
 {
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	const struct intel_crtc_state *crtc_state;
 	const struct drm_display_mode *adjusted_mode;
 
@@ -497,7 +494,7 @@ static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state *state,
 
 	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
 		/* timing changes should happen with VRR disabled */
-		drm_WARN_ON(state->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
+		drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
 			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
 
 		if (intel_vrr_is_push_sent(crtc_state))
@@ -542,6 +539,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	long timeout = msecs_to_jiffies_timeout(1);
@@ -566,7 +565,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
 
-	intel_crtc_vblank_evade_scanlines(state, crtc, &min, &max, &vblank_start);
+	intel_crtc_vblank_evade_scanlines(old_crtc_state, new_crtc_state,
+					  &min, &max, &vblank_start);
 	if (min <= 0 || max <= 0)
 		goto irq_disable;
 
-- 
2.41.0

