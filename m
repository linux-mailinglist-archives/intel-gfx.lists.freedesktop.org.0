Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3735608B6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 20:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3BC610EBB7;
	Wed, 29 Jun 2022 18:08:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B83E10E433;
 Wed, 29 Jun 2022 18:08:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E265A882E;
 Wed, 29 Jun 2022 18:08:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 29 Jun 2022 18:08:47 -0000
Message-ID: <165652612722.23229.6157046892767837163@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220629174350.384910-1-matthew.auld@intel.com>
In-Reply-To: <20220629174350.384910-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2Cv4=2C01/13=5D_drm/doc=3A_add_r?=
 =?utf-8?q?fc_section_for_small_BAR_uapi?=
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

Series: series starting with [CI,v4,01/13] drm/doc: add rfc section for small BAR uapi
URL   : https://patchwork.freedesktop.org/series/105787/
State : warning

== Summary ==

Error: dim checkpatch failed
1e231f799d31 drm/doc: add rfc section for small BAR uapi
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
074130260b8a drm/i915/uapi: add probed_cpu_visible_size
10b5296e47a7 drm/i915/uapi: expose the avail tracking
c3eb9d8be3d2 drm/i915: remove intel_memory_region avail
26909dad1a50 drm/i915/uapi: apply ALLOC_GPU_ONLY by default
f5972418c6a8 drm/i915/uapi: add NEEDS_CPU_ACCESS hint
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
(i.e I915_MEMORY_CLASS_SYSTEM) must be given as a potential placement for the

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
0a888b2245b8 drm/i915/error: skip non-mappable pages
2de27cb9a32f drm/i915/uapi: tweak error capture on recoverable contexts
3ccdfc1bba44 drm/i915/selftests: skip the mman tests for stolen
5cfc8cef82bf drm/i915/selftests: ensure we reserve a fence slot
ad1b5b8d21f7 drm/i915/ttm: handle blitter failure on DG2
-:488: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#488: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:327:
+						if (fail_gpu && !fail_alloc) {

-:489: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#489: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:328:
+							if (!wedged) {

-:494: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#494: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:333:
+						} else if (wedged) {

-:497: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#497: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:336:
+						} else {

-:573: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#573: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:482:
+						if (fail_gpu && !fail_alloc) {

-:574: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#574: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:483:
+							if (!wedged) {

-:579: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#579: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:488:
+						} else if (wedged) {

-:582: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#582: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:491:
+						} else {

total: 0 errors, 8 warnings, 0 checks, 660 lines checked
afbbc5468a3d drm/i915/ttm: disallow CPU fallback mode for ccs pages
d059ab690f72 drm/i915: turn on small BAR support


