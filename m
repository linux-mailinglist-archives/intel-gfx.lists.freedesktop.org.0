Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D558F1C48A9
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 22:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CD0189DF7;
	Mon,  4 May 2020 20:57:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C60889DF7;
 Mon,  4 May 2020 20:57:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55F80A47E6;
 Mon,  4 May 2020 20:57:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 04 May 2020 20:57:01 -0000
Message-ID: <158862582134.5817.18283742331274326360@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504181600.18503-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200504181600.18503-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prefer_drm=5FWARN*_over_WARN*_=28rev3=29?=
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

Series: Prefer drm_WARN* over WARN* (rev3)
URL   : https://patchwork.freedesktop.org/series/75543/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e13909e4cad6 drm/i915/display/display_power: Prefer drm_WARN_ON over WARN_ON
-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
+ struct drm_i915_private *i915 = container_of(T, struct drm_i915_private, power_domains);

total: 0 errors, 1 warnings, 0 checks, 71 lines checked
1007d6a2e1d7 drm/i915/display/dp: Prefer drm_WARN* over WARN*
6f400e74f722 drm/i915/display/sdvo: Prefer drm_WARN* over WARN*
700fd559057c drm/i915/display/tc: Prefer drm_WARN_ON over WARN_ON
f41a15c05f60 drm/i915/gem: Prefer drm_WARN* over WARN*
-:24: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#24: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1630:
+			if (drm_WARN_ONCE(&i915->drm, err,
 				      "Unexpected failure to bind target VMA!"))

-:50: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!obj->userptr.mm"
#50: FILE: drivers/gpu/drm/i915/gem/i915_gem_userptr.c:238:
+	if (drm_WARN_ON(obj->base.dev, obj->userptr.mm == NULL))

total: 0 errors, 0 warnings, 2 checks, 25 lines checked
57cd2a85fcd4 drm/i915/i915_drv: Prefer drm_WARN_ON over WARN_ON
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_drv.h:1652:
+#define INTEL_DISPLAY_ENABLED(dev_priv) \
+		(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !i915_modparams.disable_display)

-:26: WARNING:LONG_LINE: line over 100 characters
#26: FILE: drivers/gpu/drm/i915/i915_drv.h:1653:
+		(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !i915_modparams.disable_display)

total: 0 errors, 1 warnings, 1 checks, 9 lines checked
adfccabbfb60 drm/i915/pmu: Prefer drm_WARN_ON over WARN_ON
fd2a05cb030c drm/i915/pm: Prefer drm_WARN_ON over WARN_ON
5f984d13c80e drm/i915/runtime_pm: Prefer drm_WARN* over WARN*
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
+ struct drm_i915_private *i915 = container_of(T, struct drm_i915_private, runtime_pm);

total: 0 errors, 1 warnings, 0 checks, 89 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
