Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E53EE891035
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7695810E7F1;
	Fri, 29 Mar 2024 01:13:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fVVZD8rT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E95610E826
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674807; x=1743210807;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=smRLN9VFne97s6jB3fPk/VXyII1v+4v8NY0Q/6y2gGY=;
 b=fVVZD8rTJoJcSRvkJafykIAEu984yZYEdAObHtKludRJyzXeCOMfdZeO
 YH0k70JLHBtFCewtPTieAv0l9rOApoHZ+Z4DT2dTmNbRCYdo3N3YUiHiK
 EP19gq+AXioiSegMckpQ4h3KQQKTW2Zu4NpL6tNruBGKnWhU1g3O/Y3RJ
 qHYNN9wSW+N6yl4DiWvYqapudKESGPn98I/mfyEaX2qD/KRM2tbqjK9IL
 HV0Ccm0l6wbuTanb1i2Dl7UdvyG2l/Y831P9W4UTut0cQrkiUnYdUyJdH
 UQ5JPLc/EecfEUg7RBqfYtNxikASvxUQuw8vh098frWFsoNxqlW2ZA4WG Q==;
X-CSE-ConnectionGUID: ZpLZlZP6R1m1oNEWfzSJDQ==
X-CSE-MsgGUID: VVyUiQQzSvmHr0F4HVngcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756312"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756312"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786774"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786774"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/22] drm/i915: Extract intel_dp_joiner_needs_dsc()
Date: Fri, 29 Mar 2024 03:12:42 +0200
Message-ID: <20240329011254.24160-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

Pull the "does joiner need DSC?" check into a helper. MST will
want to use this too at some point.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 26 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  6 +----
 3 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 402b3b8f6382..6fa8fc56a39c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1302,11 +1302,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	/*
-	 * Big joiner configuration needs DSC for TGL which is not true for
-	 * XE_LPD where uncompressed joiner is supported.
-	 */
-	if (DISPLAY_VER(dev_priv) < 13 && bigjoiner && !dsc)
+	if (intel_dp_joiner_needs_dsc(dev_priv, bigjoiner) && !dsc)
 		return MODE_CLOCK_HIGH;
 
 	if (mode_rate > max_rate && !dsc)
@@ -2395,6 +2391,16 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
 	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
 }
 
+bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
+{
+	/*
+	 * Pipe joiner needs compression up to display 12 due to bandwidth
+	 * limitation. DG2 onwards pipe joiner can be enabled without
+	 * compression.
+	 */
+	return DISPLAY_VER(i915) < 13 && use_joiner;
+}
+
 static int
 intel_dp_compute_link_config(struct intel_encoder *encoder,
 			     struct intel_crtc_state *pipe_config,
@@ -2409,8 +2415,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
-	bool joiner_needs_dsc = false;
-	bool dsc_needed;
+	bool dsc_needed, joiner_needs_dsc;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
@@ -2421,12 +2426,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 				    adjusted_mode->crtc_clock))
 		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
-	/*
-	 * Pipe joiner needs compression up to display 12 due to bandwidth
-	 * limitation. DG2 onwards pipe joiner can be enabled without
-	 * compression.
-	 */
-	joiner_needs_dsc = DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes;
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->bigjoiner_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 4a4b39f2748b..d5697b99ac21 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -119,6 +119,7 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 				int max_dprx_rate, int max_dprx_lanes);
+bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner);
 bool intel_dp_has_bigjoiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1405ab5e3acc..6da031f9724d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1377,11 +1377,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	/*
-	 * Big joiner configuration needs DSC for TGL which is not true for
-	 * XE_LPD where uncompressed joiner is supported.
-	 */
-	if (DISPLAY_VER(dev_priv) < 13 && bigjoiner && !dsc) {
+	if (intel_dp_joiner_needs_dsc(dev_priv, bigjoiner) && !dsc) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
-- 
2.43.2

