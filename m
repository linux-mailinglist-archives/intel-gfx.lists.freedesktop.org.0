Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FFF7CEB37
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 00:28:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F7210E45D;
	Wed, 18 Oct 2023 22:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9FC10E45D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 22:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697668086; x=1729204086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kl7HPnZR9gPiwwV7zGYDOOAcZB2BIyCBupBflWyKtpw=;
 b=DSKvxfUgRKhck/laL4a6L8zwIzfOpViRj/GAeKkXr7pLcTezt2KU+sya
 jizCBPI2ZCTUzNgTAzuu/NQUQnA2v00cESt5YWSkveu3DWAKNDdueWOdV
 +XdLIebZnshUNv55UeNkWW+Gytcd9bywkSbCOZUdHnweBPRsmVfAzZfD2
 c2ApZocOBbUfbTPQn6pE/geAG9NCHh3svw0iLqXGLGl8XmNpeyBw93Jw2
 O885dSt1WY9mOnfFg52i5viB+SQnp3WE7+hyWGa0ZJ3g0OEN/b1IloJXk
 qtnZyWdqwGf7/zrsoVFwsVbpH4jGweZhbmeF3qadjywmbArOXesPg5vHr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="450348297"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="450348297"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:28:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="822605190"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="822605190"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:28:05 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 15:28:30 -0700
Message-Id: <20231018222831.4132968-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231018222831.4132968-1-lucas.demarchi@intel.com>
References: <20231018222831.4132968-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Abstract C10/C20 pll hw
 readout
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_cx0_phy.[ch] should contain the details about C10/C20, not leaking
it to the rest of the driver. Start abstracting this by exporting a
single PLL hw readout that handles the differences between C20 and C10
internally to that compilation unit.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 20 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  8 +++++---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  4 ++--
 3 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e775f4721158..252492ec6111 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1850,8 +1850,8 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 	return -EINVAL;
 }
 
-void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
-				   struct intel_c10pll_state *pll_state)
+static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
+					  struct intel_c10pll_state *pll_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 lane = INTEL_CX0_LANE0;
@@ -2103,8 +2103,8 @@ static bool intel_c20_use_mplla(u32 clock)
 	return false;
 }
 
-void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
-				   struct intel_c20pll_state *pll_state)
+static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
+					  struct intel_c20pll_state *pll_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	bool cntx;
@@ -3053,3 +3053,15 @@ void intel_c10pll_state_verify(struct intel_atomic_state *state,
 			crtc->base.base.id, crtc->base.name,
 			mpllb_sw_state->cmn, mpllb_hw_state.cmn);
 }
+
+void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
+				   struct intel_cx0pll_state *pll_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	if (intel_is_c10phy(i915, phy))
+		intel_c10pll_readout_hw_state(encoder, &pll_state->c10);
+	else
+		intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 0e0a38dac8cd..ff7ccb7855aa 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -16,6 +16,7 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_c10pll_state;
 struct intel_c20pll_state;
+struct intel_cx0pll_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
@@ -28,16 +29,17 @@ void intel_mtl_pll_disable(struct intel_encoder *encoder);
 enum icl_port_dpll_id
 intel_mtl_port_pll_type(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
-void intel_c10pll_readout_hw_state(struct intel_encoder *encoder, struct intel_c10pll_state *pll_state);
+
 int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct intel_encoder *encoder);
+void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
+				   struct intel_cx0pll_state *pll_state);
+
 void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
 				const struct intel_c10pll_state *hw_state);
 int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_c10pll_state *pll_state);
 void intel_c10pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
-void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
-				   struct intel_c20pll_state *pll_state);
 void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 				const struct intel_c20pll_state *hw_state);
 int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9151d5add960..80a8ab7874db 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3861,10 +3861,10 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
 	} else if (intel_is_c10phy(i915, phy)) {
-		intel_c10pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10);
+		intel_cx0pll_readout_hw_state(encoder, &crtc_state->cx0pll_state);
 		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
 	} else {
-		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20);
+		intel_cx0pll_readout_hw_state(encoder, &crtc_state->cx0pll_state);
 		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);
 	}
 
-- 
2.40.1

