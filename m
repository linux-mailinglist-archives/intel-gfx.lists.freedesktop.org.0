Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB4C9B554C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D124810E714;
	Tue, 29 Oct 2024 21:52:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/tmagij";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35D1410E714
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238755; x=1761774755;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=35Wu0xzWRhuuvKLxvDeQJivtW5cH67xob0h/nAfOPn8=;
 b=Q/tmagijsTcaDPXpu8RLrAgETChrGhWKjDZ16pZ0I2pxg+PoQ6oxfi6y
 KlmboLfIqyLocp+gNasncXOnIQp1BG+0tX3p1LLWsEwAL8Qh1RoyFCBYn
 hRTNaIhXnlxc3m8cdwGeFHGP3ueh6/QJMK+aBVmkcpluvrdQ2Y9XzV2dA
 y9vWTTCxgg9nlpqbHP0Xj46k4HAacFpbZSCMu6GXf6CHxxVhN/3G5dYVm
 4dQt6hwRWl++OG/+vRL/45ymThpqeSWyKySKFy7+E8UaCimEP6NOOvMt/
 DwMb5PaKvHXwvqp9KU++xJ59hpxW+Kto16pp/6+GcgxlFh6xesZeZ6/Um w==;
X-CSE-ConnectionGUID: jfiVTWC3Q5WnuUsXoop38g==
X-CSE-MsgGUID: cr/G96BAQxaSHCtE90IIhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275152"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275152"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:34 -0700
X-CSE-ConnectionGUID: FpkTI3mgTEOWE63MDPRG5Q==
X-CSE-MsgGUID: Pol0796KRYGIyVpebcwWXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200238"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/11] drm/i915/cdclk: Factor out has_audio check in
 intel_audio_min_cdclk()
Date: Tue, 29 Oct 2024 23:52:11 +0200
Message-ID: <20241029215217.3697-6-ville.syrjala@linux.intel.com>
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

All the if statements in intel_audio_min_cdclk() check for
has_audio==true. Check that once ahead of time to make
things a bit simpler.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 82c45b24417a..af0bfdc44072 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -984,13 +984,15 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int min_cdclk = 0;
 
+	if (!crtc_state->has_audio)
+		return 0;
+
 	/* BSpec says "Do not use DisplayPort with CDCLK less than 432 MHz,
 	 * audio enabled, port width x4, and link rate HBR2 (5.4 GHz), or else
 	 * there may be audio corruption or screen corruption." This cdclk
 	 * restriction for GLK is 316.8 MHz.
 	 */
 	if (intel_crtc_has_dp_encoder(crtc_state) &&
-	    crtc_state->has_audio &&
 	    crtc_state->port_clock >= 540000 &&
 	    crtc_state->lane_count == 4) {
 		if (DISPLAY_VER(display) == 10) {
@@ -1006,7 +1008,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * According to BSpec, "The CD clock frequency must be at least twice
 	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
 	 */
-	if (crtc_state->has_audio && DISPLAY_VER(display) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		min_cdclk = max(2 * 96000, min_cdclk);
 
 	/*
@@ -1017,7 +1019,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 *  162                    | 200 or higher"
 	 */
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	    intel_crtc_has_dp_encoder(crtc_state) && crtc_state->has_audio)
+	    intel_crtc_has_dp_encoder(crtc_state))
 		min_cdclk = max(crtc_state->port_clock, min_cdclk);
 
 	return min_cdclk;
-- 
2.45.2

