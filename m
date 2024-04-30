Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DDE8B7E88
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B70112D86;
	Tue, 30 Apr 2024 17:30:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jT/j0TAs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 667EE112D78;
 Tue, 30 Apr 2024 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498220; x=1746034220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZlHOIHn4Z908dmqXA1gFFCASoKCVHIGInjZToZuEkr4=;
 b=jT/j0TAsHMbeo30IFqgekpBHxoWkBxg/Tp/EO5a67r1Hi4qvRYgT9/rU
 hsthiCbG0eFsOmn9Z2OHKocDJJIVd7jfhb0HLndbMylM1lXox4jy7L2nc
 /Q3GerWa8PwNJj7CYk29U39SyOYY5Lpmmdz1XY9DUHdFmtLYH22gYvg80
 qTNu0vSuJZXMpDpqVYgNSsa3sViynOnSPAx0ZD0Zw9BnVS4BhAahUreGb
 lHD+sx6KGb5fG8cMwPaLUiXeXBiP5o6oVewhC0kCIZJgx7+P6cHG8cqKK
 I+p6z2WUXTcJlULrSbqdRPpr9OpGPnuaRuXs9CUD9LerhKwP6247LJReP g==;
X-CSE-ConnectionGUID: eoeM2p4bS/SvQwXK2mtN/g==
X-CSE-MsgGUID: VufilqMBTL2/atkMwVZ3VA==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741991"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741991"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:20 -0700
X-CSE-ConnectionGUID: I/t7fpmxSm+X5p3BPmjr9g==
X-CSE-MsgGUID: yzGdAbFOSSavm8Qq030kyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617831"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:20 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Clint Taylor <Clinton.A.Taylor@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 07/19] drm/i915/xe2hpd: Add support for eDP PLL
 configuration
Date: Tue, 30 Apr 2024 10:28:38 -0700
Message-Id: <20240430172850.1881525-8-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Tables for eDP PHY PLL configuration for different link rates added for
Xe2_HPD. Previous platforms were using C10 PHY for eDP port whereas
Xe2_HPD has C20 PHY.

v2: Updated with a more appropriate Bspec number.

Bspec: 74165
CC: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 147 ++++++++++++++++++-
 1 file changed, 146 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 866b943311f1..d16aab31349f 100644
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
2.34.1

