Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F6E803E19
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 20:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F5D10E21D;
	Mon,  4 Dec 2023 19:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AFB2710E21D;
 Mon,  4 Dec 2023 19:10:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8CB23AA3D8;
 Mon,  4 Dec 2023 19:10:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Mon, 04 Dec 2023 19:10:59 -0000
Message-ID: <170171705954.20592.12132358850339215820@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231204115856.176240-1-mika.kahola@intel.com>
In-Reply-To: <20231204115856.176240-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Convert_link_bitrate_to_clock?=
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

Series: drm/i915/display: Convert link bitrate to clock
URL   : https://patchwork.freedesktop.org/series/127287/
State : warning

== Summary ==

Error: dim checkpatch failed
1a78eb50da55 drm/i915/display: Move C20 HW readout
-:95: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2459:
+	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;

-:110: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#110: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2474:
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:113: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#113: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2477:
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:121: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#121: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2485:
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:122: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#122: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2486:
+									  PHY_C20_B_MPLLB_CNTX_CFG(i));

-:124: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#124: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2488:
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:125: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#125: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2489:
+									  PHY_C20_A_MPLLB_CNTX_CFG(i));

-:131: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#131: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2495:
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:132: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#132: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2496:
+									  PHY_C20_B_MPLLA_CNTX_CFG(i));

-:134: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#134: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2498:
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,

-:135: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#135: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2499:
+									  PHY_C20_A_MPLLA_CNTX_CFG(i));

total: 0 errors, 11 warnings, 0 checks, 128 lines checked
d9b0b0b350b3 drm/i915/display: Convert link bitrate to corresponding PLL clock
-:110: ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
#110: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3179:
+	intel_cx0pll_readout_hw_state(encoder, (struct intel_crtc_state*)new_crtc_state,

total: 1 errors, 0 warnings, 0 checks, 102 lines checked
525429c422fe drm/i915/display: Print out debug messages for clock rates


