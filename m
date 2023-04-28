Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5176F1D33
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 19:10:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E8710E410;
	Fri, 28 Apr 2023 17:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 025AC10E410;
 Fri, 28 Apr 2023 17:10:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E39A7A66C9;
 Fri, 28 Apr 2023 17:10:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Fri, 28 Apr 2023 17:10:26 -0000
Message-ID: <168270182690.32439.1562076004465930217@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230428095433.4109054-1-mika.kahola@intel.com>
In-Reply-To: <20230428095433.4109054-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Add_support_for_C20_phy_=28rev2=29?=
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

Series: drm/i915/mtl: Add support for C20 phy (rev2)
URL   : https://patchwork.freedesktop.org/series/116755/
State : warning

== Summary ==

Error: dim checkpatch failed
7bd367a64eec drm/i915/mtl: C20 PLL programming
-:175: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#175: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1553:
+	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & BIT(0);

-:184: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#184: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1562:
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);

-:192: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1570:
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);

-:194: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#194: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1572:
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);

-:200: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1578:
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);

-:202: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1580:
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);

-:240: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1618:
+			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(pll_state->clock)),

total: 0 errors, 7 warnings, 0 checks, 469 lines checked
09766635af47 drm/i915/mtl: C20 HW readout
-:620: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#620: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1962:
+int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
+			 struct intel_encoder *encoder)

-:648: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#648: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1992:
+	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;

-:663: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#663: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2007:
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:666: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#666: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2010:
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:674: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#674: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2018:
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:675: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#675: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2019:
+									  PHY_C20_B_MPLLB_CNTX_CFG(i));

-:677: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#677: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2021:
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:678: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#678: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2022:
+									  PHY_C20_A_MPLLB_CNTX_CFG(i));

-:684: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#684: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2028:
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:685: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#685: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2029:
+									  PHY_C20_B_MPLLA_CNTX_CFG(i));

-:687: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#687: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2031:
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:688: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#688: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2032:
+									  PHY_C20_A_MPLLA_CNTX_CFG(i));

total: 0 errors, 11 warnings, 1 checks, 734 lines checked
804f129cc4e5 drm/i915/mtl: Dump C20 pll hw state
8a73ed4024d4 drm/i915/mtl: C20 port clock calculation
-:115: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#115: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3859:
+		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);

-:119: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#119: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3863:
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);

-:136: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#136: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1018:
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);

total: 0 errors, 3 warnings, 0 checks, 101 lines checked
b6fec8d2756f drm/i915/mtl: Add voltage swing sequence for C20
-:106: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#106: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1679:
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_is_c10phy(i915, phy)))

total: 0 errors, 1 warnings, 0 checks, 86 lines checked
4d6d3e9de395 drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA
cfcdaac89fbc drm/i915/mtl: Enabling/disabling sequence Thunderbolt pll
81eb7f056ce8 drm/i915/mtl: Readout Thunderbolt HW state
4ecb28fc119c drm/i915/mtl: Define mask for DDI AUX interrupts
ea8d69a93f43 drm/i915/mtl: Power up TCSS
4fbbdf9d8018 drm/i915/mtl: TypeC HPD live status query
8a7f68fa9334 drm/i915/mtl: Pin assignment for TypeC
6b51a404bbcb drm/i915/mtl: Enable TC ports


