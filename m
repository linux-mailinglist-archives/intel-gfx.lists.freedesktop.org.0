Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6707C7E2EDF
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 22:19:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B739B10E437;
	Mon,  6 Nov 2023 21:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3875B10E437
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 21:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699305592; x=1730841592;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=D//dj5/eiK7KlsiGZZA+mkvkk+IX4iZJ5vNDpFyUfOs=;
 b=RvukebQTtJLQEZy4IKgMPBnK6kiQYkLROEdRVZYyjuXp5+aDsG7Ilr40
 +e9olOpIXkG4S5V5gYOLsK9i6Cd07oHtiLTaXxrQVQnmYW5JlmG8kfw71
 Sq/nqrtu9BFxn8JZnUGnLTK7px459LfQhpZAykg+sjMA4nG9eU0d4oStD
 JdfEeCja56Wc5eLkF19PebStaTlGzTTKRLgvwEsgydUuyWeOkq1wV2lSc
 IUZAScXUQmLUdarqu/vBm6tKU2ApIMnRNWVPkHHzBVzlmd4ztNeOHSxIc
 qvqdlLcCHY/TYwZcwkF3gwJXigR0kIONAgAoVw94RyYQs+8rP9DzSf3qy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="10911572"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="10911572"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 13:19:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755964287"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755964287"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 13:19:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 23:19:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 23:19:14 +0200
Message-ID: <20231106211915.13406-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: Push audio_{enable,
 disable}() to the pre/post pane update stage
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

Relocate the audio enable/disable from the full modeset hooks into
the common pre/post plane update stage of the commit. Audio fastset
is within easy reach now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++++-----
 1 file changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d606befa007c..98d4fcd28073 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -990,6 +990,24 @@ static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
+static bool audio_enabling(const struct intel_crtc_state *old_crtc_state,
+			   const struct intel_crtc_state *new_crtc_state)
+{
+	if (!new_crtc_state->hw.active)
+		return false;
+
+	return is_enabling(has_audio, old_crtc_state, new_crtc_state);
+}
+
+static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
+			    const struct intel_crtc_state *new_crtc_state)
+{
+	if (!old_crtc_state->hw.active)
+		return false;
+
+	return is_disabling(has_audio, old_crtc_state, new_crtc_state);
+}
+
 #undef is_disabling
 #undef is_enabling
 
@@ -1030,6 +1048,9 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 
 	if (intel_crtc_needs_color_update(new_crtc_state))
 		intel_color_post_update(new_crtc_state);
+
+	if (audio_enabling(old_crtc_state, new_crtc_state))
+		intel_encoders_audio_enable(state, crtc);
 }
 
 static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
@@ -1113,6 +1134,9 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
 
+	if (audio_disabling(old_crtc_state, new_crtc_state))
+		intel_encoders_audio_disable(state, crtc);
+
 	intel_drrs_deactivate(old_crtc_state);
 
 	intel_psr_pre_plane_update(state, crtc);
@@ -1503,7 +1527,6 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
-	intel_encoders_audio_enable(state, crtc);
 
 	if (HAS_PCH_CPT(dev_priv))
 		intel_wait_for_pipe_scanline_moving(crtc);
@@ -1677,7 +1700,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
-	intel_encoders_audio_enable(state, crtc);
 
 	if (psl_clkgate_wa) {
 		intel_crtc_wait_for_next_vblank(crtc);
@@ -1729,7 +1751,6 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
 
-	intel_encoders_audio_disable(state, crtc);
 	intel_encoders_disable(state, crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
@@ -1764,7 +1785,6 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	 * Need care with mst->ddi interactions.
 	 */
 	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
-		intel_encoders_audio_disable(state, crtc);
 		intel_encoders_disable(state, crtc);
 		intel_encoders_post_disable(state, crtc);
 	}
@@ -2034,7 +2054,6 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
-	intel_encoders_audio_enable(state, crtc);
 }
 
 static void i9xx_crtc_enable(struct intel_atomic_state *state,
@@ -2076,7 +2095,6 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
-	intel_encoders_audio_enable(state, crtc);
 
 	/* prevents spurious underruns */
 	if (DISPLAY_VER(dev_priv) == 2)
@@ -2113,7 +2131,6 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) == 2)
 		intel_crtc_wait_for_next_vblank(crtc);
 
-	intel_encoders_audio_disable(state, crtc);
 	intel_encoders_disable(state, crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
-- 
2.41.0

