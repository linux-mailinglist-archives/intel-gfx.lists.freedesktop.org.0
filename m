Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AB25B4126
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 22:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA94B10EE6F;
	Fri,  9 Sep 2022 20:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A8910EE6F
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 20:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662757176; x=1694293176;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qO2a1REiq2DLQMC+ydLUenZAFGPWLXCAH+otHng2UC0=;
 b=gdoI/5FpilKBUTpbHcg+S8Cyxwl6dJJtC7MWDFDrwjo8HsvPcVdJRGqH
 WZeRrrHbpHNc8PqgWvJad5nG63eRgquyR82HOpW0gMgIoqec99Mip7TM4
 g9nM9RMx9sydc4sdgHAx7LorsnYS617z4OgxMmJI67IPCvTelQn8VdTSR
 /UiHyfFxQi5YNRCdbfdkzzRIlsqzfBetMiXivikcMQND1OVkvWKrZagUQ
 ep8QXd2rzHjM9NL5MkLI2FPCtx/Y15VXe71OZJwbIvr318ZfyU/HOqBXi
 0aTTr78I0jiRLmuC+iJtcWR2gWlwY/0rJbQS0/Q0/+Xyqw3e79zR2b/iZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="298369544"
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="298369544"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 13:59:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="677314652"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 09 Sep 2022 13:59:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Sep 2022 23:59:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 23:59:32 +0300
Message-Id: <20220909205932.32537-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix TV encoder clock computation
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

The TV encoder has its own special clocking strategy,
which means we can't just use intel_crtc_dotclock() to
figure out what the resulting dotclock will be given
the actual DPLL port_clock. Additionally the DPLL can't
always generate exactly the frequency we initially asked
for. This results in us computing a bogus dotclock/etc.,
and it won't match the readout which is handled by the
encoder itself properly. Naturally the state checker
becomes unhappy with the mismatch.

To do this sanely we'll need to move the DPLL computation
into encoder->compute_config() so that all the derived
state gets correctly computed based on the actual DPLL
output frequency. Start doing that just for the TV encoder
initally as intel_crtc_dotclock() should be able to handle
other encoder types well enough. Though eventually this
should be done for all encoder types rather than
doing it from intel_crtc_compute_config().

With this we actually do some of the DPLL state computation
twice, but we can skip the second actual .find_dpll() search
by flagging .clock_set=true after we've done it once. We also
still need to avoid clobbering the correct
adjusted_mode.crtc_clock set up by encoder->compute_config()
when called a second time from intel_crtc_compute_config().

Fixes: 665a7b04092c ("drm/i915: Feed the DPLL output freq back into crtc_state")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c |  8 ++++++--
 drivers/gpu/drm/i915/display/intel_tv.c   | 23 +++++++++++++++++------
 2 files changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 52f2fe1735da..b15ba78d64d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1302,7 +1302,9 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 			  &crtc_state->dpll);
 
 	crtc_state->port_clock = crtc_state->dpll.dot;
-	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+	/* FIXME this is a mess */
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_TVOUT))
+		crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
 
 	return 0;
 }
@@ -1374,7 +1376,9 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 			  &crtc_state->dpll);
 
 	crtc_state->port_clock = crtc_state->dpll.dot;
-	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+	/* FIXME this is a mess */
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_TVOUT))
+		crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 9379f3463344..dcf89d701f0f 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -39,6 +39,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dpll.h"
 #include "intel_hotplug.h"
 #include "intel_tv.h"
 
@@ -982,10 +983,10 @@ intel_tv_mode_vdisplay(const struct tv_mode *tv_mode)
 
 static void
 intel_tv_mode_to_mode(struct drm_display_mode *mode,
-		      const struct tv_mode *tv_mode)
+		      const struct tv_mode *tv_mode,
+		      int clock)
 {
-	mode->clock = tv_mode->clock /
-		(tv_mode->oversample >> !tv_mode->progressive);
+	mode->clock = clock / (tv_mode->oversample >> !tv_mode->progressive);
 
 	/*
 	 * tv_mode horizontal timings:
@@ -1143,7 +1144,7 @@ intel_tv_get_config(struct intel_encoder *encoder,
 	xsize = tmp >> 16;
 	ysize = tmp & 0xffff;
 
-	intel_tv_mode_to_mode(&mode, &tv_mode);
+	intel_tv_mode_to_mode(&mode, &tv_mode, pipe_config->port_clock);
 
 	drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(&mode));
@@ -1184,6 +1185,9 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
 			struct drm_connector_state *conn_state)
 {
+	struct intel_atomic_state *state =
+		to_intel_atomic_state(pipe_config->uapi.state);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_tv_connector_state *tv_conn_state =
 		to_intel_tv_connector_state(conn_state);
@@ -1192,6 +1196,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	int hdisplay = adjusted_mode->crtc_hdisplay;
 	int vdisplay = adjusted_mode->crtc_vdisplay;
+	int ret;
 
 	if (!tv_mode)
 		return -EINVAL;
@@ -1206,7 +1211,13 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->port_clock = tv_mode->clock;
 
-	intel_tv_mode_to_mode(adjusted_mode, tv_mode);
+	ret = intel_dpll_crtc_compute_clock(state, crtc);
+	if (ret)
+		return ret;
+
+	pipe_config->clock_set = true;
+
+	intel_tv_mode_to_mode(adjusted_mode, tv_mode, pipe_config->port_clock);
 	drm_mode_set_crtcinfo(adjusted_mode, 0);
 
 	if (intel_tv_source_too_wide(dev_priv, hdisplay) ||
@@ -1804,7 +1815,7 @@ intel_tv_get_modes(struct drm_connector *connector)
 		 * about the actual timings of the mode. We
 		 * do ignore the margins though.
 		 */
-		intel_tv_mode_to_mode(mode, tv_mode);
+		intel_tv_mode_to_mode(mode, tv_mode, tv_mode->clock);
 		if (count == 0) {
 			drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
 				    DRM_MODE_ARG(mode));
-- 
2.35.1

