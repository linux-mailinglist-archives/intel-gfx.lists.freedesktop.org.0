Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE5E8A4A07
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7567C1122CA;
	Mon, 15 Apr 2024 08:14:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X42wY3lB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CB3E1122C9;
 Mon, 15 Apr 2024 08:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168857; x=1744704857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1TfEJ8PvVDoifb4hsf/LwZDd8afM1i+Uq3xwsm3chgI=;
 b=X42wY3lBc4NU697SEjWCfEFAH5pw/4JM5Gdw1uccRpx0oBWbk5n2r+oZ
 zCilDR5AUnyWLoyF4hwJsIvA6I9Flj9rg2NdzXOb1lrGZlcezOiitedad
 7FH+LlvEVQUAVDFQCwLS+6gvxNaF9uTC/KgcH9Tii6QSIjP58HUTbCN1Z
 kIlMCBeNHUg6s2zkH5Kqiu2tVWD0XjzE3jK9oNWCFlogHx8VfxQPmeT3m
 FFDgYwrFJvGEaO17gKObWz0tLm8UKB8XrgPCNyQaUckXm3ZYgzVWZOWDd
 EwGDVAgJ6Lbi616+acR0CTkQLjXFXSjMGNJepVyKZIZTjJN5c8KswCUMy Q==;
X-CSE-ConnectionGUID: xVAVLIJtQQGb6jeCXZIcIQ==
X-CSE-MsgGUID: NUX4vEYDQVWADXFpa9MVTw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096397"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096397"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:17 -0700
X-CSE-ConnectionGUID: 7UX0Aqv5TC6fkVmtpNYXXg==
X-CSE-MsgGUID: ijNWqGAETeu+kJUpbldCTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400323"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:15 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Clint Taylor <Clinton.A.Taylor@intel.com>
Subject: [PATCH v3 09/21] drm/i915/xe2hpd: Add support for eDP PLL
 configuration
Date: Mon, 15 Apr 2024 13:44:11 +0530
Message-Id: <20240415081423.495834-10-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

Tables for eDP PHY PLL configuration for different link rates added for
Xe2_HPD. Previous platforms were using C10 PHY for eDP port whereas
Xe2_HPD has C20 PHY.

v2: Updated with a more appropriate Bspec number.

Bspec: 74165
CC: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 147 ++++++++++++++++++-
 1 file changed, 146 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9bf882b439f4..8d37a2688809 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -945,6 +945,148 @@ static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
 	NULL,
 };
 
+/*
+ * eDP link rates with 38.4 MHz reference clock.
+ */
+
+static const struct intel_c20pll_state xe2hpd_c20_edp_r216 = {
+	.clock = 216000,
+	.tx = { 0xbe88,
+		0x4800,
+		0x0000,
+		},
+	.cmn = { 0x0500,
+		 0x0005,
+		 0x0000,
+		 0x0000,
+		},
+	.mpllb = { 0x50e1,
+		   0x2120,
+		   0x8e18,
+		   0xbfc1,
+		   0x9000,
+		   0x78f6,
+		   0x0000,
+		   0x0000,
+		   0x0000,
+		   0x0000,
+		   0x0000,
+		  },
+};
+
+static const struct intel_c20pll_state xe2hpd_c20_edp_r243 = {
+	.clock = 243000,
+	.tx = { 0xbe88,
+		0x4800,
+		0x0000,
+		},
+	.cmn = { 0x0500,
+		 0x0005,
+		 0x0000,
+		 0x0000,
+		},
+	.mpllb = { 0x50fd,
+		   0x2120,
+		   0x8f18,
+		   0xbfc1,
+		   0xa200,
+		   0x8814,
+		   0x2000,
+		   0x0001,
+		   0x1000,
+		   0x0000,
+		   0x0000,
+		  },
+};
+
+static const struct intel_c20pll_state xe2hpd_c20_edp_r324 = {
+	.clock = 324000,
+	.tx = { 0xbe88,
+		0x4800,
+		0x0000,
+		},
+	.cmn = { 0x0500,
+		 0x0005,
+		 0x0000,
+		 0x0000,
+		},
+	.mpllb = { 0x30a8,
+		   0x2110,
+		   0xcd9a,
+		   0xbfc1,
+		   0x6c00,
+		   0x5ab8,
+		   0x2000,
+		   0x0001,
+		   0x6000,
+		   0x0000,
+		   0x0000,
+		  },
+};
+
+static const struct intel_c20pll_state xe2hpd_c20_edp_r432 = {
+	.clock = 432000,
+	.tx = { 0xbe88,
+		0x4800,
+		0x0000,
+		},
+	.cmn = { 0x0500,
+		 0x0005,
+		 0x0000,
+		 0x0000,
+		},
+	.mpllb = { 0x30e1,
+		   0x2110,
+		   0x8e18,
+		   0xbfc1,
+		   0x9000,
+		   0x78f6,
+		   0x0000,
+		   0x0000,
+		   0x0000,
+		   0x0000,
+		   0x0000,
+		  },
+};
+
+static const struct intel_c20pll_state xe2hpd_c20_edp_r675 = {
+	.clock = 675000,
+	.tx = { 0xbe88,
+		0x4800,
+		0x0000,
+		},
+	.cmn = { 0x0500,
+		 0x0005,
+		 0x0000,
+		 0x0000,
+		},
+	.mpllb = { 0x10af,
+		   0x2108,
+		   0xce1a,
+		   0xbfc1,
+		   0x7080,
+		   0x5e80,
+		   0x2000,
+		   0x0001,
+		   0x6400,
+		   0x0000,
+		   0x0000,
+		  },
+};
+
+static const struct intel_c20pll_state * const xe2hpd_c20_edp_tables[] = {
+	&mtl_c20_dp_rbr,
+	&xe2hpd_c20_edp_r216,
+	&xe2hpd_c20_edp_r243,
+	&mtl_c20_dp_hbr1,
+	&xe2hpd_c20_edp_r324,
+	&xe2hpd_c20_edp_r432,
+	&mtl_c20_dp_hbr2,
+	&xe2hpd_c20_edp_r675,
+	&mtl_c20_dp_hbr3,
+	NULL,
+};
+
 /*
  * HDMI link rates with 38.4 MHz reference clock.
  */
@@ -2062,7 +2204,10 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
 	if (intel_crtc_has_dp_encoder(crtc_state))
-		return mtl_c20_dp_tables;
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+			return xe2hpd_c20_edp_tables;
+		else
+			return mtl_c20_dp_tables;
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return mtl_c20_hdmi_tables;
 
-- 
2.25.1

