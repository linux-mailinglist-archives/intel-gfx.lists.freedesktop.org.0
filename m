Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 565F2553144
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 13:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DD410E54A;
	Tue, 21 Jun 2022 11:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3252910E29D;
 Tue, 21 Jun 2022 11:46:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 286D9A8169;
 Tue, 21 Jun 2022 11:46:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 21 Jun 2022 11:46:23 -0000
Message-ID: <165581198313.13647.301643011056936122@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220621104434.190962-1-matthew.auld@intel.com>
In-Reply-To: <20220621104434.190962-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_small_BAR_uapi_bits_=28rev2=29?=
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

Series: small BAR uapi bits (rev2)
URL   : https://patchwork.freedesktop.org/series/104369/
State : warning

== Summary ==

Error: dim checkpatch failed
49aedfbb1bdf drm/doc: add rfc section for small BAR uapi
-:43: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#43: 
new file mode 100644

-:48: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#48: FILE: Documentation/gpu/rfc/i915_small_bar.h:1:
+/**

-:243: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#243: FILE: Documentation/gpu/rfc/i915_small_bar.rst:1:
+==========================

total: 0 errors, 3 warnings, 0 checks, 243 lines checked
5e7bc90026e3 drm/i915/uapi: add probed_cpu_visible_size
b0cfa875b3ce drm/i915/uapi: expose the avail tracking
-:112: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#112: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:373:
+void i915_ttm_buddy_man_avail(struct ttm_resource_manager *man,
+			     u64 *avail, u64 *visible_avail)

total: 0 errors, 0 warnings, 1 checks, 162 lines checked
6ed7f3ce59ac drm/i915: remove intel_memory_region avail
23c0423f9ce7 drm/i915/uapi: apply ALLOC_GPU_ONLY by default
1551a8fdaab3 drm/i915/uapi: add NEEDS_CPU_ACCESS hint
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
(i.e I915_MEMORY_CLASS_SYSTEM) must be given as a potential placement for the

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
9192f2530fd9 drm/i915/error: skip non-mappable pages
083b89f41c79 drm/i915/uapi: tweak error capture on recoverable contexts
e09c345b47f2 drm/i915/selftests: ensure we reserve a fence slot
810574206f8a drm/i915/ttm: handle blitter failure on DG2
14d82f373df5 drm/i915: turn on small BAR support
9aebcd889311 HAX: force small BAR on dg2


