Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE08D4D0C22
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 00:39:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE37010E1BD;
	Mon,  7 Mar 2022 23:39:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4610510E1BD
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 23:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646696386; x=1678232386;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nfeH/fOk6ogOAkaRTB8abAEVBNuhM/peEPkdh1T2dn4=;
 b=Kj3mQD/IMCgNL6l4xITeYeoxtohX50VyiITwn18fJ14tGX6YI+5JKG+e
 JL2vpp4/uVRMOz+Wm1U0K9aK6NazRnZkzQXlhZUxtvZc9f39+LFKv8V/O
 R0dvNAmk3urm6HKnkxOl/Pc8Qkuucy2Rco+ydJjTwtvE/7XBxG1Ta2Mtc
 PD9yV2Erj7uxt5wgTJJcB9bSArj28WhpsYzZQUsiiEkqykWuXAmdxZbMq
 uXxOQ7YcWzJAUR/aVFGfu/vN4/b6wCAWgZIXnHD7z3lj4b05GAODz9Goa
 H7FRQSiNaML1IY0IfKksam0RSUGxywKxB5KxT+DnVcU6+p/Hl6RtGdoX2 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="235144994"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="235144994"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 15:39:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="553379885"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 07 Mar 2022 15:39:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 01:39:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 01:39:33 +0200
Message-Id: <20220307233940.4161-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/8] drm/i915: Store the /5 target clock in
 struct dpll on vlv/chv
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

Unify vlv/chv with earlier platforms so that the sturct dpll::dot
represents the /5 clock frequency (ie. DP symbol rate or HDMI
TMDS rate) rather than the *5 fast clock (/2 of the bitrate).
Makes life a little less confusing to get the same number back
in .dot which we fed into the DPLL algorithm.

v2: Actually just include the 5x in the final P divider
    Do the same change to the hand rolled gvt code

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 19 ++++++++-----------
 drivers/gpu/drm/i915/gvt/handlers.c       |  4 ++--
 2 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 0ae37fdbf2a5..b3fd94538c44 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -254,12 +254,12 @@ static const struct intel_limit ilk_limits_dual_lvds_100m = {
 
 static const struct intel_limit intel_limits_vlv = {
 	 /*
-	  * These are the data rate limits (measured in fast clocks)
+	  * These are based on the data rate limits (measured in fast clocks)
 	  * since those are the strictest limits we have. The fast
 	  * clock and actual rate limits are more relaxed, so checking
 	  * them would make no difference.
 	  */
-	.dot = { .min = 25000 * 5, .max = 270000 * 5 },
+	.dot = { .min = 25000, .max = 270000 },
 	.vco = { .min = 4000000, .max = 6000000 },
 	.n = { .min = 1, .max = 7 },
 	.m1 = { .min = 2, .max = 3 },
@@ -270,12 +270,12 @@ static const struct intel_limit intel_limits_vlv = {
 
 static const struct intel_limit intel_limits_chv = {
 	/*
-	 * These are the data rate limits (measured in fast clocks)
+	 * These are based on the data rate limits (measured in fast clocks)
 	 * since those are the strictest limits we have.  The fast
 	 * clock and actual rate limits are more relaxed, so checking
 	 * them would make no difference.
 	 */
-	.dot = { .min = 25000 * 5, .max = 540000 * 5},
+	.dot = { .min = 25000, .max = 540000 },
 	.vco = { .min = 4800000, .max = 6480000 },
 	.n = { .min = 1, .max = 1 },
 	.m1 = { .min = 2, .max = 2 },
@@ -337,26 +337,26 @@ int i9xx_calc_dpll_params(int refclk, struct dpll *clock)
 int vlv_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = clock->m1 * clock->m2;
-	clock->p = clock->p1 * clock->p2;
+	clock->p = clock->p1 * clock->p2 * 5;
 	if (WARN_ON(clock->n == 0 || clock->p == 0))
 		return 0;
 	clock->vco = DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
 	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
 
-	return clock->dot / 5;
+	return clock->dot;
 }
 
 int chv_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = clock->m1 * clock->m2;
-	clock->p = clock->p1 * clock->p2;
+	clock->p = clock->p1 * clock->p2 * 5;
 	if (WARN_ON(clock->n == 0 || clock->p == 0))
 		return 0;
 	clock->vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock->m),
 					   clock->n << 22);
 	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
 
-	return clock->dot / 5;
+	return clock->dot;
 }
 
 /*
@@ -659,8 +659,6 @@ vlv_find_best_dpll(const struct intel_limit *limit,
 	int max_n = min(limit->n.max, refclk / 19200);
 	bool found = false;
 
-	target *= 5; /* fast clock */
-
 	memset(best_clock, 0, sizeof(*best_clock));
 
 	/* based on hardware requirement, prefer smaller n to precision */
@@ -729,7 +727,6 @@ chv_find_best_dpll(const struct intel_limit *limit,
 	 */
 	clock.n = 1;
 	clock.m1 = 2;
-	target *= 5;	/* fast clock */
 
 	for (clock.p1 = limit->p1.max; clock.p1 >= limit->p1.min; clock.p1--) {
 		for (clock.p2 = limit->p2.p2_fast;
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 520a7e1942f3..efdd2f3f9d73 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -583,7 +583,7 @@ static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 	clock.p1 = (vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)) & PORT_PLL_P1_MASK) >> PORT_PLL_P1_SHIFT;
 	clock.p2 = (vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)) & PORT_PLL_P2_MASK) >> PORT_PLL_P2_SHIFT;
 	clock.m = clock.m1 * clock.m2;
-	clock.p = clock.p1 * clock.p2;
+	clock.p = clock.p1 * clock.p2 * 5;
 
 	if (clock.n == 0 || clock.p == 0) {
 		gvt_dbg_dpy("vgpu-%d PORT_%c PLL has invalid divider\n", vgpu->id, port_name(port));
@@ -593,7 +593,7 @@ static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 	clock.vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock.m), clock.n << 22);
 	clock.dot = DIV_ROUND_CLOSEST(clock.vco, clock.p);
 
-	dp_br = clock.dot / 5;
+	dp_br = clock.dot;
 
 out:
 	return dp_br;
-- 
2.34.1

