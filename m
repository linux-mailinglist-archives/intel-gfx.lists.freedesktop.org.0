Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2949156F5
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD42F10E238;
	Mon, 24 Jun 2024 19:10:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ioPLIktO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A8E10E54D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256241; x=1750792241;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=++ES/L4zdO2/+kYkdBAAjFx7yk7ZNb8spCDmGdekn6Y=;
 b=ioPLIktOvg26nCKAhwADmcBV9SfHkGwN9LWNryjs+Da+dpwRBrHB2St/
 bVd8JMGkxNEIwPYLcTsjB/bzmtsI9WMM3C++HvLLx5L1a8TJxgamtvmGP
 6C0E4BROa2KZzgaF7QJDnvun+FdYqLk7TN+KbjznoKhIb5IPmhX50SZWN
 /GMZl/DDABeaa0tVl2WCKZqIr49tuYVKyOboWvd0LXLxw9xHIpGERLARj
 4WBX9aHfGD54GkjZaNksyq60XA2oaM3XxdwBME7YSuHKrIQMmqdQjgMWl
 629aI3MUG3YmkRgepjPo9oOMD1b+HhkQLBFtXrFME4YRXoG3G8YorAp2C w==;
X-CSE-ConnectionGUID: uOL008f9QDSKfcwc/5LPzg==
X-CSE-MsgGUID: gkeQoSs+RsWqz5XenxZtbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374115"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374115"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:10:41 -0700
X-CSE-ConnectionGUID: 13vf2YbLRiqHvyXTedtB3Q==
X-CSE-MsgGUID: qeJvQjpdQU6KWwpzz7TrNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371912"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:10:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:10:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/14] drm/i915: Make vrr_{enabling,
 disabling}() usable outside intel_display.c
Date: Mon, 24 Jun 2024 22:10:20 +0300
Message-ID: <20240624191032.27333-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

Give vrr_enabling() and vrr_disabling() slightly fancier names, and
pass in the whole atomic state so that they'll be easier to use.
We'll need to call at least the disabling part from the DSB code
soon enough (so that we can do vblank evasions/etc. correctly on
the DSB).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 26 +++++++++++++-------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c2c388212e2e..01a5faa3fea5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1014,9 +1014,14 @@ static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 		old_crtc_state->cmrr.cmrr_n != new_crtc_state->cmrr.cmrr_n;
 }
 
-static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
-			 const struct intel_crtc_state *new_crtc_state)
+static bool intel_crtc_vrr_enabling(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
 {
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
 	if (!new_crtc_state->hw.active)
 		return false;
 
@@ -1026,9 +1031,14 @@ static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
-static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
-			  const struct intel_crtc_state *new_crtc_state)
+static bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc)
 {
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
 	if (!old_crtc_state->hw.active)
 		return false;
 
@@ -1181,7 +1191,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (vrr_disabling(old_crtc_state, new_crtc_state)) {
+	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
@@ -6830,8 +6840,6 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
@@ -6844,7 +6852,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	    !intel_crtc_needs_modeset(new_crtc_state))
 		skl_detach_scalers(new_crtc_state);
 
-	if (vrr_enabling(old_crtc_state, new_crtc_state))
+	if (intel_crtc_vrr_enabling(state, crtc))
 		intel_vrr_enable(new_crtc_state);
 }
 
@@ -6944,7 +6952,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	 *
 	 * FIXME Should be synchronized with the start of vblank somehow...
 	 */
-	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
+	if (intel_crtc_vrr_enabling(state, crtc) ||
 	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
 		intel_crtc_update_active_timings(new_crtc_state,
 						 new_crtc_state->vrr.enable);
-- 
2.44.2

