Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF349B554A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C6010E6F9;
	Tue, 29 Oct 2024 21:52:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ABikGRUs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9930210E6F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238755; x=1761774755;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=k3kSrqT++4fEveEpBFqVXKYAlJA30lVBYVYCb3NYIxk=;
 b=ABikGRUsZOOmbudtw4cztetXHgmUaWMdkdcDZRIQVO35jOeTZ3g4Xnjm
 jSSIXcN+4af+onIWXzMyZdwLcwCJCurI2vG/K0BF5b5q7ESObDtypLSmm
 NBz+aSWuvEtQHDfyYxZxVBTtoH90+iUhw0FijIIxQM3m4fIuWSDtI0L/O
 lQqIHVxTm6Kt+nvbI/Ds480/HU4UgEgSon0Y4/JUNHfUp+wfOqrnhln/8
 e3aji8mlBh88NruHTWw7PNfKZMEKtbgSOYRhjSba6Kkhnys3WUmLu8yoa
 ZQtIKA/uZejtsEPLlParN4fCJFVNQiH4qau5edWJydgc1888mNw532tAe Q==;
X-CSE-ConnectionGUID: l8Nj8YHGTbSAaObAOVZIjQ==
X-CSE-MsgGUID: PkeBP6wJTvquMTmVHJjcww==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275141"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275141"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:32 -0700
X-CSE-ConnectionGUID: UK+5w+rpTqmhy5KQsMsm0A==
X-CSE-MsgGUID: KdYU0DE7RkSvewr/tdxlpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200231"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/11] drm/i915/cdclk: Extract intel_audio_min_cdclk()
Date: Tue, 29 Oct 2024 23:52:10 +0200
Message-ID: <20241029215217.3697-5-ville.syrjala@linux.intel.com>
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

Pull the audio min cdclk calculation into a helper and hide
it inside intel_audio.c in order to keep most audio related
details in one place.

The one audio related thing that remains in intel_cdclk.c
is commit 451eaa1a614c ("drm/i915: Bump GLK CDCLK frequency when
driving multiple pipes") but given that's implemented in terms
of the cdclk_state I think it should stay put.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 45 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c | 37 +-----------------
 3 files changed, 47 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 32aa9ec1a204..82c45b24417a 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -978,6 +978,51 @@ static void glk_force_audio_cdclk(struct drm_i915_private *i915,
 	drm_modeset_acquire_fini(&ctx);
 }
 
+int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	int min_cdclk = 0;
+
+	/* BSpec says "Do not use DisplayPort with CDCLK less than 432 MHz,
+	 * audio enabled, port width x4, and link rate HBR2 (5.4 GHz), or else
+	 * there may be audio corruption or screen corruption." This cdclk
+	 * restriction for GLK is 316.8 MHz.
+	 */
+	if (intel_crtc_has_dp_encoder(crtc_state) &&
+	    crtc_state->has_audio &&
+	    crtc_state->port_clock >= 540000 &&
+	    crtc_state->lane_count == 4) {
+		if (DISPLAY_VER(display) == 10) {
+			/* Display WA #1145: glk */
+			min_cdclk = max(316800, min_cdclk);
+		} else if (DISPLAY_VER(display) == 9 || IS_BROADWELL(dev_priv)) {
+			/* Display WA #1144: skl,bxt */
+			min_cdclk = max(432000, min_cdclk);
+		}
+	}
+
+	/*
+	 * According to BSpec, "The CD clock frequency must be at least twice
+	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
+	 */
+	if (crtc_state->has_audio && DISPLAY_VER(display) >= 9)
+		min_cdclk = max(2 * 96000, min_cdclk);
+
+	/*
+	 * "For DP audio configuration, cdclk frequency shall be set to
+	 *  meet the following requirements:
+	 *  DP Link Frequency(MHz) | Cdclk frequency(MHz)
+	 *  270                    | 320 or higher
+	 *  162                    | 200 or higher"
+	 */
+	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	    intel_crtc_has_dp_encoder(crtc_state) && crtc_state->has_audio)
+		min_cdclk = max(crtc_state->port_clock, min_cdclk);
+
+	return min_cdclk;
+}
+
 static unsigned long i915_audio_component_get_power(struct device *kdev)
 {
 	struct intel_display *display = to_intel_display(kdev);
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 576c061d72a4..1bafc155434a 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -27,6 +27,7 @@ void intel_audio_codec_get_config(struct intel_encoder *encoder,
 				  struct intel_crtc_state *crtc_state);
 void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
 void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
+int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state);
 void intel_audio_init(struct drm_i915_private *dev_priv);
 void intel_audio_register(struct drm_i915_private *i915);
 void intel_audio_deinit(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 3103ecab980c..89d12c521411 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2858,42 +2858,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 
 	min_cdclk = intel_pixel_rate_to_cdclk(crtc_state);
 	min_cdclk = max(hsw_ips_min_cdclk(crtc_state), min_cdclk);
-
-	/* BSpec says "Do not use DisplayPort with CDCLK less than 432 MHz,
-	 * audio enabled, port width x4, and link rate HBR2 (5.4 GHz), or else
-	 * there may be audio corruption or screen corruption." This cdclk
-	 * restriction for GLK is 316.8 MHz.
-	 */
-	if (intel_crtc_has_dp_encoder(crtc_state) &&
-	    crtc_state->has_audio &&
-	    crtc_state->port_clock >= 540000 &&
-	    crtc_state->lane_count == 4) {
-		if (DISPLAY_VER(display) == 10) {
-			/* Display WA #1145: glk */
-			min_cdclk = max(316800, min_cdclk);
-		} else if (DISPLAY_VER(display) == 9 || IS_BROADWELL(dev_priv)) {
-			/* Display WA #1144: skl,bxt */
-			min_cdclk = max(432000, min_cdclk);
-		}
-	}
-
-	/*
-	 * According to BSpec, "The CD clock frequency must be at least twice
-	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
-	 */
-	if (crtc_state->has_audio && DISPLAY_VER(display) >= 9)
-		min_cdclk = max(2 * 96000, min_cdclk);
-
-	/*
-	 * "For DP audio configuration, cdclk frequency shall be set to
-	 *  meet the following requirements:
-	 *  DP Link Frequency(MHz) | Cdclk frequency(MHz)
-	 *  270                    | 320 or higher
-	 *  162                    | 200 or higher"
-	 */
-	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	    intel_crtc_has_dp_encoder(crtc_state) && crtc_state->has_audio)
-		min_cdclk = max(crtc_state->port_clock, min_cdclk);
+	min_cdclk = max(intel_audio_min_cdclk(crtc_state), min_cdclk);
 
 	/*
 	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
-- 
2.45.2

