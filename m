Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 269E9501EFF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 01:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7571810E620;
	Thu, 14 Apr 2022 23:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D9AC10E620;
 Thu, 14 Apr 2022 23:25:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B0D7AA0EB;
 Thu, 14 Apr 2022 23:25:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 14 Apr 2022 23:25:29 -0000
Message-ID: <164997872960.1346.6178147893865802625@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220414210657.1785773-1-imre.deak@intel.com>
In-Reply-To: <20220414210657.1785773-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C01/18=5D_drm/i915=3A_Move_per-?=
 =?utf-8?q?platform_power_well_hooks_to_intel=5Fdisplay=5Fpower=5Fwell=2Ec?=
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

Series: series starting with [CI,01/18] drm/i915: Move per-platform power well hooks to intel_display_power_well.c
URL   : https://patchwork.freedesktop.org/series/102719/
State : warning

== Summary ==

Error: dim checkpatch failed
c5b4984a0598 drm/i915: Move per-platform power well hooks to intel_display_power_well.c
-:2150: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2150: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:266:
+
+	}

-:2360: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#2360: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:476:
+		msleep(1);

-:2365: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#2365: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:481:
+		msleep(1);

-:2714: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2714: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:830:
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);

-:2741: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2741: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:857:
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);

-:2843: WARNING:REPEATED_WORD: Possible repeated word: 'power'
#2843: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:959:
+		 "Unexpected DBuf power power state (0x%08x, expected 0x%08x)\n",

-:2918: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2918: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1034:
+static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
+					     struct i915_power_well *power_well)

-:3190: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bits' - possible side-effects?
#3190: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1306:
+#define BITS_SET(val, bits) (((val) & (bits)) == (bits))

-:3645: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#3645: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1761:
+		msleep(1);

-:3691: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3691: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1807:
+
+

total: 0 errors, 6 warnings, 4 checks, 3833 lines checked
f92dd5251d2e drm/i915: Unexport the for_each_power_well() macros
-:23: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#23: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:24:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
+	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:24:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
+	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:27: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#27: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:28:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
+	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:28:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
+	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__dev_priv' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:15:
+#define for_each_power_well(__dev_priv, __power_well)				\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells <	\
+		(__dev_priv)->power_domains.power_well_count;		\
+	     (__power_well)++)

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:15:
+#define for_each_power_well(__dev_priv, __power_well)				\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells <	\
+		(__dev_priv)->power_domains.power_well_count;		\
+	     (__power_well)++)

-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__dev_priv' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:21:
+#define for_each_power_well_reverse(__dev_priv, __power_well)			\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells +		\
+			      (__dev_priv)->power_domains.power_well_count - 1;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells >= 0;	\
+	     (__power_well)--)

-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:21:
+#define for_each_power_well_reverse(__dev_priv, __power_well)			\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells +		\
+			      (__dev_priv)->power_domains.power_well_count - 1;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells >= 0;	\
+	     (__power_well)--)

total: 2 errors, 0 warnings, 6 checks, 58 lines checked
5d9272b7e832 drm/i915: Move the power domain->well mappings to intel_display_power_map.c
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:2350: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2350: 
new file mode 100644

-:4433: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well_descs' - possible side-effects?
#4433: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:2079:
+#define set_power_wells_mask(power_domains, __power_well_descs, skip_mask) \
+	__set_power_wells(power_domains, __power_well_descs, \
+			  ARRAY_SIZE(__power_well_descs), skip_mask)

total: 0 errors, 1 warnings, 1 checks, 4467 lines checked
df0e1c788a1c drm/i915: Move the dg2 fixed_enable_delay power well param to a common bitfield
0c5123daf423 drm/i915: Move the HSW power well flags to a common bitfield
e425e99994b0 drm/i915: Rename the power domain names to end with pipes/ports
1960d3c53e8c drm/i915: Sanitize the power well names
a07c810823ad drm/i915: Convert the power well descriptor domain mask to an array of domains
-:52: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__elems' - possible side-effects?
#52: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:17:
+#define __LIST(__elems) { \
+	.list = __elems, \
+	.count = ARRAY_SIZE(__elems), \
+}

-:57: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#57: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:22:
+#define I915_PW_DOMAINS(...) \
+	(const struct i915_power_domain_list) \
+		__LIST(__LIST_INLINE_ELEMS(enum intel_display_power_domain, __VA_ARGS__))

-:68: CHECK:LINE_SPACING: Please don't use multiple blank lines
#68: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:33:
+
+

-:91: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#91: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:47:
+I915_DECL_PW_DOMAINS(i830_pwdoms_pipes,
+	POWER_DOMAIN_PIPE_A,

-:134: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#134: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:71:
+I915_DECL_PW_DOMAINS(hsw_pwdoms_display,
+	POWER_DOMAIN_PIPE_B,

-:187: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#187: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:108:
+I915_DECL_PW_DOMAINS(bdw_pwdoms_display,
+	POWER_DOMAIN_PIPE_B,

-:270: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#270: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:145:
+I915_DECL_PW_DOMAINS(vlv_pwdoms_display,
+	POWER_DOMAIN_DISPLAY_CORE,

-:290: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#290: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:165:
+I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:298: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#298: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:173:
+I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:416: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#416: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:238:
+I915_DECL_PW_DOMAINS(chv_pwdoms_display,
+	POWER_DOMAIN_DISPLAY_CORE,

-:440: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#440: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:262:
+I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:447: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#447: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:269:
+I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
+	POWER_DOMAIN_PORT_DDI_LANES_D,

-:530: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#530: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:309:
+#define SKL_PW_2_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_A, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_TRANSCODER_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_D, \
+	POWER_DOMAIN_PORT_DDI_LANES_E, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_B, \
+	POWER_DOMAIN_AUX_C, \
+	POWER_DOMAIN_AUX_D

-:550: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#550: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:329:
+I915_DECL_PW_DOMAINS(skl_pwdoms_pw_2,
+	SKL_PW_2_POWER_DOMAINS,

-:554: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#554: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:333:
+I915_DECL_PW_DOMAINS(skl_pwdoms_dc_off,
+	SKL_PW_2_POWER_DOMAINS,

-:561: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#561: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:340:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_a_e,
+	POWER_DOMAIN_PORT_DDI_IO_A,

-:566: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#566: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:345:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_b,
+	POWER_DOMAIN_PORT_DDI_IO_B,

-:570: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#570: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:349:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_c,
+	POWER_DOMAIN_PORT_DDI_IO_C,

-:574: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#574: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:353:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_d,
+	POWER_DOMAIN_PORT_DDI_IO_D,

-:693: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#693: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:435:
+#define BXT_PW_2_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_A, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_TRANSCODER_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_B, \
+	POWER_DOMAIN_AUX_C

-:710: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#710: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:452:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_pw_2,
+	BXT_PW_2_POWER_DOMAINS,

-:714: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#714: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:456:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
+	BXT_PW_2_POWER_DOMAINS,

-:722: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#722: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:464:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
+	POWER_DOMAIN_PORT_DDI_LANES_A,

-:727: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#727: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:469:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:842: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#842: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:528:
+#define GLK_PW_2_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_A, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_TRANSCODER_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_B, \
+	POWER_DOMAIN_AUX_C

-:859: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#859: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:545:
+I915_DECL_PW_DOMAINS(glk_pwdoms_pw_2,
+	GLK_PW_2_POWER_DOMAINS,

-:863: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#863: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:549:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dc_off,
+	GLK_PW_2_POWER_DOMAINS,

-:875: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#875: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:561:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_a,
+	POWER_DOMAIN_PORT_DDI_LANES_A,

-:880: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#880: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:566:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_b,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:885: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#885: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:571:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_c,
+	POWER_DOMAIN_PORT_DDI_LANES_C,

-:890: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#890: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:576:
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,

-:895: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#895: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:581:
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_b,
+	POWER_DOMAIN_AUX_B,

-:899: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#899: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:585:
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
+	POWER_DOMAIN_AUX_C,

-:1022: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1022: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:711:
+#define ICL_PW_4_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C

-:1027: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1027: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:716:
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_4,
+	ICL_PW_4_POWER_DOMAINS,

-:1056: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1056: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:720:
+#define ICL_PW_3_POWER_DOMAINS \
+	ICL_PW_4_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_A, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_TRANSCODER_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_D, \
+	POWER_DOMAIN_PORT_DDI_LANES_E, \
+	POWER_DOMAIN_PORT_DDI_LANES_F, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_B, \
+	POWER_DOMAIN_AUX_C, \
+	POWER_DOMAIN_AUX_D, \
+	POWER_DOMAIN_AUX_E, \
+	POWER_DOMAIN_AUX_F, \
+	POWER_DOMAIN_AUX_TBT_C, \
+	POWER_DOMAIN_AUX_TBT_D, \
+	POWER_DOMAIN_AUX_TBT_E, \
+	POWER_DOMAIN_AUX_TBT_F

-:1082: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1082: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:746:
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_3,
+	ICL_PW_3_POWER_DOMAINS,

-:1093: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1093: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:753:
+#define ICL_PW_2_POWER_DOMAINS \
+	ICL_PW_3_POWER_DOMAINS, \
+	POWER_DOMAIN_TRANSCODER_VDSC_PW2

-:1098: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1098: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:758:
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_2,
+	ICL_PW_2_POWER_DOMAINS,

-:1132: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1132: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:765:
+I915_DECL_PW_DOMAINS(icl_pwdoms_dc_off,
+	ICL_PW_2_POWER_DOMAINS,

-:1146: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1146: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:779:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,

-:1450: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1450: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:983:
+#define TGL_PW_5_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
+	POWER_DOMAIN_TRANSCODER_D

-:1456: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1456: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:989:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_5,
+	TGL_PW_5_POWER_DOMAINS,

-:1459: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1459: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:992:
+#define TGL_PW_4_POWER_DOMAINS \
+	TGL_PW_5_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C

-:1466: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1466: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:999:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_4,
+	TGL_PW_4_POWER_DOMAINS,

-:1469: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1469: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1002:
+#define TGL_PW_3_POWER_DOMAINS \
+	TGL_PW_4_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC5, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC6, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_USBC1, \
+	POWER_DOMAIN_AUX_USBC2, \
+	POWER_DOMAIN_AUX_USBC3, \
+	POWER_DOMAIN_AUX_USBC4, \
+	POWER_DOMAIN_AUX_USBC5, \
+	POWER_DOMAIN_AUX_USBC6, \
+	POWER_DOMAIN_AUX_TBT1, \
+	POWER_DOMAIN_AUX_TBT2, \
+	POWER_DOMAIN_AUX_TBT3, \
+	POWER_DOMAIN_AUX_TBT4, \
+	POWER_DOMAIN_AUX_TBT5, \
+	POWER_DOMAIN_AUX_TBT6

-:1497: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1497: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1030:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_3,
+	TGL_PW_3_POWER_DOMAINS,

-:1501: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1501: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1034:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_2,
+	TGL_PW_3_POWER_DOMAINS,

-:1506: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1506: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1039:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_dc_off,
+	TGL_PW_3_POWER_DOMAINS,

-:1521: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1521: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1054:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,

-:1541: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1541: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1074:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_tc_cold_off,
+	POWER_DOMAIN_AUX_USBC1,

-:1858: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1858: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1363:
+#define RKL_PW_4_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C

-:1864: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1864: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1369:
+I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_4,
+	RKL_PW_4_POWER_DOMAINS,

-:1867: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1867: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1372:
+#define RKL_PW_3_POWER_DOMAINS \
+	RKL_PW_4_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_MMIO, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_USBC1, \
+	POWER_DOMAIN_AUX_USBC2

-:1881: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1881: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1386:
+I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_3,
+	RKL_PW_3_POWER_DOMAINS,

-:1897: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1897: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1411:
+I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
+	RKL_PW_3_POWER_DOMAINS,

-:2044: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2044: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1531:
+#define DG1_PW_3_POWER_DOMAINS \
+	TGL_PW_4_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_B, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_USBC1, \
+	POWER_DOMAIN_AUX_USBC2

-:2057: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2057: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1544:
+I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_3,
+	DG1_PW_3_POWER_DOMAINS,

-:2061: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2061: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1548:
+I915_DECL_PW_DOMAINS(dg1_pwdoms_dc_off,
+	DG1_PW_3_POWER_DOMAINS,

-:2069: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2069: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1556:
+I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_2,
+	DG1_PW_3_POWER_DOMAINS,

-:2255: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2255: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1710:
+#define XELPD_PW_D_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
+	POWER_DOMAIN_TRANSCODER_D

-:2261: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2261: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1716:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_d,
+	XELPD_PW_D_POWER_DOMAINS,

-:2264: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2264: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1719:
+#define XELPD_PW_C_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C

-:2270: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2270: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1725:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_c,
+	XELPD_PW_C_POWER_DOMAINS,

-:2273: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2273: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1728:
+#define XELPD_PW_B_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_B

-:2279: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2279: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1734:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_b,
+	XELPD_PW_B_POWER_DOMAINS,

-:2283: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2283: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1738:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
+	POWER_DOMAIN_PIPE_A,

-:2287: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2287: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1742:
+#define XELPD_PW_2_POWER_DOMAINS \
+	XELPD_PW_B_POWER_DOMAINS, \
+	XELPD_PW_C_POWER_DOMAINS, \
+	XELPD_PW_D_POWER_DOMAINS, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_D_XELPD, \
+	POWER_DOMAIN_PORT_DDI_LANES_E_XELPD, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_C, \
+	POWER_DOMAIN_AUX_D_XELPD, \
+	POWER_DOMAIN_AUX_E_XELPD, \
+	POWER_DOMAIN_AUX_USBC1, \
+	POWER_DOMAIN_AUX_USBC2, \
+	POWER_DOMAIN_AUX_USBC3, \
+	POWER_DOMAIN_AUX_USBC4, \
+	POWER_DOMAIN_AUX_TBT1, \
+	POWER_DOMAIN_AUX_TBT2, \
+	POWER_DOMAIN_AUX_TBT3, \
+	POWER_DOMAIN_AUX_TBT4

-:2313: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2313: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1768:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
+	XELPD_PW_2_POWER_DOMAINS,

-:2350: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2350: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1789:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
+	XELPD_PW_2_POWER_DOMAINS,

total: 17 errors, 0 warnings, 53 checks, 2540 lines checked
11af7f881081 drm/i915: Convert the u64 power well domains mask to a bitmap
-:177: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#177: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:25:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
 	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:177: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#177: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:25:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
 	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:183: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#183: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:29:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain) \
 	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:183: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#183: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:29:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain) \
 	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:527: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__domain' - possible side-effects?
#527: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:175:
+#define for_each_power_domain(__domain, __mask)				\
+	for ((__domain) = 0; (__domain) < POWER_DOMAIN_NUM; (__domain)++)	\
+		for_each_if(test_bit((__domain), (__mask)->bits))

total: 2 errors, 0 warnings, 3 checks, 530 lines checked
c31d83cbdf2d drm/i915: Simplify power well definitions by adding power well instances
-:33: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#33: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:33:
+#define I915_PW_INSTANCES(...) \
+	(const struct i915_power_well_instance_list) \
+		__LIST(__LIST_INLINE_ELEMS(struct i915_power_well_instance, __VA_ARGS__))

-:47: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#47: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:45:
+		.instances = &I915_PW_INSTANCES(

-:62: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#62: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:64:
+		.instances = &I915_PW_INSTANCES(

-:71: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#71: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:70:
+		.instances = &I915_PW_INSTANCES(

-:85: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#85: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:97:
+		.instances = &I915_PW_INSTANCES(

-:94: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#94: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:103:
+		.instances = &I915_PW_INSTANCES(

-:114: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#114: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:132:
+		.instances = &I915_PW_INSTANCES(

-:123: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#123: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:138:
+		.instances = &I915_PW_INSTANCES(

-:144: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#144: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:186:
+		.instances = &I915_PW_INSTANCES(

-:153: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#153: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:192:
+		.instances = &I915_PW_INSTANCES(

-:182: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#182: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:199:
+		.instances = &I915_PW_INSTANCES(

-:208: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#208: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:211:
+		.instances = &I915_PW_INSTANCES(

-:227: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#227: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:258:
+		.instances = &I915_PW_INSTANCES(

-:241: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#241: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:269:
+		.instances = &I915_PW_INSTANCES(

-:249: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#249: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:274:
+		.instances = &I915_PW_INSTANCES(

-:279: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#279: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:335:
+		.instances = &I915_PW_INSTANCES(

-:289: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#289: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:342:
+		.instances = &I915_PW_INSTANCES(

-:305: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#305: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:352:
+		.instances = &I915_PW_INSTANCES(

-:319: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#319: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:360:
+		.instances = &I915_PW_INSTANCES(

-:328: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#328: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:366:
+		.instances = &I915_PW_INSTANCES(

-:344: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#344: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:376:
+		.instances = &I915_PW_INSTANCES(

-:345: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#345: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:377:
+			I915_PW("DDI_IO_A_E", &skl_pwdoms_ddi_io_a_e, .hsw.idx = SKL_PW_CTL_IDX_DDI_A_E),

-:388: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#388: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:428:
+		.instances = &I915_PW_INSTANCES(

-:398: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#398: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:435:
+		.instances = &I915_PW_INSTANCES(

-:413: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#413: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:444:
+		.instances = &I915_PW_INSTANCES(

-:422: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#422: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:450:
+		.instances = &I915_PW_INSTANCES(

-:438: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#438: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:460:
+		.instances = &I915_PW_INSTANCES(

-:468: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#468: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:534:
+		.instances = &I915_PW_INSTANCES(

-:478: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#478: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:541:
+		.instances = &I915_PW_INSTANCES(

-:493: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#493: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:550:
+		.instances = &I915_PW_INSTANCES(

-:502: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#502: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:556:
+		.instances = &I915_PW_INSTANCES(

-:534: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#534: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:566:
+		.instances = &I915_PW_INSTANCES(

-:593: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#593: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:579:
+		.instances = &I915_PW_INSTANCES(

-:615: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#615: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:687:
+		.instances = &I915_PW_INSTANCES(

-:625: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#625: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:694:
+		.instances = &I915_PW_INSTANCES(

-:640: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#640: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:703:
+		.instances = &I915_PW_INSTANCES(

-:649: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#649: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:709:
+		.instances = &I915_PW_INSTANCES(

-:663: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#663: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:717:
+		.instances = &I915_PW_INSTANCES(

-:719: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#719: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:727:
+		.instances = &I915_PW_INSTANCES(

-:735: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#735: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:737:
+		.instances = &I915_PW_INSTANCES(

-:795: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#795: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:747:
+		.instances = &I915_PW_INSTANCES(

-:796: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#796: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:748:
+			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1, .hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1),

-:797: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#797: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:749:
+			I915_PW("AUX_TBT2", &icl_pwdoms_aux_tbt2, .hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2),

-:798: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#798: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:750:
+			I915_PW("AUX_TBT3", &icl_pwdoms_aux_tbt3, .hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3),

-:799: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#799: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:751:
+			I915_PW("AUX_TBT4", &icl_pwdoms_aux_tbt4, .hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4),

-:837: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#837: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:756:
+		.instances = &I915_PW_INSTANCES(

-:857: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#857: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:873:
+		.instances = &I915_PW_INSTANCES(

-:867: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#867: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:880:
+		.instances = &I915_PW_INSTANCES(

-:882: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#882: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:889:
+		.instances = &I915_PW_INSTANCES(

-:891: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#891: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:895:
+		.instances = &I915_PW_INSTANCES(

-:905: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#905: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:903:
+		.instances = &I915_PW_INSTANCES(

-:945: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#945: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:913:
+		.instances = &I915_PW_INSTANCES(

-:949: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#949: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:917:
+			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),

-:950: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#950: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:918:
+			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),

-:951: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#951: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:919:
+			I915_PW("DDI_IO_TC3", &tgl_pwdoms_ddi_io_tc3, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC3),

-:952: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#952: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:920:
+			I915_PW("DDI_IO_TC4", &tgl_pwdoms_ddi_io_tc4, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC4),

-:953: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#953: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:921:
+			I915_PW("DDI_IO_TC5", &tgl_pwdoms_ddi_io_tc5, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC5),

-:954: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#954: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:922:
+			I915_PW("DDI_IO_TC6", &tgl_pwdoms_ddi_io_tc6, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC6),

-:1004: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1004: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:926:
+		.instances = &I915_PW_INSTANCES(

-:1100: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1100: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:932:
+		.instances = &I915_PW_INSTANCES(

-:1104: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1104: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:936:
+			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),

-:1105: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1105: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:937:
+			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),

-:1106: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1106: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:938:
+			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),

-:1107: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1107: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:939:
+			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),

-:1108: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1108: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:940:
+			I915_PW("AUX_USBC5", &tgl_pwdoms_aux_usbc5, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC5),

-:1109: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1109: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:941:
+			I915_PW("AUX_USBC6", &tgl_pwdoms_aux_usbc6, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC6),

-:1120: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1120: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:945:
+		.instances = &I915_PW_INSTANCES(

-:1121: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1121: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:946:
+			I915_PW("AUX_TBT1", &tgl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),

-:1122: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1122: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:947:
+			I915_PW("AUX_TBT2", &tgl_pwdoms_aux_tbt2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2),

-:1123: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1123: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:948:
+			I915_PW("AUX_TBT3", &tgl_pwdoms_aux_tbt3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3),

-:1124: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1124: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:949:
+			I915_PW("AUX_TBT4", &tgl_pwdoms_aux_tbt4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4),

-:1125: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1125: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:950:
+			I915_PW("AUX_TBT5", &tgl_pwdoms_aux_tbt5, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5),

-:1126: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1126: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:951:
+			I915_PW("AUX_TBT6", &tgl_pwdoms_aux_tbt6, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6),

-:1164: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1164: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:956:
+		.instances = &I915_PW_INSTANCES(

-:1178: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1178: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:964:
+		.instances = &I915_PW_INSTANCES(

-:1198: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1198: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1030:
+		.instances = &I915_PW_INSTANCES(

-:1208: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1208: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1037:
+		.instances = &I915_PW_INSTANCES(

-:1223: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1223: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1046:
+		.instances = &I915_PW_INSTANCES(

-:1232: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1232: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1052:
+		.instances = &I915_PW_INSTANCES(

-:1248: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1248: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1062:
+		.instances = &I915_PW_INSTANCES(

-:1286: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1286: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1070:
+		.instances = &I915_PW_INSTANCES(

-:1289: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1289: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1073:
+			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),

-:1290: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1290: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1074:
+			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),

-:1300: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1300: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1078:
+		.instances = &I915_PW_INSTANCES(

-:1303: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1303: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1081:
+			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),

-:1304: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1304: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1082:
+			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),

-:1344: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1344: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1122:
+		.instances = &I915_PW_INSTANCES(

-:1354: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1354: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1129:
+		.instances = &I915_PW_INSTANCES(

-:1369: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1369: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1138:
+		.instances = &I915_PW_INSTANCES(

-:1378: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1378: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1144:
+		.instances = &I915_PW_INSTANCES(

-:1392: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1392: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1152:
+		.instances = &I915_PW_INSTANCES(

-:1408: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1408: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1162:
+		.instances = &I915_PW_INSTANCES(

-:1411: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1411: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1165:
+			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),

-:1412: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1412: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1166:
+			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),

-:1454: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1454: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1170:
+		.instances = &I915_PW_INSTANCES(

-:1457: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1457: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1173:
+			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),

-:1458: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1458: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1174:
+			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),

-:1486: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1486: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1178:
+		.instances = &I915_PW_INSTANCES(

-:1500: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1500: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1186:
+		.instances = &I915_PW_INSTANCES(

-:1520: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1520: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1323:
+		.instances = &I915_PW_INSTANCES(

-:1530: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1530: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1330:
+		.instances = &I915_PW_INSTANCES(

-:1545: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1545: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1339:
+		.instances = &I915_PW_INSTANCES(

-:1554: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1554: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1345:
+		.instances = &I915_PW_INSTANCES(

-:1569: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1569: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1354:
+		.instances = &I915_PW_INSTANCES(

-:1583: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1583: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1362:
+		.instances = &I915_PW_INSTANCES(

-:1597: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1597: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1370:
+		.instances = &I915_PW_INSTANCES(

-:1611: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1611: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1378:
+		.instances = &I915_PW_INSTANCES(

-:1625: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1625: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1386:
+		.instances = &I915_PW_INSTANCES(

-:1629: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#1629: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1390:
+			I915_PW("DDI_IO_D_XELPD", &xelpd_pwdoms_ddi_io_d_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_DDI_D),

-:1630: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#1630: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1391:
+			I915_PW("DDI_IO_E_XELPD", &xelpd_pwdoms_ddi_io_e_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_DDI_E),

-:1631: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1631: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1392:
+			I915_PW("DDI_IO_TC1", &xelpd_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),

-:1632: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1632: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1393:
+			I915_PW("DDI_IO_TC2", &xelpd_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),

-:1633: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1633: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1394:
+			I915_PW("DDI_IO_TC3", &xelpd_pwdoms_ddi_io_tc3, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC3),

-:1634: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1634: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1395:
+			I915_PW("DDI_IO_TC4", &xelpd_pwdoms_ddi_io_tc4, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC4),

-:1708: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1708: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1399:
+		.instances = &I915_PW_INSTANCES(

-:1712: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#1712: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1403:
+			I915_PW("AUX_D_XELPD", &xelpd_pwdoms_aux_d_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_AUX_D),

-:1713: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#1713: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1404:
+			I915_PW("AUX_E_XELPD", &xelpd_pwdoms_aux_e_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),

-:1714: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1714: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1405:
+			I915_PW("AUX_USBC1", &xelpd_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),

-:1715: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1715: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1406:
+			I915_PW("AUX_USBC2", &xelpd_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),

-:1716: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1716: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1407:
+			I915_PW("AUX_USBC3", &xelpd_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),

-:1717: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1717: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1408:
+			I915_PW("AUX_USBC4", &xelpd_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),

-:1796: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1796: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1413:
+		.instances = &I915_PW_INSTANCES(

-:1797: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1797: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1414:
+			I915_PW("AUX_TBT1", &xelpd_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),

-:1798: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1798: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1415:
+			I915_PW("AUX_TBT2", &xelpd_pwdoms_aux_tbt2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2),

-:1799: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1799: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1416:
+			I915_PW("AUX_TBT3", &xelpd_pwdoms_aux_tbt3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3),

-:1800: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1800: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1417:
+			I915_PW("AUX_TBT4", &xelpd_pwdoms_aux_tbt4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4),

-:1861: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1861: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1442:
+#define for_each_power_well_instance(_desc_list, _desc_count, _desc, _inst) \
+	for ((_desc) = (_desc_list); (_desc) - (_desc_list) < (_desc_count); (_desc)++) \
+		for ((_inst) = (_desc)->instances->list; \
+		     (_inst) - (_desc)->instances->list < (_desc)->instances->count; \
+		     (_inst)++)

-:1861: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_desc_list' - possible side-effects?
#1861: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1442:
+#define for_each_power_well_instance(_desc_list, _desc_count, _desc, _inst) \
+	for ((_desc) = (_desc_list); (_desc) - (_desc_list) < (_desc_count); (_desc)++) \
+		for ((_inst) = (_desc)->instances->list; \
+		     (_inst) - (_desc)->instances->list < (_desc)->instances->count; \
+		     (_inst)++)

-:1861: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_desc' - possible side-effects?
#1861: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1442:
+#define for_each_power_well_instance(_desc_list, _desc_count, _desc, _inst) \
+	for ((_desc) = (_desc_list); (_desc) - (_desc_list) < (_desc_count); (_desc)++) \
+		for ((_inst) = (_desc)->instances->list; \
+		     (_inst) - (_desc)->instances->list < (_desc)->instances->count; \
+		     (_inst)++)

-:1861: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_inst' - possible side-effects?
#1861: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1442:
+#define for_each_power_well_instance(_desc_list, _desc_count, _desc, _inst) \
+	for ((_desc) = (_desc_list); (_desc) - (_desc_list) < (_desc_count); (_desc)++) \
+		for ((_inst) = (_desc)->instances->list; \
+		     (_inst) - (_desc)->instances->list < (_desc)->instances->count; \
+		     (_inst)++)

total: 2 errors, 47 warnings, 81 checks, 2190 lines checked
3eec26a8953e drm/i915: Allow platforms to share power well descriptors
-:34: CHECK:LINE_SPACING: Please don't use multiple blank lines
#34: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:48:
+
+

-:516: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#516: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1397:
+#define for_each_power_well_instance_in_desc_list(_desc_list, _desc_count, _desc, _inst) \
 	for ((_desc) = (_desc_list); (_desc) - (_desc_list) < (_desc_count); (_desc)++) \
 		for ((_inst) = (_desc)->instances->list; \
 		     (_inst) - (_desc)->instances->list < (_desc)->instances->count; \
 		     (_inst)++)

-:516: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_desc_list' - possible side-effects?
#516: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1397:
+#define for_each_power_well_instance_in_desc_list(_desc_list, _desc_count, _desc, _inst) \
 	for ((_desc) = (_desc_list); (_desc) - (_desc_list) < (_desc_count); (_desc)++) \
 		for ((_inst) = (_desc)->instances->list; \
 		     (_inst) - (_desc)->instances->list < (_desc)->instances->count; \
 		     (_inst)++)

-:516: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_desc' - possible side-effects?
#516: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1397:
+#define for_each_power_well_instance_in_desc_list(_desc_list, _desc_count, _desc, _inst) \
 	for ((_desc) = (_desc_list); (_desc) - (_desc_list) < (_desc_count); (_desc)++) \
 		for ((_inst) = (_desc)->instances->list; \
 		     (_inst) - (_desc)->instances->list < (_desc)->instances->count; \
 		     (_inst)++)

-:516: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_inst' - possible side-effects?
#516: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1397:
+#define for_each_power_well_instance_in_desc_list(_desc_list, _desc_count, _desc, _inst) \
 	for ((_desc) = (_desc_list); (_desc) - (_desc_list) < (_desc_count); (_desc)++) \
 		for ((_inst) = (_desc)->instances->list; \
 		     (_inst) - (_desc)->instances->list < (_desc)->instances->count; \
 		     (_inst)++)

-:522: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_desc_list' - possible side-effects?
#522: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1403:
+#define for_each_power_well_instance(_desc_list, _desc_count, _descs, _desc, _inst) \
+	for ((_descs) = (_desc_list); \
+	     (_descs) - (_desc_list) < (_desc_count); \
+	     (_descs)++) \
+		for_each_power_well_instance_in_desc_list((_descs)->list, (_descs)->count, \
+							  (_desc), (_inst))

-:522: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_descs' - possible side-effects?
#522: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1403:
+#define for_each_power_well_instance(_desc_list, _desc_count, _descs, _desc, _inst) \
+	for ((_descs) = (_desc_list); \
+	     (_descs) - (_desc_list) < (_desc_count); \
+	     (_descs)++) \
+		for_each_power_well_instance_in_desc_list((_descs)->list, (_descs)->count, \
+							  (_desc), (_inst))

total: 1 errors, 0 warnings, 6 checks, 512 lines checked
ff43e7ff616f drm/i915: Simplify the DG1 power well descriptors
52f2a4794327 drm/i915: Sanitize the ADL-S power well definition
-:30: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#30: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:905:
+		.instances = &I915_PW_INSTANCES(

-:38: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#38: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:913:
+		.instances = &I915_PW_INSTANCES(

total: 0 errors, 0 warnings, 2 checks, 123 lines checked
4b8354edd893 drm/i915: Sanitize the port -> DDI/AUX power domain mapping for each platform
435a47c6ff05 drm/i915: Remove the aliasing of power domain enum values
4ef3375d182a drm/i915: Remove the ICL specific TBT power domains
b4ebb81064ee drm/i915: Remove duplicate DDI/AUX power domain mappings
-:101: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:936:
+			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),

-:102: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#102: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:937:
+			I915_PW("AUX_TBT2", &icl_pwdoms_aux_tbt2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2),

-:103: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:938:
+			I915_PW("AUX_TBT3", &icl_pwdoms_aux_tbt3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3),

-:104: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#104: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:939:
+			I915_PW("AUX_TBT4", &icl_pwdoms_aux_tbt4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4),

-:158: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#158: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1321:
+			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),

-:159: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#159: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1322:
+			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),

-:160: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#160: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1323:
+			I915_PW("DDI_IO_TC3", &tgl_pwdoms_ddi_io_tc3, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC3),

-:161: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#161: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1324:
+			I915_PW("DDI_IO_TC4", &tgl_pwdoms_ddi_io_tc4, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC4),

-:176: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#176: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1334:
+			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),

-:177: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#177: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1335:
+			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),

-:178: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#178: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1336:
+			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),

-:179: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#179: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1337:
+			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),

-:189: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#189: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1343:
+			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),

-:190: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#190: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1344:
+			I915_PW("AUX_TBT2", &icl_pwdoms_aux_tbt2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2),

-:191: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#191: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1345:
+			I915_PW("AUX_TBT3", &icl_pwdoms_aux_tbt3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3),

-:192: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#192: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1346:
+			I915_PW("AUX_TBT4", &icl_pwdoms_aux_tbt4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4),

total: 0 errors, 16 warnings, 0 checks, 166 lines checked
0e7e778b30ae drm/i915: Remove the XELPD specific AUX and DDI power domains
-:148: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#148: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1313:
+			I915_PW("DDI_IO_D", &icl_pwdoms_ddi_io_d, .hsw.idx = XELPD_PW_CTL_IDX_DDI_D),

-:149: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1314:
+			I915_PW("DDI_IO_E", &icl_pwdoms_ddi_io_e, .hsw.idx = XELPD_PW_CTL_IDX_DDI_E),

total: 0 errors, 2 warnings, 0 checks, 121 lines checked


