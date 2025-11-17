Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CB1C63A9E
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4704110E361;
	Mon, 17 Nov 2025 10:59:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ET3WZMIU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8EE610E364;
 Mon, 17 Nov 2025 10:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377158; x=1794913158;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1a4Rf59WQwy17WyUWrEhOp7H2gB8LHaSXkf61LZgMLU=;
 b=ET3WZMIUxRy5MsER85h4i7dSzqOYNJ7yJF4FsxOygCKClmH/APml5lRb
 reLTDOvbaPHDvVq+ZN0ZvdHnQIs9MNO6WmMqBhyQdq5jOiWoaM750k3Vu
 gOn0its90HEPhL89Xbu/Sdg7vchYBj+R1CaXZQtPOrCuEHBnbeYaOsmMW
 LxBFsPM4Fm2X9H31bxOcG9gco70zNBO3LoiIMb4VLRbGa7GYZFG8tdXSl
 ZUFIh+Jj/IBf7pLsg8pydRUqt3JM12LartoZO6lJQ/G/znjS6+8AplEh6
 BcEnl33VrOCbOv5oLdrpXCzGxmUPazfYw7wcP6LjG3ie5Hkx6bPZbgvAS A==;
X-CSE-ConnectionGUID: u5+9akYCS2u5mfd2h8AgEA==
X-CSE-MsgGUID: Vi/mqBD7Qy25rr3CVk/hZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475374"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475374"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:17 -0800
X-CSE-ConnectionGUID: nIgKnZ0YSGiHzgtH5qguSw==
X-CSE-MsgGUID: H11j81a/QZes0Nh9EDcNmg==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:16 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 12/32] drm/i915/cx0: Determine Cx0 PLL port clock from PLL
 state
Date: Mon, 17 Nov 2025 12:45:42 +0200
Message-Id: <20251117104602.2363671-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

The port clock is tracked in the PLL state, so there is no need to pass
it separately to __intel_cx0pll_enable(). Drop the port clock function
param accordingly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 29dfbd60c7ce..0ad9fae230c9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3188,10 +3188,10 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 	return val;
 }
 
-static void __intel_cx0pll_enable(struct intel_encoder *encoder,
-				  const struct intel_cx0pll_state *pll_state,
-				  int port_clock)
+static void intel_cx0pll_enable(struct intel_encoder *encoder,
+				const struct intel_cx0pll_state *pll_state)
 {
+	int port_clock = pll_state->use_c10 ? pll_state->c10.clock : pll_state->c20.clock;
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -3270,13 +3270,6 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
-static void intel_cx0pll_enable(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state)
-{
-	__intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll,
-			      crtc_state->port_clock);
-}
-
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -3403,7 +3396,7 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable(encoder, crtc_state);
 	else
-		intel_cx0pll_enable(encoder, crtc_state);
+		intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll);
 }
 
 /*
@@ -3824,7 +3817,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 			    "[ENCODER:%d:%s] Applying power saving workaround on disabled PLL\n",
 			    encoder->base.base.id, encoder->base.name);
 
-		__intel_cx0pll_enable(encoder, &pll_state, port_clock);
+		intel_cx0pll_enable(encoder, &pll_state);
 		intel_cx0pll_disable(encoder);
 	}
 }
-- 
2.34.1

