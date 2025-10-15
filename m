Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F13EBDEA1E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 15:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D67910E7D4;
	Wed, 15 Oct 2025 13:05:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JQWYJFQM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EE8310E7D3;
 Wed, 15 Oct 2025 13:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760533538; x=1792069538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/ZTcYRiqRAxxainYS09kzqlVV0mdhwtiTibmvr1J3qw=;
 b=JQWYJFQM1RGzHYJU8iCbr07jNuoevECJUBdyEJyPgZTuXjMtZYAgSSmU
 aGVtSrkfN6ihUNygDdC0Z6lnowfOOK5Oi7DAO1TaJLifb1BiIBGl6ElKu
 HfTodvl3RwzcBUU8jwILCArDCSiBsAJti6h0JJcxyVVDQvc2w35bPG1UX
 tiWGVJmIDr4+UUyXl2N5T1Gn1gC5W6NWyMsJu2ow0js0j6rdT25m78A1m
 KeahRNIuJZLm23Lzx1GHjIH6AVIM6JRt2iuF3b2RAspzJrmv1nUIm2FrA
 xUDBEZ230FsneOBikTFDkqxiDiupn8DDSrzvVbtLUu1q48a8Xr2aN2zxV A==;
X-CSE-ConnectionGUID: sA3yJeWfTTG7Bk9r7PIJzw==
X-CSE-MsgGUID: Fw67Jpb3RG2nI36H6t0/9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="80341296"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="80341296"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 06:05:38 -0700
X-CSE-ConnectionGUID: as1aq+rBQO68U1WsJ292Hw==
X-CSE-MsgGUID: C3jFUpxRT5CnFRfz1Gw5hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="186586965"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa005.fm.intel.com with ESMTP; 15 Oct 2025 06:05:37 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [CI 1/7] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/DP_RATE field macros
Date: Wed, 15 Oct 2025 15:54:40 +0300
Message-Id: <20251015125446.3931198-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015125446.3931198-1-mika.kahola@intel.com>
References: <20251015125446.3931198-1-mika.kahola@intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
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

