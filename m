Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD379DACA6
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:42:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4AB10EB9F;
	Wed, 27 Nov 2024 17:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDA7910E058;
 Wed, 27 Nov 2024 17:42:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?power_conversion_to_struct_intel=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2024 17:42:44 -0000
Message-ID: <173272936476.3816687.3211210148807337850@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1732727056.git.jani.nikula@intel.com>
In-Reply-To: <cover.1732727056.git.jani.nikula@intel.com>
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

Series: drm/i915/display: power conversion to struct intel_display
URL   : https://patchwork.freedesktop.org/series/141846/
State : warning

== Summary ==

Error: dim checkpatch failed
6414affb803e drm/i915/display: simplify conditional compilation on runtime PM debug
d8d0d247d732 drm/i915/display: convert for_each_power_well() to struct intel_display
-:118: CHECK:MACRO_ARG_REUSE: Macro argument reuse '___display' - possible side-effects?
#118: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:18:
+#define for_each_power_well(___display, __power_well)			\
+	for ((__power_well) = (___display)->power.domains.power_wells;	\
+	     (__power_well) - (___display)->power.domains.power_wells <	\
+		     (___display)->power.domains.power_well_count;	\
 	     (__power_well)++)

-:118: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#118: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:18:
+#define for_each_power_well(___display, __power_well)			\
+	for ((__power_well) = (___display)->power.domains.power_wells;	\
+	     (__power_well) - (___display)->power.domains.power_wells <	\
+		     (___display)->power.domains.power_well_count;	\
 	     (__power_well)++)

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse '___display' - possible side-effects?
#128: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:24:
+#define for_each_power_well_reverse(___display, __power_well)		\
+	for ((__power_well) = (___display)->power.domains.power_wells +	\
+		     (___display)->power.domains.power_well_count - 1;	\
+	     (__power_well) - (___display)->power.domains.power_wells >= 0; \
 	     (__power_well)--)

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#128: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.h:24:
+#define for_each_power_well_reverse(___display, __power_well)		\
+	for ((__power_well) = (___display)->power.domains.power_wells +	\
+		     (___display)->power.domains.power_well_count - 1;	\
+	     (__power_well) - (___display)->power.domains.power_wells >= 0; \
 	     (__power_well)--)

total: 0 errors, 0 warnings, 4 checks, 102 lines checked
798b977a74f7 drm/i915/display: convert for_each_power_domain_well() to struct intel_display
-:24: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#24: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:31:
+#define for_each_power_domain_well(__display, __power_well, __domain)	\
+	for_each_power_well((__display), __power_well)			\
 		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:31:
+#define for_each_power_domain_well(__display, __power_well, __domain)	\
+	for_each_power_well((__display), __power_well)			\
 		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:30: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#30: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:35:
+#define for_each_power_domain_well_reverse(__display, __power_well, __domain) \
+	for_each_power_well_reverse((__display), __power_well) \
 		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

-:30: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__power_well' - possible side-effects?
#30: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:35:
+#define for_each_power_domain_well_reverse(__display, __power_well, __domain) \
+	for_each_power_well_reverse((__display), __power_well) \
 		for_each_if(test_bit((__domain), (__power_well)->domains.bits))

total: 2 errors, 0 warnings, 2 checks, 61 lines checked
079b5335a76c drm/i915/display: convert power wells to struct intel_display
-:1092: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1092: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:1059:
+static bool i9xx_always_on_power_well_enabled(struct intel_display *display,
 					     struct i915_power_well *power_well)

total: 0 errors, 0 warnings, 1 checks, 1730 lines checked
3d501114f91a drm/i915/display: convert power domain code internally to struct intel_display
-:41: WARNING:ONE_SEMICOLON: Statements terminations use 1 semicolon
#41: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:246:
+	struct i915_power_domains *power_domains = &display->power.domains;;

-:139: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#139: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:382:
+	drm_dbg_kms(display->drm, "%s (%d):\n", prefix, bitmap_weight(mask->bits, POWER_DOMAIN_NUM));

-:143: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#143: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:385:
+		drm_dbg_kms(display->drm, "%s use_count %d\n",
 			intel_display_power_domain_str(domain),

-:159: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#159: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:397:
+	drm_dbg_kms(display->drm, "async_put_wakeref: %s\n",
 		str_yes_no(power_domains->async_put_wakeref));

-:289: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#289: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:617:
+	drm_WARN_ON(display->drm, !queue_delayed_work(system_unbound_wq,
 						    &power_domains->async_put_work,

-:962: WARNING:LINE_SPACING: Missing a blank line after declarations
#962: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1406:
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	drm_dbg_kms(display->drm, "Enabling package C8+\n");

-:979: WARNING:LINE_SPACING: Missing a blank line after declarations
#979: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1419:
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	drm_dbg_kms(display->drm, "Disabling package C8+\n");

-:1151: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1151: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1641:
+		drm_dbg_kms(display->drm,
 			"Unknown memory configuration; disabling address buddy logic.\n");

-:1692: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1692: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2193:
+		drm_dbg_kms(display->drm, "%-25s %d\n",
 			intel_power_well_name(power_well), intel_power_well_refcount(power_well));

-:1697: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1697: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2197:
+			drm_dbg_kms(display->drm, "  %-23s %d\n",
 				intel_display_power_domain_str(domain),

-:1935: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1935: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2574:
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);

-:1948: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1948: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2586:
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);

-:1961: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1961: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2598:
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);

total: 0 errors, 7 warnings, 6 checks, 1856 lines checked
df1ddf6d0a4e drm/i915/display: convert high level power interfaces to struct intel_display
dc0acdb4779e drm/i915/display: convert power map to struct intel_display


