Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD5B9DBC11
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 19:13:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CF1410E142;
	Thu, 28 Nov 2024 18:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D42F10ED3F;
 Thu, 28 Nov 2024 18:13:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?power_conversion_to_struct_intel=5Fdisplay_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2024 18:13:30 -0000
Message-ID: <173281761018.4193973.13371264058515883650@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1732808222.git.jani.nikula@intel.com>
In-Reply-To: <cover.1732808222.git.jani.nikula@intel.com>
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

Series: drm/i915/display: power conversion to struct intel_display (rev2)
URL   : https://patchwork.freedesktop.org/series/141846/
State : warning

== Summary ==

Error: dim checkpatch failed
cd780c372c31 drm/i915/display: convert for_each_power_well() to struct intel_display
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
45b65941930b drm/i915/display: convert for_each_power_domain_well() to struct intel_display
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
d78a69328472 drm/i915/display: convert power wells to struct intel_display
520ef50d09b0 drm/i915/display: convert power domain code internally to struct intel_display
-:141: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#141: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:382:
+	drm_dbg_kms(display->drm, "%s (%d):\n", prefix, bitmap_weight(mask->bits, POWER_DOMAIN_NUM));

-:1662: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1662: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2182:
+			    intel_power_well_name(power_well), intel_power_well_refcount(power_well));

-:1907: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1907: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2563:
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);

-:1920: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1920: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2575:
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);

-:1933: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1933: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2587:
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);

total: 0 errors, 5 warnings, 0 checks, 1832 lines checked
ee3522a32636 drm/i915/display: convert high level power interfaces to struct intel_display
e90f1ec218e5 drm/i915/display: convert power map to struct intel_display


