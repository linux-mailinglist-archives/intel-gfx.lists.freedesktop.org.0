Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E812B4024C2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FBC28972D;
	Tue,  7 Sep 2021 07:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 703078972D;
 Tue,  7 Sep 2021 07:57:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68824AA0EA;
 Tue,  7 Sep 2021 07:57:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Sep 2021 07:57:29 -0000
Message-ID: <163100144939.24492.18367875677019891916@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210907072549.2962226-1-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_refactor_display_struct?=
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

Series: refactor display struct
URL   : https://patchwork.freedesktop.org/series/94413/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
191aa552f294 drm/i915: move display funcs into a display struct. (v3)
675cb420d0d5 drm/i915/display: move cdclk info into display
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:662: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#662: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:77:
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display->cdclk.obj))

-:665: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#665: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:79:
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display->cdclk.obj))

-:711: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#711: FILE: drivers/gpu/drm/i915/display/intel_display.c:11273:
+	cdclk_state->logical = cdclk_state->actual = i915->display->cdclk.hw;

total: 0 errors, 3 warnings, 1 checks, 782 lines checked
e3baf407701c drm/i915: move more pll/clocks into display struct.
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:149: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#149: FILE: drivers/gpu/drm/i915/display/intel_display.c:179:
+	dev_priv->display->czclk_freq = vlv_get_cck_clock_hpll(dev_priv, "czclk",
 						      CCK_CZ_CLOCK_CONTROL);

total: 0 errors, 1 warnings, 1 checks, 302 lines checked
5040a27ce12a drm/i915/display: move gmbus into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:231: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#231: FILE: drivers/gpu/drm/i915/i915_drv.h:860:
+	 * controller on different i2c buses. */

-:300: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#300: FILE: drivers/gpu/drm/i915/i915_reg.h:3453:
+#define GMBUS0			_MMIO(dev_priv->display->gpio_mmio_base + 0x5100) /* clock/port select */

-:309: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#309: FILE: drivers/gpu/drm/i915/i915_reg.h:3462:
+#define GMBUS1			_MMIO(dev_priv->display->gpio_mmio_base + 0x5104) /* command/status */

-:328: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#328: FILE: drivers/gpu/drm/i915/i915_reg.h:3485:
+#define GMBUS3			_MMIO(dev_priv->display->gpio_mmio_base + 0x510c) /* data buffer bytes 3-0 */

-:329: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#329: FILE: drivers/gpu/drm/i915/i915_reg.h:3486:
+#define GMBUS4			_MMIO(dev_priv->display->gpio_mmio_base + 0x5110) /* interrupt mask (Pineview+) */

total: 0 errors, 6 warnings, 0 checks, 282 lines checked
d8649e4e0a68 drm/i915/display: move intel_dmc into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:81: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#81: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:968:
+				     DMC_PROGRAM(dev_priv->display->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

total: 0 errors, 2 warnings, 0 checks, 322 lines checked
35bbd187afd0 drm/i915/display: move mipi_mmio_base to display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 404 lines checked
25c356adc849 drm/i915/display: move pps_mmio_base to display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
e4f81d31c1d5 drm/i915/drrs: just use some local vars to simplify drrs code
0e0a6ffa4329 drm/i915/display: move drrs into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
cc85ebb38f7a drm/i915/display: move fbc into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 420 lines checked
1a85a7c162f2 drm/i915/display: move pipe/plane mappings to display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:19: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#19: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:326:
+	BUG_ON(pipe >= ARRAY_SIZE(dev_priv->display->pipe_to_crtc_mapping) ||

-:20: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dev_priv->display->pipe_to_crtc_mapping[pipe]"
#20: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:327:
+	       dev_priv->display->pipe_to_crtc_mapping[pipe] != NULL);

-:29: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#29: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:333:
+		BUG_ON(i9xx_plane >= ARRAY_SIZE(dev_priv->display->plane_to_crtc_mapping) ||

-:30: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dev_priv->display->plane_to_crtc_mapping[i9xx_plane]"
#30: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:334:
+		       dev_priv->display->plane_to_crtc_mapping[i9xx_plane] != NULL);

total: 0 errors, 3 warnings, 2 checks, 66 lines checked
5172cf469738 drm/i915/display: move properties into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
cbb25f490c34 drm/i915/display: move audio related members into display struct
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:274: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "display->lpe_audio.platdev"
#274: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1359:
+	if ((dev_priv)->display->lpe_audio.platdev != NULL)

-:287: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "display->lpe_audio.platdev"
#287: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.c:77:
+#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->display->lpe_audio.platdev != NULL)

-:296: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#296: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.c:99:
+	rsc[0].start    = rsc[0].end = dev_priv->display->lpe_audio.irq;

total: 0 errors, 1 warnings, 3 checks, 420 lines checked
adaf555cdd95 drm/i915/display: move HDCP related items into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 360 lines checked
ef7e716d5ec3 drm/i915/display: move hotplug struct to display struct
-:363: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#363: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:576:
+		queue_work(dev_priv->_display.hotplug.dp_wq, &dev_priv->_display.hotplug.dig_port_work);

-:519: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!dev_priv->display->hotplug.dp_wq"
#519: FILE: drivers/gpu/drm/i915/i915_drv.c:240:
+	if (dev_priv->display->hotplug.dp_wq == NULL)

total: 0 errors, 1 warnings, 1 checks, 639 lines checked
d9b07b132b95 drm/i915/display: move overlay into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 74 lines checked
5ed9b4591952 drm/i915/display: move fbdev info to display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 126 lines checked
03a98bbdc906 drm/i915/display: move fb_tracking to display struct
bc5e519534b7 drm/i915/display: move delay and pch values to display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 181 lines checked
4205bb4cb2ac drm/intel/display: move atomic related things to display
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 134 lines checked
cc5ba8e76b3a drm/i915/display: move a bunch of platform misc regs to display
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:289: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#289: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.c:434:
+		val = dev_priv->display->bxt_phy_grc = bxt_get_grc(dev_priv,

total: 0 errors, 1 warnings, 1 checks, 344 lines checked
78d513b8e7f4 drm/i915/display: move dpll struct into display
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:515: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#515: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4103:
+	BUG_ON(dev_priv->display->dpll.num_shared_dpll > I915_NUM_PLLS);

-:605: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#605: FILE: drivers/gpu/drm/i915/i915_drv.h:957:
+		struct mutex lock;

total: 0 errors, 2 warnings, 1 checks, 563 lines checked
d51c54a76b1c drm/i915/display: move fdi_rx_config into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:18: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#18: FILE: drivers/gpu/drm/i915/display/intel_crt.c:1115:
+		dev_priv->display->fdi_rx_config = intel_de_read(dev_priv,
 							FDI_RX_CTL(PIPE_A)) & fdi_config;

total: 0 errors, 1 warnings, 1 checks, 32 lines checked
af49c401bbaa drm/i915/display: move workqueues to display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 67 lines checked
7773cefe49b1 drm/i915/display: move pps/backlight mutexes into display
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 291 lines checked


