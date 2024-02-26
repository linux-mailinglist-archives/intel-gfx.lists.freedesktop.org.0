Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC9786810C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 20:33:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A77F10E4B3;
	Mon, 26 Feb 2024 19:32:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HWATh3hs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9DE10E071
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 19:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708975976; x=1740511976;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w6kSDLiwrNcSIUouHK7ITEonrcIDzEmr3eygDNV2LP0=;
 b=HWATh3hsUhzSt6q/E2QCietNkliMwe3GHKH9JtuxkXluKCCL2iTdVXf3
 QGAJZ+0xx8wZ6WvlGRr4irVa+9+LwrRrR3y7nhPVZ+/11A6V6kSc5Tj8V
 TA6fXfUlGuxN33vYZw2AWT4+BXv863czcjEjd07kC4CMPGOavLIGGwjzX
 qDys8HM3yxftgwpPcl3mDNkjfz7msvwStQ0E2Op1Xbyr9A5dgJcJWtH6K
 bXoGAoA0irm0Yo4+GdaadZ2hjD/qmACZ+7oTUv6vwCyfDmUPbLU99Wknk
 d/EHD4WP6/qv0vocxNcwbzMJEl2FINKeFSd3x6evwCbgj2WMV6fuUXYjb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3148105"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3148105"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:32:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="827770479"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="827770479"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Feb 2024 11:32:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Feb 2024 21:32:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915: Stop doing double audio enable/disable on SDVO
 and g4x+ DP
Date: Mon, 26 Feb 2024 21:32:50 +0200
Message-ID: <20240226193251.29619-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Looks like I misplaced a few hunks when I moved the audio
enable/disable out from the encoder enable/disable hooks.
So we are now doing a double audio enable/disable on SDVO
and g4x+ DP. Probably harmless as doing it twice shouldn't
really change anything, but let's do it just once, as intended.

Fixes: cff742cc6851 ("drm/i915: Hoist the encoder->audio_{enable,disable}() calls higher up")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c     | 2 --
 drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ----
 2 files changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index dfe0b07a122d..06ec04e667e3 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -717,7 +717,6 @@ static void g4x_enable_dp(struct intel_atomic_state *state,
 {
 	intel_enable_dp(state, encoder, pipe_config, conn_state);
 	intel_edp_backlight_on(pipe_config, conn_state);
-	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void vlv_enable_dp(struct intel_atomic_state *state,
@@ -726,7 +725,6 @@ static void vlv_enable_dp(struct intel_atomic_state *state,
 			  const struct drm_connector_state *conn_state)
 {
 	intel_edp_backlight_on(pipe_config, conn_state);
-	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void g4x_pre_enable_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 5f9e748adc89..0cd9c183f621 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1842,8 +1842,6 @@ static void intel_disable_sdvo(struct intel_atomic_state *state,
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	u32 temp;
 
-	encoder->audio_disable(encoder, old_crtc_state, conn_state);
-
 	intel_sdvo_set_active_outputs(intel_sdvo, 0);
 	if (0)
 		intel_sdvo_set_encoder_power_state(intel_sdvo,
@@ -1935,8 +1933,6 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 		intel_sdvo_set_encoder_power_state(intel_sdvo,
 						   DRM_MODE_DPMS_ON);
 	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo_connector->output_flag);
-
-	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static enum drm_mode_status
-- 
2.43.0

