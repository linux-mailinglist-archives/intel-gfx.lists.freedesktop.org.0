Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7A35A046D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 01:11:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DA0518B76D;
	Wed, 24 Aug 2022 23:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F343E10F1F6;
 Wed, 24 Aug 2022 23:11:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA4D0A7DFB;
 Wed, 24 Aug 2022 23:11:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 24 Aug 2022 23:11:00 -0000
Message-ID: <166138266093.9872.1939448392482864737@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1661346845.git.jani.nikula@intel.com>
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_add_display_sub-struct_to_drm=5Fi915=5Fprivate_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915: add display sub-struct to drm_i915_private (rev2)
URL   : https://patchwork.freedesktop.org/series/107170/
State : warning

== Summary ==

Error: dim checkpatch failed
9a1bed4062a5 drm/i915: add display sub-struct to drm_i915_private
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:131: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#131: 
new file mode 100644

-:156: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_crtc *' should also have an identifier name
#156: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:21:
+	bool (*get_pipe_config)(struct intel_crtc *,

-:156: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_crtc_state *' should also have an identifier name
#156: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:21:
+	bool (*get_pipe_config)(struct intel_crtc *,

-:158: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_crtc *' should also have an identifier name
#158: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:23:
+	void (*get_initial_plane_config)(struct intel_crtc *,

-:158: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_initial_plane_config *' should also have an identifier name
#158: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:23:
+	void (*get_initial_plane_config)(struct intel_crtc *,

total: 0 errors, 5 warnings, 0 checks, 200 lines checked
d4a407cf1033 drm/i915: move cdclk_funcs to display.funcs
fe54bc0c24f6 drm/i915: move dpll_funcs to display.funcs
113faf7227a9 drm/i915: move hotplug_funcs to display.funcs
4194d36eed7d drm/i915: move wm_disp funcs to display.funcs
79d01f148a2a drm/i915: move fdi_funcs to display.funcs
2837ed6eeba0 drm/i915: move color_funcs to display.funcs
edb551fbe1f5 drm/i915: move and group gmbus members under display.gmbus
-:350: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#350: FILE: drivers/gpu/drm/i915/i915_reg.h:1485:
+#define GMBUS0			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5100) /* clock/port select */

-:359: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#359: FILE: drivers/gpu/drm/i915/i915_reg.h:1494:
+#define GMBUS1			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5104) /* command/status */

-:378: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#378: FILE: drivers/gpu/drm/i915/i915_reg.h:1517:
+#define GMBUS3			_MMIO(dev_priv->display.gmbus.mmio_base + 0x510c) /* data buffer bytes 3-0 */

-:379: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#379: FILE: drivers/gpu/drm/i915/i915_reg.h:1518:
+#define GMBUS4			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5110) /* interrupt mask (Pineview+) */

total: 0 errors, 4 warnings, 0 checks, 320 lines checked
a1b28ae9d5cd drm/i915: move and group pps members under display.pps
057aa99ba01a drm/i915: move dmc to display.dmc
-:209: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#209: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:485:
+		      !intel_de_read(i915, DMC_PROGRAM(i915->display.dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

total: 0 errors, 1 warnings, 0 checks, 339 lines checked
a669551d9465 drm/i915: move and split audio under display.audio and display.funcs
-:321: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dev_priv->display.audio.lpe.platdev"
#321: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1406:
+	if (dev_priv->display.audio.lpe.platdev != NULL)

-:397: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "display.audio.lpe.platdev"
#397: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.c:78:
+#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->display.audio.lpe.platdev != NULL)

-:406: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#406: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.c:100:
+	rsc[0].start    = rsc[0].end = dev_priv->display.audio.lpe.irq;

total: 0 errors, 0 warnings, 3 checks, 501 lines checked
9056098aa186 drm/i915: move dpll under display.dpll
-:215: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#215: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:90:
+	struct mutex lock;

-:564: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#564: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4210:
+	BUG_ON(dev_priv->display.dpll.num_shared_dpll > I915_NUM_PLLS);

total: 0 errors, 1 warnings, 1 checks, 628 lines checked
92fae085c786 drm/i915: move and group fbdev under display.fbdev
8130ecfbc806 drm/i915: move wm to display.wm
734acd7ef942 drm/i915: move and group hdcp under display.hdcp
492b2cb39483 drm/i915: move hotplug to display.hotplug
-:438: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#438: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:570:
+		queue_work(dev_priv->display.hotplug.dp_wq, &dev_priv->display.hotplug.dig_port_work);

-:594: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!dev_priv->display.hotplug.dp_wq"
#594: FILE: drivers/gpu/drm/i915/i915_driver.c:256:
+	if (dev_priv->display.hotplug.dp_wq == NULL)

total: 0 errors, 1 warnings, 1 checks, 738 lines checked
b5142ae6d27a drm/i915: move overlay to display.overlay
380c411f7947 drm/i915: move and group sagv under display.sagv
-:212: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#212: FILE: drivers/gpu/drm/i915/intel_pm.c:5599:
+		latency = dev_priv->display.sagv.block_time_us + dev_priv->display.wm.skl_latency[0];

total: 0 errors, 1 warnings, 0 checks, 174 lines checked
60ce69f27813 drm/i915: move and group max_bw and bw_obj under display.bw
790a6af2372b drm/i915: move opregion to display.opregion
698834f622b2 drm/i915: move and group cdclk under display.cdclk
-:43: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_audio.c:974:
+		get_aud_ts_cdclk_m_n(i915->display.cdclk.hw.ref, i915->display.cdclk.hw.cdclk, &aud_ts);

-:704: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#704: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:80:
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))

-:707: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#707: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:82:
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))

-:735: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#735: FILE: drivers/gpu/drm/i915/display/intel_display.c:8401:
+	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;

total: 0 errors, 3 warnings, 1 checks, 815 lines checked
b1345b665fd6 drm/i915: move backlight to display.backlight
a9c6638db00c drm/i915: move mipi_mmio_base to display.dsi
5d899384cd2c drm/i915: move vbt to display.vbt
-:124: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#124: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1157:
+		i915->display.vbt.override_afc_startup_val = general->afc_startup_config == 0x1 ? 0x0 : 0x7;

-:931: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#931: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2773:
+		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->display.vbt.override_afc_startup_val);

total: 0 errors, 2 warnings, 0 checks, 1031 lines checked
812d95cf947b drm/i915: move fbc to display.fbc
9af3ab932b5c drm/i915/vrr: drop window2_delay member from i915
0698e0ea5853 drm/i915: move and group power related members under display.power
-:388: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#388: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1913:
+										      POWER_DOMAIN_INIT);

-:403: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#403: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1939:
+					fetch_and_zero(&i915->display.power.domains.disable_wakeref));

-:448: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#448: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2060:
+					fetch_and_zero(&i915->display.power.domains.disable_wakeref));

total: 0 errors, 3 warnings, 0 checks, 685 lines checked
62b27d441a54 drm/i915: move and group fdi members under display.fdi
f051db40e588 drm/i915: move fb_tracking under display sub-struct
-:27: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#27: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:124:
+	spinlock_t lock;

-:33: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#33: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:130:
+	unsigned busy_bits;

-:34: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#34: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:131:
+	unsigned flip_bits;

total: 0 errors, 2 warnings, 1 checks, 200 lines checked
6c78804ee366 drm/i915: move INTEL_FRONTBUFFER_* macros to intel_frontbuffer.h
-:54: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#54: FILE: drivers/gpu/drm/i915/display/intel_frontbuffer.h:61:
+#define INTEL_FRONTBUFFER(pipe, plane_id) \
+	BIT((plane_id) + INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe));

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/display/intel_frontbuffer.h:65:
+#define INTEL_FRONTBUFFER_ALL_MASK(pipe) \
+	GENMASK(INTEL_FRONTBUFFER_BITS_PER_PIPE * ((pipe) + 1) - 1,	\
+		INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))

total: 0 errors, 1 warnings, 1 checks, 64 lines checked
3907b566a8f9 drm/i915: move dbuf under display sub-struct
-:182: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#182: FILE: drivers/gpu/drm/i915/intel_pm.h:80:
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))

-:185: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#185: FILE: drivers/gpu/drm/i915/intel_pm.h:82:
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))

total: 0 errors, 2 warnings, 0 checks, 136 lines checked
bab2c0c1d4a0 drm/i915: move and group modeset_wq and flip_wq under display.wq
f628bd3eb49b drm/i915: split gem quirks from display quirks
1dc959bce6d1 drm/i915/quirks: abstract checking for display quirks
-:40: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:132:
+	    (dev_priv->params.invert_brightness == 0 && intel_has_quirk(dev_priv, QUIRK_INVERT_BRIGHTNESS)))

total: 0 errors, 1 warnings, 0 checks, 105 lines checked
5429dedbf012 drm/i915/quirks: abstract quirks further by making quirk ids an enum
e29b8e68f4b8 drm/i915: move quirks under display sub-struct
cbf9474f026b drm/i915: move atomic_helper under display sub-struct
45a4f0d60277 drm/i915: move and group properties under display.properties


