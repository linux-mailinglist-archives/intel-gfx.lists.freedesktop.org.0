Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E414153CB47
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 16:03:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5406E10E093;
	Fri,  3 Jun 2022 14:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9BCFF10E093;
 Fri,  3 Jun 2022 14:03:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BA6DAAA91;
 Fri,  3 Jun 2022 14:03:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 03 Jun 2022 14:03:55 -0000
Message-ID: <165426503524.17721.226209667722174762@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1654261471.git.jani.nikula@intel.com>
In-Reply-To: <cover.1654261471.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_i915=5Fdrv=2Eh_=26_i915=5Fgem=2Eh_header_refact?=
 =?utf-8?q?oring?=
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

Series: drm/i915: i915_drv.h & i915_gem.h header refactoring
URL   : https://patchwork.freedesktop.org/series/104725/
State : warning

== Summary ==

Error: dim checkpatch failed
a53c0ec4baf9 drm/i915/tasklet: separate local hacks around struct tasklet_struct
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:86: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#86: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 99 lines checked
36fc7e4e5220 drm/i915/debug: add new i915_debug.h for debug asserts
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:217: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#217: 
new file mode 100644

-:240: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#240: FILE: drivers/gpu/drm/i915/i915_debug.h:19:
+#define __GEM_BUG(cond) BUG()

-:246: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'condition' - possible side-effects?
#246: FILE: drivers/gpu/drm/i915/i915_debug.h:25:
+#define GEM_BUG_ON(condition) do { if (unlikely((condition))) {	\
+		GEM_TRACE_ERR("%s:%d GEM_BUG_ON(%s)\n", \
+			      __func__, __LINE__, __stringify(condition)); \
+		GEM_TRACE_DUMP(); \
+		__GEM_BUG(condition); \
+		} \
+	} while(0)

-:252: ERROR:SPACING: space required before the open parenthesis '('
#252: FILE: drivers/gpu/drm/i915/i915_debug.h:31:
+	} while(0)

-:268: WARNING:TRACE_PRINTK: Do not use trace_printk() in production code (this can be ignored if built only with a debug config option)
#268: FILE: drivers/gpu/drm/i915/i915_debug.h:47:
+#define GEM_TRACE(...) trace_printk(__VA_ARGS__)

-:271: WARNING:TRACE_PRINTK: Do not use trace_printk() in production code (this can be ignored if built only with a debug config option)
#271: FILE: drivers/gpu/drm/i915/i915_debug.h:50:
+	trace_printk(__VA_ARGS__);					\

total: 1 errors, 4 warnings, 1 checks, 324 lines checked
0e80aecf3ea3 drm/i915: un-inline i915_gem_drain_* functions
-:100: WARNING:LINE_SPACING: Missing a blank line after declarations
#100: FILE: drivers/gpu/drm/i915/i915_gem.c:1118:
+	int pass = 3;
+	do {

total: 0 errors, 1 warnings, 0 checks, 89 lines checked
2eba81a7f23c drm/i915/gem: split out the gem stuff from i915_drv.h
7f30c36d225f drm/i915/drv: drop intel_bios.h include
7add9ee46d1c drm/i915/client: only include what's needed
994605eb20fd drm/i915/utils: throw out unused stuff


