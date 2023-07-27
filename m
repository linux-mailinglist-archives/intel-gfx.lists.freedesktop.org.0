Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B671765C46
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 21:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2E9310E5EE;
	Thu, 27 Jul 2023 19:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B936110E5F7;
 Thu, 27 Jul 2023 19:43:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B300DAADDA;
 Thu, 27 Jul 2023 19:43:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 27 Jul 2023 19:43:44 -0000
Message-ID: <169048702469.19796.14612871483910345986@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230727145504.1919316-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230727145504.1919316-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Another_take_on_PAT/object_cache_mode_refactoring?=
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

Series: Another take on PAT/object cache mode refactoring
URL   : https://patchwork.freedesktop.org/series/121450/
State : warning

== Summary ==

Error: dim checkpatch failed
7ea1d7a9ac31 drm/i915: Skip clflush after GPU writes on Meteorlake
5658be9fc6d2 drm/i915: Split PTE encode between Gen12 and Meteorlake
7ae0f4a5fb34 drm/i915: Cache PAT index used by the driver
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:8: WARNING:TYPO_SPELLING: 'platfrom' may be misspelled - perhaps 'platform'?
#8: 
per platfrom so no need to consult a function every time.
    ^^^^^^^^

-:337: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#337: 
new file mode 100644

total: 0 errors, 2 warnings, 0 checks, 412 lines checked
b3cd816012f4 drm/i915: Refactor PAT/object cache handling
-:738: CHECK:LINE_SPACING: Please don't use multiple blank lines
#738: FILE: drivers/gpu/drm/i915/gem/selftests/huge_pages.c:206:
 
+

-:1148: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1148: FILE: drivers/gpu/drm/i915/i915_cache.h:49:
+#define I915_CACHE_4(m, f1, f2, f3)	__I915_CACHE(m, __I915_CACHE_FLAG(f1) | __I915_CACHE_FLAG(f2) | __I915_CACHE_FLAG(f3))

-:1149: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1149: FILE: drivers/gpu/drm/i915/i915_cache.h:50:
+#define I915_CACHE_3(m, f1, f2)		__I915_CACHE(m, __I915_CACHE_FLAG(f1) | __I915_CACHE_FLAG(f2))

-:1155: CHECK:CAMELCASE: Avoid CamelCase: <argsWithParentheses>
#1155: FILE: drivers/gpu/drm/i915/i915_cache.h:56:
+#define FUNC_RECOMPOSER(argsWithParentheses) FUNC_CHOOSER argsWithParentheses

-:1155: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1155: FILE: drivers/gpu/drm/i915/i915_cache.h:56:
+#define FUNC_RECOMPOSER(argsWithParentheses) FUNC_CHOOSER argsWithParentheses

-:1156: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#1156: FILE: drivers/gpu/drm/i915/i915_cache.h:57:
+#define CHOOSE_FROM_ARG_COUNT(...) FUNC_RECOMPOSER((__VA_ARGS__, I915_CACHE_4, I915_CACHE_3, I915_CACHE_2, I915_CACHE_1, ))

-:1156: ERROR:SPACING: space prohibited before that close parenthesis ')'
#1156: FILE: drivers/gpu/drm/i915/i915_cache.h:57:
+#define CHOOSE_FROM_ARG_COUNT(...) FUNC_RECOMPOSER((__VA_ARGS__, I915_CACHE_4, I915_CACHE_3, I915_CACHE_2, I915_CACHE_1, ))

-:1157: ERROR:SPACING: space required after that ',' (ctx:OxO)
#1157: FILE: drivers/gpu/drm/i915/i915_cache.h:58:
+#define NO_ARG_EXPANDER() ,,,I915_CACHE_0
                            ^

-:1157: ERROR:SPACING: space required after that ',' (ctx:OxV)
#1157: FILE: drivers/gpu/drm/i915/i915_cache.h:58:
+#define NO_ARG_EXPANDER() ,,,I915_CACHE_0
                             ^

-:1157: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1157: FILE: drivers/gpu/drm/i915/i915_cache.h:58:
+#define NO_ARG_EXPANDER() ,,,I915_CACHE_0

-:1158: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#1158: FILE: drivers/gpu/drm/i915/i915_cache.h:59:
+#define MACRO_CHOOSER(...) CHOOSE_FROM_ARG_COUNT(NO_ARG_EXPANDER __VA_ARGS__ ())

-:1321: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#1321: FILE: drivers/gpu/drm/i915/i915_pci.c:49:
+^I^I[I915_CACHE_MODE_UC] ^I  = I915_CACHE(UC), \$

-:1322: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#1322: FILE: drivers/gpu/drm/i915/i915_pci.c:50:
+^I^I[I915_CACHE_MODE_WB] ^I  = I915_CACHE(WB, COH1W, COH2W), \$

-:1324: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#1324: FILE: drivers/gpu/drm/i915/i915_pci.c:52:
+^I^I[I915_CACHE_MODE_WT] ^I  = I915_CACHE(WT), \$

total: 5 errors, 7 warnings, 2 checks, 1325 lines checked
34422af90547 drm/i915: Improve the vm_fault_gtt user PAT index restriction
310ac748bf11 drm/i915: Lift the user PAT restriction from gpu_write_needs_clflush
c685b68ad021 drm/i915: Lift the user PAT restriction from use_cpu_reloc
84f57227fb16 drm/i915: Refine the caching check in i915_gem_object_can_bypass_llc


