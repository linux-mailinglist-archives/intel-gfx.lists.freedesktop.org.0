Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /C99EpxE1Wnv3wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 19:53:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A12E93B2A24
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 19:53:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F2810E494;
	Tue,  7 Apr 2026 17:53:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HQUDUaTL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1973410E499;
 Tue,  7 Apr 2026 17:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775584409; x=1807120409;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2TYcKYMacvXc1pcqTwx82VNHTLrVqFL91R7I3D3YQ+8=;
 b=HQUDUaTL9TmbrSHOb12LuLefXzGtac1LcBmQU+KKPIQaT+RM4vjSxDjK
 Y1vpGPQJVhVN0n65uVluXlDbC1roWNNXI/gHRdwQBts5Kum2CboLgXu+V
 BO+GGUw0qDNPGEPtPpnVnk9JA/g4Y6vT5BH+wfQr54UHRZjJo8N7uxHOu
 /nYIebcfk6IzE2lnVM81KS42dDtieSbaLfhraB2ABqY1JIwf/p9uGkPsk
 R/5kdzI5cgqYsxx8r+n3CfSoApxf6EYcDHmCk9fwU49OyLRCnbTqGei5E
 MPh2TprJpLW1hiyOcrQu3ruVlo8Ut3yqOD50rIG0rEjo/YVroQyAhh8ZX w==;
X-CSE-ConnectionGUID: BIyL8DwlS92J1q7FJYy7ig==
X-CSE-MsgGUID: m82+zlRIQ+W744ssYQ+rMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76449583"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="76449583"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 10:53:29 -0700
X-CSE-ConnectionGUID: RqJxSFFsQWi7qHhv8id16g==
X-CSE-MsgGUID: xWSWDslvQ8Kl9tomU35OeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="223936165"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 10:53:27 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v2 9/9] drm/i915/casf: Integrate the sharpness filter properly
 into the scaler code
Date: Tue,  7 Apr 2026 20:52:43 +0300
Message-ID: <20260407175244.19654-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260407175244.19654-1-ville.syrjala@linux.intel.com>
References: <20260407175244.19654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: A12E93B2A24
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The sharpness filter is just a special mode of the pipe scaler.
It doesn't warrant all this special casing everywhere. Just
integrate it properly into the scaler code so that it's treated
no different from the other pipe scaler uses (scaling,centering,
YCbCr 4:2:0 output).

v2: Also reject scaling_filter vs. sharpness

Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c    | 62 ++------------
 drivers/gpu/drm/i915/display/intel_casf.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_display.c | 34 +-------
 drivers/gpu/drm/i915/display/intel_pfit.c    | 13 ++-
 drivers/gpu/drm/i915/display/skl_scaler.c    | 85 ++++++++------------
 drivers/gpu/drm/i915/display/skl_scaler.h    |  2 -
 6 files changed, 53 insertions(+), 149 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 21e84a4f9ff5..c2d2746c5f04 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -75,20 +75,6 @@ static void intel_casf_filter_lut_load(const struct intel_crtc_state *crtc_state
 			       sharpness_lut[i]);
 }
 
-void intel_casf_update_strength(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int win_size;
-
-	intel_de_rmw(display, SHARPNESS_CTL(crtc->pipe), FILTER_STRENGTH_MASK,
-		     FILTER_STRENGTH(crtc_state->pch_pfit.casf.strength));
-
-	win_size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, 1));
-
-	intel_de_write_fw(display, SKL_PS_WIN_SZ(crtc->pipe, 1), win_size);
-}
-
 static void intel_casf_compute_win_size(struct intel_crtc_state *crtc_state)
 {
 	const struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
@@ -102,19 +88,15 @@ static void intel_casf_compute_win_size(struct intel_crtc_state *crtc_state)
 		crtc_state->pch_pfit.casf.win_size = SHARPNESS_FILTER_SIZE_7X7;
 }
 
+static void intel_casf_scaler_compute_coef(struct intel_crtc_state *crtc_state);
+
 int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (!HAS_CASF(display))
+	if (crtc_state->hw.sharpness_strength == 0)
 		return 0;
 
-	if (crtc_state->hw.sharpness_strength == 0) {
-		crtc_state->pch_pfit.casf.enable = false;
-		crtc_state->pch_pfit.casf.strength = 0;
-		return 0;
-	}
-
 	/* CASF with joiner not supported in hardware */
 	if (crtc_state->joiner_pipes) {
 		drm_dbg_kms(display->drm, "CASF not supported with joiner\n");
@@ -136,7 +118,7 @@ int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
 
 	intel_casf_compute_win_size(crtc_state);
 
-	intel_casf_scaler_compute_config(crtc_state);
+	intel_casf_scaler_compute_coef(crtc_state);
 
 	return 0;
 }
@@ -161,14 +143,6 @@ void intel_casf_sharpness_get_config(struct intel_crtc_state *crtc_state)
 	}
 }
 
-bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state)
-{
-	if (crtc_state->pch_pfit.casf.enable)
-		return true;
-
-	return false;
-}
-
 static int casf_coeff_tap(int i)
 {
 	return i % SCALER_FILTER_NUM_TAPS;
@@ -240,7 +214,7 @@ static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
 	}
 }
 
-void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
+static void intel_casf_scaler_compute_coef(struct intel_crtc_state *crtc_state)
 {
 	const u16 *filtercoeff;
 	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
@@ -264,32 +238,8 @@ void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
 	}
 }
 
-void intel_casf_enable(const struct intel_crtc_state *crtc_state)
+void intel_casf_setup(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 sharpness_ctl;
-
 	intel_casf_filter_lut_load(crtc_state);
-
 	intel_casf_write_coeff(crtc_state);
-
-	sharpness_ctl = FILTER_EN | FILTER_STRENGTH(crtc_state->pch_pfit.casf.strength);
-
-	sharpness_ctl |= crtc_state->pch_pfit.casf.win_size;
-
-	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), sharpness_ctl);
-
-	skl_scaler_setup_casf(crtc_state);
-}
-
-void intel_casf_disable(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
-	intel_de_write(display, SKL_PS_CTRL(crtc->pipe, 1), 0);
-	intel_de_write(display, SKL_PS_WIN_POS(crtc->pipe, 1), 0);
-	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), 0);
-	intel_de_write(display, SKL_PS_WIN_SZ(crtc->pipe, 1), 0);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
index c4f984b73348..3ebb7522af0a 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.h
+++ b/drivers/gpu/drm/i915/display/intel_casf.h
@@ -11,11 +11,7 @@
 struct intel_crtc_state;
 
 int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
-void intel_casf_update_strength(const struct intel_crtc_state *new_crtc_state);
 void intel_casf_sharpness_get_config(struct intel_crtc_state *crtc_state);
-void intel_casf_enable(const struct intel_crtc_state *crtc_state);
-void intel_casf_disable(const struct intel_crtc_state *crtc_state);
-void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
-bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state);
+void intel_casf_setup(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CASF_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e02e69467871..58a654ca0d20 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -58,7 +58,6 @@
 #include "intel_audio.h"
 #include "intel_bo.h"
 #include "intel_bw.h"
-#include "intel_casf.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
 #include "intel_color.h"
@@ -988,24 +987,6 @@ static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
 		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) != 0);
 }
 
-static bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
-				const struct intel_crtc_state *old_crtc_state)
-{
-	if (!new_crtc_state->hw.active)
-		return false;
-
-	return is_enabling(pch_pfit.casf.enable, old_crtc_state, new_crtc_state);
-}
-
-static bool intel_casf_disabling(const struct intel_crtc_state *old_crtc_state,
-				 const struct intel_crtc_state *new_crtc_state)
-{
-	if (!new_crtc_state->hw.active)
-		return false;
-
-	return is_disabling(pch_pfit.casf.enable, old_crtc_state, new_crtc_state);
-}
-
 static bool intel_crtc_lobf_enabling(const struct intel_crtc_state *old_crtc_state,
 				     const struct intel_crtc_state *new_crtc_state)
 {
@@ -1187,9 +1168,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	if (audio_disabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_disable(state, crtc);
 
-	if (intel_casf_disabling(old_crtc_state, new_crtc_state))
-		intel_casf_disable(new_crtc_state);
-
 	intel_drrs_deactivate(old_crtc_state);
 
 	if (hsw_ips_pre_update(state, crtc))
@@ -4308,14 +4286,9 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		return ret;
 	}
 
-	ret = intel_casf_compute_config(crtc_state);
-	if (ret)
-		return ret;
-
 	if (DISPLAY_VER(display) >= 9) {
 		if (intel_crtc_needs_modeset(crtc_state) ||
-		    intel_crtc_needs_fastset(crtc_state) ||
-		    intel_casf_needs_scaler(crtc_state)) {
+		    intel_crtc_needs_fastset(crtc_state)) {
 			ret = skl_update_scaler_crtc(crtc_state);
 			if (ret)
 				return ret;
@@ -6817,11 +6790,6 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
-	if (intel_casf_enabling(new_crtc_state, old_crtc_state))
-		intel_casf_enable(new_crtc_state);
-	else if (new_crtc_state->pch_pfit.casf.strength != old_crtc_state->pch_pfit.casf.strength)
-		intel_casf_update_strength(new_crtc_state);
-
 	intel_fbc_update(state, crtc);
 
 	drm_WARN_ON(display->drm, !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF));
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 2dec4ccf74ce..5b170c74a510 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -196,7 +196,8 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	/* Native modes don't need fitting */
 	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
 	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
-	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
+	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420 &&
+	    crtc_state->hw.sharpness_strength == 0)
 		return 0;
 
 	switch (conn_state->scaling_mode) {
@@ -260,6 +261,16 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
+	if (crtc_state->hw.sharpness_strength &&
+	    (width != pipe_src_w || height != pipe_src_h ||
+	     crtc_state->hw.scaling_filter != DRM_SCALING_FILTER_DEFAULT ||
+	     crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] no scaling/YCbCr output with sharpness filter\n",
+			    crtc->base.base.id, crtc->base.name);
+		return -EINVAL;
+	}
+
 	drm_rect_init(&crtc_state->pch_pfit.dst,
 		      x, y, width, height);
 	crtc_state->pch_pfit.enabled = true;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 762f4bb46c2d..308b8d363bba 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -270,6 +270,11 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 {
 	const struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
 	int width, height;
+	int ret;
+
+	ret = intel_casf_compute_config(crtc_state);
+	if (ret)
+		return ret;
 
 	if (crtc_state->pch_pfit.enabled) {
 		width = drm_rect_width(&crtc_state->pch_pfit.dst);
@@ -284,8 +289,7 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 				 drm_rect_width(&crtc_state->pipe_src),
 				 drm_rect_height(&crtc_state->pipe_src),
 				 width, height, NULL, 0,
-				 crtc_state->pch_pfit.enabled ||
-				 intel_casf_needs_scaler(crtc_state));
+				 crtc_state->pch_pfit.enabled);
 }
 
 /**
@@ -534,14 +538,11 @@ static int setup_crtc_scaler(struct intel_atomic_state *state,
 	struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 
-	if (intel_casf_needs_scaler(crtc_state) && crtc_state->pch_pfit.enabled)
-		return -EINVAL;
-
 	return intel_atomic_setup_scaler(crtc_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "CRTC", crtc->base.base.id,
 					 NULL, &scaler_state->scaler_id,
-					 intel_casf_needs_scaler(crtc_state));
+					 crtc_state->pch_pfit.casf.enable);
 }
 
 static int setup_plane_scaler(struct intel_atomic_state *state,
@@ -757,43 +758,14 @@ static void skl_scaler_setup_filter(struct intel_display *display,
 	}
 }
 
-void skl_scaler_setup_casf(const struct intel_crtc_state *crtc_state)
+static u32 casf_sharpness_ctl(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_display *display = to_intel_display(crtc);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-	const struct intel_crtc_scaler_state *scaler_state =
-		&crtc_state->scaler_state;
-	struct drm_rect src, dest;
-	int id, width, height;
-	int x = 0, y = 0;
-	enum pipe pipe = crtc->pipe;
-	u32 ps_ctrl;
+	if (!crtc_state->pch_pfit.casf.enable)
+		return 0;
 
-	width = adjusted_mode->crtc_hdisplay;
-	height = adjusted_mode->crtc_vdisplay;
-
-	drm_rect_init(&dest, x, y, width, height);
-
-	width = drm_rect_width(&dest);
-	height = drm_rect_height(&dest);
-	id = scaler_state->scaler_id;
-
-	drm_rect_init(&src, 0, 0,
-		      drm_rect_width(&crtc_state->pipe_src) << 16,
-		      drm_rect_height(&crtc_state->pipe_src) << 16);
-
-	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
-
-	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
-		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, true);
-
-	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
-	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
-			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
-	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
-			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
+	return FILTER_EN |
+		FILTER_STRENGTH(crtc_state->pch_pfit.casf.strength) |
+		crtc_state->pch_pfit.casf.win_size;
 }
 
 void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
@@ -837,12 +809,20 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	id = scaler_state->scaler_id;
 
 	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
-		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, false);
+		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter,
+					     crtc_state->pch_pfit.casf.enable);
 
 	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
 
-	skl_scaler_setup_filter(display, NULL, pipe, id, 0,
-				crtc_state->hw.scaling_filter);
+	if (crtc_state->pch_pfit.casf.enable)
+		intel_casf_setup(crtc_state);
+	else
+		skl_scaler_setup_filter(display, NULL, pipe, id, 0,
+					crtc_state->hw.scaling_filter);
+
+	if (scaler_has_casf(display, id))
+		intel_de_write_fw(display, SHARPNESS_CTL(crtc->pipe),
+				  casf_sharpness_ctl(crtc_state));
 
 	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
 
@@ -930,6 +910,9 @@ static void skl_detach_scaler(struct intel_dsb *dsb,
 
 	trace_intel_scaler_disable_arm(crtc, id);
 
+	if (scaler_has_casf(display, id))
+		intel_de_write_dsb(display, dsb, SHARPNESS_CTL(crtc->pipe), 0);
+
 	intel_de_write_dsb(display, dsb, SKL_PS_CTRL(crtc->pipe, id), 0);
 	intel_de_write_dsb(display, dsb, SKL_PS_WIN_POS(crtc->pipe, id), 0);
 	intel_de_write_dsb(display, dsb, SKL_PS_WIN_SZ(crtc->pipe, id), 0);
@@ -983,18 +966,16 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 		if (scaler_has_casf(display, i))
 			intel_casf_sharpness_get_config(crtc_state);
 
-		if (!crtc_state->pch_pfit.casf.enable)
-			crtc_state->pch_pfit.enabled = true;
+		crtc_state->pch_pfit.enabled = true;
 
 		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, i));
 		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, i));
 
-		if (!crtc_state->pch_pfit.casf.enable)
-			drm_rect_init(&crtc_state->pch_pfit.dst,
-				      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
-				      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
-				      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
-				      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
+		drm_rect_init(&crtc_state->pch_pfit.dst,
+			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
+			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
+			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
+			      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
 
 		scaler_state->scalers[i].in_use = true;
 		break;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 20ecf373eb19..5deabca909e6 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -36,8 +36,6 @@ void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
 
 void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
 
-void skl_scaler_setup_casf(const struct intel_crtc_state *crtc_state);
-
 enum drm_mode_status
 skl_scaler_mode_valid(struct intel_display *display,
 		      const struct drm_display_mode *mode,
-- 
2.52.0

