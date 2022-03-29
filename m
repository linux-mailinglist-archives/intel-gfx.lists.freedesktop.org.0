Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E87FF4EB2EE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 19:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364C410E5E6;
	Tue, 29 Mar 2022 17:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 39E0E10E5E6;
 Tue, 29 Mar 2022 17:52:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 361D8A0099;
 Tue, 29 Mar 2022 17:52:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 29 Mar 2022 17:52:12 -0000
Message-ID: <164857633219.5796.3734410360457423948@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220329164336.1199359-1-imre.deak@intel.com>
In-Reply-To: <20220329164336.1199359-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Refactor_the_display_power_domain_mappings_=28r?=
 =?utf-8?q?ev3=29?=
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

Series: drm/i915: Refactor the display power domain mappings (rev3)
URL   : https://patchwork.freedesktop.org/series/99476/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b760be68ea17 drm/i915: Move per-platform power well hooks to intel_display_power_well.c
-:2157: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2157: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:265:
+
+	}

-:2367: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#2367: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:475:
+		msleep(1);

-:2372: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#2372: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:480:
+		msleep(1);

-:2693: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#2693: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:801:
+				     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

-:2733: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2733: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:841:
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);

-:2760: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2760: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:868:
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);

-:2862: WARNING:REPEATED_WORD: Possible repeated word: 'power'
#2862: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:970:
+		 "Unexpected DBuf power power state (0x%08x, expected 0x%08x)\n",

-:2937: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2937: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1045:
+static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
+					     struct i915_power_well *power_well)

-:3209: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bits' - possible side-effects?
#3209: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1317:
+#define BITS_SET(val, bits) (((val) & (bits)) == (bits))

-:3664: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#3664: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1772:
+		msleep(1);

-:3710: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3710: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1818:
+
+

total: 0 errors, 7 warnings, 4 checks, 3856 lines checked
86cb72f00160 drm/i915: Unexport the for_each_power_well() macros
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
e45b48445238 drm/i915: Move the power domain->well mappings to intel_display_power_map.c
-:2350: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2350: 
new file mode 100644

-:4433: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well_descs' - possible side-effects?
#4433: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:2079:
+#define set_power_wells_mask(power_domains, __power_well_descs, skip_mask) \
+	__set_power_wells(power_domains, __power_well_descs, \
+			  ARRAY_SIZE(__power_well_descs), skip_mask)

total: 0 errors, 1 warnings, 1 checks, 4467 lines checked
4eeff3ba0f24 drm/i915: Move the dg2 fixed_enable_delay power well param to a common bitfield
e6a10f0958d4 drm/i915: Move the HSW power well flags to a common bitfield
e809f351fa66 drm/i915: Rename the power domain names to end with pipes/ports
1d3d8dac9778 drm/i915: Sanitize the power well names
3e90e324a279 drm/i915: Convert the power well descriptor domain mask to an array of domains
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
fcd6ff9811c3 drm/i915: Convert the u64 power well domains mask to a bitmap
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
f68ac7ab1852 drm/i915: Simplify power well definitions by adding power well instances
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
#114: FILE: drivers/gpu/


