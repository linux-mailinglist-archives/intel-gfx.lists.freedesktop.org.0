Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF8B7EE65A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 19:06:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66EBE10E2A9;
	Thu, 16 Nov 2023 18:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7FD910E2A9;
 Thu, 16 Nov 2023 18:06:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C106EAADDA;
 Thu, 16 Nov 2023 18:06:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 16 Nov 2023 18:06:15 -0000
Message-ID: <170015797576.3092.15891070826119055745@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231114104534.4180144-1-jani.nikula@intel.com>
In-Reply-To: <20231114104534.4180144-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_move_*=5Fcr?=
 =?utf-8?b?dGNfY2xvY2tfZ2V0KCkgdG8gaW50ZWxfZHBsbC5jIChyZXYzKQ==?=
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

Series: series starting with [v2,1/3] drm/i915: move *_crtc_clock_get() to intel_dpll.c (rev3)
URL   : https://patchwork.freedesktop.org/series/126388/
State : warning

== Summary ==

Error: dim checkpatch failed
35cbbdaf6d00 drm/i915: move *_crtc_clock_get() to intel_dpll.c
-:346: CHECK:BRACES: braces {} should be used on all arms of this statement
#346: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:458:
+			if (dpll & PLL_P1_DIVIDE_BY_TWO)
[...]
+			else {
[...]

-:348: CHECK:BRACES: Unbalanced braces around else statement
#348: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:460:
+			else {

total: 0 errors, 0 warnings, 2 checks, 424 lines checked
1dbaeebedb89 drm/i915: add vlv_pipe_to_phy() helper to replace DPIO_PHY()
-:57: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#57: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:120:
 }
+static inline enum dpio_phy vlv_pipe_to_phy(enum pipe pipe)

total: 0 errors, 0 warnings, 1 checks, 71 lines checked
4d743e43c3b8 drm/i915: convert vlv_dpio_read()/write() from pipe to phy
-:362: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#362: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:953:
+		vlv_dpio_write(dev_priv, phy, CHV_TX_DW14(ch, i),
 				data << DPIO_UPAR_SHIFT);

-:437: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#437: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1062:
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2(port),
 			 uniqtranscale_reg_value);

-:466: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#466: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1088:
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(port),
 			 DPIO_PCS_TX_LANE2_RESET |

-:470: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#470: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:1091:
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(port),
 			 DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |

-:668: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#668: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1899:
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW10(pipe),
 				 0x009f0003);

-:672: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#672: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1902:
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW10(pipe),
 				 0x00d0000f);

-:679: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#679: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1908:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
 					 0x0df40000);

-:683: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#683: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1911:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
 					 0x0df70000);

-:689: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#689: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1916:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
 					 0x0df70000);

-:693: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#693: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1919:
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
 					 0x0df40000);

-:723: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#723: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1997:
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW13(port),
 			5 << DPIO_CHV_S1_DIV_SHIFT |

-:735: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#735: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:2007:
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW1(port),
 			DPIO_CHV_M1_DIV_BY_2 |

-:783: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#783: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:2062:
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port),
+			vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(port)) |

total: 0 errors, 0 warnings, 13 checks, 805 lines checked


