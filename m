Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C82C59A4916
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 23:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4FB310E24C;
	Fri, 18 Oct 2024 21:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5660B10E24C;
 Fri, 18 Oct 2024 21:45:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/xe3lpd=3A_p?=
 =?utf-8?q?tl_display_patches?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2024 21:45:03 -0000
Message-ID: <172928790334.1282733.13982975695727986316@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
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

Series: drm/i915/xe3lpd: ptl display patches
URL   : https://patchwork.freedesktop.org/series/140196/
State : warning

== Summary ==

Error: dim checkpatch failed
a321afa49956 drm/i915/display/ptl: Fill VRR crtc_state timings before other transcoder timings
-:9: WARNING:TYPO_SPELLING: 'accomodate' may be misspelled - perhaps 'accommodate'?
#9: 
intel_vrr_get_config before intel_get_transcoder_timings to accomodate
                                                            ^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
d3fd7e371877 drm/i915/ptl: Define IS_PANTHERLAKE macro
-:20: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#20: FILE: drivers/gpu/drm/i915/i915_drv.h:541:
+#define IS_PANTHERLAKE(i915) (0 && i915)

total: 0 errors, 0 warnings, 1 checks, 7 lines checked
6d14fe71ffed drm/i915/cx0: Extend C10 check to PTL
8a555aa21f54 drm/i915/ptl: Move async flip bit to PLANE_SURF register
-:28: ERROR:SPACING: space required before the open brace '{'
#28: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1575:
+	if (async_flip){

-:30: ERROR:CODE_INDENT: code indent should use tabs where possible
#30: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1577:
+^I                plane_surf |= PLANE_SURF_ASYNC_UPDATE;$

total: 2 errors, 0 warnings, 0 checks, 33 lines checked
a563b1c6d331 drm/i915/xe3: Underrun recovery does not exist post Xe2
69b06eae4f5a drm/i915/display/xe3: disable x-tiled framebuffers
7b2c449c876d drm/i915/xe3lpd: Skip disabling VRR during modeset disable
de1b3b01e104 drm/i915/xe3lpd: Increase resolution for plane to support 6k
-:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#39: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:435:
+static int xe3_plane_max_width(const struct drm_framebuffer *fb,
+				   int color_plane,

-:57: ERROR:SPACING: space required after that close brace '}'
#57: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2603:
+	}else if (DISPLAY_VER(dev_priv) >= 11) {

total: 1 errors, 0 warnings, 1 checks, 36 lines checked
a2d680a52386 drm/i915/xe3lpd: Increase max_h max_v for PSR
b8d95e27cc30 drm/i915/xe3lpd: Increase bigjoiner limitations
1fa2d15ed3be drm/i915/xe3lpd: Prune modes for YUV420
-:6: WARNING:TYPO_SPELLING: 'upto' may be misspelled - perhaps 'up to'?
#6: 
We only support resolution upto 4k for single pipe when using
                           ^^^^

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
dcd252e08107 drm/i915/xe3lpd: Power request asserting/deasserting
-:95: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#95: FILE: drivers/gpu/drm/i915/i915_reg.h:4543:
+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)	TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY | \
+						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, (x))

-:96: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/i915_reg.h:4544:
+						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, (x))

total: 1 errors, 1 warnings, 0 checks, 65 lines checked


