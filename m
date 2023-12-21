Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8957E81B4FD
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 12:35:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7785B10E0C4;
	Thu, 21 Dec 2023 11:35:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC25910E0C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 11:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703158515; x=1734694515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vmr+SfCYygbst/9/nr7KEUCOxRRpcIi5pxQjLleQl70=;
 b=WxXk3jNy4CWdEfVVxET0nSlFo98dsdTIomWkjWaTwlHqkuYNpNpU+eJt
 L8YjSFjlEUzrj8PQrpDhiR4WsSzC4S0U3W+1HJeP4UIbdL521hM0JgFTJ
 IMjHloF1h5SIzaiN8NdkNzJ0J1ymk8oRtrkeGa7OCSlGi/dyZ2d4pawpV
 Y/X0jc814I2phhvHmfJpBq3uVU23GrvqS29rhLwHLdFXGGJQAEzs62Akz
 QrlnQjS30o0PuE3ujW1EOW1LveNS4EADO1VafFLdzM+N4GIiEdyD9rvn8
 L8bSdBX38gB9/7VFcZyZoUR1RphXDmjughomRhCgdOubRndEStDYkkuwl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="394854256"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="394854256"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 03:35:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="842605942"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="842605942"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2023 03:35:14 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/3] drm/i915/display: Fix C20 pll selection for state
 verification
Date: Thu, 21 Dec 2023 13:28:41 +0200
Message-Id: <20231221112843.27519-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231221112843.27519-1-mika.kahola@intel.com>
References: <20231221112843.27519-1-mika.kahola@intel.com>
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

Add pll selection check for C20 as well as
clock state verification0. We have been relying
on sw state to select A or B pll's. This is incorrect
as the hw might see this selection differently. This
patch fixes this shortcoming by reading pll selection
for both sw and hw states and compares if these two
selections match.

Fixes: 59be90248b42 ("drm/i915/mtl: C20 state verification")

v2: reword commit message and include fix to a
    original commit (Imre)
    Compare pll selection (Jani)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 25 ++++++++++++--------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 884a1da36089..6b25e195232f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3067,24 +3067,29 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct intel_c20pll_state *mpll_sw_state = &state->cx0pll_state.c20;
-	bool use_mplla;
+	bool sw_use_mpllb = mpll_sw_state->tx[0] & C20_PHY_USE_MPLLB;
+	bool hw_use_mpllb = mpll_hw_state->tx[0] & C20_PHY_USE_MPLLB;
 	int i;
 
-	use_mplla = intel_c20_use_mplla(mpll_hw_state->clock);
-	if (use_mplla) {
-		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
-			I915_STATE_WARN(i915, mpll_hw_state->mplla[i] != mpll_sw_state->mplla[i],
-					"[CRTC:%d:%s] mismatch in C20MPLLA: Register[%d] (expected 0x%04x, found 0x%04x)",
-					crtc->base.base.id, crtc->base.name, i,
-					mpll_sw_state->mplla[i], mpll_hw_state->mplla[i]);
-		}
-	} else {
+	I915_STATE_WARN(i915, sw_use_mpllb != hw_use_mpllb,
+			"[CRTC:%d:%s] mismatch in C20: Register MPLLB selection (expected %d, found %d)",
+			crtc->base.base.id, crtc->base.name,
+			sw_use_mpllb, hw_use_mpllb);
+
+	if (hw_use_mpllb) {
 		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mpllb); i++) {
 			I915_STATE_WARN(i915, mpll_hw_state->mpllb[i] != mpll_sw_state->mpllb[i],
 					"[CRTC:%d:%s] mismatch in C20MPLLB: Register[%d] (expected 0x%04x, found 0x%04x)",
 					crtc->base.base.id, crtc->base.name, i,
 					mpll_sw_state->mpllb[i], mpll_hw_state->mpllb[i]);
 		}
+	} else {
+		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
+			I915_STATE_WARN(i915, mpll_hw_state->mplla[i] != mpll_sw_state->mplla[i],
+					"[CRTC:%d:%s] mismatch in C20MPLLA: Register[%d] (expected 0x%04x, found 0x%04x)",
+					crtc->base.base.id, crtc->base.name, i,
+					mpll_sw_state->mplla[i], mpll_hw_state->mplla[i]);
+		}
 	}
 
 	for (i = 0; i < ARRAY_SIZE(mpll_sw_state->tx); i++) {
-- 
2.34.1

