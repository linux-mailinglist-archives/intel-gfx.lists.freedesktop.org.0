Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1958B74B5
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 13:43:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B04110E6EE;
	Tue, 30 Apr 2024 11:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B99E10E6EE;
 Tue, 30 Apr 2024 11:43:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_VLV/CHV_?=
 =?utf-8?q?DPIO_register_cleanup_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2024 11:43:06 -0000
Message-ID: <171447738604.1793171.18032979266931071440@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: VLV/CHV DPIO register cleanup (rev2)
URL   : https://patchwork.freedesktop.org/series/132691/
State : warning

== Summary ==

Error: dim checkpatch failed
1e5364e2978e drm/i915/dpio: Remove pointless VLV_PCS01_DW8 read
6edc798fb246 drm/i915/dpio: s/VLV_REF_DW13/VLV_REF_DW11/
9115ea6798d1 drm/i915/dpio: s/VLV_PLL_DW9_BCAST/VLV_PCS_DW17_BCAST/
c7246eff0964 drm/i915/dpio: Fix VLV DPIO PLL register dword numbering
-:73: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#73: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1955:
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
 				 0x009f0003);

-:77: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#77: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1958:
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
 				 0x00d0000f);

total: 0 errors, 0 warnings, 2 checks, 87 lines checked
8d1345a4fefa drm/i915/dpio: Remove pointless variables from vlv/chv DPLL code
bcf1bc12a1d3 drm/i915/dpio: Rename some variables
7f73ae2bf28b drm/i915/dpio: s/port/ch/
-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1080:
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2(ch),
 			 uniqtranscale_reg_value);

-:65: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#65: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1106:
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(ch),
 			 DPIO_PCS_TX_LANE2_RESET |

-:69: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#69: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1109:
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(ch),
 			 DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |

total: 0 errors, 0 warnings, 3 checks, 241 lines checked
72e6f66899e4 drm/i915/dpio: s/pipe/ch/
-:116: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#116: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1952:
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(ch),
 				 0x009f0003);

-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1955:
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(ch),
 				 0x00d0000f);

-:127: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#127: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1961:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df40000);

-:131: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#131: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1964:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df70000);

-:137: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#137: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1969:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df70000);

-:141: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#141: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1972:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df40000);

total: 0 errors, 0 warnings, 6 checks, 148 lines checked
e408f10f199c drm/i915/dpio: Derive the phy from the port rather than pipe in encoder hooks
b51aeefe07d8 drm/i915/dpio: Give VLV DPIO group register a clearer name
-:30: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#30: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1077:
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2_GRP(ch),
 			 uniqtranscale_reg_value);

-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1102:
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0_GRP(ch),
 			 DPIO_PCS_TX_LANE2_RESET |

-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1105:
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1_GRP(ch),
 			 DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |

total: 0 errors, 0 warnings, 3 checks, 262 lines checked
74300d05fedc drm/i915/dpio: Rename a few CHV DPIO PHY registers
3ff5eac8b3de drm/i915/dpio: Clean up VLV/CHV DPIO PHY register defines
1376d31ec62c drm/i915/dpio: Clean up the vlv/chv PHY register bits
-:609: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#609: FILE: drivers/gpu/drm/i915/i915_reg.h:409:
+#define   DPIO_CHV_INT_LOCK_THRESHOLD(x)		REG_FIELD_PREP(DPIO_CHV_INT_LOCK_THRESHOLD_MASK, (x))

total: 0 errors, 1 warnings, 0 checks, 686 lines checked
97cb9ec79404 drm/i915/dpio: Extract vlv_dpio_phy_regs.h
-:63: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#63: 
new file mode 100644

-:289: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#289: FILE: drivers/gpu/drm/i915/display/vlv_dpio_phy_regs.h:222:
+#define   DPIO_CHV_INT_LOCK_THRESHOLD(x)		REG_FIELD_PREP(DPIO_CHV_INT_LOCK_THRESHOLD_MASK, (x))

total: 0 errors, 2 warnings, 0 checks, 641 lines checked


