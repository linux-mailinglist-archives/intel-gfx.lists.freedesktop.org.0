Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9121C127B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 14:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E476B6E2A5;
	Fri,  1 May 2020 12:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A3E16E2A5;
 Fri,  1 May 2020 12:57:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14082A47EE;
 Fri,  1 May 2020 12:57:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 01 May 2020 12:57:35 -0000
Message-ID: <158833785505.18944.6762195397546725763@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501122043.2504429-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200501122043.2504429-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/24=5D_perf/core=3A_Only_copy-to-user_af?=
 =?utf-8?q?ter_completely_unlocking_all_locks=2C_v3=2E?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/24] perf/core: Only copy-to-user after completely unlocking all locks, v3.
URL   : https://patchwork.freedesktop.org/series/76816/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8405 -> Patchwork_17539
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17539 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17539, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17539:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_render_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/fi-pnv-d510/igt@gem_render_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/fi-pnv-d510/igt@gem_render_tiled_blits@basic.html
    - fi-gdg-551:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
    - fi-blb-e6850:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-x1275:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17539 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@evict:
    - fi-bwr-2160:        [PASS][13] -> [INCOMPLETE][14] ([i915#489])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/fi-bwr-2160/igt@i915_selftest@live@evict.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/fi-bwr-2160/igt@i915_selftest@live@evict.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8405 -> Patchwork_17539

  CI-20190529: 20190529
  CI_DRM_8405: 83efffba539b475ce7e3fb96aeae7ee744309ff7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5623: 8838c73169ea249e6e86aaed35e5178f60f4ef7d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17539: 2d420146a045549c0759cf0f7ebc984bc09d0dd6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2d420146a045 drm/i915: Ensure we hold the pin mutex
e7190066c37f drm/i915: Add ww locking to pin_to_display_plane
56909ff76ec7 drm/i915: Add ww locking to vm_fault_gtt
6e5953cd8828 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
4156a9384b8c drm/i915: Use ww pinning for intel_context_create_request()
3bd190df8a2e drm/i915/selftests: Fix locking inversion in lrc selftest.
5b95a6acfd4a drm/i915: Dirty hack to fix selftests locking inversion
f046ee760a15 drm/i915: Convert i915_perf to ww locking as well
62e8d8511668 drm/i915: Kill last user of intel_context_create_request outside of selftests
29441f87c632 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
7b3ccc070938 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
09c8db4fbd68 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
030b8005d968 drm/i915: Pin engine before pinning all objects, v4.
4edaac13184b drm/i915: Nuke arguments to eb_pin_engine
853dabe4de66 drm/i915: Add ww context handling to context_barrier_task
81ee09773f68 drm/i915: Use ww locking in intel_renderstate.
cbaecd19dd78 drm/i915: Use per object locking in execbuf, v9.
ce37b6d2a7dc drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
9cd5eb751161 Revert "drm/i915/gem: Split eb_vma into its own allocation"
acd8e0b1b5dc drm/i915: Parse command buffer earlier in eb_relocate(slow)
47239de18d02 drm/i915: Remove locking from i915_gem_object_prepare_read/write
7fd405b049ee drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
767e1d98b897 Revert "drm/i915/gem: Drop relocation slowpath"
c7e83b1d5e8c perf/core: Only copy-to-user after completely unlocking all locks, v3.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
