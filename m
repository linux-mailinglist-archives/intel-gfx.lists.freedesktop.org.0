Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C74513B899
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 05:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADF36E853;
	Wed, 15 Jan 2020 04:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C24AA6E844;
 Wed, 15 Jan 2020 04:11:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8DDAA0019;
 Wed, 15 Jan 2020 04:11:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Wed, 15 Jan 2020 04:11:15 -0000
Message-ID: <157906147572.2010.14880739484864606851@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115034455.17658-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200115034455.17658-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_th?=
 =?utf-8?q?em_in_i915_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Introduce struct drm_device based WARN* and use them in i915 (rev2)
URL   : https://patchwork.freedesktop.org/series/72035/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
18f3673543e1 drm/print: introduce new struct drm_device based WARN* macros
-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#37: FILE: include/drm/drm_print.h:567:
+#define drm_WARN(drm, condition, format, arg...)			\
+	WARN(condition, "%s %s: " format,				\
+			dev_driver_string((drm)->dev),			\
+			dev_name((drm)->dev), ## arg)

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#42: FILE: include/drm/drm_print.h:572:
+#define drm_WARN_ONCE(drm, condition, format, arg...)			\
+	WARN_ONCE(condition, "%s %s: " format,				\
+			dev_driver_string((drm)->dev),			\
+			dev_name((drm)->dev), ## arg)

-:47: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#47: FILE: include/drm/drm_print.h:577:
+#define drm_WARN_ON(drm, x)						\
+	drm_WARN((drm), (x), "%s",					\
+		 "drm_WARN_ON(" __stringify(x) ")")

-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#51: FILE: include/drm/drm_print.h:581:
+#define drm_WARN_ON_ONCE(drm, x)					\
+	drm_WARN_ONCE((drm), (x), "%s",					\
+		      "drm_WARN_ON_ONCE(" __stringify(x) ")")

total: 0 errors, 0 warnings, 4 checks, 33 lines checked
92983812e74b drm/i915/display: Make WARN* drm specific where drm_device ptr is available
e49c4974bb9e drm/i915/display: Make WARN* drm specific where drm_priv ptr is available
-:1248: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1248: FILE: drivers/gpu/drm/i915/display/intel_display.c:15228:
+			    skl_ddb_allocation_overlaps(

-:1261: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1261: FILE: drivers/gpu/drm/i915/display/intel_display.c:15265:
+			    skl_ddb_allocation_overlaps(

-:1992: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#1992: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5673:
+		    !drm_modeset_is_locked(

-:2060: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2060: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:107:
+	if (drm_WARN_ON(&dev_priv->drm, pll < dev_priv->shared_dplls ||
+		pll > &dev_priv->shared_dplls[dev_priv->num_shared_dpll]))

-:2079: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!pll"
#2079: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:144:
+	if (drm_WARN_ON(&dev_priv->drm, pll == NULL))

-:2097: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!pll"
#2097: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:173:
+	if (drm_WARN_ON(&dev_priv->drm, pll == NULL))

-:2602: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#2602: FILE: drivers/gpu/drm/i915/display/intel_overlay.c:763:
+		    !drm_modeset_is_locked(

-:2613: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#2613: FILE: drivers/gpu/drm/i915/display/intel_overlay.c:863:
+		    !drm_modeset_is_locked(

-:2919: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2919: FILE: drivers/gpu/drm/i915/display/intel_tc.c:415:
+		    intel_display_power_is_enabled(i915,
+					intel_aux_power_domain(dig_port)));

total: 0 errors, 0 warnings, 9 checks, 2504 lines checked
f1c69c04fbdd drm/i915/display: Make WARN* drm specific where encoder ptr is available
6328a5e08b71 drm/i915/gem: Make WARN* drm specific where drm_priv ptr is available
-:84: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#84: FILE: drivers/gpu/drm/i915/gem/i915_gem_pm.c:89:
+			drm_WARN_ON(&i915->drm,
+			    i915_gem_object_set_to_gtt_domain(obj, false));

total: 0 errors, 0 warnings, 1 checks, 77 lines checked
4e722d898e37 drm/i915/gt: Make WARN* drm specific where drm_priv ptr is available
d8994a89f0e2 drm/i915/gvt: Make WARN* drm specific where drm_priv ptr is available
61233e2191ac drm/i915/gvt: Make WARN* drm specific where vgpu ptr is available
-:296: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#296: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1373:
+		drm_WARN_ONCE(&i915->drm, 1,
+				"VM(%d): iGVT-g doesn't support GuC\n",

-:310: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#310: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1389:
+		drm_WARN(&i915->drm, 1,
+				"VM(%d): Use physical address for TRTT!\n",

-:397: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#397: FILE: drivers/gpu/drm/i915/gvt/interrupt.c:347:
+			drm_WARN_ON(&i915->drm,
+			    up_irq_info != irq->info[map->up_irq_group]);

total: 0 errors, 0 warnings, 3 checks, 519 lines checked
f3d36b64b57e drm/i915: Make WARN* drm specific where drm_priv ptr is available
ab58d9547a99 drm/i915: Make WARN* drm specific where uncore or stream ptr is available

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
