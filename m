Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E40E142966D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Oct 2021 20:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82E36E913;
	Mon, 11 Oct 2021 18:05:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 171E26E913;
 Mon, 11 Oct 2021 18:05:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FB97A47DF;
 Mon, 11 Oct 2021 18:05:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Oct 2021 18:05:18 -0000
Message-ID: <163397551803.22682.38295841300294607@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211011161155.6397-1-ramalingam.c@intel.com>
In-Reply-To: <20211011161155.6397-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg2=3A_Enabling_64k_page_size_and_flat_ccs?=
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

Series: drm/i915/dg2: Enabling 64k page size and flat ccs
URL   : https://patchwork.freedesktop.org/series/95686/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5bf9ba0e1d7d drm/i915: Add has_64k_pages flag
70d612d1a872 drm/i915/xehpsdv: set min page-size to 64K
b2c0a0a180c4 drm/i915/xehpsdv: enforce min GTT alignment
ead605ff4376 drm/i915: enforce min page size for scratch
6f36d1ed51b4 drm/i915/gtt/xehpsdv: move scratch page to system memory
a1536f2e5783 drm/i915/xehpsdv: support 64K GTT pages
b4c9e5a8a623 drm/i915: Add vm min alignment support
147ff265df2f drm/i915/selftests: account for min_alignment in GTT selftests
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
7062763f0800 drm/i915/xehpsdv: implement memory coloring
79dc6a059d71 drm/i915/xehpsdv: Add has_flat_ccs to device info
4a8a8a8bebf2 drm/i915/lmem: Enable lmem for platforms with Flat CCS
fcae6b137d64 drm/i915/gt: Clear compress metadata for Gen12.5 >= platforms
749ff0849c0e drm/i915/uapi: document behaviour for DG2 64K support
2b517348c6fb Doc/gpu/rfc/i915: i915 DG2 uAPI
-:14: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#14: 
new file mode 100644

-:19: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#19: FILE: Documentation/gpu/rfc/i915_dg2.rst:1:
+====================

total: 0 errors, 2 warnings, 0 checks, 56 lines checked


