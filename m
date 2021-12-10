Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4452346FA0C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 06:07:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5493410E212;
	Fri, 10 Dec 2021 05:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D077B10E212;
 Fri, 10 Dec 2021 05:07:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8B9CA00A0;
 Fri, 10 Dec 2021 05:07:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Fri, 10 Dec 2021 05:07:51 -0000
Message-ID: <163911287173.3442.13604298737293184925@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211209154533.4084-1-ramalingam.c@intel.com>
In-Reply-To: <20211209154533.4084-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg2=3A_Enabling_64k_page_size_and_flat_ccs_=28rev4?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dg2: Enabling 64k page size and flat ccs (rev4)
URL   : https://patchwork.freedesktop.org/series/95686/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0390e187560b drm/i915/xehpsdv: enforce min GTT alignment
-:255: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#255: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:456:
+						if (offset < hole_start + aligned_size)

-:267: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#267: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:480:
+						if (offset + aligned_size > hole_end)

-:285: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#285: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:496:
+						if (offset < hole_start + aligned_size)

-:297: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#297: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:519:
+						if (offset + aligned_size > hole_end)

-:315: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#315: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:535:
+						if (offset < hole_start + aligned_size)

-:327: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#327: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:559:
+						if (offset + aligned_size > hole_end)

-:345: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#345: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:575:
+						if (offset < hole_start + aligned_size)

-:357: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#357: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:598:
+						if (offset + aligned_size > hole_end)

total: 0 errors, 8 warnings, 0 checks, 413 lines checked
af34a13c8779 drm/i915/xehpsdv: support 64K GTT pages
d01a7fdce245 drm/i915/xehpsdv: implement memory coloring
ebd3ee0e955e drm/i915/xehpsdv: Add has_flat_ccs to device info
9842412a9054 drm/i915/lmem: Enable lmem for platforms with Flat CCS
2e9f64d01e70 drm/i915/gt: Clear compress metadata for Xe_HP platforms
b9f5b801da70 drm/i915/dg2: Tile 4 plane format support
ba1df1c68a98 drm/i915/gtt: allow overriding the pt alignment
05bcfdce8d1e drm/i915/gtt: add xehpsdv_ppgtt_insert_entry
2c4bc00cf8a1 drm/i915/migrate: add acceleration support for DG2
d0eee61c1c91 drm/i915/dg2: Add DG2 unified compression
a1629044587e uapi/drm/dg2: Introduce format modifier for DG2 clear color
93eb55352894 drm/i915/dg2: Flat CCS Support
16f37c6c6f51 drm/i915/uapi: document behaviour for DG2 64K support
93b0a9e13067 drm/i915/Flat-CCS: Document on Flat-CCS memory compression
6ebef12c5070 Doc/gpu/rfc/i915: i915 DG2 uAPI
-:23: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#23: 
new file mode 100644

-:28: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#28: FILE: Documentation/gpu/rfc/i915_dg2.rst:1:
+====================

total: 0 errors, 2 warnings, 0 checks, 41 lines checked


