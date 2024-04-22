Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C96238ACA1F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 12:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2B010F550;
	Mon, 22 Apr 2024 10:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7501B10F550;
 Mon, 22 Apr 2024 10:01:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_VLV/CHV_?=
 =?utf-8?q?DPIO_register_cleanup?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Apr 2024 10:01:30 -0000
Message-ID: <171378009047.1570261.654561056557218620@8e613ede5ea5>
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

Series: drm/i915: VLV/CHV DPIO register cleanup
URL   : https://patchwork.freedesktop.org/series/132691/
State : warning

== Summary ==

Error: dim checkpatch failed
184896913edd drm/i915/dpio: Remove pointless VLV_PCS01_DW8 read
a2f8a671697e drm/i915/dpio: s/VLV_REF_DW13/VLV_REF_DW11/
86c9cdd31e2c drm/i915/dpio: s/VLV_PLL_DW9_BCAST/VLV_PCS_DW17_BCAST/
539c41fc43a2 drm/i915/dpio: Fix VLV DPIO PLL register dword numbering
-:73: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#73: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1955:
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
 				 0x009f0003);

-:77: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#77: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1958:
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
 				 0x00d0000f);

total: 0 errors, 0 warnings, 2 checks, 87 lines checked
23005c4598b0 drm/i915/dpio: Remove pointless variables from vlv/chv DPLL code
e9958d5045c7 drm/i915/dpio: Rename some variables
aeed158347d0 drm/i915/dpio: s/port/ch/
-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1080:
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2(ch),
 			 uniqtranscale_reg_value);

-:64: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#64: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1106:
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(ch),
 			 DPIO_PCS_TX_LANE2_RESET |

-:68: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#68: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1109:
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(ch),
 			 DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |

total: 0 errors, 0 warnings, 3 checks, 241 lines checked
079148d63725 drm/i915/dpio: s/pipe/ch/
-:115: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#115: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1952:
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(ch),
 				 0x009f0003);

-:119: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#119: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1955:
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(ch),
 				 0x00d0000f);

-:126: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#126: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1961:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df40000);

-:130: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#130: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1964:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df70000);

-:136: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#136: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1969:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df70000);

-:140: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#140: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1972:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df40000);

total: 0 errors, 0 warnings, 6 checks, 148 lines checked
accdf36188da drm/i915/dpio: Derive the phy from the port rather than pipe in encoder hooks
fa7e0411e89e drm/i915/dpio: Give VLV DPIO group register a clearer name
-:29: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#29: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1077:
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2_GRP(ch),
 			 uniqtranscale_reg_value);

-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1102:
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0_GRP(ch),
 			 DPIO_PCS_TX_LANE2_RESET |

-:55: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#55: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1105:
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1_GRP(ch),
 			 DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |

total: 0 errors, 0 warnings, 3 checks, 262 lines checked
d14f54c49025 drm/i915/dpio: Rename a few CHV DPIO PHY registers
9376db9e9866 drm/i915/dpio: Clean up VLV/CHV DPIO PHY register defines
655636fc383b drm/i915/dpio: Clean up the vlv/chv PHY register bits
-:608: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#608: FILE: drivers/gpu/drm/i915/i915_reg.h:409:
+#define   DPIO_CHV_INT_LOCK_THRESHOLD(x)		REG_FIELD_PREP(DPIO_CHV_INT_LOCK_THRESHOLD_MASK, (x))

total: 0 errors, 1 warnings, 0 checks, 686 lines checked
7bd6e1c1f6b0 drm/i915/dpio: Extract vlv_dpio_phy_regs.h
-:62: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#62: 
new file mode 100644

-:288: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#288: FILE: drivers/gpu/drm/i915/display/vlv_dpio_phy_regs.h:222:
+#define   DPIO_CHV_INT_LOCK_THRESHOLD(x)		REG_FIELD_PREP(DPIO_CHV_INT_LOCK_THRESHOLD_MASK, (x))

total: 0 errors, 2 warnings, 0 checks, 641 lines checked


