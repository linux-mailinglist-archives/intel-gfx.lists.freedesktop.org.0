Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E541519F833
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 16:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E08B6E3EE;
	Mon,  6 Apr 2020 14:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35AFE6E3EE;
 Mon,  6 Apr 2020 14:47:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D667A47EE;
 Mon,  6 Apr 2020 14:47:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 06 Apr 2020 14:47:27 -0000
Message-ID: <158618444715.4193.13860998630567781723@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prefer_drm=5FWARN*_over_WARN*_=28rev2=29?=
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

Series: Prefer drm_WARN* over WARN* (rev2)
URL   : https://patchwork.freedesktop.org/series/75543/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fd886b340869 drm/i915/display/icl_dsi: Prefer drm_WARN_ON over WARN_ON
5a021e68d20b drm/i915/display/atomic_plane: Prefer drm_WARN_ON over WARN_ON
04cffffd23fe drm/i915/display/ddi: Prefer drm_WARN* over WARN*
7154962ac9f6 drm/i915/display/display: Prefer drm_WARN_ON over WARN_ON
1703f9a2f458 drm/i915/display/display: Prefer drm_WARN_ON over WARN_ON
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
+ struct drm_i915_private *i915 = container_of(T, struct drm_i915_private, power_domains);

total: 0 errors, 1 warnings, 0 checks, 71 lines checked
81a6c4600fea drm/i915/display/dp: Prefer drm_WARN* over WARN*
22c03725bfb6 drm/i915/display/dpll_mgr: Prefer drm_WARN_ON over WARN_ON
8ec55548bc42 drm/i915/display/frontbuffer: Prefer drm_WARN_ON over WARN_ON
e5fb265bcdfc drm/i915/display/global_state: Prefer drm_WARN* over WARN*
da0de795981b drm/i915/display/overlay: Prefer drm_WARN_ON over WARN_ON
b9632947474b drm/i915/display/sdvo: Prefer drm_WARN* over WARN*
0856fae10111 drm/i915/display/tc: Prefer drm_WARN_ON over WARN_ON
cd2d48c2fb37 drm/i915/display/vlv_dsi: Prefer drm_WARN_ON over WARN_ON
ae80b0409828 drm/i915/gem: Prefer drm_WARN* over WARN*
-:24: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#24: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1444:
+			if (drm_WARN_ONCE(&i915->drm, err,
 				      "Unexpected failure to bind target VMA!"))

-:50: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!obj->userptr.mm"
#50: FILE: drivers/gpu/drm/i915/gem/i915_gem_userptr.c:238:
+	if (drm_WARN_ON(obj->base.dev, obj->userptr.mm == NULL))

total: 0 errors, 0 warnings, 2 checks, 25 lines checked
3b4763bebc0e drm/i915/i915_drv: Prefer drm_WARN_ON over WARN_ON
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_drv.h:1650:
+#define INTEL_DISPLAY_ENABLED(dev_priv) \
+		(drm_WARN_ON(&dev_priv->drm, !HAS_DISPLAY(dev_priv)), !i915_modparams.disable_display)

-:22: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'dev_priv' may be better as '(dev_priv)' to avoid precedence issues
#22: FILE: drivers/gpu/drm/i915/i915_drv.h:1650:
+#define INTEL_DISPLAY_ENABLED(dev_priv) \
+		(drm_WARN_ON(&dev_priv->drm, !HAS_DISPLAY(dev_priv)), !i915_modparams.disable_display)

-:23: WARNING:LONG_LINE: line over 100 characters
#23: FILE: drivers/gpu/drm/i915/i915_drv.h:1651:
+		(drm_WARN_ON(&dev_priv->drm, !HAS_DISPLAY(dev_priv)), !i915_modparams.disable_display)

total: 0 errors, 1 warnings, 2 checks, 9 lines checked
7de0dff58893 drm/i915/pmu: Prefer drm_WARN_ON over WARN_ON
5597bb572e9b drm/i915/pm: Prefer drm_WARN_ON over WARN_ON
0fd60ba24842 drm/i915/runtime_pm: Prefer drm_WARN* over WARN*
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
+ struct drm_i915_private *i915 = container_of(T, struct drm_i915_private, runtime_pm);

total: 0 errors, 1 warnings, 0 checks, 89 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
