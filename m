Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D67436726
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 18:02:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78756ECBF;
	Thu, 21 Oct 2021 16:02:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49FB46ECBF;
 Thu, 21 Oct 2021 16:02:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 425BEAADD5;
 Thu, 21 Oct 2021 16:02:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 16:02:04 -0000
Message-ID: <163483212426.20177.6717886295986471913@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211021142627.31058-1-ramalingam.c@intel.com>
In-Reply-To: <20211021142627.31058-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg2=3A_Enabling_64k_page_size_and_flat_ccs_=28rev2?=
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

Series: drm/i915/dg2: Enabling 64k page size and flat ccs (rev2)
URL   : https://patchwork.freedesktop.org/series/95686/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a3c94fe1d5cd drm/i915: Add has_64k_pages flag
45ceb0b40034 drm/i915/xehpsdv: set min page-size to 64K
03200bc06b46 drm/i915/xehpsdv: enforce min GTT alignment
9a84cb61c10d drm/i915: enforce min page size for scratch
b515c67a4176 drm/i915/gtt/xehpsdv: move scratch page to system memory
3ca8d7a82f95 drm/i915/xehpsdv: support 64K GTT pages
2ed3c1383b59 drm/i915: Add vm min alignment support
fd0534c7e65a drm/i915/selftests: account for min_alignment in GTT selftests
-:108: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#108: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:456:
+						if (offset < hole_start + aligned_size)

-:120: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#120: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:480:
+						if (offset + aligned_size > hole_end)

-:138: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#138: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:496:
+						if (offset < hole_start + aligned_size)

-:150: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#150: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:519:
+						if (offset + aligned_size > hole_end)

-:168: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#168: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:535:
+						if (offset < hole_start + aligned_size)

-:180: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#180: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:559:
+						if (offset + aligned_size > hole_end)

-:198: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#198: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:575:
+						if (offset < hole_start + aligned_size)

-:210: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#210: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:598:
+						if (offset + aligned_size > hole_end)

total: 0 errors, 8 warnings, 0 checks, 297 lines checked
08702a20cfb0 drm/i915/xehpsdv: implement memory coloring
dc2516e13157 drm/i915/xehpsdv: Add has_flat_ccs to device info
2287c2405ffa drm/i915/lmem: Enable lmem for platforms with Flat CCS
39e9fd04a236 drm/i915/gt: Clear compress metadata for Xe_HP platforms
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
device memory buffer object we also need to clear the associated CCS buffer.

total: 0 errors, 1 warnings, 0 checks, 171 lines checked
6d6995163aa1 drm/i915/dg2: Tile 4 plane format support
-:198: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#198: FILE: drivers/gpu/drm/i915/i915_pci.c:975:
+	.has_ftile = 1, \

total: 0 errors, 1 warnings, 0 checks, 168 lines checked
a25cd0cf423a uapi/drm/dg2: Format modifier for DG2 unified compression and clear color
86bc18650b6c drm/i915/uapi: document behaviour for DG2 64K support
05178dab38b0 drm/i915/Flat-CCS: Document on Flat-CCS memory compression
dd2578c083ba Doc/gpu/rfc/i915: i915 DG2 uAPI
-:18: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#18: 
new file mode 100644

-:23: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#23: FILE: Documentation/gpu/rfc/i915_dg2.rst:1:
+====================

total: 0 errors, 2 warnings, 0 checks, 41 lines checked


