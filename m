Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0077581F7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 18:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D28710E37E;
	Tue, 18 Jul 2023 16:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A0DA510E37E;
 Tue, 18 Jul 2023 16:22:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92C20A00E6;
 Tue, 18 Jul 2023 16:22:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 18 Jul 2023 16:22:05 -0000
Message-ID: <168969732558.22206.1237641746250017378@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230718140252.1011393-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230718140252.1011393-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Refactor_PAT/object_cache_handling?=
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

Series: drm/i915: Refactor PAT/object cache handling
URL   : https://patchwork.freedesktop.org/series/120924/
State : warning

== Summary ==

Error: dim checkpatch failed
ad8a0b08444d drm/i915: Refactor PAT/object cache handling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:797: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#797: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c:63:
+i915_ttm_cache_pat(struct drm_i915_private *i915, struct ttm_resource *res,
 		     struct ttm_tt *ttm)

-:1410: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1410: 
new file mode 100644

-:1415: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1415: FILE: drivers/gpu/drm/i915/i915_cache.c:1:
+/*

-:1416: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#1416: FILE: drivers/gpu/drm/i915/i915_cache.c:2:
+ * SPDX-License-Identifier: MIT

-:1473: WARNING:STATIC_CONST_CHAR_ARRAY: static const char * array should probably be static const char * const
#1473: FILE: drivers/gpu/drm/i915/i915_cache.c:59:
+	static const char *mode_str[] = {

-:1479: WARNING:STATIC_CONST_CHAR_ARRAY: static const char * array should probably be static const char * const
#1479: FILE: drivers/gpu/drm/i915/i915_cache.c:65:
+	static const char *flag_str[] = {

-:1529: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1529: FILE: drivers/gpu/drm/i915/i915_cache.h:17:
+#define I915_CACHE(mode) \
+	(i915_cache_t)(I915_CACHE_MODE_##mode)

-:1534: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1534: FILE: drivers/gpu/drm/i915/i915_cache.h:22:
+#define _I915_CACHE(mode, flag) \
+	(i915_cache_t)((I915_CACHE_MODE_##mode) | __I915_CACHE_FLAG(flag))

-:1537: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1537: FILE: drivers/gpu/drm/i915/i915_cache.h:25:
+#define __I915_CACHE(mode, flags) \
+	(i915_cache_t)((I915_CACHE_MODE_##mode) | ((flags) << 8))

-:1540: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1540: FILE: drivers/gpu/drm/i915/i915_cache.h:28:
+#define I915_CACHE_MODE(cache) \
+	(enum i915_cache_mode)(((i915_cache_t)(cache)) & 0xff)

-:1542: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1542: FILE: drivers/gpu/drm/i915/i915_cache.h:30:
+#define I915_CACHE_FLAGS(cache) \
+	(unsigned int)((((i915_cache_t)(cache) & 0xff00)) >> 8)

-:2139: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#2139: FILE: drivers/gpu/drm/i915/selftests/mock_gem_device.c:134:
+		[2] = __I915_CACHE(WB, BIT(I915_CACHE_FLAG_COH1W) | BIT(I915_CACHE_FLAG_L3)), \

total: 5 errors, 6 warnings, 1 checks, 1767 lines checked


