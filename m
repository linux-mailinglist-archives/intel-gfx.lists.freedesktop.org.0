Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F334BD94F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 12:04:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 268A210E346;
	Mon, 21 Feb 2022 11:04:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C55B10E61F
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 11:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645441443; x=1676977443;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fVVL9pbvEwawzMEoIgk3LfXRA6KwGboWO4yJhptoVac=;
 b=cepQaGHB4bNQgcDd/lQbFTtKu+Gp67fxDeojAgwd+IqOnOuFrrfANhS5
 WBkt5ZQVzK/BoeKlM24g9nUxEqKkPir7i9n7huqt0VQLAgnGMfYR6v7Fv
 TG/IY4HjB1pPBSlxM2/q0hC/2u2WhADu9dz2Fbc4jhEc7FaOj+572Fd9Y
 VOTkurlM/2kEnS5QwzRbNKWuYf7xUOYCfGc1YPLan0TaSR8oogvGBIUaH
 /NZz3ujTvqHi1R7M50yzakENfQoDoutlxlsvJV6pC+dcdEjynATIwQQXY
 GVmZEzWYcSnXKaTo585sB6sPo5KYZcIx3g/ekuHKAJrM4gfTXnBz7ZxwV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="337919425"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="337919425"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:04:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="507600179"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 21 Feb 2022 03:03:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 21 Feb 2022 13:03:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Feb 2022 13:03:54 +0200
Message-Id: <20220221110356.5532-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
References: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Remove framestart_delay sanitation
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

Now that we track framestart_delay in the crtc state with readout
and state checker support we can remove the explicit framestart_delay
sanitation code.

Also I'm not convinced reprogramming this while the pipe is running
is even valid. CHICKEN_TRANS (hsw+) and TRANS_CHICKEN2 (cpt+) docs
at least make no mention of double buffering which seems to imply
that live reprogramming is not supported. On older platforms
PIPECONF and PCH_TRANSCONF (ibx) are double buffered though, so
might be that we could do this on the older platforms. But doesn't
really make sense to special case old platforms for this.

So from now on if the BIOS has misprogrammed this we shall simply do
a full modeset at boot to fix it up. Such systems will of course lose
fastboot, but I think less code (and less uncertainty what
reprogramming this on a running pipe will even do) outweighs that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 56 --------------------
 1 file changed, 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7e80530b9b00..656c8319e546 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9822,59 +9822,6 @@ static bool has_pch_trancoder(struct drm_i915_private *dev_priv,
 		(HAS_PCH_LPT_H(dev_priv) && pch_transcoder == PIPE_A);
 }
 
-static void intel_sanitize_frame_start_delay(struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-
-	crtc_state->framestart_delay = 1;
-
-	if (DISPLAY_VER(dev_priv) >= 9 ||
-	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
-		i915_reg_t reg = CHICKEN_TRANS(cpu_transcoder);
-		u32 val;
-
-		if (transcoder_is_dsi(cpu_transcoder))
-			return;
-
-		val = intel_de_read(dev_priv, reg);
-		val &= ~HSW_FRAME_START_DELAY_MASK;
-		val |= HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
-		intel_de_write(dev_priv, reg, val);
-	} else {
-		i915_reg_t reg = PIPECONF(cpu_transcoder);
-		u32 val;
-
-		val = intel_de_read(dev_priv, reg);
-		val &= ~PIPECONF_FRAME_START_DELAY_MASK;
-		val |= PIPECONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
-		intel_de_write(dev_priv, reg, val);
-	}
-
-	if (!crtc_state->has_pch_encoder)
-		return;
-
-	if (HAS_PCH_IBX(dev_priv)) {
-		i915_reg_t reg = PCH_TRANSCONF(crtc->pipe);
-		u32 val;
-
-		val = intel_de_read(dev_priv, reg);
-		val &= ~TRANS_FRAME_START_DELAY_MASK;
-		val |= TRANS_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
-		intel_de_write(dev_priv, reg, val);
-	} else {
-		enum pipe pch_transcoder = intel_crtc_pch_transcoder(crtc);
-		i915_reg_t reg = TRANS_CHICKEN2(pch_transcoder);
-		u32 val;
-
-		val = intel_de_read(dev_priv, reg);
-		val &= ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
-		val |= TRANS_CHICKEN2_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
-		intel_de_write(dev_priv, reg, val);
-	}
-}
-
 static void intel_sanitize_crtc(struct intel_crtc *crtc,
 				struct drm_modeset_acquire_ctx *ctx)
 {
@@ -9885,9 +9832,6 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 	if (crtc_state->hw.active) {
 		struct intel_plane *plane;
 
-		/* Clear any frame start delays used for debugging left by the BIOS */
-		intel_sanitize_frame_start_delay(crtc_state);
-
 		/* Disable everything but the primary plane */
 		for_each_intel_plane_on_crtc(dev, crtc, plane) {
 			const struct intel_plane_state *plane_state =
-- 
2.34.1

