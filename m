Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D19B9700C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:21:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE06910E67C;
	Tue, 23 Sep 2025 17:21:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jGqxcOfW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1068110E67C;
 Tue, 23 Sep 2025 17:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648058; x=1790184058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EfjZ1cW6zfw9jV+xbmF8Wb4eWbSoJIn8JPdZAqyT9ts=;
 b=jGqxcOfWBcFqfZpv+x7LFnZqMF4oJ6wG8U97RRKySV9ZLdVanoXl/WVK
 VEoSU7fuTryg6j8wN8lD9lCyWy6ZSHyMGdbSBofTZh7RfZiJVVU4n79h3
 PMaKmLHHBBvHnVAM2x+VpWYQ838pJJF//14dQOiz1MRNQh8DJIGVFj45y
 /bB/MuQ5KR8sfzZd70gfMCjk1Qv+iHZiAg+V7w5U79ohUaotsOMVMtrTX
 wGWPaE8ZaShcS2gyXgB9Rfp3gEKzAi856L/hJ8nZ5CERfT9LlFl+dDqOk
 4gTVgrBrYwPtHGroLB48zT4fwc/17bqJ7yaMi4StY17sB+loVDaIHmDqJ w==;
X-CSE-ConnectionGUID: XSDlk1CWRQWqaabtuWP2XQ==
X-CSE-MsgGUID: bj2xWRRTSfWeZXF2vFp7yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78375417"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="78375417"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:58 -0700
X-CSE-ConnectionGUID: hzKX6UaFSLCRzDwD9EJ5TA==
X-CSE-MsgGUID: 6rMsUPZFSlSOHIjoIjJrVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207747972"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:57 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 18/20] drm/i915/cdclk: Use enabled_pipes instead of
 active_pipes for the glk audio w/a
Date: Tue, 23 Sep 2025 20:19:40 +0300
Message-ID: <20250923171943.7319-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
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

Currently we are considering the set of active pipes when
determining if we need to boost the cdclk due to glk audio
issues. Replace that with the set of logically enabled pipes
instead. That is generally how everything else cdclk related
is computed (cdclk_state->logical is based on logically
enabled pipes).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7b828c6a7b11..0be35e5c43c1 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -146,6 +146,9 @@ struct intel_cdclk_state {
 	/* forced minimum cdclk for glk+ audio w/a */
 	int force_min_cdclk;
 
+	/* bitmask of enabled pipes */
+	u8 enabled_pipes;
+
 	/* bitmask of active pipes */
 	u8 active_pipes;
 
@@ -2933,8 +2936,8 @@ static bool glk_cdclk_audio_wa_needed(struct intel_display *display,
 				      const struct intel_cdclk_state *cdclk_state)
 {
 	return display->platform.geminilake &&
-		cdclk_state->active_pipes &&
-		!is_power_of_2(cdclk_state->active_pipes);
+		cdclk_state->enabled_pipes &&
+		!is_power_of_2(cdclk_state->enabled_pipes);
 }
 
 static int intel_compute_min_cdclk(struct intel_atomic_state *state)
@@ -3252,7 +3255,8 @@ static int intel_cdclk_modeset_checks(struct intel_atomic_state *state,
 	struct intel_cdclk_state *new_cdclk_state;
 	int ret;
 
-	if (!intel_any_crtc_active_changed(state))
+	if (!intel_any_crtc_enable_changed(state) &&
+	    !intel_any_crtc_active_changed(state))
 		return 0;
 
 	new_cdclk_state = intel_atomic_get_cdclk_state(state);
@@ -3261,6 +3265,9 @@ static int intel_cdclk_modeset_checks(struct intel_atomic_state *state,
 
 	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
 
+	new_cdclk_state->enabled_pipes =
+		intel_calc_enabled_pipes(state, old_cdclk_state->enabled_pipes);
+
 	new_cdclk_state->active_pipes =
 		intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
 
@@ -3495,6 +3502,7 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
 		to_intel_cdclk_state(display->cdclk.obj.state);
 	struct intel_crtc *crtc;
 
+	cdclk_state->enabled_pipes = 0;
 	cdclk_state->active_pipes = 0;
 
 	for_each_intel_crtc(display->drm, crtc) {
@@ -3502,6 +3510,8 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
 			to_intel_crtc_state(crtc->base.state);
 		enum pipe pipe = crtc->pipe;
 
+		if (crtc_state->hw.enable)
+			cdclk_state->enabled_pipes |= BIT(pipe);
 		if (crtc_state->hw.active)
 			cdclk_state->active_pipes |= BIT(pipe);
 
-- 
2.49.1

