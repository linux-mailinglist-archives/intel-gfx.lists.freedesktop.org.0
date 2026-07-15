Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VCXwBYp4V2oiOwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 14:09:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8090D75DF03
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 14:09:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Cn1Cko56;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7DF10F018;
	Wed, 15 Jul 2026 12:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE90B10F01A;
 Wed, 15 Jul 2026 12:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784117382; x=1815653382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tmy03vmuJwsoLw8JSemay/97I1Xw9grC8d3+ySGpdeE=;
 b=Cn1Cko56Y1o7bttnbMAEF6ulF8l/zGhxd9SQZxEwEyFwe6eYu7hP3Kaj
 94lHxd49jyMsPaTK7ciXRcqqpdgmD29kVQYURiZmnElSkbxlrfjRbKdNR
 vDms8/D+wJT5WjPSPq39D+Zsv71gnZBjIFysY9IoHBmV8RUznq/gBosFD
 sfmO4OU9w1cUJk6CHtkVAvDGXWHcxsq25tul5Jm8Lny+JJggBEXI3eimv
 ieXar+xl+3zh+51joEZnP7vHewwYfd/DPK5ogE3zbnkU075PGDZjzUnWk
 v8bY20/B66sD3a3UtIVd3PkQqnMJj0fUMTbxAwbEpmg6vmKZ1sljx1iAP g==;
X-CSE-ConnectionGUID: ntU54DBYQ6ChfoS2IWcDSQ==
X-CSE-MsgGUID: gQ0W8uOKRty59Kl8+J0baw==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="84778047"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="84778047"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 05:09:42 -0700
X-CSE-ConnectionGUID: RCZ1q/HUQD+eurd0orcdCA==
X-CSE-MsgGUID: nYPImAEXQXOQvO+bJwzwvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="260461855"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.168])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 05:09:41 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/cdclk: Introduce crtc_state->pixel_rate_cdclk
Date: Wed, 15 Jul 2026 15:09:25 +0300
Message-ID: <20260715120926.10786-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260715120926.10786-1-ville.syrjala@linux.intel.com>
References: <20260715120926.10786-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,linux.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8090D75DF03

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We'll need to do additional adjustments to the pipe pixel rate
for the purposes of min CDCLK calculations. Add a new
crtc_state->pixel_rate_cdclk for that purpose. We'll leave the
original crtc_state->pixel_rate for data rate related calculations
since we presumably don't need those extra adjustments there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c         |  2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c      |  4 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c   |  8 ++++++--
 .../gpu/drm/i915/display/intel_display_types.h |  7 +++++++
 drivers/gpu/drm/i915/display/intel_fbc.c       |  2 +-
 .../gpu/drm/i915/display/intel_modeset_setup.c |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c    | 18 +++++++++---------
 8 files changed, 28 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index cbaef3f13f00..f828ec962164 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -207,7 +207,7 @@ static int _hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (display->platform.broadwell)
-		return DIV_ROUND_UP(crtc_state->pixel_rate * 100, 95);
+		return DIV_ROUND_UP(crtc_state->pixel_rate_cdclk * 100, 95);
 
 	/* no IPS specific limits to worry about */
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 70734d32a409..b3dbcd53999a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -418,13 +418,13 @@ static int i9xx_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 	unsigned int num, den;
 
 	/*
-	 * Note that crtc_state->pixel_rate accounts for both
+	 * Note that crtc_state->pixel_rate_cdclk accounts for both
 	 * horizontal and vertical panel fitter downscaling factors.
 	 * Pre-HSW bspec tells us to only consider the horizontal
 	 * downscaling factor here. We ignore that and just consider
 	 * both for simplicity.
 	 */
-	pixel_rate = crtc_state->pixel_rate;
+	pixel_rate = crtc_state->pixel_rate_cdclk;
 
 	i9xx_plane_ratio(crtc_state, plane_state, &num, &den);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 12bb6c414683..a53d88727177 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2936,7 +2936,7 @@ static int _intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state,
 
 static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
 {
-	return _intel_pixel_rate_to_cdclk(crtc_state, crtc_state->pixel_rate);
+	return _intel_pixel_rate_to_cdclk(crtc_state, crtc_state->pixel_rate_cdclk);
 }
 
 static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 38763a6802c5..df43be51b3ba 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2259,13 +2259,16 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (HAS_GMCH(display))
+	if (HAS_GMCH(display)) {
 		/* FIXME calculate proper pipe pixel rate for GMCH pfit */
 		crtc_state->pixel_rate =
 			crtc_state->hw.pipe_mode.crtc_clock;
-	else
+		crtc_state->pixel_rate_cdclk = crtc_state->pixel_rate;
+	} else {
 		crtc_state->pixel_rate =
 			ilk_pipe_pixel_rate(crtc_state);
+		crtc_state->pixel_rate_cdclk = crtc_state->pixel_rate;
+	}
 }
 
 static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
@@ -5382,6 +5385,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(pch_pfit.casf.strength);
 
 		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
+		PIPE_CONF_CHECK_I(pixel_rate_cdclk);
 		PIPE_CONF_CHECK_I(pixel_rate);
 
 		PIPE_CONF_CHECK_X(gamma_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8bd213db5e7a..17336ad6d5e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1083,6 +1083,13 @@ struct intel_crtc_state {
 	 */
 	unsigned int pixel_rate;
 
+	/*
+	 * Pipe pixel rate for CDCLK, adjusted for
+	 * panel fitter/pipe scaler downscaling.
+	 * CDCLK use cases need further adjustment.
+	 */
+	unsigned int pixel_rate_cdclk;
+
 	/* Whether to set up the PCH/FDI. Note that we never allow sharing
 	 * between pch encoders and cpu encoders. */
 	bool has_pch_encoder;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a7d02dd6ca96..cd889f7429bb 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1567,7 +1567,7 @@ static int _intel_fbc_min_cdclk(const struct intel_crtc_state *crtc_state)
 
 	/* WaFbcExceedCdClockThreshold:hsw,bdw */
 	if (display->platform.haswell || display->platform.broadwell)
-		return DIV_ROUND_UP(crtc_state->pixel_rate * 100, 95);
+		return DIV_ROUND_UP(crtc_state->pixel_rate_cdclk * 100, 95);
 
 	/* no FBC specific limits to worry about */
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 14d829171c7d..6aed88173770 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -856,7 +856,7 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 			 */
 			if (plane_state->uapi.visible && plane->min_cdclk)
 				crtc_state->plane_min_cdclk[plane->id] =
-					DIV_ROUND_UP(crtc_state->pixel_rate,
+					DIV_ROUND_UP(crtc_state->pixel_rate_cdclk,
 						     intel_cdclk_ppc(display, crtc_state->double_wide));
 			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] min_cdclk %d kHz\n",
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 6a65f92e8a03..9fe9d2644958 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -241,13 +241,13 @@ int vlv_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 	unsigned int num, den;
 
 	/*
-	 * Note that crtc_state->pixel_rate accounts for both
+	 * Note that crtc_state->pixel_rate_cdclk accounts for both
 	 * horizontal and vertical panel fitter downscaling factors.
 	 * Pre-HSW bspec tells us to only consider the horizontal
 	 * downscaling factor here. We ignore that and just consider
 	 * both for simplicity.
 	 */
-	pixel_rate = crtc_state->pixel_rate;
+	pixel_rate = crtc_state->pixel_rate_cdclk;
 
 	vlv_plane_ratio(crtc_state, plane_state, &num, &den);
 
@@ -550,13 +550,13 @@ int ivb_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 	unsigned int num, den;
 
 	/*
-	 * Note that crtc_state->pixel_rate accounts for both
+	 * Note that crtc_state->pixel_rate_cdclk accounts for both
 	 * horizontal and vertical panel fitter downscaling factors.
 	 * Pre-HSW bspec tells us to only consider the horizontal
 	 * downscaling factor here. We ignore that and just consider
 	 * both for simplicity.
 	 */
-	pixel_rate = crtc_state->pixel_rate;
+	pixel_rate = crtc_state->pixel_rate_cdclk;
 
 	ivb_plane_ratio(crtc_state, plane_state, &num, &den);
 
@@ -570,13 +570,13 @@ static int ivb_sprite_min_cdclk(const struct intel_crtc_state *crtc_state,
 	unsigned int num, den;
 
 	/*
-	 * Note that crtc_state->pixel_rate accounts for both
+	 * Note that crtc_state->pixel_rate_cdclk accounts for both
 	 * horizontal and vertical panel fitter downscaling factors.
 	 * Pre-HSW bspec tells us to only consider the horizontal
 	 * downscaling factor here. We ignore that and just consider
 	 * both for simplicity.
 	 */
-	pixel_rate = crtc_state->pixel_rate;
+	pixel_rate = crtc_state->pixel_rate_cdclk;
 
 	src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	dst_w = drm_rect_width(&plane_state->uapi.dst);
@@ -629,7 +629,7 @@ static void hsw_plane_ratio(const struct intel_crtc_state *crtc_state,
 int hsw_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
-	unsigned int pixel_rate = crtc_state->pixel_rate;
+	unsigned int pixel_rate = crtc_state->pixel_rate_cdclk;
 	unsigned int num, den;
 
 	hsw_plane_ratio(crtc_state, plane_state, &num, &den);
@@ -918,13 +918,13 @@ static int g4x_sprite_min_cdclk(const struct intel_crtc_state *crtc_state,
 	unsigned int limit, decimate;
 
 	/*
-	 * Note that crtc_state->pixel_rate accounts for both
+	 * Note that crtc_state->pixel_rate_cdclk accounts for both
 	 * horizontal and vertical panel fitter downscaling factors.
 	 * Pre-HSW bspec tells us to only consider the horizontal
 	 * downscaling factor here. We ignore that and just consider
 	 * both for simplicity.
 	 */
-	pixel_rate = crtc_state->pixel_rate;
+	pixel_rate = crtc_state->pixel_rate_cdclk;
 
 	/* Horizontal downscaling limits the maximum pixel rate */
 	hscale = drm_rect_calc_hscale(&plane_state->uapi.src,
-- 
2.54.0

