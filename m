Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2E2518C3B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEA5C10E4AA;
	Tue,  3 May 2022 18:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31BC210EA41
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602214; x=1683138214;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Gvw+PRJUAZMYqDPx+wSQw3ZyKY5NtX4kN5rtsHzSsAE=;
 b=HFlQBo0JAstNpcGkWby4t5bnNhOXHmmrqfLajszVlnF9i3JmPDNFSL+f
 uRXBhyr1twfA8aBI6CQgtlDncE5GFO7+rC7A3K3+vR5weYPIRLm2namY+
 h9HKzk+MluwlJDJq4TlToGdF4fh68qbZoFxCISm+mLfwdq5p5rMkcxqPb
 6Jp8ruPIgHu5ut7lck24gnzk/UsttsDInjdMh6kFRlp4JyIUUG3IHPSyx
 ujhJQ0bp46lCMd1XULSv9c9/H0ENmyLZlYQtiD6NIK9NzY7RfajBMazeM
 zWAFabH3SoxYcrHdBzdrdRF7iO5yJ7NS3+E/e69IFtnQp1Q5H6rXdLbzG w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="249532956"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="249532956"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="567754424"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 03 May 2022 11:23:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:32 +0300
Message-Id: <20220503182242.18797-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/26] drm/i915: Make all clock checks non-fuzzy
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

Now that we backfeed the actual DPLL frequency into the
compute crtc state all our clocks should come out exact.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 +++++---------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 198c6340a463..066b9e7a5696 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6118,16 +6118,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
-#define PIPE_CONF_CHECK_CLOCK_FUZZY(name) do { \
-	if (!intel_fuzzy_clock_check(current_config->name, pipe_config->name)) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected %i, found %i)", \
-				     current_config->name, \
-				     pipe_config->name); \
-		ret = false; \
-	} \
-} while (0)
-
 #define PIPE_CONF_CHECK_INFOFRAME(name) do { \
 	if (!intel_compare_infoframe(&current_config->infoframes.name, \
 				     &pipe_config->infoframes.name)) { \
@@ -6242,7 +6232,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
 
 		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
-		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
+		PIPE_CONF_CHECK_I(pixel_rate);
 
 		PIPE_CONF_CHECK_X(gamma_mode);
 		if (IS_CHERRYVIEW(dev_priv))
@@ -6312,9 +6302,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
-	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
-	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
-	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
+	PIPE_CONF_CHECK_I(port_clock);
 
 	PIPE_CONF_CHECK_I(min_voltage_level);
 
@@ -6358,7 +6348,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #undef PIPE_CONF_CHECK_BOOL_INCOMPLETE
 #undef PIPE_CONF_CHECK_P
 #undef PIPE_CONF_CHECK_FLAGS
-#undef PIPE_CONF_CHECK_CLOCK_FUZZY
 #undef PIPE_CONF_CHECK_COLOR_LUT
 #undef PIPE_CONF_CHECK_TIMINGS
 #undef PIPE_CONF_CHECK_RECT
@@ -6379,8 +6368,7 @@ static void intel_pipe_config_sanity_check(struct drm_i915_private *dev_priv,
 		 * FDI already provided one idea for the dotclock.
 		 * Yell if the encoder disagrees.
 		 */
-		drm_WARN(&dev_priv->drm,
-			 !intel_fuzzy_clock_check(fdi_dotclock, dotclock),
+		drm_WARN(&dev_priv->drm, fdi_dotclock != dotclock,
 			 "FDI dotclock and encoder dotclock mismatch, fdi: %i, encoder: %i\n",
 			 fdi_dotclock, dotclock);
 	}
-- 
2.35.1

