Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28828917840
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 07:43:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 406F710E773;
	Wed, 26 Jun 2024 05:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0A910E773;
 Wed, 26 Jun 2024 05:42:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Add_HDMI_PLL_Algorit?=
 =?utf-8?q?hm_for_SNPS/C10PHY?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2024 05:42:56 -0000
Message-ID: <171938057676.158965.2764504214758877525@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Add HDMI PLL Algorithm for SNPS/C10PHY
URL   : https://patchwork.freedesktop.org/series/135397/
State : warning

== Summary ==

Error: dim checkpatch failed
3e40cbc4f650 drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

-:231: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#231: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:195:
+		{2500000000, 3000000000, 3000000000, 3500000000, 3500000000, 4000000000, 4000000000, 5000000000},

-:232: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#232: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:196:
+		{4000000000, 4600000000, 4601000000, 5400000000, 5401000000, 6600000000, 6601000000, 8001000000}};

-:241: WARNING:LONG_LINE: line length of 149 exceeds 100 columns
#241: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:205:
+		{85177000000000, 79385227160000, 95672603580000, 88857207160000, 109379790900000, 103528193900000, 131941242400000, 117279000000000},

-:242: WARNING:LONG_LINE: line length of 148 exceeds 100 columns
#242: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:206:
+		{60255000000000, 55569000000000, 72036000000000, 69509000000000,  81785000000000, 731030000000000, 96591000000000, 69077000000000}};

-:246: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#246: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:210:
+		{2186930000, 2835287134, 2395395343, 2932270687, 2351887545, 2861031697, 2294149152, 3091730000},

-:247: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#247: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:211:
+		{4560000000, 5570000000, 4610000000, 5770000000, 4670000000, 6240000000, 4890000000, 6600000000}

total: 0 errors, 7 warnings, 0 checks, 298 lines checked
a0b42b19bf39 drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
a26be620bf3c drm/i915/cx0_phy_regs: Add C10 registers bits
d10909335f98 drm/i915/pll_algorithm: Compute C10 HDMI PLLs with algorithm
-:41: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2040:
+							&crtc_state->dpll_hw_state.cx0pll.c10) == 0) {

-:80: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:266:
+		{2500000000, 3000000000, 3000000000, 3500000000, 3500000000, 4000000000, 4000000000, 5000000000},

-:81: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#81: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:267:
+		{4000000000, 4600000000, 4601000000, 5400000000, 5401000000, 6600000000, 6601000000, 8001000000}};

-:89: WARNING:LONG_LINE: line length of 147 exceeds 100 columns
#89: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:275:
+		{73300000000000, 66000000000000, 83100000000000, 75300000000000, 99700000000000, 92300000000000, 125000000000000, 110000000000000},

-:90: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#90: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:276:
+		{53700000000000, 47700000000000, 62200000000000, 54400000000000, 75100000000000, 63400000000000, 90600000000000, 76300000000000}};

-:94: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:280:
+		{2415790000, 3136460000, 2581990000, 3222670000, 2529330000, 3042020000, 2336970000, 3191460000},

-:95: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:281:
+		{4808390000, 5994250000, 4832730000, 6193730000, 4737700000, 6428750000, 4779200000, 6479340000}};

-:117: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:303:
+	pll_state->pll[12] = REG_FIELD_PREP(C10_PLL12_FRACN_QUOT_H_MASK, pll_params.fracn_quot >> 8);

-:126: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#126: FILE: drivers/gpu/drm/i915/display/intel_pll_algorithm.c:312:
+	pll_state->pll[18] = REG_FIELD_PREP(C10_PLL18_ANA_CPPROP_H_MASK, pll_params.ana_cp_prop >> 2) |

total: 0 errors, 9 warnings, 0 checks, 120 lines checked
7432c2d794f6 drm/xe: Add intel_pll_algorithm in Makefile


