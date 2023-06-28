Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B8A7416FE
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 19:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AFCD10E371;
	Wed, 28 Jun 2023 17:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D20A610E398;
 Wed, 28 Jun 2023 17:10:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B823AADD7;
 Wed, 28 Jun 2023 17:10:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 28 Jun 2023 17:10:30 -0000
Message-ID: <168797223014.32036.3488081012035878364@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230628161023.2944972-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230628161023.2944972-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Refactor_PAT/cache_handling?=
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

Series: drm/i915: Refactor PAT/cache handling
URL   : https://patchwork.freedesktop.org/series/119982/
State : warning

== Summary ==

Error: dim checkpatch failed
eb5f7c604fb7 drm/i915: Refactor PAT/cache handling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:505: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#505: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c:63:
+i915_ttm_cache_pat(struct drm_i915_private *i915, struct ttm_resource *res,
+		     struct ttm_tt *ttm)

-:810: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#810: 
new file mode 100644

-:815: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#815: FILE: drivers/gpu/drm/i915/i915_cache.c:1:
+/*

-:816: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#816: FILE: drivers/gpu/drm/i915/i915_cache.c:2:
+ * SPDX-License-Identifier: MIT

-:894: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#894: FILE: drivers/gpu/drm/i915/i915_cache.h:15:
+#define I915_CACHE(mode) \
+	(i915_cache_t)(I915_CACHE_MODE_##mode)

-:897: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#897: FILE: drivers/gpu/drm/i915/i915_cache.h:18:
+#define _I915_CACHE(mode, flag) \
+	(i915_cache_t)((I915_CACHE_MODE_##mode) | ( BIT(8 + I915_CACHE_##flag)))

-:898: ERROR:SPACING: space prohibited after that open parenthesis '('
#898: FILE: drivers/gpu/drm/i915/i915_cache.h:19:
+	(i915_cache_t)((I915_CACHE_MODE_##mode) | ( BIT(8 + I915_CACHE_##flag)))

-:900: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#900: FILE: drivers/gpu/drm/i915/i915_cache.h:21:
+#define I915_CACHE_MODE(cache) \
+	(unsigned int)(((i915_cache_t)(cache)) & 0xff)

-:902: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#902: FILE: drivers/gpu/drm/i915/i915_cache.h:23:
+#define I915_CACHE_FLAGS(cache) \
+	(unsigned int)((((i915_cache_t)(cache) & 0xff00)) >> 16)

-:1055: WARNING:STATIC_CONST_CHAR_ARRAY: static const char * array should probably be static const char * const
#1055: FILE: drivers/gpu/drm/i915/i915_debugfs.c:147:
+	static const char *mode_str[] = {

-:1061: WARNING:STATIC_CONST_CHAR_ARRAY: static const char * array should probably be static const char * const
#1061: FILE: drivers/gpu/drm/i915/i915_debugfs.c:153:
+	static const char *flag_str[] = {

total: 5 errors, 5 warnings, 1 checks, 1319 lines checked


