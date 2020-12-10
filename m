Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFDB2D52D6
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 05:32:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06286E2DE;
	Thu, 10 Dec 2020 04:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80C936E2DE;
 Thu, 10 Dec 2020 04:32:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 740F4A8169;
 Thu, 10 Dec 2020 04:32:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Date: Thu, 10 Dec 2020 04:32:26 -0000
Message-ID: <160757474645.19119.477150947618638289@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210041755.29088-1-airlied@gmail.com>
In-Reply-To: <20201210041755.29088-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/9=5D_drm/i915/display=3A_move_nee?=
 =?utf-8?q?ds=5Fmodeset_to_an_inline_in_header?=
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

Series: series starting with [1/9] drm/i915/display: move needs_modeset to an inline in header
URL   : https://patchwork.freedesktop.org/series/84761/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ee7dca5fec1e drm/i915/display: move needs_modeset to an inline in header
f7906d61c852 drm/i915/display: move to_intel_frontbuffer to header
89c17eeef1fa drm/i915/display: fix misused comma
e673ce40272b drm/i915: refactor cursor code out of i915_display.c
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

-:522: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#522: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:494:
+		unsigned width = drm_rect_width(&plane_state->uapi.dst);

-:523: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#523: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:495:
+		unsigned height = drm_rect_height(&plane_state->uapi.dst);

-:552: WARNING:REPEATED_WORD: Possible repeated word: 'by'
#552: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:524:
+	 * The other registers are armed by by the CURBASE write

-:779: CHECK:SPACING: No space is necessary after a cast
#779: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:751:
+	cursor->i9xx_plane = (enum i9xx_plane_id) pipe;

total: 0 errors, 4 warnings, 1 checks, 1680 lines checked
cda39caa4c68 drm/i915: refactor some crtc code out of intel display.
-:26: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#26: 
new file mode 100644

-:601: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#601: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:571:
+		return 32*1024;
 		         ^

-:604: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#604: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:574:
+			return 16*1024;
 			         ^

-:606: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#606: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:576:
+			return 32*1024;
 			         ^

-:609: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#609: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:579:
+			return 8*1024;
 			        ^

-:611: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#611: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:581:
+			return 16*1024;
 			         ^

-:614: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#614: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:584:
+			return 4*1024;
 			        ^

-:616: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#616: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:586:
+			return 8*1024;
 			        ^

-:663: CHECK:SPACING: No space is necessary after a cast
#663: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:633:
+		plane->i9xx_plane = (enum i9xx_plane_id) !pipe;

-:665: CHECK:SPACING: No space is necessary after a cast
#665: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:635:
+		plane->i9xx_plane = (enum i9xx_plane_id) pipe;

-:952: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#952: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:922:
+	BUG_ON(pipe >= ARRAY_SIZE(dev_priv->pipe_to_crtc_mapping) ||

-:953: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dev_priv->pipe_to_crtc_mapping[pipe]"
#953: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:923:
+	       dev_priv->pipe_to_crtc_mapping[pipe] != NULL);

-:959: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#959: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:929:
+		BUG_ON(i9xx_plane >= ARRAY_SIZE(dev_priv->plane_to_crtc_mapping) ||

-:960: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dev_priv->plane_to_crtc_mapping[i9xx_plane]"
#960: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:930:
+		       dev_priv->plane_to_crtc_mapping[i9xx_plane] != NULL);

-:966: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#966: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:936:
+		drm_crtc_create_scaling_filter_property(&crtc->base,
+						BIT(DRM_SCALING_FILTER_DEFAULT) |

total: 0 errors, 3 warnings, 12 checks, 1969 lines checked
3a72e7ca995f drm/i915: refactor pll code out into intel_dpll_legacy.c
-:1574: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1574: 
new file mode 100644

-:1594: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#1594: FILE: drivers/gpu/drm/i915/display/intel_dpll_legacy.c:16:
+	return dev_priv->vbt.lvds_use_ssc
+		&& !(dev_priv->quirks & QUIRK_LVDS_SSC_DISABLE);

-:1607: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1607: FILE: drivers/gpu/drm/i915/display/intel_dpll_legacy.c:29:
+};
+static const struct intel_limit intel_limits_i8xx_dac = {

-:1672: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1672: FILE: drivers/gpu/drm/i915/display/intel_dpll_legacy.c:94:
+
+

-:2244: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2244: FILE: drivers/gpu/drm/i915/display/intel_dpll_legacy.c:666:
+				for (clock.m1 = limit->m1.min; clock.m1 <= limit->m1.max; clock.m1++) {

-:2315: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#2315: FILE: drivers/gpu/drm/i915/display/intel_dpll_legacy.c:737:
+			if (m2 > INT_MAX/clock.m1)
 			                ^

-:2412: CHECK:BRACES: braces {} should be used on all arms of this statement
#2412: FILE: drivers/gpu/drm/i915/display/intel_dpll_legacy.c:834:
+	if (IS_PINEVIEW(dev_priv))
[...]
+	else {
[...]

-:2414: CHECK:BRACES: Unbalanced braces around else statement
#2414: FILE: drivers/gpu/drm/i915/display/intel_dpll_legacy.c:836:
+	else {

-:2532: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2532: FILE: drivers/gpu/drm/i915/display/intel_dpll_legacy.c:954:
+
+

total: 0 errors, 2 warnings, 7 checks, 2896 lines checked
3f29deb02bb0 drm/i915: split fdi code out from intel_display.c
-:785: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#785: 
new file mode 100644

-:880: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#880: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:91:
+		BUG();

-:885: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#885: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:96:
+int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
+				  struct intel_crtc_state *pipe_config)

-:917: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#917: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:128:
+	if (ret == -EINVAL && pipe_config->pipe_bpp > 6*3) {
 	                                               ^

-:918: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#918: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:129:
+		pipe_config->pipe_bpp -= 2*3;
 		                          ^

-:967: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#967: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:178:
+	udelay(1000);

-:972: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#972: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:183:
+			       intel_de_read(dev_priv, reg) | FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);

-:989: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#989: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:200:
+	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
+	   for train result */

-:989: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#989: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:200:
+	   for train result */

-:996: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#996: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:207:
+	udelay(150);

-:1014: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1014: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:225:
+	udelay(150);

-:1050: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1050: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:261:
+	udelay(150);

-:1069: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1069: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:280:
+
+}

-:1089: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#1089: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:300:
+	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
+	   for train result */

-:1089: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#1089: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:300:
+	   for train result */

-:1097: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1097: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:308:
+	udelay(150);

-:1126: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1126: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:337:
+	udelay(150);

-:1136: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1136: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:347:
+		udelay(500);

-:1149: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1149: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:360:
+			udelay(50);

-:1181: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1181: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:392:
+	udelay(150);

-:1191: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1191: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:402:
+		udelay(500);

-:1204: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1204: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:415:
+			udelay(50);

-:1226: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#1226: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:437:
+	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
+	   for train result */

-:1226: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#1226: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:437:
+	   for train result */

-:1234: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1234: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:445:
+	udelay(150);

-:1262: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#1262: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:473:
+		temp |= snb_b_fdi_train_param[j/2];
 		                               ^

-:1358: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1358: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:569:
+	udelay(200);

-:1365: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1365: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:576:
+	udelay(200);

-:1374: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1374: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:585:
+		udelay(100);

-:1397: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1397: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:608:
+	udelay(100);

-:1405: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1405: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:616:
+	udelay(100);

-:1428: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1428: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:639:
+	udelay(100);

-:1457: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1457: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:668:
+	udelay(100);

total: 0 errors, 9 warnings, 24 checks, 1432 lines checked
8fd0727c2a20 drm/i915: migrate hsw fdi code to new file.
-:306: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#306: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:590:
+		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

-:314: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#314: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:598:
+	udelay(220);

-:326: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#326: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:610:
+	 * testing each value twice. */

-:338: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#338: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:622:
+		 * port reversal bit */

-:340: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#340: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:624:
+			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));

-:343: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#343: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:627:
+		udelay(600);

-:354: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#354: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:638:
+		udelay(30);

total: 0 errors, 4 warnings, 3 checks, 380 lines checked
6a72e6f85636 drm/i915: migrate skl planes code new file
-:64: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#64: 
new file mode 100644

-:264: CHECK:LINE_SPACING: Please don't use multiple blank lines
#264: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:196:
+
+

-:592: WARNING:TYPO_SPELLING: 'Limted' may be misspelled - perhaps 'Limited'?
#592: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:524:
+		 * BT.601 Limted range YCbCr -> full range RGB

-:779: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#779: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:711:
+				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1].x);

-:812: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#812: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:744:
+}
+static void

-:1141: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#1141: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:1073:
+		return skl_planar_formats;
+	} else {

-:1154: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#1154: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:1086:
+		return glk_planar_formats;
+	} else {

-:1170: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#1170: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:1102:
+		return icl_sdr_y_plane_formats;
+	} else {

-:1454: ERROR:TRAILING_WHITESPACE: trailing whitespace
#1454: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:1386:
+ $

-:1454: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#1454: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:1386:
+ $

-:1455: ERROR:CODE_INDENT: code indent should use tabs where possible
#1455: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:1387:
+ ^Idrm_plane_create_rotation_property(&plane->base,$

-:1455: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#1455: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:1387:
+ ^Idrm_plane_create_rotation_property(&plane->base,$

-:1455: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#1455: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:1387:
+ ^Idrm_plane_create_rotation_property(&plane->base,$

-:1484: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1484: FILE: drivers/gpu/drm/i915/display/intel_gen9_plane.c:1416:
+		drm_plane_create_scaling_filter_property(&plane->base,
+						BIT(DRM_SCALING_FILTER_DEFAULT) |

total: 2 errors, 9 warnings, 3 checks, 2955 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
