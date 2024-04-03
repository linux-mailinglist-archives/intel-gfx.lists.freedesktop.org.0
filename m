Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF032896D37
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BFC31129D3;
	Wed,  3 Apr 2024 10:51:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FJUBnCin";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33EDB1129C9;
 Wed,  3 Apr 2024 10:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141511; x=1743677511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=khyiAZwhH0HYIoe/8reGkGGOU5prsY6sqz1YhAgEQ3A=;
 b=FJUBnCinHpZ2hn5l+njInWsvW7NuheNXQ/tNpCAElh5DwOZ4PVU1jAi5
 r2hUUxaUOvqr+wVYemJlabmihDnEbwh1ATWgwjN/PihclT1xJecXPXAhy
 5er5MRKEcK4NAEx53uM9+cd4JVRWhroOai+pJP/jRnzL5W9mu2JcN8X5v
 SgDfP8Ykbl6MML/wRqqKCdwsuPyY6oPPrr13JQn9pAUoVwn0IsvuC5cXY
 8y7dy6TqIBkQS+rMmA8VfQln7tfNPaYl+9dutmQ1o1lg02c/TW/by6CHb
 LEVGggXekBKBWgERpAmu2n+aGxZQAUp9tiljEPtouzBHiU4riTCqsEzWh Q==;
X-CSE-ConnectionGUID: IqGM9lmWSBKyilVGFvqsjA==
X-CSE-MsgGUID: uigzdw5WRLKlrcp5kqkjVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212161"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212161"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:36 -0700
X-CSE-ConnectionGUID: /Gdh4A1TSaWl61fLk5CeRg==
X-CSE-MsgGUID: Qe50WxJ4Qi+LVlxBQLZkGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493376"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:33 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Clint Taylor <Clinton.A.Taylor@intel.com>
Subject: [PATCH 11/25] drm/i915/xe2hpd: Add support for eDP PLL configuration
Date: Wed,  3 Apr 2024 16:21:09 +0530
Message-Id: <20240403105123.1327669-12-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

Bpsec: 64568

CC: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 147 ++++++++++++++++++-
 1 file changed, 146 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6e4647859fc6..d948035f07ad 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -967,6 +967,148 @@ static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
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
@@ -2084,7 +2226,10 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
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

