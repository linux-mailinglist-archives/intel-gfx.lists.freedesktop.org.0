Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C43BD60A5
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 22:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141EC10E53E;
	Mon, 13 Oct 2025 20:13:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YOSn9RYt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3321610E52E;
 Mon, 13 Oct 2025 20:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760386385; x=1791922385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CgbmMsBoHEhuP4rSxJsTZRMQl7YxjNAbEWXaQ+Jil0k=;
 b=YOSn9RYtiwYThJtpT1O3FUgaTlNY72zTeS1LLqEefQQ3CC9GhfrvrH0c
 eHcKwS92koCjNGQFcnfOM9VwBF1JlrWkp+AHh+6cyMyWDaWjGEZszNP/5
 9B/lmD9b0Nm+V0pSz7azVmiyTPNEbBVMxObakeOGNzDoxsfhVQUMW4oqJ
 BpsVD8bixyxbMS2vq3mw62N4EhLZtf3bC0xny7Uh5MlnEURAy3pmZH/jE
 pqFlPveYKLeija0KxjRNj1fIi8OfuwXqPgFwh9rJ73AIgivbb0ZxbnHMB
 2Rh8d3QhWldfeIxcP/cL5wmZ2yzMdLuv/5fjTi3I7pYPM1onjoJEtwZKK w==;
X-CSE-ConnectionGUID: znT1ipwlRu6j46deqxe6PQ==
X-CSE-MsgGUID: Ua2srv3SSTmZY6pARzaNaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="65159174"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="65159174"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:13:05 -0700
X-CSE-ConnectionGUID: gZQJjhH7T9ed99qrWp/1ig==
X-CSE-MsgGUID: OqMawr2BSGSb3bvfRoOOPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181250776"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:13:04 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915: s/min_cdck[]/plane_min_cdclk[]/
Date: Mon, 13 Oct 2025 23:12:33 +0300
Message-ID: <20251013201236.30084-7-ville.syrjala@linux.intel.com>
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

Rename crtc_state->min_cdclk[] into crtc_state->plane_min_cdclk[]
to better reflect what it represents.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_plane.c         | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d55b3dc23356..ed64fac7897d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2824,7 +2824,7 @@ static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
 	int min_cdclk = 0;
 
 	for_each_intel_plane_on_crtc(display->drm, crtc, plane)
-		min_cdclk = max(min_cdclk, crtc_state->min_cdclk[plane->id]);
+		min_cdclk = max(min_cdclk, crtc_state->plane_min_cdclk[plane->id]);
 
 	return min_cdclk;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 87b7cec35320..f77d120733fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1192,7 +1192,7 @@ struct intel_crtc_state {
 
 	struct intel_crtc_wm_state wm;
 
-	int min_cdclk[I915_MAX_PLANES];
+	int plane_min_cdclk[I915_MAX_PLANES];
 
 	/* for packed/planar CbCr */
 	u32 data_rate[I915_MAX_PLANES];
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index deb877b2aebd..d5c432b613ce 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -853,16 +853,16 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 			 */
 			if (plane_state->uapi.visible && plane->min_cdclk) {
 				if (crtc_state->double_wide || DISPLAY_VER(display) >= 10)
-					crtc_state->min_cdclk[plane->id] =
+					crtc_state->plane_min_cdclk[plane->id] =
 						DIV_ROUND_UP(crtc_state->pixel_rate, 2);
 				else
-					crtc_state->min_cdclk[plane->id] =
+					crtc_state->plane_min_cdclk[plane->id] =
 						crtc_state->pixel_rate;
 			}
 			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] min_cdclk %d kHz\n",
 				    plane->base.base.id, plane->base.name,
-				    crtc_state->min_cdclk[plane->id]);
+				    crtc_state->plane_min_cdclk[plane->id]);
 		}
 
 		intel_pmdemand_update_port_clock(display, pmdemand_state, pipe,
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 074de9275951..78329deb395a 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -304,7 +304,7 @@ static void intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 
 	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 
-	new_crtc_state->min_cdclk[plane->id] =
+	new_crtc_state->plane_min_cdclk[plane->id] =
 		plane->min_cdclk(new_crtc_state, plane_state);
 }
 
@@ -391,7 +391,7 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 	crtc_state->data_rate_y[plane->id] = 0;
 	crtc_state->rel_data_rate[plane->id] = 0;
 	crtc_state->rel_data_rate_y[plane->id] = 0;
-	crtc_state->min_cdclk[plane->id] = 0;
+	crtc_state->plane_min_cdclk[plane->id] = 0;
 
 	plane_state->uapi.visible = false;
 }
-- 
2.49.1

