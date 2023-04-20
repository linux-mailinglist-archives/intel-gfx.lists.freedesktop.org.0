Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2326E986F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 17:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DCC410EC97;
	Thu, 20 Apr 2023 15:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 858BB10EC9C;
 Thu, 20 Apr 2023 15:36:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BE1FA0BA8;
 Thu, 20 Apr 2023 15:36:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Thu, 20 Apr 2023 15:36:43 -0000
Message-ID: <168200500348.780.1648205372540212506@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230420124050.3617608-1-mika.kahola@intel.com>
In-Reply-To: <20230420124050.3617608-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Add_support_for_C20_phy?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/mtl: Add support for C20 phy
URL   : https://patchwork.freedesktop.org/series/116755/
State : warning

== Summary ==

Error: dim checkpatch failed
46e88ddde94d drm/i915/mtl: C20 PLL programming
-:155: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#155: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1539:
+	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) &

-:164: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#164: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1548:
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);

-:165: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#165: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1549:
+		msleep(4);

-:172: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#172: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1556:
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);

-:174: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#174: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1558:
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);

-:180: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#180: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1564:
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);

-:182: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#182: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1566:
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);

-:218: CHECK:BRACES: Unbalanced braces around else statement
#218: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1602:
+	} else

-:226: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1610:
+			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(pll_state->clock)),

-:229: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#229: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1613:
+		intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_SERDES_RATE,

total: 0 errors, 9 warnings, 1 checks, 460 lines checked
d82ad92a3433 drm/i915/mtl: C20 HW readout
-:617: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#617: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1962:
+int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
+			 struct intel_encoder *encoder)

-:643: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#643: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1990:
+	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;

-:658: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#658: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2005:
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:661: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#661: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2008:
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:665: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#665: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2012:
+	val = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_MPLLA_CNTX_CFG(6));

-:672: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#672: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2019:
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:673: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#673: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2020:
+									  PHY_C20_B_MPLLA_CNTX_CFG(i));

-:675: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#675: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2022:
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:676: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#676: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2023:
+									  PHY_C20_A_MPLLA_CNTX_CFG(i));

-:682: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#682: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2029:
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:683: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#683: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2030:
+									  PHY_C20_B_MPLLB_CNTX_CFG(i));

-:685: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#685: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2032:
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:686: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#686: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2033:
+									  PHY_C20_A_MPLLB_CNTX_CFG(i));

total: 0 errors, 12 warnings, 1 checks, 726 lines checked
ce6b7fb67873 drm/i915/mtl: Dump C20 pll hw state
5a2d3ba050ea drm/i915/mtl: C20 port clock calculation
-:114: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3859:
+		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);

-:118: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3863:
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);

-:135: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#135: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1018:
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);

total: 0 errors, 3 warnings, 0 checks, 103 lines checked
61bee4b75b89 drm/i915/mtl: Add voltage swing sequence for C20
-:105: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1679:
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_is_c10phy(i915, phy)))

total: 0 errors, 1 warnings, 0 checks, 86 lines checked
9cd1246607e2 drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA
4f7e469f9d1f drm/i915/mtl: Enabling/disabling sequence Thunderbolt pll
5265ce50e00d drm/i915/mtl: Readout Thunderbolt HW state
5e90edc92f1b drm/i915/mtl: Define mask for DDI AUX interrupts
b9cf0eac8d47 drm/i915/mtl: Power up TCSS
8e2329e034ed drm/i915/mtl: TypeC HPD live status query
c45407f3bc4c drm/i915/mtl: Pin assignment for TypeC
1940631d8e23 drm/i915/mtl: Enable TC ports


