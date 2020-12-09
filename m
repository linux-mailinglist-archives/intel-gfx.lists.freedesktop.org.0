Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AB32D39F8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 05:56:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F28899B0;
	Wed,  9 Dec 2020 04:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 07956899B0;
 Wed,  9 Dec 2020 04:56:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01F24A0091;
 Wed,  9 Dec 2020 04:56:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Date: Wed, 09 Dec 2020 04:56:05 -0000
Message-ID: <160748976500.4258.12960070285016343683@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201209042144.2281-1-airlied@gmail.com>
In-Reply-To: <20201209042144.2281-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_refactor_cursor_?=
 =?utf-8?q?code_out_of_i915=5Fdisplay=2Ec?=
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

Series: series starting with [1/4] drm/i915: refactor cursor code out of i915_display.c
URL   : https://patchwork.freedesktop.org/series/84712/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b87be3dc234f drm/i915: refactor cursor code out of i915_display.c
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

-:534: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#534: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:506:
+		unsigned width = drm_rect_width(&plane_state->uapi.dst);

-:535: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#535: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:507:
+		unsigned height = drm_rect_height(&plane_state->uapi.dst);

-:564: WARNING:REPEATED_WORD: Possible repeated word: 'by'
#564: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:536:
+	 * The other registers are armed by by the CURBASE write

-:791: CHECK:SPACING: No space is necessary after a cast
#791: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:763:
+	cursor->i9xx_plane = (enum i9xx_plane_id) pipe;

total: 0 errors, 4 warnings, 1 checks, 1692 lines checked
f86b532a437f drm/i915: refactor some crtc code out of intel display.
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
b45ec2e66b7d drm/i915: refactor pll code out into intel_clock.c
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

-:50: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#50: FILE: drivers/gpu/drm/i915/display/intel_clock.c:16:
+	return dev_priv->vbt.lvds_use_ssc
+		&& !(dev_priv->quirks & QUIRK_LVDS_SSC_DISABLE);

-:63: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#63: FILE: drivers/gpu/drm/i915/display/intel_clock.c:29:
+};
+static const struct intel_limit intel_limits_i8xx_dac = {

-:128: CHECK:LINE_SPACING: Please don't use multiple blank lines
#128: FILE: drivers/gpu/drm/i915/display/intel_clock.c:94:
+
+

-:700: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#700: FILE: drivers/gpu/drm/i915/display/intel_clock.c:666:
+				for (clock.m1 = limit->m1.min; clock.m1 <= limit->m1.max; clock.m1++) {

-:771: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#771: FILE: drivers/gpu/drm/i915/display/intel_clock.c:737:
+			if (m2 > INT_MAX/clock.m1)
 			                ^

-:868: CHECK:BRACES: braces {} should be used on all arms of this statement
#868: FILE: drivers/gpu/drm/i915/display/intel_clock.c:834:
+	if (IS_PINEVIEW(dev_priv))
[...]
+	else {
[...]

-:870: CHECK:BRACES: Unbalanced braces around else statement
#870: FILE: drivers/gpu/drm/i915/display/intel_clock.c:836:
+	else {

-:988: CHECK:LINE_SPACING: Please don't use multiple blank lines
#988: FILE: drivers/gpu/drm/i915/display/intel_clock.c:954:
+
+

total: 0 errors, 2 warnings, 7 checks, 2895 lines checked
a10cb379b7b4 drm/i915: split fdi code out from intel_display.c
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


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
