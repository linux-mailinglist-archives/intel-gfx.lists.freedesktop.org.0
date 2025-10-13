Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE02ABD60A2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 22:13:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE5210E525;
	Mon, 13 Oct 2025 20:13:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eZoCxJUV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FD610E525;
 Mon, 13 Oct 2025 20:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760386381; x=1791922381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DT+11mlDpOHmtj5gS0O+WmEcIsYbzaTQuLjeNzbyxy8=;
 b=eZoCxJUVwlzw56SA5TJv6VdC+Sv9nN3xnLyq2WUZ8BMhWBS10uP4C4dH
 BTK7+KAUMUMcAC6SZGUqIY36NgCPL3RfAKQmpW8Rl9NMXfA6vaW3JPd13
 aQoaUc9XnSMj4TJ+uxKL6DSSEUrIHvqZ3+3ma5af75l0dLqH0h3LapOI7
 1PXufBRs7QkS2S27EAZBNIwX0A+JLfsfH1RDVzxfgD8VMbr60ieqHJGGj
 5g1oSOv3agUiLqS2gQFYv5le+vlfTantuduR7fwGeVWTo76a8lt8tndMS
 2pMgiq5tt/ekuQ9N9wuzFRZk9KbhBZxOXahu/bnZaqMpOwSf+OZ1gS7if A==;
X-CSE-ConnectionGUID: OuUu4EwbTy+LXGXGwYvi4g==
X-CSE-MsgGUID: A+sNd/5ZRB69cgzxbL/95Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="65159168"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="65159168"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:13:01 -0700
X-CSE-ConnectionGUID: 7SZEFeSXRou2WFnY5d8WWw==
X-CSE-MsgGUID: oTt/PyzBQWGLObEQzxZZ1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181250715"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:13:00 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915/fbc: Decouple FBC from intel_cdclk_atomic_check()
Date: Mon, 13 Oct 2025 23:12:32 +0300
Message-ID: <20251013201236.30084-6-ville.syrjala@linux.intel.com>
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

Always account for FBC requirements in intel_crtc_compute_min_cdclk()
so that we don't to worry about the actual CDCLK frequency in
intel_fbc_check_plane() any longer.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c   | 49 ++++++++++++++++------
 drivers/gpu/drm/i915/display/intel_fbc.h   |  1 +
 3 files changed, 38 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 80a6c98eea5d..d55b3dc23356 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2838,6 +2838,7 @@ static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_stat
 
 	min_cdclk = intel_pixel_rate_to_cdclk(crtc_state);
 	min_cdclk = max(min_cdclk, intel_crtc_bw_min_cdclk(crtc_state));
+	min_cdclk = max(min_cdclk, intel_fbc_min_cdclk(crtc_state));
 	min_cdclk = max(min_cdclk, hsw_ips_min_cdclk(crtc_state));
 	min_cdclk = max(min_cdclk, intel_audio_min_cdclk(crtc_state));
 	min_cdclk = max(min_cdclk, vlv_dsi_min_cdclk(crtc_state));
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 4edb4342833e..90060c60c5f4 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -53,7 +53,6 @@
 #include "i915_vgpu.h"
 #include "i915_vma.h"
 #include "i9xx_plane_regs.h"
-#include "intel_cdclk.h"
 #include "intel_de.h"
 #include "intel_display_device.h"
 #include "intel_display_regs.h"
@@ -1417,6 +1416,18 @@ intel_fbc_prepare_dirty_rect(struct intel_atomic_state *state,
 	}
 }
 
+static int _intel_fbc_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	/* WaFbcExceedCdClockThreshold:hsw,bdw */
+	if (display->platform.haswell || display->platform.broadwell)
+		return DIV_ROUND_UP(crtc_state->pixel_rate * 100, 95);
+
+	/* no FBC specific limits to worry about */
+	return 0;
+}
+
 static int intel_fbc_check_plane(struct intel_atomic_state *state,
 				 struct intel_plane *plane)
 {
@@ -1556,18 +1567,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	/* WaFbcExceedCdClockThreshold:hsw,bdw */
-	if (display->platform.haswell || display->platform.broadwell) {
-		const struct intel_cdclk_state *cdclk_state;
-
-		cdclk_state = intel_atomic_get_cdclk_state(state);
-		if (IS_ERR(cdclk_state))
-			return PTR_ERR(cdclk_state);
-
-		if (crtc_state->pixel_rate >= intel_cdclk_logical(cdclk_state) * 95 / 100) {
-			plane_state->no_fbc_reason = "pixel rate too high";
-			return 0;
-		}
+	if (_intel_fbc_min_cdclk(crtc_state) > display->cdclk.max_cdclk_freq) {
+		plane_state->no_fbc_reason = "pixel rate too high";
+		return 0;
 	}
 
 	plane_state->no_fbc_reason = NULL;
@@ -1575,6 +1577,27 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	return 0;
 }
 
+int intel_fbc_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	int min_cdclk;
+
+	if (!plane->fbc)
+		return 0;
+
+	min_cdclk = _intel_fbc_min_cdclk(crtc_state);
+
+	/*
+	 * Do not ask for more than the max CDCLK frequency,
+	 * if that is not enough FBC will simply not be used.
+	 */
+	if (min_cdclk > display->cdclk.max_cdclk_freq)
+		return 0;
+
+	return min_cdclk;
+}
 
 static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 0e715cb6b4e6..c86562404a00 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -28,6 +28,7 @@ enum intel_fbc_id {
 };
 
 int intel_fbc_atomic_check(struct intel_atomic_state *state);
+int intel_fbc_min_cdclk(const struct intel_crtc_state *crtc_state);
 bool intel_fbc_pre_update(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc);
 void intel_fbc_post_update(struct intel_atomic_state *state,
-- 
2.49.1

