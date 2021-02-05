Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8A4311269
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 21:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D0B36F4CD;
	Fri,  5 Feb 2021 20:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58DAE6F4CB;
 Fri,  5 Feb 2021 20:27:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5396AA363B;
 Fri,  5 Feb 2021 20:27:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 05 Feb 2021 20:27:55 -0000
Message-ID: <161255687533.1861.18415672393959007347@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1612536383.git.jani.nikula@intel.com>
In-Reply-To: <cover.1612536383.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_refactor_intel=5Fdisplay=2Ec_+_a_bit_more_=28re?=
 =?utf-8?b?djIp?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: refactor intel_display.c + a bit more (rev2)
URL   : https://patchwork.freedesktop.org/series/86723/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2685c66ddd72 drm/i915: migrate skl planes code new file (v5)
-:2738: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2738: 
new file mode 100644

-:3213: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3213: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:471:
+
+

-:3784: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3784: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1042:
+				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1].x);

-:4091: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4091: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1349:
+
+

-:4479: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4479: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1737:
+		return skl_planar_formats;
+	} else {

-:4492: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4492: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1750:
+		return glk_planar_formats;
+	} else {

-:4508: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4508: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1766:
+		return icl_sdr_y_plane_formats;
+	} else {

-:4851: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4851: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2109:
+		drm_plane_create_scaling_filter_property(&plane->base,
+						BIT(DRM_SCALING_FILTER_DEFAULT) |

total: 0 errors, 5 warnings, 3 checks, 4928 lines checked
bb3d788424ca drm/i915: move pipe update code into crtc. (v2)
-:247: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#247: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:541:
+	 * while ... */

total: 0 errors, 1 warnings, 0 checks, 506 lines checked
4e167ec1a05f drm/i915: split fb scalable checks into g4x and skl versions
839eee02c59c drm/i915: move is_ccs_modifier to an inline
f98c7886db90 drm/i915: migrate pll enable/disable code to intel_dpll.[ch]
-:640: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#640: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1399:
+	udelay(150);

-:658: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#658: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1417:
+		udelay(150); /* wait for warmup */

-:699: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#699: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1458:
+	udelay(150);

-:724: CHECK:LINE_SPACING: Please don't use multiple blank lines
#724: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1483:
+
+

-:808: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#808: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1567:
+		       pipe_config->dpll_hw_state.dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));

-:861: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#861: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1620:
+		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
+				 0x009f0003);

-:864: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#864: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1623:
+		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
+				 0x00d0000f);

-:870: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#870: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1629:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df40000);

-:873: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#873: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1632:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df70000);

-:878: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#878: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1637:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df70000);

-:881: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#881: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1640:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df40000);

-:929: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#929: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1688:
+	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW13(port),
+			5 << DPIO_CHV_S1_DIV_SHIFT |

-:939: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#939: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1698:
+	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW1(port),
+			DPIO_CHV_M1_DIV_BY_2 |

-:994: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#994: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1753:
+	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port),
+			vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port)) |

-:1098: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1098: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1857:
+
+

total: 0 errors, 1 warnings, 14 checks, 1110 lines checked
2758eb6d6841 drm/i915: migrate i9xx plane get config
a69fe8588de2 drm/i915: refactor skylake scaler code into new file.
-:709: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#709: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1254 lines checked
f08f7fd56aa6 drm/i915: move ddi pll state get to dpll mgr
-:268: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#268: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4685:
+	clk_sel = intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy)) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);

-:369: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#369: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4786:
+static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
+				enum port port,

total: 0 errors, 1 warnings, 1 checks, 463 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
