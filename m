Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C67BDB08D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 21:18:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47FFD10E05F;
	Tue, 14 Oct 2025 19:18:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BaPDd5Pk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1192210E05F;
 Tue, 14 Oct 2025 19:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760469507; x=1792005507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kYTEi3niWzremAGg+HBxOJ5X+BaN9Szb0PBFLghk/ds=;
 b=BaPDd5Pkc4HEHjxDW0LXmUwLih9ncRkDDsxSbmrX9VKW5hc7zEyIR+ad
 XXYkMmRYl0KS9F7fVnDFRwHa6cozVG4cbQkRK1je+mGvt8y0gqNEBW2uj
 ZITJeIjQN3jkzh8SvEFjosWdsTV6hmMLzRmMdQ0sDUtb6dCQ0RnfcFvh6
 47l5CbFSEbObDVIsLohjjkGmajMAn14Bj6yPajXy+bNDudRKQK4bX+Uki
 paDvHiZXdezXDugZII80yru3ybRLpizd1qmu9WzucZCma/A3LSPm5Q3HA
 LSHPzEebFgz05JoGVu7ZEhEVlyzSNXq9sZfxu1rb10qti6fQ4fQKGMfg4 Q==;
X-CSE-ConnectionGUID: dg+NpCs7RNWoG7IcZPFKdA==
X-CSE-MsgGUID: 6cc5TBa0SM2uEsOGB2leUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62549473"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62549473"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:26 -0700
X-CSE-ConnectionGUID: Mv20OaVpRZOaLoIe/K6MQA==
X-CSE-MsgGUID: ajl/9rVxTOOPzrSxCN+a+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="181105475"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.227])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 3/9] drm/i915/cdclk: Add prefill helpers for CDCLK
Date: Tue, 14 Oct 2025 22:18:02 +0300
Message-ID: <20251014191808.12326-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
References: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
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
a faster CDCLK speeds up the pipe prefill.

intel_cdclk_prefill_adjustment_worst() gives out a worst case estimate,
meant to be used during guardband sizing. We can actually do better
than 1.0 here because the absolute minimum CDCLK is limited by the
dotclock. This will still allow planes, pfit, etc. to be changed any
which way without having to resize the guardband yet again.

intel_cdclk_prefill_adjustment() is supposed to give a more accurate
value based on the current min cdclk for the pipe, but currently that
is not yet available when this gets called. So for now use the same
worst case estimate here.

The returned numbers are in .16 binary fixed point.

TODO: the intel_cdclk_prefill_adjustment_worst() approach here
      can result in guardband changes for DRRS. But I'm thinking
      that is fine since M/N changes will always happen on the
      legacy timing generator so guardband doesn't actually matter.
      May need to think about this a bit more though...

v2: Use the worst case estimate always for now

Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 68 +++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h |  3 +
 2 files changed, 69 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f2e092f89ddd..10abc2521fab 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2806,16 +2806,20 @@ static int intel_cdclk_guardband(struct intel_display *display)
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
@@ -4056,3 +4060,63 @@ void intel_cdclk_read_hw(struct intel_display *display)
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
+unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
+{
+	/* FIXME use the actual min_cdclk for the pipe here */
+	return intel_cdclk_prefill_adjustment_worst(crtc_state);
+}
+
+unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state)
+{
+	int clock = crtc_state->hw.pipe_mode.crtc_clock;
+	int min_cdclk;
+
+	/*
+	 * FIXME could perhaps consider a few more of the factors
+	 * that go the per-crtc min_cdclk. Namely anything that
+	 * only changes during full modesets.
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
index 72963f6f399a..8774a320670b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -70,4 +70,7 @@ bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
 void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
 void intel_cdclk_read_hw(struct intel_display *display);
 
+unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state);
+unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_CDCLK_H__ */
-- 
2.49.1

