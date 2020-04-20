Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD611B0C6C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 15:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0740F6E55C;
	Mon, 20 Apr 2020 13:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF8E86E55C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 13:16:40 +0000 (UTC)
IronPort-SDR: 1MmZE7uWpI96Pslr9hQ4Noeurilwf+Ly/T5E9pQt6AqzSUCwqrKDcRByT8ryszqgidFtuu6g1l
 VXsXK0O+P/6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 06:16:38 -0700
IronPort-SDR: yp6LTRyKy12lk/8Q48Zg4euGQICe+Yxg/Yu/Jw70moLqijvmsY+xqAxtRrcBkqL1YHjP+1iZCR
 Vjiy1LvHHHyw==
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="429122222"
Received: from iastakh-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.63.229])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 06:16:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 16:16:32 +0300
Message-Id: <20200420131632.23283-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/audio: fix compressed_bpp check
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The early check for compressed_bpp being zero is too early, as it is hit
also when DSC is not enabled. Move the checks down to where the values
are actually needed. This is a paranoid check for a situation that
should not happen, so we don't really care about handling it gracefully
apart from not oopsing.

Fixes: 48b8b04c791d ("drm/i915/display: Enable DP Display Audio WA")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1750
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 2663e71059af..36aaee8536f1 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -542,6 +542,10 @@ static unsigned int get_hblank_early_enable_config(struct intel_encoder *encoder
 		    h_active, crtc_state->port_clock, crtc_state->lane_count,
 		    vdsc_bpp, cdclk);
 
+	if (WARN_ON(!crtc_state->port_clock || !crtc_state->lane_count ||
+		    !crtc_state->dsc.compressed_bpp || !i915->cdclk.hw.cdclk))
+		return 0;
+
 	link_clks_available = ((((h_total - h_active) *
 			       ((crtc_state->port_clock * ROUNDING_FACTOR) /
 				pixel_clk)) / ROUNDING_FACTOR) - 28);
@@ -597,21 +601,12 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
-	unsigned int hblank_early_prog, samples_room, h_active;
+	unsigned int hblank_early_prog, samples_room;
 	unsigned int val;
 
 	if (INTEL_GEN(i915) < 11)
 		return;
 
-	h_active = crtc_state->hw.adjusted_mode.hdisplay;
-
-	if (!(h_active && crtc_state->port_clock && crtc_state->lane_count &&
-	      crtc_state->dsc.compressed_bpp && i915->cdclk.hw.cdclk)) {
-		drm_err(&i915->drm, "Null Params rcvd for hblank early enabling\n");
-		WARN_ON(1);
-		return;
-	}
-
 	val = intel_de_read(i915, AUD_CONFIG_BE);
 
 	if (INTEL_GEN(i915) == 11)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
