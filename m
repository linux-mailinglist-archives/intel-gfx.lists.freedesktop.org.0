Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D504BAFAAB
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306C110E348;
	Wed,  1 Oct 2025 08:38:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GTpujvZx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A5C210E0B1;
 Wed,  1 Oct 2025 08:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307918; x=1790843918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9DApx4aOpU+R66JU5AOdFxNY3lvXbbAVln63ubpBZj0=;
 b=GTpujvZxdQUkC/oTw9sFU7pZX/NnhmrQ7O7wpJcmoDjv2qy3bUaAkWRk
 mZDbdtRqjX9eoe6Yo9VJHndQfSW9CtT12HfWRbboBY9XDlmaoTo8iuAIr
 otVrfvU12pluOly3tRNXkTQ61Cj+g4reCVEOSypGc3b19A/9f6ZA6rS9K
 XGT1wdNX/PRY4i5ZxvoXmsRE7JV3qaSY7r3wb33QFOehzJAHcEVfXNIdL
 4ZvVFT+NcmwzyfaxgJ+vdA0GjMtPYk2586UtyMPiBMD0TV2EMtDLEV8pP
 qTxx42lMIRQAkTmeZ65OIcDLNfvT3QCqpanNLQgg/NOPsZRj5BUDTaU0O Q==;
X-CSE-ConnectionGUID: T5Y2HBp8RbKtvhP4rEfYng==
X-CSE-MsgGUID: CKouZ3UrQRuC1XxLekD7nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742680"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742680"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:37 -0700
X-CSE-ConnectionGUID: 4JaPJXC/TiiPd6aLWR32nQ==
X-CSE-MsgGUID: keg31ayeRq+UOjelCsZF1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142490"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:36 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 01/39] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/DP_RATE field macros
Date: Wed,  1 Oct 2025 11:28:01 +0300
Message-Id: <20251001082839.2585559-2-mika.kahola@intel.com>
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

Rename the PHY_C20_CUSTOM_SERDES / PHY_C20_CUSTOM_SERDES_MASK register
field names to PHY_C20_DP_RATE / PHY_C20_DP_RATE_MASK, and move the
definitions under the actual register containing the fields.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 6 +++---
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a2d2cecf7121..0d83145eff41 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2700,12 +2700,12 @@ static void intel_c20_pll_program(struct intel_display *display,
 	/* 5. For DP or 6. For HDMI */
 	if (is_dp) {
 		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-			      BIT(6) | PHY_C20_CUSTOM_SERDES_MASK,
-			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(port_clock)),
+			      BIT(6) | PHY_C20_DP_RATE_MASK,
+			      BIT(6) | PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock)),
 			      MB_WRITE_COMMITTED);
 	} else {
 		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
+			      BIT(7) | PHY_C20_DP_RATE_MASK,
 			      is_hdmi_frl(port_clock) ? BIT(7) : 0,
 			      MB_WRITE_COMMITTED);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 77eae1d845f7..25ab8808e548 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -298,10 +298,10 @@
 #define PHY_C20_RD_DATA_L		0xC08
 #define PHY_C20_RD_DATA_H		0xC09
 #define PHY_C20_VDR_CUSTOM_SERDES_RATE	0xD00
+#define   PHY_C20_DP_RATE_MASK		REG_GENMASK8(4, 1)
+#define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, val)
 #define PHY_C20_VDR_HDMI_RATE		0xD01
 #define   PHY_C20_CONTEXT_TOGGLE	REG_BIT8(0)
-#define   PHY_C20_CUSTOM_SERDES_MASK	REG_GENMASK8(4, 1)
-#define   PHY_C20_CUSTOM_SERDES(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_SERDES_MASK, val)
 #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
 #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
 #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)
-- 
2.34.1

