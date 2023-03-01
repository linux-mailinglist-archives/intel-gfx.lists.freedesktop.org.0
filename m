Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F216A757B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 21:39:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3A7B10E252;
	Wed,  1 Mar 2023 20:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD04010E252;
 Wed,  1 Mar 2023 20:39:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5400A00CC;
 Wed,  1 Mar 2023 20:39:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 01 Mar 2023 20:39:44 -0000
Message-ID: <167770318464.6634.6996519735162239857@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1677678803.git.jani.nikula@intel.com>
In-Reply-To: <cover.1677678803.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_pm_cleanups=2C_rename_to_clock_gating?=
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

Series: drm/i915: pm cleanups, rename to clock gating
URL   : https://patchwork.freedesktop.org/series/114519/
State : warning

== Summary ==

Error: dim checkpatch failed
b692b7687640 drm/i915/wm: remove display/ prefix from include
3c139b502a1f drm/i915/pm: drop intel_pm_setup()
107a5af9ab14 drm/i915/pm: drop intel_suspend_hw()
b19705e1c09f drm/i915: remove unnecessary intel_pm.h includes
f361dedf95d4 drm/i915: rename intel_pm.[ch] to intel_clock_gating.[ch]
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:147: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#147: 
rename from drivers/gpu/drm/i915/intel_pm.c

total: 0 errors, 1 warnings, 0 checks, 168 lines checked
66cba8ee1b7c drm/i915/clock: mass rename dev_priv to i915
-:1032: CHECK:BRACES: braces {} should be used on all arms of this statement
#1032: FILE: drivers/gpu/drm/i915/intel_clock_gating.c:834:
+	if (IS_METEORLAKE(i915))
[...]
+	else if (IS_PONTEVECCHIO(i915))
[...]
+	else if (IS_DG2(i915))
[...]
+	else if (IS_XEHPSDV(i915))
[...]
+	else if (IS_ALDERLAKE_P(i915))
[...]
+	else if (GRAPHICS_VER(i915) == 12)
[...]
+	else if (GRAPHICS_VER(i915) == 11)
[...]
+	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
[...]
+	else if (IS_SKYLAKE(i915))
[...]
+	else if (IS_KABYLAKE(i915))
[...]
+	else if (IS_BROXTON(i915))
[...]
+	else if (IS_GEMINILAKE(i915))
[...]
+	else if (IS_BROADWELL(i915))
[...]
+	else if (IS_CHERRYVIEW(i915))
[...]
+	else if (IS_HASWELL(i915))
[...]
+	else if (IS_IVYBRIDGE(i915))
[...]
+	else if (IS_VALLEYVIEW(i915))
[...]
+	else if (GRAPHICS_VER(i915) == 6)
[...]
+	else if (GRAPHICS_VER(i915) == 5)
[...]
+	else if (IS_G4X(i915))
[...]
+	else if (IS_I965GM(i915))
[...]
+	else if (IS_I965G(i915))
[...]
+	else if (GRAPHICS_VER(i915) == 3)
[...]
+	else if (IS_I85X(i915) || IS_I865G(i915))
[...]
+	else if (GRAPHICS_VER(i915) == 2)
[...]
 	else {
[...]

total: 0 errors, 0 warnings, 1 checks, 1056 lines checked


