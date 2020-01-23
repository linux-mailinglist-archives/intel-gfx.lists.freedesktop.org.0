Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D98BF147234
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 20:57:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A57846E126;
	Thu, 23 Jan 2020 19:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A277D6E126;
 Thu, 23 Jan 2020 19:57:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A0F7A0118;
 Thu, 23 Jan 2020 19:57:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Thu, 23 Jan 2020 19:57:42 -0000
Message-ID: <157980946260.1144.7028520315962507813@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123112809.12185-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200123112809.12185-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_th?=
 =?utf-8?q?em_in_i915_=28rev3=29?=
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

Series: drm: Introduce struct drm_device based WARN* and use them in i915 (rev3)
URL   : https://patchwork.freedesktop.org/series/72035/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ab441b2f141b drm/i915/display: Make WARN* drm specific where drm_device ptr is available
-:226: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#226: FILE: drivers/gpu/drm/i915/display/intel_display.c:10514:
+		drm_WARN_ON(dev, !pll->info->funcs->get_hw_state(dev_priv, pll,
 						&pipe_config->dpll_hw_state));

total: 0 errors, 0 warnings, 1 checks, 390 lines checked
f0a3afb9ae23 drm/i915/display: Make WARN* drm specific where drm_priv ptr is available
-:1247: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1247: FILE: drivers/gpu/drm/i915/display/intel_display.c:15207:
+		drm_WARN_ON(&dev_priv->drm,
+		    skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,

-:1258: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1258: FILE: drivers/gpu/drm/i915/display/intel_display.c:15243:
+		drm_WARN_ON(&dev_priv->drm,
+			skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,

-:1548: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1548: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1067:
+	drm_WARN_ON(&dev_priv->drm,
+	    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw, &cdclk_state));

-:2052: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2052: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:107:
+	if (drm_WARN_ON(&dev_priv->drm, pll < dev_priv->shared_dplls ||
+		pll > &dev_priv->shared_dplls[dev_priv->num_shared_dpll]))

-:2071: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!pll"
#2071: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:144:
+	if (drm_WARN_ON(&dev_priv->drm, pll == NULL))

-:2089: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!pll"
#2089: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:173:
+	if (drm_WARN_ON(&dev_priv->drm, pll == NULL))

-:2917: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2917: FILE: drivers/gpu/drm/i915/display/intel_tc.c:414:
+	drm_WARN_ON(&i915->drm, intel_display_power_is_enabled(i915,
+					intel_aux_power_domain(dig_port)));

total: 0 errors, 0 warnings, 7 checks, 2502 lines checked
a4e641c96669 drm/i915/gvt: Make WARN* drm specific where drm_priv ptr is available
ee7e674f9214 drm/i915/gvt: Make WARN* drm specific where vgpu ptr is available
-:296: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#296: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1373:
+		drm_WARN_ONCE(&i915->drm, 1,
+				"VM(%d): iGVT-g doesn't support GuC\n",

-:310: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#310: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1389:
+		drm_WARN(&i915->drm, 1,
+				"VM(%d): Use physical address for TRTT!\n",

total: 0 errors, 0 warnings, 2 checks, 519 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
