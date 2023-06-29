Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F67A742BEA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 20:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EEC689089;
	Thu, 29 Jun 2023 18:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5FBE89089;
 Thu, 29 Jun 2023 18:33:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D302AADE1;
 Thu, 29 Jun 2023 18:33:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 29 Jun 2023 18:33:41 -0000
Message-ID: <168806362104.28964.7091081487609342727@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230629141509.3194090-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230629141509.3194090-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Refactor_PAT/cache_handling_=28rev2=29?=
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

Series: drm/i915: Refactor PAT/cache handling (rev2)
URL   : https://patchwork.freedesktop.org/series/119982/
State : warning

== Summary ==

Error: dim checkpatch failed
bad38a5a74aa drm/i915: Refactor PAT/cache handling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:841: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#841: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c:62:
+i915_ttm_cache_pat(struct drm_i915_private *i915, struct ttm_resource *res,
 		     struct ttm_tt *ttm)

-:1481: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1481: 
new file mode 100644

-:1486: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1486: FILE: drivers/gpu/drm/i915/i915_cache.c:1:
+/*

-:1487: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#1487: FILE: drivers/gpu/drm/i915/i915_cache.c:2:
+ * SPDX-License-Identifier: MIT

-:1533: WARNING:STATIC_CONST_CHAR_ARRAY: static const char * array should probably be static const char * const
#1533: FILE: drivers/gpu/drm/i915/i915_cache.c:48:
+	static const char *mode_str[] = {

-:1539: WARNING:STATIC_CONST_CHAR_ARRAY: static const char * array should probably be static const char * const
#1539: FILE: drivers/gpu/drm/i915/i915_cache.c:54:
+	static const char *flag_str[] = {

-:1580: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1580: FILE: drivers/gpu/drm/i915/i915_cache.h:17:
+#define I915_CACHE(mode) \
+	(i915_cache_t)(I915_CACHE_MODE_##mode)

-:1583: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1583: FILE: drivers/gpu/drm/i915/i915_cache.h:20:
+#define _I915_CACHE(mode, flag) \
+	(i915_cache_t)((I915_CACHE_MODE_##mode) | \
+		       (BIT(8 + I915_CACHE_FLAG_##flag)))

-:1587: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1587: FILE: drivers/gpu/drm/i915/i915_cache.h:24:
+#define I915_CACHE_MODE(cache) \
+	(enum i915_cache_mode)(((i915_cache_t)(cache)) & 0xff)

-:1589: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1589: FILE: drivers/gpu/drm/i915/i915_cache.h:26:
+#define I915_CACHE_FLAGS(cache) \
+	(unsigned int)((((i915_cache_t)(cache) & 0xff00)) >> 16)

-:1688: ERROR:CODE_INDENT: code indent should use tabs where possible
#1688: FILE: drivers/gpu/drm/i915/i915_debugfs.c:160:
+        i915_cache_print(&p, INTEL_INFO(i915)->cache_modes[obj->pat_index]);$

-:1688: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#1688: FILE: drivers/gpu/drm/i915/i915_debugfs.c:160:
+        i915_cache_print(&p, INTEL_INFO(i915)->cache_modes[obj->pat_index]);$

total: 5 errors, 6 warnings, 1 checks, 1818 lines checked


