Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5164A5C7B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 13:45:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCACE10E538;
	Tue,  1 Feb 2022 12:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 129EB10E538;
 Tue,  1 Feb 2022 12:45:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0DBEAAADD8;
 Tue,  1 Feb 2022 12:45:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 01 Feb 2022 12:45:06 -0000
Message-ID: <164371950603.2608.3486716755781072478@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220201104132.3050-1-ramalingam.c@intel.com>
In-Reply-To: <20220201104132.3050-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg2=3A_Enabling_64k_page_size_and_flat_ccs_=28rev5?=
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

Series: drm/i915/dg2: Enabling 64k page size and flat ccs (rev5)
URL   : https://patchwork.freedesktop.org/series/95686/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7f652d8d712c drm/i915: add needs_compact_pt flag
f93c6346dd31 drm/i915: enforce min GTT alignment for discrete cards
-:298: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#298: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:457:
+						if (offset < hole_start + aligned_size)

-:310: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#310: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:481:
+						if (offset + aligned_size > hole_end)

-:328: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#328: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:497:
+						if (offset < hole_start + aligned_size)

-:340: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#340: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:520:
+						if (offset + aligned_size > hole_end)

-:358: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#358: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:536:
+						if (offset < hole_start + aligned_size)

-:370: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#370: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:560:
+						if (offset + aligned_size > hole_end)

-:388: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#388: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:576:
+						if (offset < hole_start + aligned_size)

-:400: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#400: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:599:
+						if (offset + aligned_size > hole_end)

total: 0 errors, 8 warnings, 0 checks, 434 lines checked
7373e84047bf drm/i915: support 64K GTT pages for discrete cards
29fc5ce90221 drm/i915: add gtt misalignment test
08193c9fbdc7 drm/i915/gtt: allow overriding the pt alignment
441f25ff52f8 drm/i915/gtt: add xehpsdv_ppgtt_insert_entry
a8710e64c4a8 drm/i915/migrate: add acceleration support for DG2
d4227abc52e4 drm/i915/uapi: document behaviour for DG2 64K support
d49ca1a2fc0d Doc/gpu/rfc/i915: i915 DG2 64k pagesize uAPI
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

-:29: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#29: FILE: Documentation/gpu/rfc/i915_dg2.rst:1:
+====================

total: 0 errors, 2 warnings, 0 checks, 34 lines checked
19bfdb83b514 drm/i915/xehpsdv: Add has_flat_ccs to device info
9dad7bbc9b86 drm/i915/lmem: Enable lmem for platforms with Flat CCS
90946c4b0096 drm/i915/gt: Clear compress metadata for Xe_HP platforms
035ac563c069 drm/i915: Introduce new Tile 4 format
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
granularity, Tile Y has a shape of 16B x 32 rows, but this tiling has a shape

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
41874785a443 drm/i915/dg2: Tile 4 plane format support
-:13: WARNING:TYPO_SPELLING: 'assocating' may be misspelled - perhaps 'associating'?
#13: 
v2: - Moved Tile4 assocating struct for modifier/display to
                  ^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
a4ae214f55c2 drm/i915/dg2: Add DG2 unified compression
a5ef8bfef402 uapi/drm/dg2: Introduce format modifier for DG2 clear color
c529f71d7954 drm/i915/dg2: Flat CCS Support
62e5cdbc9a5d drm/i915/Flat-CCS: Document on Flat-CCS memory compression
f0e7ebd7ff02 Doc/gpu/rfc/i915: i915 DG2 flat-CCS uAPI


