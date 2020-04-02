Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E99419C65B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 17:50:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D436E121;
	Thu,  2 Apr 2020 15:50:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE9EB6E121;
 Thu,  2 Apr 2020 15:50:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE71FA47DF;
 Thu,  2 Apr 2020 15:50:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 02 Apr 2020 15:50:27 -0000
Message-ID: <158584262777.24294.4606377870709747538@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402143109.1801605-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200402143109.1801605-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_perf/core=3A_Only_copy-to-user_af?=
 =?utf-8?q?ter_completely_unlocking_all_locks=2C_v2=2E?=
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

Series: series starting with [01/23] perf/core: Only copy-to-user after completely unlocking all locks, v2.
URL   : https://patchwork.freedesktop.org/series/75423/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8238 -> Patchwork_17184
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17184 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17184, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17184:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-hsw-4770/igt@gem_close_race@basic-process.html
    - fi-hsw-peppy:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-hsw-peppy/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-hsw-peppy/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-elk-e7500:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-pnv-d510:        [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_render_tiled_blits@basic:
    - fi-gdg-551:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-gdg-551/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-cfl-8109u/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-elk-e7500/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-kbl-7560u}:     [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-kbl-7560u/igt@i915_selftest@live@gem_contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-kbl-7560u/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_17184 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-process:
    - fi-byt-j1900:       [PASS][22] -> [INCOMPLETE][23] ([i915#45])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-byt-j1900/igt@gem_close_race@basic-process.html
    - fi-byt-n2820:       [PASS][24] -> [INCOMPLETE][25] ([i915#45])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-byt-n2820/igt@gem_close_race@basic-process.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-byt-n2820/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-elk-e7500:       [PASS][26] -> [INCOMPLETE][27] ([i915#66])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@i915_module_load@reload:
    - fi-cfl-8700k:       [PASS][28] -> [INCOMPLETE][29] ([i915#1390])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-cfl-8700k/igt@i915_module_load@reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-cfl-8700k/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-7500u:       [PASS][30] -> [FAIL][31] ([IGT#5])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-kbl-7500u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/fi-kbl-7500u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [i915#1390]: https://gitlab.freedesktop.org/drm/intel/issues/1390
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66


Participating hosts (50 -> 39)
------------------------------

  Missing    (11): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ilk-650 fi-blb-e6850 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8238 -> Patchwork_17184

  CI-20190529: 20190529
  CI_DRM_8238: 840f70602a47208a2f1e444ba276f412f10e38df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5558: 3b55a816300d80bc5e0b995cd41ee8c8649a1ea2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17184: b49bed04801613c64e1ac2f808f2c1c67c365b7c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b49bed048016 drm/i915: Ensure we hold the pin mutex
43b44cc265fa drm/i915: Add ww locking to pin_to_display_plane
6cdda6ab9f59 drm/i915: Add ww locking to vm_fault_gtt
d666c06d8891 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
aea30143d0f3 drm/i915: Use ww pinning for intel_context_create_request()
3a14330db1de drm/i915/selftests: Fix locking inversion in lrc selftest.
b9f86d313299 drm/i915: Dirty hack to fix selftests locking inversion
d4b9ea0aee60 drm/i915: Convert i915_perf to ww locking as well
484cb9a63457 drm/i915: Kill last user of intel_context_create_request outside of selftests
16e33183c09e drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
a0ef4b3627ad drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
2fa57bd2a12c drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
351148011a0d drm/i915: Pin engine before pinning all objects, v3.
6242b98866e5 drm/i915: Nuke arguments to eb_pin_engine
968378aa2d04 drm/i915: Add ww context handling to context_barrier_task
3e2a63f8be33 drm/i915: Use ww locking in intel_renderstate.
9b03f80f6396 drm/i915: Use per object locking in execbuf, v7.
617a1d088295 Revert "drm/i915/gem: Split eb_vma into its own allocation"
4b4b9e26fc97 drm/i915: Parse command buffer earlier in eb_relocate(slow)
1c6bad3a7182 drm/i915: Remove locking from i915_gem_object_prepare_read/write
b3cea5caa585 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
4c5bce10a92a Revert "drm/i915/gem: Drop relocation slowpath"
e9bb8bda08c5 perf/core: Only copy-to-user after completely unlocking all locks, v2.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
