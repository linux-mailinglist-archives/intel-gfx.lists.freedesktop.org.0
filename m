Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E98C43D5D8
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 23:36:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 425136E570;
	Wed, 27 Oct 2021 21:36:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D3C3C6E570;
 Wed, 27 Oct 2021 21:36:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEB2DA363C;
 Wed, 27 Oct 2021 21:36:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Oct 2021 21:36:07 -0000
Message-ID: <163537056773.4641.14238164347876505764@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211027212339.29259-1-ramalingam.c@intel.com>
In-Reply-To: <20211027212339.29259-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg2=3A_Enabling_64k_page_size_and_flat_ccs_=28rev3?=
 =?utf-8?q?=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dg2: Enabling 64k page size and flat ccs (rev3)
URL   : https://patchwork.freedesktop.org/series/95686/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
262eb27b8dcf drm/i915: Add has_64k_pages flag
e3f6866bf3b6 drm/i915/xehpsdv: set min page-size to 64K
f0364064d028 drm/i915/xehpsdv: enforce min GTT alignment
-:260: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#260: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:456:
+						if (offset < hole_start + aligned_size)

-:272: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#272: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:480:
+						if (offset + aligned_size > hole_end)

-:290: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#290: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:496:
+						if (offset < hole_start + aligned_size)

-:302: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#302: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:519:
+						if (offset + aligned_size > hole_end)

-:320: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#320: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:535:
+						if (offset < hole_start + aligned_size)

-:332: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#332: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:559:
+						if (offset + aligned_size > hole_end)

-:350: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#350: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:575:
+						if (offset < hole_start + aligned_size)

-:362: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#362: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:598:
+						if (offset + aligned_size > hole_end)

total: 0 errors, 8 warnings, 0 checks, 418 lines checked
affe7c270c7b drm/i915: enforce min page size for scratch
de0727edcf31 drm/i915/gtt/xehpsdv: move scratch page to system memory
502e5874de68 drm/i915/xehpsdv: support 64K GTT pages
34273abda035 drm/i915/xehpsdv: implement memory coloring
b452eca49e6d drm/i915/xehpsdv: Add has_flat_ccs to device info
8f7a32bb5f91 drm/i915/lmem: Enable lmem for platforms with Flat CCS
21298f8428cc drm/i915/gt: Clear compress metadata for Xe_HP platforms
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
device memory buffer object we also need to clear the associated CCS buffer.

total: 0 errors, 1 warnings, 0 checks, 171 lines checked
37dec488f909 drm/i915/dg2: Prune the Y Tiling modifiers
2644de7ef016 drm/i915/dg2: Tile 4 plane format support
df1ed00fc619 uapi/drm/dg2: Format modifier for DG2 unified compression and clear color
e76d9270a03d drm/i915/dg2: Plane handling for Flat CCS and clear color
91830d73b8b3 drm/i915/uapi: document behaviour for DG2 64K support
57c66718ad12 drm/i915/Flat-CCS: Document on Flat-CCS memory compression
a76556fa89db Doc/gpu/rfc/i915: i915 DG2 uAPI
-:23: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#23: 
new file mode 100644

-:28: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#28: FILE: Documentation/gpu/rfc/i915_dg2.rst:1:
+====================

total: 0 errors, 2 warnings, 0 checks, 41 lines checked


