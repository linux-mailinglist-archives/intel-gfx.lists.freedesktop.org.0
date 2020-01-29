Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B8214C45A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 02:16:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F136E17D;
	Wed, 29 Jan 2020 01:16:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 297836E17D;
 Wed, 29 Jan 2020 01:16:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20DFEA010F;
 Wed, 29 Jan 2020 01:16:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Wed, 29 Jan 2020 01:16:38 -0000
Message-ID: <158026059810.5461.13902764445830933939@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128181603.27767-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200128181603.27767-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_th?=
 =?utf-8?q?em_in_i915_=28rev5=29?=
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

Series: drm: Introduce struct drm_device based WARN* and use them in i915 (rev5)
URL   : https://patchwork.freedesktop.org/series/72035/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6f71daf153b5 drm/i915/display/icl_dsi: Make WARN* drm specific where drm_priv ptr is available
13279cf3994c drm/i915/display/audio: Make WARN* drm specific where drm_priv ptr is available
5ee9faa4b3ac drm/i915/display/cdclk: Make WARN* drm specific where drm_priv ptr is available
3d0ed24d2188 drm/i915/display/crt: Make WARN* drm specific where drm_priv ptr is available
6cf47ab70c5e drm/i915/display/ddi: Make WARN* drm specific where drm_device ptr is available
1191a56000f1 drm/i915/display/display: Make WARN* drm specific where drm_device ptr is available
-:491: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#491: FILE: drivers/gpu/drm/i915/display/intel_display.c:10598:
+		drm_WARN_ON(dev, !pll->info->funcs->get_hw_state(dev_priv, pll,
+						 &pipe_config->dpll_hw_state));

total: 0 errors, 0 warnings, 1 checks, 646 lines checked
0d9d563d4a09 drm/i915/display/power: Make WARN* drm specific where drm_priv ptr is available
430d6a325fd7 drm/i915/display/dp: Make WARN* drm specific where drm_device ptr is available
bdc46644b567 drm/i915/display/dpll_mgr: Make WARN* drm specific where drm_device ptr is available
-:153: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!pll"
#153: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:144:
+	if (drm_WARN_ON(&dev_priv->drm, pll == NULL))

-:171: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!pll"
#171: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:173:
+	if (drm_WARN_ON(&dev_priv->drm, pll == NULL))

total: 0 errors, 0 warnings, 2 checks, 122 lines checked
7b204e77c834 drm/i915/display/fbc: Make WARN* drm specific where drm_priv ptr is available
de817f0c314c drm/i915/fbdev: Make WARN* drm specific where drm_device ptr is available
b8f5d66817e7 drm/i915/display/hdcp: Make WARN* drm specific where drm_priv ptr is available
8c77ad9df278 drm/i915/display/hdmi: Make WARN* drm specific where drm_device ptr is available
a67b50975bc6 drm/i915/display/overlay: Make WARN* drm specific where drm_priv ptr is available
8f9fd58e125a drm/i915/display/panel: Make WARN* drm specific where drm_priv ptr is available
4f6311b92089 drm/i915/display/psr: Make WARN* drm specific where drm_priv ptr is available
-:110: WARNING:LONG_LINE: line over 100 characters
#110: FILE: drivers/gpu/drm/i915/display/intel_psr.c:772:
+			    intel_de_read(dev_priv, EDP_PSR2_CTL(dev_priv->psr.transcoder)) & EDP_PSR2_ENABLE);

-:115: WARNING:LONG_LINE: line over 100 characters
#115: FILE: drivers/gpu/drm/i915/display/intel_psr.c:775:
+		    intel_de_read(dev_priv, EDP_PSR_CTL(dev_priv->psr.transcoder)) & EDP_PSR_ENABLE);

total: 0 errors, 2 warnings, 0 checks, 99 lines checked
168795ccf96d drm/i915/display/sdvo: Make WARN* drm specific where drm_priv ptr is available
eb491ccf84d2 drm/i915/display/tc: Make WARN* drm specific where drm_priv ptr is available
-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/display/intel_tc.c:415:
+		    intel_display_power_is_enabled(i915,
+					intel_aux_power_domain(dig_port)));

total: 0 errors, 0 warnings, 1 checks, 60 lines checked
bcf688f26b01 drm/i915/display: Make WARN* drm specific where drm_device ptr is available
c747e593c66a drm/i915/gvt: Make WARN* drm specific where drm_priv ptr is available
c7bb5c2d58a4 drm/i915/gvt: Make WARN* drm specific where vgpu ptr is available
-:296: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#296: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1373:
+		drm_WARN_ONCE(&i915->drm, 1,
+				"VM(%d): iGVT-g doesn't support GuC\n",

-:310: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#310: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1389:
+		drm_WARN(&i915->drm, 1,
+				"VM(%d): Use physical address for TRTT!\n",

total: 0 errors, 0 warnings, 2 checks, 520 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
