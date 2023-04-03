Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8E16D51D2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 22:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6E310E57E;
	Mon,  3 Apr 2023 20:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D3BD10E57E;
 Mon,  3 Apr 2023 20:02:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8600DAADE4;
 Mon,  3 Apr 2023 20:02:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 03 Apr 2023 20:02:55 -0000
Message-ID: <168055217551.24310.13071265650645241620@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230403122428.3526263-1-jani.nikula@intel.com>
In-Reply-To: <20230403122428.3526263-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_rename_intel=5Fp?=
 =?utf-8?b?bS5bY2hdIHRvIGludGVsX2Nsb2NrX2dhdGluZy5bY2hd?=
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

Series: series starting with [1/2] drm/i915: rename intel_pm.[ch] to intel_clock_gating.[ch]
URL   : https://patchwork.freedesktop.org/series/116020/
State : warning

== Summary ==

Error: dim checkpatch failed
2704a1498adc drm/i915: rename intel_pm.[ch] to intel_clock_gating.[ch]
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:148: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#148: 
rename from drivers/gpu/drm/i915/intel_pm.c

total: 0 errors, 1 warnings, 0 checks, 168 lines checked
3314fc89b2b7 drm/i915/clock: mass rename dev_priv to i915
-:1033: CHECK:BRACES: braces {} should be used on all arms of this statement
#1033: FILE: drivers/gpu/drm/i915/intel_clock_gating.c:834:
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


