Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F415FEE20
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7B7F10EADD;
	Fri, 14 Oct 2022 12:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FAF210EADB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751927; x=1697287927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3ukCNh/6RwGH1qYw4GC1F+mlzmVkDFtM8i9a/0JEsls=;
 b=Un7xVuZPgxHjOAKQN7TII7+H8IhLFWumYFB1quxC3xHrtS7S/4jtsDqN
 zwJy6/OgOw/UmgDMI6MWFCywtOQdG/JexHg9hD66IbXaAVPkfKdgcUDk0
 sUlz30dDj0e6qrT58Z9iaQd2q/N8NAH4Al5Q+eszflp16X5h6byBcIzz0
 Gnwa/QOWFUeeteRQ58W9b6r/MBHdPfSGhBo/IUjbOyAVRPE6sbjuf4/jD
 vavRbDbaZ1DpD3hOGdQLtDWeIuFCN73cX2yv9gwHe+o6erL5z65T6+H7n
 +hY9EMTDaWQHD7syXFGX3D8T1XIbsD6mQ5oyWbDwQbRoECnUWdJCPVnx4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104649"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104649"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:52:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739757"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739757"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:52:06 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:29 +0300
Message-Id: <20221014124740.774835-10-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/20] drm/i915/mtl: C20 HW readout
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

Create a table for C20 DP1.4, DP2.0 and HDMI2.1 rates.
The PLL settings are based on table, not for algorithmic alternative.
For DP 1.4 only MPLLB is in use.

Once register settings are done, we read back C20 HW state.

BSpec: 64568

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 495 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h    |   1 +
 5 files changed, 513 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 02701f9418e6..dcd74042c001 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -11,6 +11,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_hdmi.h"
 #include "intel_panel.h"
 #include "intel_psr.h"
 #include "intel_uncore.h"
@@ -247,6 +248,23 @@ static void intel_c20_write(struct drm_i915_private *i915, enum port port,
 	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
 }
 
+static u16 intel_c20_read(struct drm_i915_private *i915, enum port port,
+                          int lane, u16 addr)
+{
+       u16 val;
+
+       assert_dc_off(i915);
+
+       intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 0);
+       intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, (addr >> 8) & 0xff, 1);
+
+       val = intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_H);
+       val <<= 8;
+       val |= intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_L);
+
+        return val;
+}
+
 static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
 			    int lane, u16 addr, u8 clear, u8 set, bool committed)
 {
@@ -592,6 +610,192 @@ static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
 	NULL,
 };
 
+/* C20 basic DP 1.4 tables */
+static const struct intel_c20pll_state mtl_c20_dp_rbr = {
+	.clock = 162000,
+	.tx = {	0xbe88, /* tx cfg0 */
+		0x5800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x50a8,	/* mpllb cfg0 */
+		0x2120,		/* mpllb cfg1 */
+		0xcd9a,		/* mpllb cfg2 */
+		0xbfc1,		/* mpllb cfg3 */
+		0x6c00,		/* mpllb cfg4 */
+		0x5ab8,		/* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x6000,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
+	.clock = 270000,
+	.tx = {	0xbe88, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x308c,	/* mpllb cfg0 */
+		0x2110,		/* mpllb cfg1 */
+		0xcc9c,		/* mpllb cfg2 */
+		0xbfc1,		/* mpllb cfg3 */
+		0x5a00,		/* mpllb cfg4 */
+		0x4b9a,		/* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x5000,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
+	.clock = 540000,
+	.tx = {	0xbe88, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x108c,	/* mpllb cfg0 */
+		0x2108,		/* mpllb cfg1 */
+		0xcc9c,		/* mpllb cfg2 */
+		0xbfc1,		/* mpllb cfg3 */
+		0x5a00,		/* mpllb cfg4 */
+		0x4b9a,		/* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x5000,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
+	.clock = 810000,
+	.tx = {	0xbe88, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x10d2,	/* mpllb cfg0 */
+		0x2108,		/* mpllb cfg1 */
+		0x8d98,		/* mpllb cfg2 */
+		0xbfc1,		/* mpllb cfg3 */
+		0x8700,		/* mpllb cfg4 */
+		0x7166,		/* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x7800,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+/* C20 basic DP 2.0 tables */
+static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
+	.clock = 312500,
+	.tx = {	0xbe21, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mplla = { 0x3104,	/* mplla cfg0 */
+		0xd105,		/* mplla cfg1 */
+		0xc025,		/* mplla cfg2 */
+		0xc025,		/* mplla cfg3 */
+		0xa6ab,		/* mplla cfg4 */
+		0x8c00,		/* mplla cfg5 */
+		0x4000,		/* mplla cfg6 */
+		0x0003,		/* mplla cfg7 */
+		0x3555,		/* mplla cfg8 */
+		0x0001,		/* mplla cfg9 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
+	.clock = 421875,
+	.tx = {	0xbea0, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x015f,	/* mpllb cfg0 */
+		0x2205,		/* mpllb cfg1 */
+		0x1b17,		/* mpllb cfg2 */
+		0xffc1,		/* mpllb cfg3 */
+		0xe100,		/* mpllb cfg4 */
+		0xbd00,		/* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x4800,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
+	.clock = 625000,
+	.tx = {	0xbe20, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mplla = { 0x3104,	/* mplla cfg0 */
+		0xd105,		/* mplla cfg1 */
+		0xc025,		/* mplla cfg2 */
+		0xc025,		/* mplla cfg3 */
+		0xa6ab,		/* mplla cfg4 */
+		0x8c00,		/* mplla cfg5 */
+		0x4000,		/* mplla cfg6 */
+		0x0003,		/* mplla cfg7 */
+		0x3555,		/* mplla cfg8 */
+		0x0001,		/* mplla cfg9 */
+		},
+};
+
+static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
+        &mtl_c20_dp_rbr,
+        &mtl_c20_dp_hbr1,
+        &mtl_c20_dp_hbr2,
+        &mtl_c20_dp_hbr3,
+	&mtl_c20_dp_uhbr10,
+	&mtl_c20_dp_uhbr13_5,
+	&mtl_c20_dp_uhbr20,
+        NULL,
+};
+
 /*
  * HDMI link rates with 38.4 MHz reference clock.
  */
@@ -725,7 +929,181 @@ static const struct intel_c10mpllb_state * const mtl_c10_hdmi_tables[] = {
 	NULL,
 };
 
-int intel_c10_phy_check_hdmi_link_rate(int clock)
+static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
+	.clock = 25175,
+	.mpllb = { 0xa0d2,	/* mpllb cfg0 */
+		   0x7d80,	/* mpllb cfg1 */
+		   0x0906,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x0200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x0000,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0001,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
+	.clock = 27000,
+	.mpllb = { 0xa0e0,	/* mpllb cfg0 */
+		   0x7d80,	/* mpllb cfg1 */
+		   0x0906,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x8000,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0001,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
+	.clock = 74250,
+	.mpllb = { 0x609a,	/* mpllb cfg0 */
+		   0x7d40,	/* mpllb cfg1 */
+		   0xca06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x5800,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0001,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
+	.clock = 148500,
+	.mpllb = { 0x409a,	/* mpllb cfg0 */
+		   0x7d20,	/* mpllb cfg1 */
+		   0xca06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x5800,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0001,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
+	.clock = 594000,
+	.mpllb = { 0x009a,	/* mpllb cfg0 */
+		   0x7d08,	/* mpllb cfg1 */
+		   0xca06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x5800,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0001,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
+	.clock = 166670,
+	.mpllb = { 0x209c,	/* mpllb cfg0 */
+		   0x7d10,	/* mpllb cfg1 */
+		   0xca06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x2000,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0004,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
+	.clock = 333330,
+	.mpllb = { 0x009c,	/* mpllb cfg0 */
+		   0x7d08,	/* mpllb cfg1 */
+		   0xca06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x2000,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0004,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
+	.clock = 444440,
+	.mpllb = { 0x00d0,	/* mpllb cfg0 */
+		   0x7d08,	/* mpllb cfg1 */
+		   0x4a06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0003,	/* mpllb cfg7 */
+		   0x2aaa,	/* mpllb cfg8 */
+		   0x0002,	/* mpllb cfg9 */
+		   0x0004,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
+	.clock = 555560,
+	.mpllb = { 0x1104,	/* mpllb cfg0 */
+		   0x7d08,	/* mpllb cfg1 */
+		   0x0a06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0003,	/* mpllb cfg7 */
+		   0x3555,	/* mpllb cfg8 */
+		   0x0001,	/* mpllb cfg9 */
+		   0x0004,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
+	.clock = 666670,
+	.mpllb = { 0x0138,	/* mpllb cfg0 */
+		   0x7d08,	/* mpllb cfg1 */
+		   0x5486,	/* mpllb cfg2 */
+		   0xfe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x4000,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0004,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
+	&mtl_c20_hdmi_25_175,
+	&mtl_c20_hdmi_27_0,
+	&mtl_c20_hdmi_74_25,
+	&mtl_c20_hdmi_148_5,
+	&mtl_c20_hdmi_594,
+	&mtl_c20_hdmi_300,
+	&mtl_c20_hdmi_600,
+	&mtl_c20_hdmi_800,
+	&mtl_c20_hdmi_1000,
+	&mtl_c20_hdmi_1200,
+	NULL,
+};
+
+static int intel_c10_phy_check_hdmi_link_rate(int clock)
 {
 	const struct intel_c10mpllb_state * const *tables = mtl_c10_hdmi_tables;
 	int i;
@@ -738,6 +1116,17 @@ int intel_c10_phy_check_hdmi_link_rate(int clock)
 	return MODE_CLOCK_RANGE;
 }
 
+int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock)
+{
+	struct intel_digital_port *dig_port = hdmi_to_dig_port(hdmi);
+	struct drm_i915_private *i915 = intel_hdmi_to_i915(hdmi);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+
+	if (intel_is_c10phy(i915, phy))
+		return intel_c10_phy_check_hdmi_link_rate(clock);
+	return intel_c20_phy_check_hdmi_link_rate(clock);
+}
+
 static const struct intel_c10mpllb_state * const *
 intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder)
@@ -920,6 +1309,53 @@ void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
 			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
 }
 
+int intel_c20_phy_check_hdmi_link_rate(int clock)
+{
+        const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;
+        int i;
+
+        for (i = 0; tables[i]; i++) {
+                if (clock == tables[i]->clock)
+                        return MODE_OK;
+        }
+
+        return MODE_CLOCK_RANGE;
+}
+
+static const struct intel_c20pll_state * const *
+intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
+			 struct intel_encoder *encoder)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		return mtl_c20_dp_tables;
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		return mtl_c20_hdmi_tables;
+	}
+
+	MISSING_CASE(encoder->type);
+	return NULL;
+}
+
+int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
+	                    struct intel_encoder *encoder)
+{
+	const struct intel_c20pll_state * const *tables;
+	int i;
+
+	tables = intel_c20_pll_tables_get(crtc_state, encoder);
+	if (!tables)
+		return -EINVAL;
+
+	for (i = 0; tables[i]; i++) {
+		if (crtc_state->port_clock <= tables[i]->clock) {
+			crtc_state->cx0pll_state.c20pll_state = *tables[i];
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
 static bool intel_c20_use_mplla(u32 clock)
 {
 	/* 10G and 20G rates use MPLLA */
@@ -929,6 +1365,63 @@ static bool intel_c20_use_mplla(u32 clock)
 	return false;
 }
 
+void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
+				   struct intel_c20pll_state *pll_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	bool cntx, use_mplla;
+	u32 val;
+	int i;
+
+        /* 1. Read current context selection */
+        cntx = intel_cx0_read(i915, encoder->port, 0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
+
+	/* Read Tx configuration */
+	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
+		if (cntx)
+			pll_state->tx[i] = intel_c20_read(i915, encoder->port, 0,
+							  PHY_C20_B_TX_CNTX_CFG(i));
+		else
+			pll_state->tx[i] = intel_c20_read(i915, encoder->port, 0,
+							  PHY_C20_A_TX_CNTX_CFG(i));
+	}
+
+	/* Read common configuration */
+	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
+		if (cntx)
+			pll_state->cmn[i] = intel_c20_read(i915, encoder->port, 0,
+							   PHY_C20_B_CMN_CNTX_CFG(i));
+		else
+			pll_state->cmn[i] = intel_c20_read(i915, encoder->port, 0,
+							   PHY_C20_A_CMN_CNTX_CFG(i));
+	}
+
+	val = intel_c20_read(i915, encoder->port, 0, PHY_C20_A_MPLLA_CNTX_CFG(6));
+	use_mplla = val & C20_MPLLB_FRACEN;
+
+	if (use_mplla) {
+		/* MPLLA configuration */
+		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
+			if (cntx)
+				pll_state->mplla[i] = intel_c20_read(i915, encoder->port, 0,
+								     PHY_C20_B_MPLLA_CNTX_CFG(i));
+			else
+				pll_state->mplla[i] = intel_c20_read(i915, encoder->port, 0,
+								     PHY_C20_A_MPLLA_CNTX_CFG(i));
+		}
+	} else {
+		/* MPLLB configuration */
+		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
+			if (cntx)
+				pll_state->mpllb[i] = intel_c20_read(i915, encoder->port, 0,
+								     PHY_C20_B_MPLLB_CNTX_CFG(i));
+			else
+				pll_state->mpllb[i] = intel_c20_read(i915, encoder->port, 0,
+								     PHY_C20_A_MPLLB_CNTX_CFG(i));
+		}
+	}
+}
+
 static u8 intel_c20_get_dp_rate(u32 clock)
 {
 	switch (clock) {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 952c7deeffaa..86edbc4b1718 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -33,14 +33,22 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 				     struct intel_c10mpllb_state *pll_state);
 int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			      struct intel_encoder *encoder);
+int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
+			    struct intel_encoder *encoder);
+void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
+                                   struct intel_c20pll_state *pll_state);
 void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
 				  const struct intel_c10mpllb_state *hw_state);
 int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state);
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state);
-int intel_c10_phy_check_hdmi_link_rate(int clock);
+int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 
+int intel_c20_phy_check_hdmi_link_rate(int clock);
+void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
+				       const struct intel_crtc_state *crtc_state,
+				       u32 level);
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7d57cbf7e686..d6a03ae19dc2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3499,10 +3499,13 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
+	if (intel_is_c10phy(i915, phy)) {
+		intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
+		intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
+	} else {
+		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20pll_state);
+	}
 
-	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
-	intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
 	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
 
 	intel_ddi_get_config(encoder, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index c274098f2196..c31b947d8042 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -57,7 +57,7 @@
 #include "intel_panel.h"
 #include "intel_snps_phy.h"
 
-static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
+inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
 {
 	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
 }
@@ -1876,8 +1876,8 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	 * FIXME: We will hopefully get an algorithmic way of programming
 	 * the MPLLB for HDMI in the future.
 	 */
-	if (IS_METEORLAKE(dev_priv))
-		return intel_c10_phy_check_hdmi_link_rate(clock);
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
 	else if (IS_DG2(dev_priv))
 		return intel_snps_phy_check_hdmi_link_rate(clock);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 93f65a917c36..0bb1201bab04 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -54,5 +54,6 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
 				  int src_max_slices, int src_max_slice_width,
 				  int hdmi_max_slices, int hdmi_throughput);
 int intel_hdmi_dsc_get_slice_height(int vactive);
+struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi);
 
 #endif /* __INTEL_HDMI_H__ */
-- 
2.34.1

