Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFC5A1B8A0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C0F10E9CC;
	Fri, 24 Jan 2025 15:12:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T1XKT4yq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818C710E9CB;
 Fri, 24 Jan 2025 15:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731578; x=1769267578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k9YFq6h3qoetbSESMTARHwWCkbw/lscenriOK6FyHI4=;
 b=T1XKT4yqFw+QFP0KNc/fHyVKVlTXRvUjZJCuO8Im1vsqY1sUgoVuZJ0W
 pXsJ4EtFCQ7Ijg49LkIfjZ+VYQHUBdqTvsEYIto4Kc+ywz3xXzJF3kF/R
 rmOjAasRqeQe4tYMb1Te7EVKpJorRPzk6W2bVKv7vM4kognH9i/Ql1EPz
 c/71EdoBiqG4uOW4bUoYNz7iIchJXeawHoCm+6GEq6IvAve7gSojApdAd
 AaMSP4J+8bhnQEWnk7AOsoSVHzhsFXeGqHgbb1vgGlueHAivZWvamEv9i
 Vc2zYeRraQ0tYno4tQiCJmFuEzwTmeZir6uLDZIKFsccS2cPrmv4CldSg A==;
X-CSE-ConnectionGUID: p16y7uXyQkKbW5zhIXJuDA==
X-CSE-MsgGUID: 8xclIqVJQeu7PdT7HluYqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177519"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177519"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:57 -0800
X-CSE-ConnectionGUID: xCpXKZ2UQbuoCcf4Hs0PZw==
X-CSE-MsgGUID: pPxQOl3qQFu5lbRc3pfPfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221709"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:55 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 35/35] drm/i915/display: Use VRR timings for MTL+ in modeset
 sequence
Date: Fri, 24 Jan 2025 20:30:20 +0530
Message-ID: <20250124150020.2271747-36-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

While enabling pipe currently we use the non vrr timings first and then
enable the VRR timings later.
From MTL+ we will always have VRR timing generarator in use, so start
the transcoder in vrr mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++++--
 drivers/gpu/drm/i915/display/intel_vblank.c  |  8 +++++---
 2 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6d01c76d17ae..affdcc4be5f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7179,6 +7179,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
@@ -7191,8 +7192,16 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
-		/* VRR will be enable later, if required */
-		intel_crtc_update_active_timings(pipe_crtc_state, false);
+		/*
+		 * For MTL+ we are always using VRR TG.
+		 * For previous platforms VRR will be enable later, if required
+		 */
+		if (intel_vrr_always_use_vrr_tg(display))
+			intel_crtc_update_active_timings(pipe_crtc_state,
+							 intel_vrrtg_is_enabled(pipe_crtc_state));
+		else
+			intel_crtc_update_active_timings(pipe_crtc_state, false);
+
 	}
 
 	dev_priv->display.funcs.display->crtc_enable(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 4efd4f7d497a..0c3d07f30b92 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -661,9 +661,11 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 	adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
-		/* timing changes should happen with VRR disabled */
-		drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
-			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
+		/* Prior to MTL+, timing changes should happen with VRR disabled */
+		if (!intel_vrr_always_use_vrr_tg(display)) {
+			drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
+				    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
+		}
 
 		if (intel_vrr_is_push_sent(crtc_state))
 			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-- 
2.45.2

