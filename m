Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9E4BAFAED
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE2B10E6CA;
	Wed,  1 Oct 2025 08:39:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SYCa5sT2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C6A410E6CA;
 Wed,  1 Oct 2025 08:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307940; x=1790843940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o7na59/XRDSuzkjHBIpCYwMHqMgVJ0fkaRdnxUrjp7M=;
 b=SYCa5sT2tMuhe8IXf0jCFXUAfOJ/Z4njOX/kgkHzvox3gFvI+DO/RY1b
 r+j0B6gDVK1IWRA5jzRhSpyMtbAyrIWbycHX/bLuDsulmRFwCfCKxinqf
 JPCEwerFc4YnkG5NbktxTvZlk1oISnuRiXIr6sIFq8BUjDi7n+F+iyQaV
 7GhIJZeoKpPHJEQzdy6QQRoUE3jr9asetGSVYxAjDvcYddMKOHpBKru8V
 IrvZvqDmEjtGYN3b2QYZ8RYGdnGe/uEp4RH/eqPrNu0IQVvjeshz+nGpi
 l/OeUsCzQzrx0VRaWOyhzFedvpI4bwa2H4Ux7wvrY/fa+PVoBC7HJrwoV Q==;
X-CSE-ConnectionGUID: CkTMchcvR02ilk3D2CMCMw==
X-CSE-MsgGUID: xzOa2LnCQa6zn8NHy8vWIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742759"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742759"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:00 -0700
X-CSE-ConnectionGUID: ZBaDr+l5TDufZN5YUPbvnQ==
X-CSE-MsgGUID: 3LihDWuYRZiKlcRNlvvgmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142625"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:58 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 19/39] drm/i915/display: Determine Cx0 PLL port clock from
 PLL state
Date: Wed,  1 Oct 2025 11:28:19 +0300
Message-Id: <20251001082839.2585559-20-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f2fd766343d5..ff8b52c4db48 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3206,10 +3206,10 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
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
@@ -3288,13 +3288,6 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
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
@@ -3424,7 +3417,7 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable(encoder, crtc_state);
 	else
-		intel_cx0pll_enable(encoder, crtc_state);
+		intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll);
 }
 
 /*
@@ -3847,7 +3840,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 			    "[ENCODER:%d:%s] Applying power saving workaround on disabled PLL\n",
 			    encoder->base.base.id, encoder->base.name);
 
-		__intel_cx0pll_enable(encoder, &pll_state, port_clock);
+		intel_cx0pll_enable(encoder, &pll_state);
 		intel_cx0pll_disable(encoder);
 	}
 }
-- 
2.34.1

