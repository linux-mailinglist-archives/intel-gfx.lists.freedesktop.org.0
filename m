Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EB6A4216A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 570D710E4FE;
	Mon, 24 Feb 2025 13:42:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ncONosh7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B1510E16F;
 Mon, 24 Feb 2025 08:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740385870; x=1771921870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2OELeSgx3/E5V8arWkurNukMkmkk+kgM4IESoUi7lQ4=;
 b=ncONosh7pGwis8p8u2bqi2UPsvDdJJy6PwtgCdkYeFPEWOp9JUM+c8hm
 PBnCzOmIOXil/wiixN8xC0Z+rsOg5kcw34jgTP6hIOmNYzXMgDAWyVWAz
 DIkaaySiusRBR4Pt9aaiRB4pOL3chHfGKlU8DEmsR/kdH+FgOmM7iWyRo
 KUvdqrfUvo66lkiExR/d6aJK2oAnDt9IZpgCdE1rinpC79VHfju20nSEx
 IPSuc8VIRd+SNwcL3/SpZKp7eqUPIicjh6sZITK/aaPcT7ofRACbdS/Za
 L/U829RKTsSqW6mqoeTgGiFW7/lzmJKZtjd9UMAhtZ/EYO9R9u/h9ouDr A==;
X-CSE-ConnectionGUID: chGV1OzPSka+Ino7s2qUCg==
X-CSE-MsgGUID: MNHWLgmdT3+SHzNZ87rX8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41250285"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41250285"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 00:31:10 -0800
X-CSE-ConnectionGUID: fMg/0WEhScunchcJqglHFw==
X-CSE-MsgGUID: WHF/O7xnSjGOrXIAgovk9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116630825"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 24 Feb 2025 00:31:08 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 7/8] drm/i915/lobf: Add mutex for alpm update
Date: Mon, 24 Feb 2025 13:38:46 +0530
Message-Id: <20250224080847.326350-8-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250224080847.326350-1-animesh.manna@intel.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
MIME-Version: 1.0
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

The ALPM_CTL can be updated from different context, so
add mutex to sychonize the update.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 19 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_alpm.h     |  6 ++++--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 5 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 92ec03956755..5f8c1ec5e21c 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -23,7 +23,7 @@ bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
 	return intel_dp->alpm_dpcd & DP_ALPM_AUX_LESS_CAP;
 }
 
-void intel_alpm_init_dpcd(struct intel_dp *intel_dp)
+void intel_alpm_init(struct intel_dp *intel_dp)
 {
 	u8 dpcd;
 
@@ -31,6 +31,7 @@ void intel_alpm_init_dpcd(struct intel_dp *intel_dp)
 		return;
 
 	intel_dp->alpm_dpcd = dpcd;
+	mutex_init(&intel_dp->alpm_parameters.lock);
 }
 
 /*
@@ -315,20 +316,26 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 		(first_sdp_position + waketime_in_lines);
 }
 
-void intel_alpm_lobf_update(const struct intel_crtc_state *crtc_state)
+void intel_alpm_lobf_update(const struct intel_crtc_state *crtc_state,
+			    struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u32 alpm_ctl;
 
 	if (DISPLAY_VER(display) < 20)
 		return;
 
+	mutex_lock(&intel_dp->alpm_parameters.lock);
+
 	alpm_ctl = intel_de_read(display, ALPM_CTL(display, cpu_transcoder));
 	if (alpm_ctl & ALPM_CTL_LOBF_ENABLE && !crtc_state->has_lobf) {
 		alpm_ctl &= ~ALPM_CTL_LOBF_ENABLE;
 		intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
 	}
+
+	mutex_unlock(&intel_dp->alpm_parameters.lock);
 }
 
 static void lnl_alpm_configure(struct intel_dp *intel_dp,
@@ -343,6 +350,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	    (!intel_dp->psr.sel_update_enabled && !intel_dp_is_edp(intel_dp)))
 		return;
 
+	mutex_lock(&intel_dp->alpm_parameters.lock);
+
 	/*
 	 * Panel Replay on eDP is always using ALPM aux less. I.e. no need to
 	 * check panel support at this point.
@@ -382,6 +391,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
 
 	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
+
+	mutex_unlock(&intel_dp->alpm_parameters.lock);
 }
 
 void intel_alpm_configure(struct intel_dp *intel_dp,
@@ -521,6 +532,8 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(display) < 20)
 		return;
 
+	mutex_lock(&intel_dp->alpm_parameters.lock);
+
 	if (!(intel_de_read(display, ALPM_CTL(display, cpu_transcoder)) & ALPM_CTL_ALPM_ENABLE))
 		return;
 
@@ -531,6 +544,8 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 	intel_de_rmw(display,
 		     PORT_ALPM_CTL(cpu_transcoder),
 		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+
+	mutex_unlock(&intel_dp->alpm_parameters.lock);
 }
 
 bool intel_alpm_get_error(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 22469fd4cba5..f7834343a9bd 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -14,8 +14,9 @@ struct drm_connector_state;
 struct intel_connector;
 struct intel_atomic_state;
 struct intel_crtc;
+struct intel_encoder;
 
-void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
+void intel_alpm_init(struct intel_dp *intel_dp);
 bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state);
 void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
@@ -23,7 +24,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct drm_connector_state *conn_state);
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
-void intel_alpm_lobf_update(const struct intel_crtc_state *crtc_state);
+void intel_alpm_lobf_update(const struct intel_crtc_state *crtc_state,
+			    struct intel_encoder *encoder);
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 44258ba0d951..1e66e40bed24 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3622,7 +3622,7 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 	intel_ddi_set_dp_msa(crtc_state, conn_state);
 
 	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
-	intel_alpm_lobf_update(crtc_state);
+	intel_alpm_lobf_update(crtc_state, encoder);
 
 	intel_backlight_update(state, encoder, crtc_state, conn_state);
 	drm_connector_update_privacy_screen(conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b6ec9a8fadd9..65875404e20d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1802,6 +1802,7 @@ struct intel_dp {
 		u8 io_wake_lines;
 		u8 fast_wake_lines;
 		enum transcoder transcoder;
+		struct mutex lock;
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 24ad7680cdf2..2da1dd0cc6f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6364,7 +6364,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	 */
 	intel_hpd_enable_detection(encoder);
 
-	intel_alpm_init_dpcd(intel_dp);
+	intel_alpm_init(intel_dp);
 
 	/* Cache DPCD and EDID for edp. */
 	has_dpcd = intel_edp_init_dpcd(intel_dp, connector);
-- 
2.29.0

