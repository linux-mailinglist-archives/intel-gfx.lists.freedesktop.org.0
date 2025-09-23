Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3137B96FDF
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBDEB10E65A;
	Tue, 23 Sep 2025 17:20:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OnTmzFnQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 686E610E65A;
 Tue, 23 Sep 2025 17:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648017; x=1790184017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rU8On0gKzoNADxGEUJn5GgkvF2aMAJww6TidQwGF1Wo=;
 b=OnTmzFnQH1ggkx235ZiNOWcoxh8tLW1GSp1aC1yXWs7QJ1WXCKZthTGu
 tmy4KUH9QEr3RAI7XD4fV4Y14LOQbo1VyncAn1HeOUJ/MSFnGu+1MgGsN
 mnc5qt7ORtAcDXxrtwwIee6Ha3/E/7sawTdDOUOS/uZvODQ/vbZOsRDNx
 ZZ1gggpCPwG12ro6V+dPzfLctJVNBhbpX6lVGolZP09h6tLKN8YiLjzc+
 ik6kI9Vl9KHPv+BUxtRIMmWSdzBCgxI9QT+xVsxzOOn7P4ePrks/fgx5n
 orvEuH0kP2QwDmghV67JaTBYBURywZeCsp9EppOv2CEib79G6uwclu4s3 g==;
X-CSE-ConnectionGUID: 4ruOPPu2QGu6hyAc+1eS8A==
X-CSE-MsgGUID: XaHblofXS6yigIX/oiR3Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60991004"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60991004"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:17 -0700
X-CSE-ConnectionGUID: O80oepwQSU+k/gMUH2fNHA==
X-CSE-MsgGUID: jrIdyRpATlejWPgoeaVNUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176898752"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:16 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/20] drm/i915/cdclk: Introduce intel_cdclk_modeset_checks()
Date: Tue, 23 Sep 2025 20:19:29 +0300
Message-ID: <20250923171943.7319-8-ville.syrjala@linux.intel.com>
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

I plan to better decouple the cdclk computation from actual
modesets. To that end make the cdclk code self sufficient in
being able to determine if a full cdclk calculation/update is
needed or not due to some not strictly cdclk related reason.

Currently we have three such things that depend active_pipes:
- cdclk_state->actual
- glk audio w/a
- dg2 power well stuff

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 48 +++++++++++++++++++---
 1 file changed, 43 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 87dafe55b895..d335cd4bd0e4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3186,6 +3186,44 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state)
 	return to_intel_cdclk_state(cdclk_state);
 }
 
+static int intel_cdclk_modeset_checks(struct intel_atomic_state *state,
+				      bool *need_cdclk_calc)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_cdclk_state *old_cdclk_state;
+	struct intel_cdclk_state *new_cdclk_state;
+	int ret;
+
+	if (!intel_any_crtc_active_changed(state))
+		return 0;
+
+	new_cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(new_cdclk_state))
+		return PTR_ERR(new_cdclk_state);
+
+	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
+
+	new_cdclk_state->active_pipes =
+		intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
+
+	ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
+	if (ret)
+		return ret;
+
+	if (!old_cdclk_state->active_pipes != !new_cdclk_state->active_pipes)
+		*need_cdclk_calc = true;
+
+	if (glk_cdclk_audio_wa_needed(display, old_cdclk_state) !=
+	    glk_cdclk_audio_wa_needed(display, new_cdclk_state))
+		*need_cdclk_calc = true;
+
+	if (dg2_power_well_count(display, old_cdclk_state) !=
+	    dg2_power_well_count(display, new_cdclk_state))
+		*need_cdclk_calc = true;
+
+	return 0;
+}
+
 int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 			     bool *need_cdclk_calc)
 {
@@ -3196,6 +3234,10 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 	int ret;
 	int i;
 
+	ret = intel_cdclk_modeset_checks(state, need_cdclk_calc);
+	if (ret)
+		return ret;
+
 	/*
 	 * active_planes bitmask has been updated, and potentially affected
 	 * planes are part of the state. We can now compute the minimum cdclk
@@ -3277,9 +3319,6 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
 
-	new_cdclk_state->active_pipes =
-		intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
-
 	ret = intel_cdclk_modeset_calc_cdclk(state);
 	if (ret)
 		return ret;
@@ -3292,8 +3331,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		ret = intel_atomic_serialize_global_state(&new_cdclk_state->base);
 		if (ret)
 			return ret;
-	} else if (old_cdclk_state->active_pipes != new_cdclk_state->active_pipes ||
-		   old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk ||
+	} else if (old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk ||
 		   intel_cdclk_changed(&old_cdclk_state->logical,
 				       &new_cdclk_state->logical)) {
 		ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
-- 
2.49.1

