Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76416C1EC72
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0DB10E8BE;
	Thu, 30 Oct 2025 07:34:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xe3Ka20w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0537B10E8D1;
 Thu, 30 Oct 2025 07:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809698; x=1793345698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sOZVSG3oUD5Z47U1EJHIVzMwk21dEGjI2X6jUQbBKQE=;
 b=Xe3Ka20w2mB196zjtorohOImRS1Or2KOVrT/REHAUliEfkAR/ixaZass
 56nl3Ap5faaEeAm2KfAKsrnMnRImTYMQ9ITVof9JyqXLLyiJrqSBkvKgk
 gDGK1YYI2yNKir0qO7hXHjZofZx3RTqoBNOMrPx6KLbXEEoIw+63ozaOs
 yE+RQNWzYxug1m+Gjwv5WyTbzxlX25DoiPAA9Mc7H5M7T1iz4r5nRK7G1
 hnNyC+P5H2Vl/nZhlym5qKqJusy1r37gtjOU5q4WuBWrDWS0meRoUJzWs
 KkET6FX6kvdZFc5NUFhmeGGQMBa3AxOethyYKEF/y6E+CWuMBNqxmLU0K A==;
X-CSE-ConnectionGUID: uTeVr+aUQZSLI7DC1cquRA==
X-CSE-MsgGUID: 70YTMer+QuWSbIy9+B1Xug==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063380"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063380"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:34:57 -0700
X-CSE-ConnectionGUID: veOGsFRtT0ypEmox9IkQzg==
X-CSE-MsgGUID: 0sjDc8EaThqiit4kg3oZSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075371"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:34:56 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 13/32] drm/i915/display: Zero Cx0 PLL state before compute and
 HW readout
Date: Thu, 30 Oct 2025 09:22:30 +0200
Message-Id: <20251030072249.155095-14-mika.kahola@intel.com>
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

Ensure Cx0 pll state is initialized to zero before any computation or HW
readouts, to prevent leaving some parameter in the state uninitialized
in the actual compute/HW readout functions later.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 29bcfe8fb6f5..3418fc560faf 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2698,6 +2698,8 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
 {
+	memset(&crtc_state->dpll_hw_state, 0, sizeof(crtc_state->dpll_hw_state));
+
 	if (intel_encoder_is_c10phy(encoder))
 		return intel_c10pll_calc_state(crtc_state, encoder);
 	return intel_c20pll_calc_state(crtc_state, encoder);
@@ -3635,7 +3637,7 @@ static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
 void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_cx0pll_state *pll_state)
 {
-	pll_state->use_c10 = false;
+	memset(pll_state, 0, sizeof(*pll_state));
 
 	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
 	if (pll_state->tbt_mode)
-- 
2.34.1

