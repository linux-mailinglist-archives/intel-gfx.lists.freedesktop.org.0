Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C6CBAFAF0
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0275910E6C6;
	Wed,  1 Oct 2025 08:39:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DIXmecQk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43CB10E6C6;
 Wed,  1 Oct 2025 08:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307941; x=1790843941;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w5emY2Ri3WfHqb5K77sQx3f6MoGB6dhmdXqqTdP0oNc=;
 b=DIXmecQk8pujI841JCI4WHx5PNnJLGUrCfpTE5leVTIH7GzDj+qtE16g
 aWOqAyU+4SkEnR7t2zT66Q0JbbFyxlifWQLW4WPGyRZ0Q7gqNstmCV0zX
 NG2Qhco0KbnAegt5V3Lryb5AGRQQAC7VHln9mOls9QGY6Duyigk6x/HW5
 x7DVaBqvlbMVK2kWTT4kcpL+gulHbX4i/mdvt48+I6gcr57sWODChiitL
 FM81+Y9kFZ703VpJpeQB+rq9TLphhYSTMcuGJUjHYfioSxjwJuLT2MIKK
 ozlM3XBAYOoCo5lnSqRVIcd0EdZTwBa6SyGXKvdvCoqPWLXm7u/kL8Ov5 A==;
X-CSE-ConnectionGUID: JMDinhHmQ7mqb/3EK0W7dQ==
X-CSE-MsgGUID: FqNZEmyvTL6PLTiDQtJNEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742762"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742762"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:01 -0700
X-CSE-ConnectionGUID: S4Jz7rPuTXSUv85llfKU6g==
X-CSE-MsgGUID: VGPCglWSQkKNWCiNbPzIHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142648"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:59 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 20/39] drm/i915/display: Zero Cx0 PLL state before compute
 and HW readout
Date: Wed,  1 Oct 2025 11:28:20 +0300
Message-Id: <20251001082839.2585559-21-mika.kahola@intel.com>
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

Ensure Cx0 pll state is initialized to zero before any computation or HW
readouts, to prevent leaving some parameter in the state uninitialized
in the actual compute/HW readout functions later.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ff8b52c4db48..552623d5413a 100644
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

