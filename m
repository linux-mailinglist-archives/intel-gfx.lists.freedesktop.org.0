Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9557149F9D2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 13:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FD210E6A3;
	Fri, 28 Jan 2022 12:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 51BA610E64A;
 Fri, 28 Jan 2022 12:49:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B6B1A0169;
 Fri, 28 Jan 2022 12:49:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 28 Jan 2022 12:49:50 -0000
Message-ID: <164337419027.27319.13155723525139890@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220128114914.2339526-1-imre.deak@intel.com>
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Refactor_the_display_power_domain_mappings?=
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

Series: drm/i915: Refactor the display power domain mappings
URL   : https://patchwork.freedesktop.org/series/99476/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b526cacc94dc drm/i915: Fix the VDSC_PW2 power domain enum value
2f95deec7aed drm/i915: Unexport the for_each_power_well() macros
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__dev_priv' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:28:
+#define for_each_power_well(__dev_priv, __power_well)				\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells <	\
+		(__dev_priv)->power_domains.power_well_count;		\
+	     (__power_well)++)

-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:28:
+#define for_each_power_well(__dev_priv, __power_well)				\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells <	\
+		(__dev_priv)->power_domains.power_well_count;		\
+	     (__power_well)++)

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__dev_priv' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:34:
+#define for_each_power_well_reverse(__dev_priv, __power_well)			\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells +		\
+			      (__dev_priv)->power_domains.power_well_count - 1;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells >= 0;	\
+	     (__power_well)--)

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:34:
+#define for_each_power_well_reverse(__dev_priv, __power_well)			\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells +		\
+			      (__dev_priv)->power_domains.power_well_count - 1;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells >= 0;	\
+	     (__power_well)--)

-:31: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#31: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:40:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
+	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#31: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:40:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
+	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:35: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#35: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:44:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
+	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:35: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#35: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:44:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
+	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

total: 2 errors, 0 warnings, 6 checks, 52 lines checked
0cceed36071a drm/i915: Move the i915_power_well_regs struct into i915_power_well_ops
18079359bdb7 drm/i915: Move the power domain->well mappings to intel_display_power_map.c
-:2705: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2705: 
new file mode 100644

-:2809: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_display_power_map.c', please use '//' instead
#2809: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1:
+/* SPDX-License-Identifier: MIT */

-:2809: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#2809: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1:
+/* SPDX-License-Identifier: MIT */

-:5024: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well_descs' - possible side-effects?
#5024: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:2216:
+#define set_power_wells_mask(power_domains, __power_well_descs, skip_mask) \
+	__set_power_wells(power_domains, __power_well_descs, \
+			  ARRAY_SIZE(__power_well_descs), skip_mask)

total: 0 errors, 3 warnings, 1 checks, 5028 lines checked
b7347fe242d7 drm/i915: Move the dg2 fixed_enable_delay power well param to a common bitfield
7f3b9c90f90e drm/i915: Move the HSW power well flags to a common bitfield
e9c6e51f909b drm/i915: Rename the power domain names to end with pipes/ports
cecd93009957 drm/i915: Sanitize the power well names
f2b0c2050d8f drm/i915: Convert the power well descriptor domain mask to a list
-:103: ERROR:BRACKET_SPACE: space prohibited before open square bracket '['
#103: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:14:
+	((__elem_type []){ __VA_ARGS__ })

-:103: ERROR:SPACING: space required before the open brace '{'
#103: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:14:
+	((__elem_type []){ __VA_ARGS__ })

-:105: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__elems' - possible side-effects?
#105: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:16:
+#define __LIST(__elems) { \
+	.list = __elems, \
+	.count = ARRAY_SIZE(__elems), \
+}

-:110: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#110: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:21:
+#define I915_PW_DOMAINS(...) \
+	(const struct i915_power_domain_list) \
+		__LIST(__LIST_INLINE_ELEMS(enum intel_display_power_domain, __VA_ARGS__))

-:149: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#149: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:183:
+I915_DECL_PW_DOMAINS(i830_pwdoms_pipes,
+	POWER_DOMAIN_PIPE_A,

-:192: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#192: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:207:
+I915_DECL_PW_DOMAINS(hsw_pwdoms_display,
+	POWER_DOMAIN_PIPE_B,

-:245: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#245: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:244:
+I915_DECL_PW_DOMAINS(bdw_pwdoms_display,
+	POWER_DOMAIN_PIPE_B,

-:328: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#328: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:281:
+I915_DECL_PW_DOMAINS(vlv_pwdoms_display,
+	POWER_DOMAIN_DISPLAY_CORE,

-:348: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#348: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:301:
+I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:356: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#356: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:309:
+I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:474: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#474: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:374:
+I915_DECL_PW_DOMAINS(chv_pwdoms_display,
+	POWER_DOMAIN_DISPLAY_CORE,

-:498: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#498: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:398:
+I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:505: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#505: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:405:
+I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
+	POWER_DOMAIN_PORT_DDI_LANES_D,

-:588: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#588: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:445:
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

-:608: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#608: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:465:
+I915_DECL_PW_DOMAINS(skl_pwdoms_pw_2,
+	SKL_PW_2_POWER_DOMAINS,

-:612: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#612: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:469:
+I915_DECL_PW_DOMAINS(skl_pwdoms_dc_off,
+	SKL_PW_2_POWER_DOMAINS,

-:619: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#619: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:476:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_a_e,
+	POWER_DOMAIN_PORT_DDI_IO_A,

-:624: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#624: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:481:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_b,
+	POWER_DOMAIN_PORT_DDI_IO_B,

-:628: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#628: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:485:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_c,
+	POWER_DOMAIN_PORT_DDI_IO_C,

-:632: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#632: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:489:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_d,
+	POWER_DOMAIN_PORT_DDI_IO_D,

-:751: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#751: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:571:
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

-:768: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#768: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:588:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_pw_2,
+	BXT_PW_2_POWER_DOMAINS,

-:772: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#772: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:592:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
+	BXT_PW_2_POWER_DOMAINS,

-:780: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#780: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:600:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
+	POWER_DOMAIN_PORT_DDI_LANES_A,

-:785: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#785: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:605:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:900: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#900: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:664:
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

-:917: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#917: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:681:
+I915_DECL_PW_DOMAINS(glk_pwdoms_pw_2,
+	GLK_PW_2_POWER_DOMAINS,

-:921: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#921: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:685:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dc_off,
+	GLK_PW_2_POWER_DOMAINS,

-:933: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#933: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:697:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_a,
+	POWER_DOMAIN_PORT_DDI_LANES_A,

-:938: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#938: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:702:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_b,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:943: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#943: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:707:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_c,
+	POWER_DOMAIN_PORT_DDI_LANES_C,

-:948: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#948: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:712:
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,

-:953: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#953: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:717:
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_b,
+	POWER_DOMAIN_AUX_B,

-:957: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#957: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:721:
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
+	POWER_DOMAIN_AUX_C,

-:1080: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1080: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:847:
+#define ICL_PW_4_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C

-:1085: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1085: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:852:
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_4,
+	ICL_PW_4_POWER_DOMAINS,

-:1114: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1114: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:856:
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

-:1140: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1140: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:882:
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_3,
+	ICL_PW_3_POWER_DOMAINS,

-:1151: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1151: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:889:
+#define ICL_PW_2_POWER_DOMAINS \
+	ICL_PW_3_POWER_DOMAINS, \
+	POWER_DOMAIN_TRANSCODER_VDSC_PW2

-:1156: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1156: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:894:
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_2,
+	ICL_PW_2_POWER_DOMAINS,

-:1190: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1190: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:901:
+I915_DECL_PW_DOMAINS(icl_pwdoms_dc_off,
+	ICL_PW_2_POWER_DOMAINS,

-:1204: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1204: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:915:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,

-:1508: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1508: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1119:
+#define TGL_PW_5_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
+	POWER_DOMAIN_TRANSCODER_D

-:1514: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1514: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1125:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_5,
+	TGL_PW_5_POWER_DOMAINS,

-:1517: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1517: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1128:
+#define TGL_PW_4_POWER_DOMAINS \
+	TGL_PW_5_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C

-:1524: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1524: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1135:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_4,
+	TGL_PW_4_POWER_DOMAINS,

-:1527: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1527: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1138:
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

-:1555: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1555: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1166:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_3,
+	TGL_PW_3_POWER_DOMAINS,

-:1559: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1559: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1170:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_2,
+	TGL_PW_3_POWER_DOMAINS,

-:1564: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1564: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1175:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_dc_off,
+	TGL_PW_3_POWER_DOMAINS,

-:1579: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1579: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1190:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,

-:1599: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1599: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1210:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_tc_cold_off,
+	POWER_DOMAIN_AUX_USBC1,

-:1916: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1916: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1499:
+#define RKL_PW_4_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C

-:1922: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1922: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1505:
+I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_4,
+	RKL_PW_4_POWER_DOMAINS,

-:1925: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1925: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1508:
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

-:1939: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1939: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1522:
+I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_3,
+	RKL_PW_3_POWER_DOMAINS,

-:1955: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1955: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1547:
+I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
+	RKL_PW_3_POWER_DOMAINS,

-:2102: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2102: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1667:
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

-:2115: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2115: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1680:
+I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_3,
+	DG1_PW_3_POWER_DOMAINS,

-:2119: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2119: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1684:
+I915_DECL_PW_DOMAINS(dg1_pwdoms_dc_off,
+	DG1_PW_3_POWER_DOMAINS,

-:2127: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2127: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1692:
+I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_2,
+	DG1_PW_3_POWER_DOMAINS,

-:2313: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2313: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1846:
+#define XELPD_PW_D_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
+	POWER_DOMAIN_TRANSCODER_D

-:2319: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2319: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1852:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_d,
+	XELPD_PW_D_POWER_DOMAINS,

-:2322: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2322: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1855:
+#define XELPD_PW_C_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C

-:2328: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2328: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1861:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_c,
+	XELPD_PW_C_POWER_DOMAINS,

-:2331: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2331: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1864:
+#define XELPD_PW_B_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_B

-:2337: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2337: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1870:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_b,
+	XELPD_PW_B_POWER_DOMAINS,

-:2341: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2341: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1874:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
+	POWER_DOMAIN_PIPE_A,

-:2345: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2345: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1878:
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

-:2371: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2371: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1904:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
+	XELPD_PW_2_POWER_DOMAINS,

-:2408: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2408: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1925:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
+	XELPD_PW_2_POWER_DOMAINS,

total: 19 errors, 0 warnings, 52 checks, 2568 lines checked
97c2753b151f drm/i915: Convert the u64 power well domains mask to a bitmap
-:170: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#170: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:41:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
 	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:170: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#170: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:41:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
 	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:176: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#176: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:45:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain) \
 	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:176: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#176: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:45:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain) \
 	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:482: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#482: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2426:
+	drm_WARN_ON(&i915->drm, !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));

-:539: WARNING:NEW_TYPEDEFS: do not add new typedefs
#539: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:167:
+typedef struct { DECLARE_BITMAP(bits, POWER_DOMAIN_NUM); } intel_power_domain_mask_t;

-:565: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__domain' - possible side-effects?
#565: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:198:
+#define for_each_power_domain(__domain, __mask)				\
+	for ((__domain) = 0; (__domain) < POWER_DOMAIN_NUM; (__domain)++)	\
+		for_each_if(test_bit((__domain), (__mask)->bits))

total: 2 errors, 2 warnings, 3 checks, 545 lines checked
3572a30cfdc7 drm/i915: Simplify power well definitions by adding power well instances
-:443: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#443: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:32:
+#define I915_PW_INSTANCES(...) \
+	(const struct i915_power_well_instance_list) \
+		__LIST(__LIST_INLINE_ELEMS(struct i915_power_well_instance, __VA_ARGS__))

-:450: CHECK:LINE_SPACING: Please don't use multiple blank lines
#450: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:39:
+
+

-:460: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#460: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:182:
+		.instances = &I915_PW_INSTANCES(

-:475: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#475: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:201:
+		.instances = &I915_PW_INSTANCES(

-:484: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#484: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:207:
+		.instances = &I915_PW_INSTANCES(

-:498: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#498: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:234:
+		.instances = &I915_PW_INSTANCES(

-:507: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#507: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:240:
+		.instances = &I915_PW_INSTANCES(

-:527: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#527: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:269:
+		.instances = &I915_PW_INSTANCES(

-:536: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#536: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:275:
+		.instances = &I915_PW_INSTANCES(

-:557: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#557: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:323:
+		.instances = &I915_PW_INSTANCES(

-:566: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#566: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:329:
+		.instances = &I915_PW_INSTANCES(

-:579: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#579: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:336:
+		.instances = &I915_PW_INSTANCES(

-:621: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#621: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:348:
+		.instances = &I915_PW_INSTANCES(

-:640: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#640: FILE: driv


