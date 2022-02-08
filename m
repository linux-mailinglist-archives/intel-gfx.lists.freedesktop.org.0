Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ED24AD859
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 13:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DBF10E51A;
	Tue,  8 Feb 2022 12:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 34DC010E347;
 Tue,  8 Feb 2022 12:32:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E3B7A882E;
 Tue,  8 Feb 2022 12:32:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 08 Feb 2022 12:32:25 -0000
Message-ID: <164432354518.22542.13573721352484166492@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208113656.179823-1-imre.deak@intel.com>
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Refactor_the_display_power_domain_mappings_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915: Refactor the display power domain mappings (rev2)
URL   : https://patchwork.freedesktop.org/series/99476/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa34bdc13d82 drm/i915: Fix the VDSC_PW2 power domain enum value
69200c39d539 drm/i915: Sanitize open-coded power well enable()/disable() calls
2436f611541b drm/i915: Remove redundant state verification during TypeC AUX power well disabling
6b279b657486 drm/i915: Move i915_power_well_regs struct into i915_power_well_ops
cfc03d647e82 drm/i915: Move power well get/put/enable/disable functions to a new file
-:184: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#184: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 308 lines checked
ebd42ad72529 drm/i915: Add function to call a power well's sync_hw() hook
a952543f918d drm/i915: Add functions to get a power well's state/name/domains/mask/refcount
3d2d49f7eabf drm/i915: Move intel_display_power_well_is_enabled() to intel_display_power_well.c
142e7545b265 drm/i915: Move per-platform power well hooks to intel_display_power_well.c
-:2127: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2127: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:265:
+
+	}

-:2337: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#2337: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:475:
+		msleep(1);

-:2342: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#2342: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:480:
+		msleep(1);

-:2663: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#2663: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:801:
+				     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

-:2703: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2703: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:841:
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);

-:2730: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2730: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:868:
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);

-:2832: WARNING:REPEATED_WORD: Possible repeated word: 'power'
#2832: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:970:
+		 "Unexpected DBuf power power state (0x%08x, expected 0x%08x)\n",

-:2907: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2907: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1045:
+static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
+					     struct i915_power_well *power_well)

-:3179: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bits' - possible side-effects?
#3179: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1317:
+#define BITS_SET(val, bits) (((val) & (bits)) == (bits))

-:3634: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#3634: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1772:
+		msleep(1);

-:3680: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3680: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1818:
+
+

total: 0 errors, 7 warnings, 4 checks, 3827 lines checked
c54451a78f9e drm/i915: Unexport the for_each_power_well() macros
-:19: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#19: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:21:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
+	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:21:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
+	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:23: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#23: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:25:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
+	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:25:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
+	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if((__power_well)->desc->domains & (__domain_mask))

-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__dev_priv' - possible side-effects?
#69: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:15:
+#define for_each_power_well(__dev_priv, __power_well)				\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells <	\
+		(__dev_priv)->power_domains.power_well_count;		\
+	     (__power_well)++)

-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#69: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:15:
+#define for_each_power_well(__dev_priv, __power_well)				\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells <	\
+		(__dev_priv)->power_domains.power_well_count;		\
+	     (__power_well)++)

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__dev_priv' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:21:
+#define for_each_power_well_reverse(__dev_priv, __power_well)			\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells +		\
+			      (__dev_priv)->power_domains.power_well_count - 1;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells >= 0;	\
+	     (__power_well)--)

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:21:
+#define for_each_power_well_reverse(__dev_priv, __power_well)			\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells +		\
+			      (__dev_priv)->power_domains.power_well_count - 1;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells >= 0;	\
+	     (__power_well)--)

total: 2 errors, 0 warnings, 6 checks, 58 lines checked
34089d7bdd46 drm/i915: Move the power domain->well mappings to intel_display_power_map.c
-:2342: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2342: 
new file mode 100644

-:4425: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well_descs' - possible side-effects?
#4425: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:2079:
+#define set_power_wells_mask(power_domains, __power_well_descs, skip_mask) \
+	__set_power_wells(power_domains, __power_well_descs, \
+			  ARRAY_SIZE(__power_well_descs), skip_mask)

total: 0 errors, 1 warnings, 1 checks, 4453 lines checked
f3e5dbd65242 drm/i915: Move the dg2 fixed_enable_delay power well param to a common bitfield
c932ef1eac22 drm/i915: Move the HSW power well flags to a common bitfield
77cc46ca8722 drm/i915: Rename the power domain names to end with pipes/ports
4abd4cbfc339 drm/i915: Sanitize the power well names
ca28e1d70609 drm/i915: Convert the power well descriptor domain mask to an array of domains
-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__elems' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:17:
+#define __LIST(__elems) { \
+	.list = __elems, \
+	.count = ARRAY_SIZE(__elems), \
+}

-:53: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#53: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:22:
+#define I915_PW_DOMAINS(...) \
+	(const struct i915_power_domain_list) \
+		__LIST(__LIST_INLINE_ELEMS(enum intel_display_power_domain, __VA_ARGS__))

-:64: CHECK:LINE_SPACING: Please don't use multiple blank lines
#64: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:33:
+
+

-:87: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#87: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:47:
+I915_DECL_PW_DOMAINS(i830_pwdoms_pipes,
+	POWER_DOMAIN_PIPE_A,

-:130: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#130: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:71:
+I915_DECL_PW_DOMAINS(hsw_pwdoms_display,
+	POWER_DOMAIN_PIPE_B,

-:183: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#183: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:108:
+I915_DECL_PW_DOMAINS(bdw_pwdoms_display,
+	POWER_DOMAIN_PIPE_B,

-:266: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#266: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:145:
+I915_DECL_PW_DOMAINS(vlv_pwdoms_display,
+	POWER_DOMAIN_DISPLAY_CORE,

-:286: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#286: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:165:
+I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:294: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#294: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:173:
+I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:412: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#412: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:238:
+I915_DECL_PW_DOMAINS(chv_pwdoms_display,
+	POWER_DOMAIN_DISPLAY_CORE,

-:436: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#436: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:262:
+I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:443: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#443: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:269:
+I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
+	POWER_DOMAIN_PORT_DDI_LANES_D,

-:526: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#526: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:309:
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

-:546: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#546: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:329:
+I915_DECL_PW_DOMAINS(skl_pwdoms_pw_2,
+	SKL_PW_2_POWER_DOMAINS,

-:550: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#550: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:333:
+I915_DECL_PW_DOMAINS(skl_pwdoms_dc_off,
+	SKL_PW_2_POWER_DOMAINS,

-:557: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#557: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:340:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_a_e,
+	POWER_DOMAIN_PORT_DDI_IO_A,

-:562: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#562: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:345:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_b,
+	POWER_DOMAIN_PORT_DDI_IO_B,

-:566: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#566: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:349:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_c,
+	POWER_DOMAIN_PORT_DDI_IO_C,

-:570: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#570: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:353:
+I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_d,
+	POWER_DOMAIN_PORT_DDI_IO_D,

-:689: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#689: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:435:
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

-:706: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#706: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:452:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_pw_2,
+	BXT_PW_2_POWER_DOMAINS,

-:710: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#710: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:456:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
+	BXT_PW_2_POWER_DOMAINS,

-:718: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#718: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:464:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
+	POWER_DOMAIN_PORT_DDI_LANES_A,

-:723: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#723: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:469:
+I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:838: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#838: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:528:
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

-:855: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#855: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:545:
+I915_DECL_PW_DOMAINS(glk_pwdoms_pw_2,
+	GLK_PW_2_POWER_DOMAINS,

-:859: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#859: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:549:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dc_off,
+	GLK_PW_2_POWER_DOMAINS,

-:871: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#871: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:561:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_a,
+	POWER_DOMAIN_PORT_DDI_LANES_A,

-:876: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#876: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:566:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_b,
+	POWER_DOMAIN_PORT_DDI_LANES_B,

-:881: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#881: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:571:
+I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_c,
+	POWER_DOMAIN_PORT_DDI_LANES_C,

-:886: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#886: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:576:
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,

-:891: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#891: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:581:
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_b,
+	POWER_DOMAIN_AUX_B,

-:895: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#895: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:585:
+I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
+	POWER_DOMAIN_AUX_C,

-:1018: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1018: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:711:
+#define ICL_PW_4_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C

-:1023: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1023: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:716:
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_4,
+	ICL_PW_4_POWER_DOMAINS,

-:1052: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1052: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:720:
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

-:1078: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1078: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:746:
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_3,
+	ICL_PW_3_POWER_DOMAINS,

-:1089: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1089: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:753:
+#define ICL_PW_2_POWER_DOMAINS \
+	ICL_PW_3_POWER_DOMAINS, \
+	POWER_DOMAIN_TRANSCODER_VDSC_PW2

-:1094: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1094: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:758:
+I915_DECL_PW_DOMAINS(icl_pwdoms_pw_2,
+	ICL_PW_2_POWER_DOMAINS,

-:1128: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1128: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:765:
+I915_DECL_PW_DOMAINS(icl_pwdoms_dc_off,
+	ICL_PW_2_POWER_DOMAINS,

-:1142: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1142: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:779:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,

-:1446: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1446: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:983:
+#define TGL_PW_5_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
+	POWER_DOMAIN_TRANSCODER_D

-:1452: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1452: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:989:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_5,
+	TGL_PW_5_POWER_DOMAINS,

-:1455: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1455: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:992:
+#define TGL_PW_4_POWER_DOMAINS \
+	TGL_PW_5_POWER_DOMAINS, \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C

-:1462: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1462: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:999:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_4,
+	TGL_PW_4_POWER_DOMAINS,

-:1465: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1465: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1002:
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

-:1493: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1493: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1030:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_3,
+	TGL_PW_3_POWER_DOMAINS,

-:1497: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1497: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1034:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_2,
+	TGL_PW_3_POWER_DOMAINS,

-:1502: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1502: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1039:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_dc_off,
+	TGL_PW_3_POWER_DOMAINS,

-:1517: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1517: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1054:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_a,
+	POWER_DOMAIN_AUX_A,

-:1537: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1537: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1074:
+I915_DECL_PW_DOMAINS(tgl_pwdoms_tc_cold_off,
+	POWER_DOMAIN_AUX_USBC1,

-:1854: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1854: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1363:
+#define RKL_PW_4_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C

-:1860: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1860: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1369:
+I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_4,
+	RKL_PW_4_POWER_DOMAINS,

-:1863: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1863: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1372:
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

-:1877: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1877: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1386:
+I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_3,
+	RKL_PW_3_POWER_DOMAINS,

-:1893: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1893: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1411:
+I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
+	RKL_PW_3_POWER_DOMAINS,

-:2040: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2040: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1531:
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

-:2053: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2053: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1544:
+I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_3,
+	DG1_PW_3_POWER_DOMAINS,

-:2057: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2057: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1548:
+I915_DECL_PW_DOMAINS(dg1_pwdoms_dc_off,
+	DG1_PW_3_POWER_DOMAINS,

-:2065: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2065: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1556:
+I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_2,
+	DG1_PW_3_POWER_DOMAINS,

-:2251: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2251: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1710:
+#define XELPD_PW_D_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
+	POWER_DOMAIN_TRANSCODER_D

-:2257: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2257: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1716:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_d,
+	XELPD_PW_D_POWER_DOMAINS,

-:2260: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2260: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1719:
+#define XELPD_PW_C_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
+	POWER_DOMAIN_TRANSCODER_C

-:2266: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2266: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1725:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_c,
+	XELPD_PW_C_POWER_DOMAINS,

-:2269: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2269: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1728:
+#define XELPD_PW_B_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_B, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
+	POWER_DOMAIN_TRANSCODER_B

-:2275: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2275: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1734:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_b,
+	XELPD_PW_B_POWER_DOMAINS,

-:2279: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2279: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1738:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
+	POWER_DOMAIN_PIPE_A,

-:2283: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2283: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1742:
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

-:2309: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2309: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1768:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
+	XELPD_PW_2_POWER_DOMAINS,

-:2346: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2346: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1789:
+I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
+	XELPD_PW_2_POWER_DOMAINS,

total: 17 errors, 0 warnings, 53 checks, 2540 lines checked
1646208d4c84 drm/i915: Convert the u64 power well domains mask to a bitmap
-:173: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#173: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:22:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
 	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:173: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#173: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:22:
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
 	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:179: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#179: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:26:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain) \
 	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:179: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#179: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:26:
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain) \
 	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:523: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__domain' - possible side-effects?
#523: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:175:
+#define for_each_power_domain(__domain, __mask)				\
+	for ((__domain) = 0; (__domain) < POWER_DOMAIN_NUM; (__domain)++)	\
+		for_each_if(test_bit((__domain), (__mask)->bits))

total: 2 errors, 0 warnings, 3 checks, 530 lines checked
ae8264dcbdbc drm/i915: Simplify power well definitions by adding power well instances
-:29: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#29: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:33:
+#define I915_PW_INSTANCES(...) \
+	(const struct i915_power_well_instance_list) \
+		__LIST(__LIST_INLINE_ELEMS(struct i915_power_well_instance, __VA_ARGS__))

-:43: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#43: FILE: d


