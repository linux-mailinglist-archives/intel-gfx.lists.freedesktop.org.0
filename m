Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB1555552C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 22:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3C2B10E059;
	Wed, 22 Jun 2022 20:02:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBF2810E059;
 Wed, 22 Jun 2022 20:02:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3FF9AADD1;
 Wed, 22 Jun 2022 20:02:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 22 Jun 2022 20:02:39 -0000
Message-ID: <165592815971.15065.11231549612181643033@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220621104434.190962-1-matthew.auld@intel.com>
In-Reply-To: <20220621104434.190962-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_small_BAR_uapi_bits_=28rev3=29?=
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

Series: small BAR uapi bits (rev3)
URL   : https://patchwork.freedesktop.org/series/104369/
State : warning

== Summary ==

Error: dim checkpatch failed
1f41c0228c1d drm/doc: add rfc section for small BAR uapi
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
5f7da6952e10 drm/i915/uapi: add probed_cpu_visible_size
5e5b302e3bf8 drm/i915/uapi: expose the avail tracking
-:114: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#114: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:373:
+void i915_ttm_buddy_man_avail(struct ttm_resource_manager *man,
+			     u64 *avail, u64 *visible_avail)

total: 0 errors, 0 warnings, 1 checks, 162 lines checked
c7111ae11afa drm/i915: remove intel_memory_region avail
d2e415d29035 drm/i915/uapi: apply ALLOC_GPU_ONLY by default
effd9dff6f8f drm/i915/uapi: add NEEDS_CPU_ACCESS hint
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
(i.e I915_MEMORY_CLASS_SYSTEM) must be given as a potential placement for the

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
58e91a5ec753 drm/i915/error: skip non-mappable pages
936cb7407d7f drm/i915/uapi: tweak error capture on recoverable contexts
42ab24c9888a drm/i915/selftests: ensure we reserve a fence slot
161954553290 drm/i915/ttm: handle blitter failure on DG2
7767d2136a46 drm/i915: turn on small BAR support
73361b71675e HAX: force small BAR on dg2


