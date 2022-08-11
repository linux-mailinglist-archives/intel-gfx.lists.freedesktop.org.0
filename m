Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCF2590025
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F84B4571;
	Thu, 11 Aug 2022 15:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E54AB451F;
 Thu, 11 Aug 2022 15:38:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8622BA47EB;
 Thu, 11 Aug 2022 15:38:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 11 Aug 2022 15:38:18 -0000
Message-ID: <166023229854.11994.11057171898381086608@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_add_display_sub-struct_to_drm=5Fi915=5Fprivate?=
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

Series: drm/i915: add display sub-struct to drm_i915_private
URL   : https://patchwork.freedesktop.org/series/107170/
State : warning

== Summary ==

Error: dim checkpatch failed
81a599e0acc6 drm/i915: add display sub-struct to drm_i915_private
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:125: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#125: 
new file mode 100644

-:147: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#147: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:18:
+	 * fills out the pipe-config with the hw state. */

-:148: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_crtc *' should also have an identifier name
#148: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:19:
+	bool (*get_pipe_config)(struct intel_crtc *,

-:148: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_crtc_state *' should also have an identifier name
#148: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:19:
+	bool (*get_pipe_config)(struct intel_crtc *,

-:150: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_crtc *' should also have an identifier name
#150: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:21:
+	void (*get_initial_plane_config)(struct intel_crtc *,

-:150: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_initial_plane_config *' should also have an identifier name
#150: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:21:
+	void (*get_initial_plane_config)(struct intel_crtc *,

total: 0 errors, 6 warnings, 0 checks, 198 lines checked
98eec48f505c drm/i915: move cdclk_funcs to display.funcs
699528783267 drm/i915: move dpll_funcs to display.funcs
22eeabd10546 drm/i915: move hotplug_funcs to display.funcs
af7f4c94cba1 drm/i915: move clock_gating_funcs to display.funcs
5902bf135e5f drm/i915: move wm_disp funcs to display.funcs
763b41870eb1 drm/i915: move fdi_funcs to display.funcs
d4e25a89ea42 drm/i915: move color_funcs to display.funcs
97a1a55d792b drm/i915: move and group gmbus members under display.gmbus
-:347: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#347: FILE: drivers/gpu/drm/i915/i915_reg.h:1485:
+#define GMBUS0			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5100) /* clock/port select */

-:356: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#356: FILE: drivers/gpu/drm/i915/i915_reg.h:1494:
+#define GMBUS1			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5104) /* command/status */

-:375: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#375: FILE: drivers/gpu/drm/i915/i915_reg.h:1517:
+#define GMBUS3			_MMIO(dev_priv->display.gmbus.mmio_base + 0x510c) /* data buffer bytes 3-0 */

-:376: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#376: FILE: drivers/gpu/drm/i915/i915_reg.h:1518:
+#define GMBUS4			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5110) /* interrupt mask (Pineview+) */

total: 0 errors, 4 warnings, 0 checks, 320 lines checked
c81231bd7491 drm/i915: move and group pps members under display.pps
9691040cd55f drm/i915: move dmc to display.dmc
-:210: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#210: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:455:
+		      !intel_de_read(i915, DMC_PROGRAM(i915->display.dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

total: 0 errors, 1 warnings, 0 checks, 339 lines checked
cb5448c3b8e0 drm/i915: move and split audio under display.audio and display.funcs
-:318: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dev_priv->display.audio.lpe.platdev"
#318: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1406:
+	if (dev_priv->display.audio.lpe.platdev != NULL)

-:394: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "display.audio.lpe.platdev"
#394: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.c:78:
+#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->display.audio.lpe.platdev != NULL)

-:403: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#403: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.c:100:
+	rsc[0].start    = rsc[0].end = dev_priv->display.audio.lpe.irq;

total: 0 errors, 0 warnings, 3 checks, 501 lines checked
45cea2c0cb3f drm/i915: move dpll under display.dpll
-:213: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#213: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:89:
+	struct mutex lock;

-:562: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#562: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4210:
+	BUG_ON(dev_priv->display.dpll.num_shared_dpll > I915_NUM_PLLS);

total: 0 errors, 1 warnings, 1 checks, 628 lines checked
911a4d8416a9 drm/i915: move and group fbdev under display.fbdev
44d269d91c7f drm/i915: move wm to display.wm
a73009c01d23 drm/i915: move and group hdcp under display.hdcp
2a6c083eab3a drm/i915: move hotplug to display.hotplug
-:434: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#434: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:570:
+		queue_work(dev_priv->display.hotplug.dp_wq, &dev_priv->display.hotplug.dig_port_work);

-:590: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!dev_priv->display.hotplug.dp_wq"
#590: FILE: drivers/gpu/drm/i915/i915_driver.c:256:
+	if (dev_priv->display.hotplug.dp_wq == NULL)

total: 0 errors, 1 warnings, 1 checks, 738 lines checked
b6f4b60b07d8 drm/i915: move overlay to display.overlay
05330effbd89 drm/i915: move and group sagv under display.sagv
-:210: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#210: FILE: drivers/gpu/drm/i915/intel_pm.c:5599:
+		latency = dev_priv->display.sagv.block_time_us + dev_priv->display.wm.skl_latency[0];

total: 0 errors, 1 warnings, 0 checks, 174 lines checked
1527cbe5e360 drm/i915: move and group max_bw and bw_obj under display.bw
5f212c8cffc9 drm/i915: move opregion to display.opregion
e193c1b4ed89 drm/i915: move and group cdclk under display.cdclk
-:41: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_audio.c:974:
+		get_aud_ts_cdclk_m_n(i915->display.cdclk.hw.ref, i915->display.cdclk.hw.cdclk, &aud_ts);

-:702: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#702: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:80:
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))

-:705: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#705: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:82:
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))

-:733: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#733: FILE: drivers/gpu/drm/i915/display/intel_display.c:8401:
+	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;

total: 0 errors, 3 warnings, 1 checks, 815 lines checked
1cd4ceb70c16 drm/i915: move backlight to display.backlight
1da9f25eea3a drm/i915: move mipi_mmio_base to display.dsi
8a9779b4fd6f drm/i915: move vbt to display.vbt
-:120: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#120: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1157:
+		i915->display.vbt.override_afc_startup_val = general->afc_startup_config == 0x1 ? 0x0 : 0x7;

-:466: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#466: FILE: drivers/gpu/drm/i915/display/intel_bios.c:2823:
+	i915->display.vbt.lvds_ssc_freq = intel_bios_ssc_frequency(i915,
 							   !HAS_PCH_SPLIT(i915));

-:926: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#926: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2773:
+		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->display.vbt.override_afc_startup_val);

total: 0 errors, 2 warnings, 1 checks, 1030 lines checked
715d5e56ca5b drm/i915: move fbc to display.fbc
5fad180f909e drm/i915/vrr: drop window2_delay member from i915
-:36: WARNING:TYPO_SPELLING: 'Substract' may be misspelled - perhaps 'Subtract'?
#36: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:147:
+		 * FIXME: Substract Window2 delay from below value.
 		          ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 44 lines checked
cf5121f27e5e drm/i915: move and group power related members under display.power
-:385: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#385: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1920:
+		i915->display.power.domains.disable_wakeref = intel_display_power_get(i915,
 									      POWER_DOMAIN_INIT);

-:399: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#399: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1946:
+					fetch_and_zero(&i915->display.power.domains.disable_wakeref));

-:444: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#444: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2067:
+					fetch_and_zero(&i915->display.power.domains.disable_wakeref));

total: 0 errors, 2 warnings, 1 checks, 683 lines checked
7dbf3b63780b drm/i915: move and group fdi members under display.fdi
-:20: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#20: FILE: drivers/gpu/drm/i915/display/intel_crt.c:1114:
+		dev_priv->display.fdi.rx_config = intel_de_read(dev_priv,
 							FDI_RX_CTL(PIPE_A)) & fdi_config;

total: 0 errors, 0 warnings, 1 checks, 67 lines checked
7761e27c8757 drm/i915: move fb_tracking under display sub-struct
-:25: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#25: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:123:
+	spinlock_t lock;

-:31: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#31: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:129:
+	unsigned busy_bits;

-:32: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#32: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:130:
+	unsigned flip_bits;

total: 0 errors, 2 warnings, 1 checks, 200 lines checked
ada2d6104385 drm/i915: move INTEL_FRONTBUFFER_* macros to intel_frontbuffer.h
-:53: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#53: FILE: drivers/gpu/drm/i915/display/intel_frontbuffer.h:61:
+#define INTEL_FRONTBUFFER(pipe, plane_id) \
+	BIT((plane_id) + INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe));

-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#57: FILE: drivers/gpu/drm/i915/display/intel_frontbuffer.h:65:
+#define INTEL_FRONTBUFFER_ALL_MASK(pipe) \
+	GENMASK(INTEL_FRONTBUFFER_BITS_PER_PIPE * ((pipe) + 1) - 1,	\
+		INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))

total: 0 errors, 1 warnings, 1 checks, 64 lines checked
6e09cf9e9a8d drm/i915: move dbuf under display sub-struct
-:180: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#180: FILE: drivers/gpu/drm/i915/intel_pm.h:80:
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))

-:183: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#183: FILE: drivers/gpu/drm/i915/intel_pm.h:82:
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))

total: 0 errors, 2 warnings, 0 checks, 136 lines checked
b4bb59b99188 drm/i915: move and group modeset_wq and flip_wq under display.wq
309e0c8e99e6 drm/i915: split gem quirks from display quirks
7d72fe97d832 drm/i915/quirks: abstract checking for display quirks
-:37: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:130:
+	    (dev_priv->params.invert_brightness == 0 && intel_has_quirk(dev_priv, QUIRK_INVERT_BRIGHTNESS)))

total: 0 errors, 1 warnings, 0 checks, 112 lines checked
1261c09ec71b drm/i915/quirks: abstract quirks further by making quirk ids an enum
856c7041cdfc drm/i915: move quirks under display sub-struct
b87932c1ae0e drm/i915: move atomic_helper under display sub-struct
dfb37a2ed796 drm/i915: move and group properties under display.properties
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 84 lines checked


