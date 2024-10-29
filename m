Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0639A9B54BB
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:12:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F1D10E71A;
	Tue, 29 Oct 2024 21:12:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wirp5AlG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 715CB10E714
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730236342; x=1761772342;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=u8ZO5Oo+IwKMR2XRnFKERgrSyC0DZy3saNjNbisWvYQ=;
 b=Wirp5AlGkX0RrFdMGCMUHegj1h6tdn4ICn084by4fh4vsfbjyzyyzaCr
 n0VQrI56eSX3dwyWRSc0m9jekBtHwZGu1gtC9T7YxJWT4UD9Yfcc0+6ko
 Jp0mpMomQfsrTRGg5GTExftoR6GZAo5+90cEcrSbI290sgMpbyxC/DBHB
 wjTj8fXQnsz/rg817KxNw/osPqCetTO3wcDCLq/djfJacoQKBRcC8J/Rj
 wdlIYOIFPD2LAhA6Z1tV07rGBuufg/ibz5x/x8Xazhe4V0FFCGQ2TnFIs
 9dwq3ABOU3HUnrjAx05YHwtqcIfRYpQ7K8pB+sR3UVM/7Itc3uSR+OZNw Q==;
X-CSE-ConnectionGUID: n+RSgtYvQBm6CUsgnL8oZg==
X-CSE-MsgGUID: H+E7qRBjSaOev7xmXHcUUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30019544"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="30019544"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:12:22 -0700
X-CSE-ConnectionGUID: OYSyc+GrSHOXZhJTLlfnHA==
X-CSE-MsgGUID: GwSQBOqxSwSRk9c7PU5J+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82191749"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:10:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:10:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915/scaler: Move pfit scaler into pfit state
Date: Tue, 29 Oct 2024 23:10:28 +0200
Message-ID: <20241029211030.13255-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
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

The plane scaler is stored in the plane state, but the crtc scaler
is stored in the scaler_state. That is a bit incosistent as the
plane state is the state of the consumer, but scaler_state is more
the state of the producer. Move the crtc scaler into the pfit state
which is more analogous to the plane state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h   |  7 ++++---
 drivers/gpu/drm/i915/display/intel_psr.c             |  2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c            | 10 +++++-----
 7 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a2c528d707f4..21e5fad90a13 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -181,7 +181,7 @@ void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
 	crtc_state->cpu_transcoder = INVALID_TRANSCODER;
 	crtc_state->master_transcoder = INVALID_TRANSCODER;
 	crtc_state->hsw_workaround_pipe = INVALID_PIPE;
-	crtc_state->scaler_state.scaler_id = -1;
+	crtc_state->pch_pfit.scaler_id = -1;
 	crtc_state->mst_master_transcoder = INVALID_TRANSCODER;
 	crtc_state->max_link_bpp_x16 = INT_MAX;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 705ec5ad385c..c83c49d86ef5 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -320,10 +320,10 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->linetime, pipe_config->ips_linetime);
 
 	if (DISPLAY_VER(i915) >= 9)
-		drm_printf(&p, "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d, scaling_filter: %d\n",
+		drm_printf(&p, "num_scalers: %d, scaler_users: 0x%x, pfit scaler_id: %d, scaling_filter: %d\n",
 			   crtc->num_scalers,
 			   pipe_config->scaler_state.scaler_users,
-			   pipe_config->scaler_state.scaler_id,
+			   pipe_config->pch_pfit.scaler_id,
 			   pipe_config->hw.scaling_filter);
 
 	if (HAS_GMCH(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dce3a20fa69f..a90d3a63dee9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5628,8 +5628,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 		PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
 		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
+		PIPE_CONF_CHECK_I(pch_pfit.scaler_id);
 
-		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
 		PIPE_CONF_CHECK_I(pixel_rate);
 
 		PIPE_CONF_CHECK_X(gamma_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 11aff485d8fa..febf3e5fb5cc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -449,7 +449,7 @@ static void intel_scaler_info(struct seq_file *m, struct intel_crtc *crtc)
 		seq_printf(m, "\tnum_scalers=%d, scaler_users=%x scaler_id=%d scaling_filter=%d",
 			   num_scalers,
 			   crtc_state->scaler_state.scaler_users,
-			   crtc_state->scaler_state.scaler_id,
+			   crtc_state->pch_pfit.scaler_id,
 			   crtc_state->hw.scaling_filter);
 
 		for (i = 0; i < num_scalers; i++) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e63a1d23316c..8269331f33b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -724,9 +724,6 @@ struct intel_crtc_scaler_state {
 	 */
 #define SKL_CRTC_INDEX 31
 	unsigned scaler_users;
-
-	/* scaler used by crtc for panel fitting purpose */
-	int scaler_id;
 };
 
 /* {crtc,crtc_state}->mode_flags */
@@ -1126,6 +1123,10 @@ struct intel_crtc_state {
 	/* Panel fitter placement and size for Ironlake+ */
 	struct {
 		struct drm_rect dst;
+
+		/* pipe scaler (skl+) */
+		int scaler_id;
+
 		bool enabled;
 		bool force_thru;
 	} pch_pfit;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 880ea845207f..e8c2c4e7e585 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2519,7 +2519,7 @@ static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state
  */
 static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->scaler_state.scaler_id >= 0)
+	if (crtc_state->pch_pfit.scaler_id >= 0)
 		return false;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index e29e29c4cbc3..e5f566e323a0 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -249,7 +249,7 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 	}
 	return skl_update_scaler(crtc_state, !crtc_state->hw.active,
 				 SKL_CRTC_INDEX,
-				 &crtc_state->scaler_state.scaler_id,
+				 &crtc_state->pch_pfit.scaler_id,
 				 drm_rect_width(&crtc_state->pipe_src),
 				 drm_rect_height(&crtc_state->pipe_src),
 				 width, height, NULL, 0,
@@ -436,7 +436,7 @@ static int setup_crtc_scaler(struct intel_atomic_state *state,
 	return intel_atomic_setup_scaler(scaler_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "CRTC", crtc->base.base.id,
-					 NULL, &scaler_state->scaler_id);
+					 NULL, &crtc_state->pch_pfit.scaler_id);
 }
 
 static int setup_plane_scaler(struct intel_atomic_state *state,
@@ -669,7 +669,7 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 		return;
 
 	if (drm_WARN_ON(display->drm,
-			crtc_state->scaler_state.scaler_id < 0))
+			crtc_state->pch_pfit.scaler_id < 0))
 		return;
 
 	drm_rect_init(&src, 0, 0,
@@ -682,7 +682,7 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	uv_rgb_hphase = skl_scaler_calc_phase(1, hscale, false);
 	uv_rgb_vphase = skl_scaler_calc_phase(1, vscale, false);
 
-	id = scaler_state->scaler_id;
+	id = crtc_state->pch_pfit.scaler_id;
 
 	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
 		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, 0);
@@ -832,7 +832,7 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 		break;
 	}
 
-	scaler_state->scaler_id = id;
+	crtc_state->pch_pfit.scaler_id = id;
 	if (id >= 0)
 		scaler_state->scaler_users |= (1 << SKL_CRTC_INDEX);
 	else
-- 
2.45.2

