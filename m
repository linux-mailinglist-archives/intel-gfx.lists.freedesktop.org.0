Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F159B5555
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85F0910E724;
	Tue, 29 Oct 2024 21:52:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KrDJFkU3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7062F10E725
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238772; x=1761774772;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JVs9r6YMsZldnGCTgZXoAzHlhaEuBw6pkRiVxk++GAE=;
 b=KrDJFkU3Ifm/7Kr1WqVuryiZUt3+y8Q5YpVAtd2rPHF6BZb/yE5N+vsc
 0EcdbXY9cxEYKMhL7G6towt6NVLBLFEq0xIbfMcok50kAnfCwEREpOKMo
 6pNprANeGtWRP0PljoxvqEQa1DtHKXohZa5MxFjXUHt/MKhy23kabftdY
 1m4iYG3pRPiVqs84qOmW+u3GqsIZ7Ohn7ohNqf4TpKOYVzDA2EjlAvPa0
 SyQfU9V+J9NJ5FIW8+RsLru4m1VXwcIYIcJP54AucqHwNHqeUGLZM2Xhb
 TgRahz/yOYaM9ILCYMbVWNJzGp28st/1ZHUtVLh5mxWUww+kjyi+4Ntiz w==;
X-CSE-ConnectionGUID: ny7UoOKBQhu7GLOWeb1lKQ==
X-CSE-MsgGUID: l/nttmsPQkW7ahYp8b4/bg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275202"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275202"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:51 -0700
X-CSE-ConnectionGUID: B4j/HylsRZGeuTDcZuxe0w==
X-CSE-MsgGUID: Lk1lW79fQ2WD80qgWp/kjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200267"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/11] drm/i915/cdclk: Unify cdclk max() parameter order
Date: Tue, 29 Oct 2024 23:52:17 +0200
Message-ID: <20241029215217.3697-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
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

In some places we do
 min_cdclk = max(min_cdclk, other_min_cdclk)
and in other places we have the arguments swapped as
 min_cdclk = max(other_min_cdclk, min_cdclk)

Unify everyone to use the first order of arguments, because
it looks cleaner, especially within intel_crtc_compute_min_cdclk()
which is doing a lot of these back-to-back.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c |  8 ++++----
 drivers/gpu/drm/i915/display/intel_bw.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c | 18 +++++++++---------
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index af0bfdc44072..047cc5a2ef1f 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -997,10 +997,10 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
 	    crtc_state->lane_count == 4) {
 		if (DISPLAY_VER(display) == 10) {
 			/* Display WA #1145: glk */
-			min_cdclk = max(316800, min_cdclk);
+			min_cdclk = max(min_cdclk, 316800);
 		} else if (DISPLAY_VER(display) == 9 || IS_BROADWELL(dev_priv)) {
 			/* Display WA #1144: skl,bxt */
-			min_cdclk = max(432000, min_cdclk);
+			min_cdclk = max(min_cdclk, 432000);
 		}
 	}
 
@@ -1009,7 +1009,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
 	 */
 	if (DISPLAY_VER(display) >= 9)
-		min_cdclk = max(2 * 96000, min_cdclk);
+		min_cdclk = max(min_cdclk, 2 * 96000);
 
 	/*
 	 * "For DP audio configuration, cdclk frequency shall be set to
@@ -1020,7 +1020,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 */
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 	    intel_crtc_has_dp_encoder(crtc_state))
-		min_cdclk = max(crtc_state->port_clock, min_cdclk);
+		min_cdclk = max(min_cdclk, crtc_state->port_clock);
 
 	return min_cdclk;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 47036d4abb33..5f91b009df0d 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1256,7 +1256,7 @@ int intel_bw_min_cdclk(struct drm_i915_private *i915,
 	min_cdclk = intel_bw_dbuf_min_cdclk(i915, bw_state);
 
 	for_each_pipe(i915, pipe)
-		min_cdclk = max(bw_state->min_cdclk[pipe], min_cdclk);
+		min_cdclk = max(min_cdclk, bw_state->min_cdclk[pipe]);
 
 	return min_cdclk;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9f38dd14b2d8..f16a37ef7316 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2799,7 +2799,7 @@ static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
 	int min_cdclk = 0;
 
 	for_each_intel_plane_on_crtc(display->drm, crtc, plane)
-		min_cdclk = max(crtc_state->min_cdclk[plane->id], min_cdclk);
+		min_cdclk = max(min_cdclk, crtc_state->min_cdclk[plane->id]);
 
 	return min_cdclk;
 }
@@ -2812,10 +2812,10 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 		return 0;
 
 	min_cdclk = intel_pixel_rate_to_cdclk(crtc_state);
-	min_cdclk = max(hsw_ips_min_cdclk(crtc_state), min_cdclk);
-	min_cdclk = max(intel_audio_min_cdclk(crtc_state), min_cdclk);
-	min_cdclk = max(vlv_dsi_min_cdclk(crtc_state), min_cdclk);
-	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
+	min_cdclk = max(min_cdclk, hsw_ips_min_cdclk(crtc_state));
+	min_cdclk = max(min_cdclk, intel_audio_min_cdclk(crtc_state));
+	min_cdclk = max(min_cdclk, vlv_dsi_min_cdclk(crtc_state));
+	min_cdclk = max(min_cdclk, intel_planes_min_cdclk(crtc_state));
 	min_cdclk = max(min_cdclk, intel_vdsc_min_cdclk(crtc_state));
 
 	return min_cdclk;
@@ -2868,7 +2868,7 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 	min_cdclk = max(cdclk_state->force_min_cdclk,
 			cdclk_state->bw_min_cdclk);
 	for_each_pipe(display, pipe)
-		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
+		min_cdclk = max(min_cdclk, cdclk_state->min_cdclk[pipe]);
 
 	/*
 	 * Avoid glk_force_audio_cdclk() causing excessive screen
@@ -2880,7 +2880,7 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 	 */
 	if (IS_GEMINILAKE(dev_priv) && cdclk_state->active_pipes &&
 	    !is_power_of_2(cdclk_state->active_pipes))
-		min_cdclk = max(2 * 96000, min_cdclk);
+		min_cdclk = max(min_cdclk, 2 * 96000);
 
 	if (min_cdclk > display->cdclk.max_cdclk_freq) {
 		drm_dbg_kms(display->drm,
@@ -2936,8 +2936,8 @@ static int bxt_compute_min_voltage_level(struct intel_atomic_state *state)
 
 	min_voltage_level = 0;
 	for_each_pipe(display, pipe)
-		min_voltage_level = max(cdclk_state->min_voltage_level[pipe],
-					min_voltage_level);
+		min_voltage_level = max(min_voltage_level,
+					cdclk_state->min_voltage_level[pipe]);
 
 	return min_voltage_level;
 }
-- 
2.45.2

