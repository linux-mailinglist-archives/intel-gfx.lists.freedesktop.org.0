Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE16560099
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 15:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC0F410F45C;
	Wed, 29 Jun 2022 13:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE53110F060;
 Wed, 29 Jun 2022 13:00:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C14C5A47EB;
 Wed, 29 Jun 2022 13:00:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 29 Jun 2022 13:00:33 -0000
Message-ID: <165650763375.23233.12853811849470843801@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220629121427.353800-1-matthew.auld@intel.com>
In-Reply-To: <20220629121427.353800-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_small_BAR_uapi_bits_=28rev4=29?=
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

Series: small BAR uapi bits (rev4)
URL   : https://patchwork.freedesktop.org/series/104369/
State : warning

== Summary ==

Error: dim checkpatch failed
0815fb1423e5 drm/doc: add rfc section for small BAR uapi
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

-:51: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#51: FILE: Documentation/gpu/rfc/i915_small_bar.h:1:
+/**

-:246: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#246: FILE: Documentation/gpu/rfc/i915_small_bar.rst:1:
+==========================

total: 0 errors, 3 warnings, 0 checks, 243 lines checked
43279bb27abc drm/i915/uapi: add probed_cpu_visible_size
8b35ecafd44c drm/i915/uapi: expose the avail tracking
e6f3ce79d7c3 drm/i915: remove intel_memory_region avail
d867a1820216 drm/i915/uapi: apply ALLOC_GPU_ONLY by default
080a9ba4affd drm/i915/uapi: add NEEDS_CPU_ACCESS hint
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
(i.e I915_MEMORY_CLASS_SYSTEM) must be given as a potential placement for the

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
4d94042c9353 drm/i915/error: skip non-mappable pages
2e6fdb9dd549 drm/i915/uapi: tweak error capture on recoverable contexts
fb0eba9ae8a0 drm/i915/selftests: skip the mman tests for stolen
09d095ced3b9 drm/i915/selftests: ensure we reserve a fence slot
e5e598420bd3 drm/i915/ttm: handle blitter failure on DG2
-:476: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#476: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:327:
+						if (fail_gpu && !fail_alloc) {

-:477: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#477: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:328:
+							if (!wedged) {

-:482: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#482: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:333:
+						} else if (wedged) {

-:485: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#485: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:336:
+						} else {

-:561: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#561: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:482:
+						if (fail_gpu && !fail_alloc) {

-:562: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#562: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:483:
+							if (!wedged) {

-:567: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#567: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:488:
+						} else if (wedged) {

-:570: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#570: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:491:
+						} else {

total: 0 errors, 8 warnings, 0 checks, 651 lines checked
373e49121aa8 drm/i915/ttm: disallow CPU fallback mode for ccs pages
9dbf14ae4a7d drm/i915: turn on small BAR support


