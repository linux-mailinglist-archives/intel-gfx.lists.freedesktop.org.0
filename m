Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 988E37F2577
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 06:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A42110E27D;
	Tue, 21 Nov 2023 05:44:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B019B10E27D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 05:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700545440; x=1732081440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GYUEvuPTq8LVHPE1hUCtaTMlxFgO6Id1hK1ypKfDIiY=;
 b=IWufa6lJ3l7Uh5GDz/HYgzT1XAlfph4x4T7CF2ALtI6IcxuPUPKrD0xc
 kB4XUFrbVq6xyc4GGIpKHc/ROVcr58cqv3sz5ghMvrfGKbeb9TG4rOnWD
 SxAHo7b1uo5qyGUkclwflpoBWFsQaFWLs5CgxhxY8mP3NoK2wy2CzYBL3
 SMurQGwew3iUKoXmxzOuE9hywe+Ct+BFL55WV60cN9OFe0x3F2qeBQHkG
 dzDtlMmqE8zE6HlJA/ZevZzpF7n9xm2VFKhlgjYP9evQKFlGNfpIztrl6
 6+a9om3hWlnSsounz5jNUc7WrJbOkNSY8Xq2cvETvLkJQ8zST83uQW51C w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="394611878"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="394611878"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 21:44:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760002188"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760002188"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Nov 2023 21:43:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 07:43:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 07:43:23 +0200
Message-ID: <20231121054324.9988-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
References: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/11] drm/i915: Push audio_{enable,
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Relocate the audio enable/disable from the full modeset hooks into
the common pre/post plane update stage of the commit. Audio fastset
is within easy reach now.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++++-----
 1 file changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5d76b8129449..5987e74b7a85 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -989,6 +989,24 @@ static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
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
 
@@ -1029,6 +1047,9 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 
 	if (intel_crtc_needs_color_update(new_crtc_state))
 		intel_color_post_update(new_crtc_state);
+
+	if (audio_enabling(old_crtc_state, new_crtc_state))
+		intel_encoders_audio_enable(state, crtc);
 }
 
 static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
@@ -1112,6 +1133,9 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
 
+	if (audio_disabling(old_crtc_state, new_crtc_state))
+		intel_encoders_audio_disable(state, crtc);
+
 	intel_drrs_deactivate(old_crtc_state);
 
 	intel_psr_pre_plane_update(state, crtc);
@@ -1502,7 +1526,6 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
-	intel_encoders_audio_enable(state, crtc);
 
 	if (HAS_PCH_CPT(dev_priv))
 		intel_wait_for_pipe_scanline_moving(crtc);
@@ -1676,7 +1699,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
-	intel_encoders_audio_enable(state, crtc);
 
 	if (psl_clkgate_wa) {
 		intel_crtc_wait_for_next_vblank(crtc);
@@ -1728,7 +1750,6 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
 
-	intel_encoders_audio_disable(state, crtc);
 	intel_encoders_disable(state, crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
@@ -1763,7 +1784,6 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	 * Need care with mst->ddi interactions.
 	 */
 	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
-		intel_encoders_audio_disable(state, crtc);
 		intel_encoders_disable(state, crtc);
 		intel_encoders_post_disable(state, crtc);
 	}
@@ -2033,7 +2053,6 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
-	intel_encoders_audio_enable(state, crtc);
 }
 
 static void i9xx_crtc_enable(struct intel_atomic_state *state,
@@ -2075,7 +2094,6 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
-	intel_encoders_audio_enable(state, crtc);
 
 	/* prevents spurious underruns */
 	if (DISPLAY_VER(dev_priv) == 2)
@@ -2112,7 +2130,6 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) == 2)
 		intel_crtc_wait_for_next_vblank(crtc);
 
-	intel_encoders_audio_disable(state, crtc);
 	intel_encoders_disable(state, crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
-- 
2.41.0

