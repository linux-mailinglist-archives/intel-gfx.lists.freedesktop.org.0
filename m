Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB0689907E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 408B7113572;
	Thu,  4 Apr 2024 21:35:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AcoSWHAB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D31113579
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266513; x=1743802513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b67a0wH3BRtV51nWVZtu89uZXEfq948NsSIFQkqN8Gc=;
 b=AcoSWHABo94Y2FCU7N0RI1VugEabqhhKjEYXcWK4/5MEIXzAgChfNx0z
 kkFt4selmg5UrKFOtbrQ+pMp8LTzjdcaVGAlDEQ+LKw69ZH5Y04NRg0G9
 Q6SYGcuRktwAD9nF/WwW7lWed1H8FXhlcCY8e7NhyfGNNURmAu/O6FDnM
 GhHaYES9ux3j6l7B0o+qNG5mZISv90761YR6nssDZ1y573eqHnp+ctEm2
 WtGFFlpobD09ypT7o2t0Z//PTYCiRa79FhkaqGa6Kv6x+KyRuw7GRYCF/
 gJnYcr2tv/st0ttdBv4hGDvVfpfR37YGESGl8EUzLxf5m4NfB3j4BGz/5 w==;
X-CSE-ConnectionGUID: F55Hd4lLQ1alvLQ6WopfYQ==
X-CSE-MsgGUID: Z1BwQRGXQ4CwypZ4jI+N5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710821"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710821"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790621"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790621"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:35:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:35:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 08/17] drm/i915: Extract intel_dp_joiner_needs_dsc()
Date: Fri,  5 Apr 2024 00:34:32 +0300
Message-ID: <20240404213441.17637-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
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

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 26 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  6 +----
 3 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4553c0c41bc6..4f15529212a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1310,11 +1310,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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
@@ -2405,6 +2401,16 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
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
@@ -2419,8 +2425,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
-	bool joiner_needs_dsc = false;
-	bool dsc_needed;
+	bool dsc_needed, joiner_needs_dsc;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
@@ -2431,12 +2436,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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
index 8d1c3ca28159..9f6be562fa08 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -120,6 +120,7 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 				int max_dprx_rate, int max_dprx_lanes);
+bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner);
 bool intel_dp_has_bigjoiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 6497542e3e65..da731dc503aa 100644
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

