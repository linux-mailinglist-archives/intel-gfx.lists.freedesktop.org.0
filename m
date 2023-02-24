Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B636A19DE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A5010E89E;
	Fri, 24 Feb 2023 10:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC6F10E878
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233963; x=1708769963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vD3jh0RAKH5HFu5DM9IUKX54SeZBrixBSInvKsJD07s=;
 b=F1q6IT2hCtaYgEoYmsonJJy8qvorZl/4zL3v9nXhnAFHnNzu00wAmII7
 irVM+IwGmCZSuxkvWsIuvfrwBoX0jYAq2XAKYvelBsY8aheoPULy7ZR5Q
 CY1+QxyNZpC7nNamX+Y/1V6Oma/7H7xgIPqpM/4UEbBi7t7erx3KQJ9cY
 cwPwk9LLRcHql8x03fkhKs98YMTIxmDNt9z+3wYV51OEMxGb5cBe87Axq
 PdaFDmr3mgA4jE5s/xFAIzlbrwSuVk+7oa6grsDWz/MLs3DoFOa+jAzIu
 pa/SOvuR6mSqig5KNSl5gNL57dQFsCtOmGL5sHsIjpamxCfn1wyH6eo1y g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129869"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129869"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846575"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846575"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:21 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:43 +0200
Message-Id: <20230224101356.2390838-10-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 09/22] drm/i915/mtl: C20 HW readout
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

v2: Update rbr, hbr1, hbr2, and hbr3 pll configurations 4 and 5
    based on changes in BSpec consolidated table
v3: Rename intel_c20_read() to intel_c20_sram_read() (Gustavo)
    Use context and correct MPLLA reg bit to select if MPLLA is in
    use or not (Gustavo)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 553 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h    |   1 +
 5 files changed, 569 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 730c70f82822..bfb264ea154a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -11,6 +11,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_hdmi.h"
 #include "intel_panel.h"
 #include "intel_tc.h"
 #include "intel_psr.h"
@@ -248,6 +249,23 @@ static void intel_c20_sram_write(struct drm_i915_private *i915, enum port port,
 	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
 }
 
+static u16 intel_c20_sram_read(struct drm_i915_private *i915, enum port port,
+			        int lane, u16 addr)
+{
+	u16 val;
+
+	assert_dc_off(i915);
+
+	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, (addr >> 8), 1);
+	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 0);
+
+	val = intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_H);
+	val <<= 8;
+	val |= intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_L);
+
+	return val;
+}
+
 static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
 			    int lane, u16 addr, u8 clear, u8 set, bool committed)
 {
@@ -598,6 +616,192 @@ static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
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
+		0x5ab8,         /* mpllb cfg4 */
+		0x4c34,         /* mpllb cfg5 */
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
+		0x489a,         /* mpllb cfg4 */
+		0x3f81,         /* mpllb cfg5 */
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
+		0x489a,         /* mpllb cfg4 */
+		0x3f81,         /* mpllb cfg5 */
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
+		0x7166,         /* mpllb cfg4 */
+		0x5f42,         /* mpllb cfg5 */
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
@@ -1117,7 +1321,271 @@ static const struct intel_c10mpllb_state * const mtl_c10_hdmi_tables[] = {
 	NULL,
 };
 
-int intel_c10_phy_check_hdmi_link_rate(int clock)
+static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
+	.clock = 25175,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
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
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
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
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
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
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
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
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
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
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
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
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
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
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
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
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
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
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
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
@@ -1130,6 +1598,17 @@ int intel_c10_phy_check_hdmi_link_rate(int clock)
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
@@ -1314,6 +1793,19 @@ void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
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
 static bool intel_c20_use_mplla(u32 clock)
 {
 	/* 10G and 20G rates use MPLLA */
@@ -1323,6 +1815,65 @@ static bool intel_c20_use_mplla(u32 clock)
 	return false;
 }
 
+void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
+				   struct intel_c20pll_state *pll_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	bool cntx;
+	u32 val;
+	int i;
+
+        /* 1. Read current context selection */
+        cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
+
+	/* Read Tx configuration */
+	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
+		if (cntx)
+			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+							       PHY_C20_B_TX_CNTX_CFG(i));
+		else
+			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+							       PHY_C20_A_TX_CNTX_CFG(i));
+	}
+
+	/* Read common configuration */
+	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
+		if (cntx)
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+							        PHY_C20_B_CMN_CNTX_CFG(i));
+		else
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+							        PHY_C20_A_CMN_CNTX_CFG(i));
+	}
+
+	if (cntx)
+		val = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_MPLLA_CNTX_CFG(6));
+	else
+		val = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_MPLLA_CNTX_CFG(6));
+
+	if (val & C20_MPLLA_FRACEN) {
+		/* MPLLA configuration */
+		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
+			if (cntx)
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+								          PHY_C20_B_MPLLA_CNTX_CFG(i));
+			else
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+								          PHY_C20_A_MPLLA_CNTX_CFG(i));
+		}
+	} else {
+		/* MPLLB configuration */
+		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
+			if (cntx)
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+								          PHY_C20_B_MPLLB_CNTX_CFG(i));
+			else
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+								          PHY_C20_A_MPLLB_CNTX_CFG(i));
+		}
+	}
+}
+
 static u8 intel_c20_get_dp_rate(u32 clock)
 {
 	switch (clock) {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 952c7deeffaa..cf603080ce3d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -33,14 +33,20 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 				     struct intel_c10mpllb_state *pll_state);
 int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			      struct intel_encoder *encoder);
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
index 13696f08e75e..8e653061adb9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3517,10 +3517,13 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
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
index baa9ef7568af..43d06d22bd48 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -59,7 +59,7 @@
 #include "intel_panel.h"
 #include "intel_snps_phy.h"
 
-static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
+inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
 {
 	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
 }
@@ -1866,8 +1866,8 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
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
index 774dda2376ed..492bd3921385 100644
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

