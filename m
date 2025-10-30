Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C90EC1EC6F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97CA710E8CA;
	Thu, 30 Oct 2025 07:34:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FqOpCXr/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35BDD10E8C8;
 Thu, 30 Oct 2025 07:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809697; x=1793345697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7C2fTEuH8DjZpIr8g6gIzAuQPXRnTfL0wYOfyYJ3wyQ=;
 b=FqOpCXr/m+Cjk7IpU4XE5FOth5oq2UgDQbTuZQlc4e7lQYc9vvw8S6Aj
 NWMll12nDbyyS+PDhNL4FsQjGOMcHDDYS8O23bQ1aoC4Z+lBbs518cy8q
 /q3wE3VhVsWlcWE0J91st9ofhD5VZ3lwMIqtq8VkAdUTJXLdkAP8wdfEu
 O+CKXs60qfzaK+7JfWUc01Mt41sSkAQFP/cLytKbUVECldXirix5V6Eeh
 7Yky++ACcUaAXi/Ugl/I1gUS7GsBlvCgll33SWW5QpVIcUxkEq31x6OQz
 e2xDFudCOiPsMfULFCvY14pVhp9zKQ2ojZ0/VdFEpzYd1SDbO4JddlE72 w==;
X-CSE-ConnectionGUID: Hq5pCgxeTfK7eJ5b43ROag==
X-CSE-MsgGUID: pV1Z1VBXQ/2fL3L3iKpyug==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063379"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063379"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:34:56 -0700
X-CSE-ConnectionGUID: PUXzzUOwQj2BlHZMveDIXw==
X-CSE-MsgGUID: 8Pp05qIfT1eBZEZbae84lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075362"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:34:55 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 12/32] drm/i915/display: Determine Cx0 PLL port clock from PLL
 state
Date: Thu, 30 Oct 2025 09:22:29 +0200
Message-Id: <20251030072249.155095-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030072249.155095-1-mika.kahola@intel.com>
References: <20251030072249.155095-1-mika.kahola@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f1216beb5581..29bcfe8fb6f5 100644
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

