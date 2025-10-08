Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3261BC6480
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 20:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4541810E893;
	Wed,  8 Oct 2025 18:26:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1NKesSB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1970110E890;
 Wed,  8 Oct 2025 18:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759947970; x=1791483970;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GPxrDO6nbe1+kgnVC6pFrAtVDTRrHUmEH2QoZrcMMzo=;
 b=c1NKesSB1e0tSh4DKQdFf9KnSfULfreYXTjIBtC2R7Y4CXy945rmdg77
 jtwuZjazYQMAIY7xNDFxWDXfB3xnmzi57uZeXRV3pxHIAYm1erubII7K5
 R76tS3OdDcgOAFcGAfTJyXHxAIhixa7o5sUDlKFt/pdlHcyMVQjWgyPI5
 KkDMeF0zB3wJL73OvAA/s3Lgw35q8jrLb2hKtTMsI8tKzcxeLYr8zRU0M
 GRgr+zVwP5j+7X4cJ57KZkGjTGpzvj5O4ca67T6CIIFZJcCpp+yABm12o
 Q1q1IxyDTFCZ1zQb5bEqUPic7/dHtUL1tjwq8QZ2NfKjs64WKQ3UKWOFZ A==;
X-CSE-ConnectionGUID: IRp4S9K+Sl21bbK/Cptzsw==
X-CSE-MsgGUID: yfdbrg+2RnmNefhFJTeHnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="62245567"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="62245567"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:10 -0700
X-CSE-ConnectionGUID: ze0LusDNS5ihjN0nMpn/Cw==
X-CSE-MsgGUID: 0a+u1IBBQi+19xOWM8i33A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="185799841"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:08 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [RFC][PATCH 02/11] drm/i915/cdclk: Add prefill helpers for CDCLK
Date: Wed,  8 Oct 2025 21:25:49 +0300
Message-ID: <20251008182559.20615-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add helpers to compute the CDCLKl adjustment factor for prefill
calculations. The adjustment factor is always <= 1.0. That is,
a faster that strictly necessary CDCLK speeds up the pipe prefill.

intel_cdclk_prefill_adjustment_worst() gives out a worst case estimate,
meant to be used during guardband sizing. We can actually do better
than 1.0 here because the absolute minimum CDCLK is limited by the
dotclock. This will still allow planes, pfit, etc. to be changed any
which way without having to resize the guardband yet again.

intel_cdclk_prefill_adjustment() gives out a potentially more optimal
value, purely based on the final minimum CDCLK (also considering
planes/pfit/etc.) for the current pipe. We can't actually check against
the current CDCLK frequency as that might be much higher due to some
other pipe, and said other pipe might later reduce the CDCLK below
what the current pipe would find acceptable (given which WM levels
are enabled). Ie. we don't consider any global constraints (other
pipes, dbuf bandwidth, etc) on the mimimum CDCLK frequency here.

The returned numbers are in .16 binary fixed point.

TODO: the intel_cdclk_prefill_adjustment_worst() approach here
      can result in guardband changes for DRRS. But I'm thinking
      that is fine since M/N changes will always happen on the
      legacy timing generator so guardband doesn't actually matter.
      May need to think about this a bit more though...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 87 +++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h |  4 +
 2 files changed, 89 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b54b1006aeb0..598593eafdf5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2791,16 +2791,20 @@ static int intel_cdclk_guardband(struct intel_display *display)
 		return 90;
 }
 
-static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
+static int _intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state, int pixel_rate)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	int ppc = intel_cdclk_ppc(display, crtc_state->double_wide);
 	int guardband = intel_cdclk_guardband(display);
-	int pixel_rate = crtc_state->pixel_rate;
 
 	return DIV_ROUND_UP(pixel_rate * 100, guardband * ppc);
 }
 
+static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	return _intel_pixel_rate_to_cdclk(crtc_state, crtc_state->pixel_rate);
+}
+
 static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -3917,3 +3921,82 @@ void intel_cdclk_read_hw(struct intel_display *display)
 	cdclk_state->actual = display->cdclk.hw;
 	cdclk_state->logical = display->cdclk.hw;
 }
+
+static int calc_cdclk(const struct intel_crtc_state *crtc_state, int min_cdclk)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (DISPLAY_VER(display) >= 10 || display->platform.broxton) {
+		return bxt_calc_cdclk(display, min_cdclk);
+	} else if (DISPLAY_VER(display) == 9) {
+		int vco;
+
+		vco = display->cdclk.skl_preferred_vco_freq;
+		if (vco == 0)
+			vco = 8100000;
+
+		return skl_calc_cdclk(min_cdclk, vco);
+	} else if (display->platform.broadwell) {
+		return bdw_calc_cdclk(min_cdclk);
+	} else if (display->platform.cherryview || display->platform.valleyview) {
+		return vlv_calc_cdclk(display, min_cdclk);
+	} else {
+		return display->cdclk.max_cdclk_freq;
+	}
+}
+
+static unsigned int _intel_cdclk_prefill_adj(const struct intel_crtc_state *crtc_state,
+					     int clock, int min_cdclk)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int ppc = intel_cdclk_ppc(display, crtc_state->double_wide);
+	int cdclk = calc_cdclk(crtc_state, min_cdclk);
+
+	return min(0x10000, DIV_ROUND_UP_ULL((u64)clock << 16, ppc * cdclk));
+}
+
+unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state,
+					    const struct intel_cdclk_state *cdclk_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int clock = crtc_state->hw.pipe_mode.crtc_clock;
+	int min_cdclk;
+
+	/*
+	 * Only consider the current pipe's minimum cdclk here as a safe
+	 * lower bound. This must *not* be based on the actual/logical cdclk
+	 * frequency here as that may get reduced later due to eg. a modeset
+	 * on a different pipe, and that would completely invalidate the
+	 * guardband length checks we did on this pipe previously. That
+	 * could lead to prefill exceeding the guardband which would result
+	 * in underruns.
+	 */
+	min_cdclk = intel_cdclk_min_cdclk(cdclk_state, crtc->pipe);
+
+	return _intel_cdclk_prefill_adj(crtc_state, clock, min_cdclk);
+}
+
+unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state)
+{
+	int clock = crtc_state->hw.pipe_mode.crtc_clock;
+	int min_cdclk;
+
+	/*
+	 * FIXME could perhaps consider a few more of the factors
+	 * that go into cdclk_state->min_cdclk[] here. Namely anything
+	 * that only changes during full modesets.
+	 *
+	 * Should perhaps just cache those into a crtc_state->min_cdclk
+	 * at .compute_config() time. Then we could also skip recomputing
+	 * those parts during intel_cdclk_atomic_check().
+	 *
+	 * FIXME this assumes 1:1 scaling, but the other _worst() stuff
+	 * assumes max downscaling, so the final result will be
+	 * unrealistically bad. Figure out where the actual maximum value
+	 * lies and use that to compute a more realistic worst case
+	 * estimate...
+	 */
+	min_cdclk = _intel_pixel_rate_to_cdclk(crtc_state, clock);
+
+	return _intel_cdclk_prefill_adj(crtc_state, clock, min_cdclk);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index cacee598af0e..d97f725a0160 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -69,4 +69,8 @@ bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
 void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
 void intel_cdclk_read_hw(struct intel_display *display);
 
+unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state,
+					    const struct intel_cdclk_state *cdclk_state);
+unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_CDCLK_H__ */
-- 
2.49.1

