Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80F9BD60A8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 22:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D4A10E524;
	Mon, 13 Oct 2025 20:13:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MN0I+miV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9523410E523;
 Mon, 13 Oct 2025 20:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760386389; x=1791922389;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VYVbWdqCMZID0Oj8S9rP1do2DU/Ye1wjl9FMKzsfxTw=;
 b=MN0I+miVXoafsY6LHq0pTQRhGknT6H/svxfpMKPJZu/lQ9+8vLat3udM
 AGuui+ewLmXUlh7A4i5Raor1zm0c6A6HdjiyHhjKPLikGCtbVRQQfJBto
 tfYW4UIOd0B7uM6NLAM+8hFBxPa02DB92ream5UKzUrcQ4mtBxW3VDJqM
 uNyVyhYEZ8VsTr0w1fYDOF9U+O/P/FnN//f0kYG5X4PDGM+tMD01N3tXp
 XLvmpEMRetV7vwP1sRTT83LR0qWFcM189bhVcqum+C/UDfolvVAqC6LkM
 AvYt3zSNy8amZ5iGf3Q74AHc91CrTX7dI4QMo1jI/P76aIpJvGFVEKiQw w==;
X-CSE-ConnectionGUID: rKkgvPI0SB+uFqkZybKowQ==
X-CSE-MsgGUID: AdO7bt4yRTG0KVWoXHf1mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="65159179"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="65159179"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:13:09 -0700
X-CSE-ConnectionGUID: csnjQpLNQZe+nrK9zsr5Lg==
X-CSE-MsgGUID: 219OBALTSSWVJPyCVwXMvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181250794"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:13:08 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915: Compute per-crtc min_cdclk earlier
Date: Mon, 13 Oct 2025 23:12:34 +0300
Message-ID: <20251013201236.30084-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently we compute the min_cdclk for each pipe during
intel_cdclk_atomic_check(). But that is too late for the
pipe prefill vs. vblank length checks (done during
intel_compute_global_watermarks).

We can't just reorder these things due to other dependencies,
so instead pull only the per-crtc minimum cdclk calculation
ahead. We should have enough information for that as soon
as we've computed the min cdclk for the planes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c         | 8 ++++----
 drivers/gpu/drm/i915/display/intel_cdclk.h         | 2 ++
 drivers/gpu/drm/i915/display/intel_display.c       | 3 +++
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 5 +++++
 5 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ed64fac7897d..af918e0e72ef 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2829,7 +2829,7 @@ static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
 	return min_cdclk;
 }
 
-static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
+int intel_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	int min_cdclk;
 
@@ -3302,8 +3302,8 @@ static int intel_crtcs_calc_min_cdclk(struct intel_atomic_state *state,
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		ret = intel_cdclk_update_crtc_min_cdclk(state, crtc,
-							intel_crtc_compute_min_cdclk(old_crtc_state),
-							intel_crtc_compute_min_cdclk(new_crtc_state),
+							old_crtc_state->min_cdclk,
+							new_crtc_state->min_cdclk,
 							need_cdclk_calc);
 		if (ret)
 			return ret;
@@ -3523,7 +3523,7 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
 		if (crtc_state->hw.active)
 			cdclk_state->active_pipes |= BIT(pipe);
 
-		cdclk_state->min_cdclk[pipe] = intel_crtc_compute_min_cdclk(crtc_state);
+		cdclk_state->min_cdclk[pipe] = crtc_state->min_cdclk;
 		cdclk_state->min_voltage_level[pipe] = crtc_state->min_voltage_level;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index d9d7a8b3a48a..bad2da8d45d2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -69,4 +69,6 @@ bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
 void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
 void intel_cdclk_read_hw(struct intel_display *display);
 
+int intel_crtc_min_cdclk(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_CDCLK_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5b2612d4ec2..539017018884 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6443,6 +6443,9 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
+
 	ret = intel_compute_global_watermarks(state);
 	if (ret)
 		goto fail;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f77d120733fd..203dd38a9ec4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1192,6 +1192,8 @@ struct intel_crtc_state {
 
 	struct intel_crtc_wm_state wm;
 
+	int min_cdclk;
+
 	int plane_min_cdclk[I915_MAX_PLANES];
 
 	/* for packed/planar CbCr */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index d5c432b613ce..0dcb0597879a 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -865,6 +865,11 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 				    crtc_state->plane_min_cdclk[plane->id]);
 		}
 
+		crtc_state->min_cdclk = intel_crtc_min_cdclk(crtc_state);
+
+		drm_dbg_kms(display->drm, "[CRTC:%d:%s] min_cdclk %d kHz\n",
+			    crtc->base.base.id, crtc->base.name, crtc_state->min_cdclk);
+
 		intel_pmdemand_update_port_clock(display, pmdemand_state, pipe,
 						 crtc_state->port_clock);
 	}
-- 
2.49.1

