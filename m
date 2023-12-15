Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B9F814340
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 09:07:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D9310E95A;
	Fri, 15 Dec 2023 08:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E2110E0FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 08:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702627642; x=1734163642;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PjV2ztGAXGSlacatVQSNgfCgkeOSeZV8OF3lP4+1ADE=;
 b=QlQYqczquTQ9j2VGucqG+qI7MzIKjKm8LCgiSvq6kggIDFs6GVKmYEOM
 ACWqJwBcXjTwfmkCFIGrcVl/9udgK7gFUYQ86BMz+rgEImNdNEiba1I8O
 Gydp4x81S3W9RXbSMrzWfXD4pIj5A23JZN0erDDcj+4beCmNaYJHvPBFh
 urnU/QxFt/yaIP6MRV8rpzuOzI+cZrk6vR4zxK8Pf2PBRWNFyNyrOjsU6
 jcLeiIlKSdU31mG9oLXWvpVSSUkf5g+FgvR4PeLHopb16RD+2knMohMxf
 njVvoakJb2LSWlkZDV4sK0E4aVD8TQaT/lIx+vcj79vivulUdjA5a3AGp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="2085757"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; 
   d="scan'208";a="2085757"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 00:07:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="778187181"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="778187181"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga007.fm.intel.com with ESMTP; 15 Dec 2023 00:07:19 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: C20 clock state verification
Date: Fri, 15 Dec 2023 10:00:57 +0200
Message-Id: <20231215080057.663792-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

Add clock state verification for C20. Since we
are usign either A or B contexts, which are
selected based on clock rate, we first need to
calculate hw clock and use that clock to select
which context we are using.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 775c1c4a8978..6757e9f941e4 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3079,8 +3079,9 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
 	const struct intel_c20pll_state *mpll_sw_state = &state->cx0pll_state.c20;
 	bool use_mplla;
 	int i;
+	int hw_clock = intel_c20pll_calc_port_clock(encoder, mpll_hw_state);
 
-	use_mplla = intel_c20_use_mplla(mpll_hw_state->clock);
+	use_mplla = intel_c20_use_mplla(hw_clock);
 	if (use_mplla) {
 		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
 			I915_STATE_WARN(i915, mpll_hw_state->mplla[i] != mpll_sw_state->mplla[i],
@@ -3110,6 +3111,11 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
 				crtc->base.base.id, crtc->base.name, i,
 				mpll_sw_state->cmn[i], mpll_hw_state->cmn[i]);
 	}
+
+	I915_STATE_WARN(i915, hw_clock != mpll_sw_state->clock,
+			"[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %d)",
+			crtc->base.base.id, crtc->base.name,
+			mpll_sw_state->clock, hw_clock);
 }
 
 void intel_cx0pll_state_verify(struct intel_atomic_state *state,
-- 
2.34.1

