Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF241A243B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 16:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2DA89B51;
	Wed,  8 Apr 2020 14:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58D9389B51;
 Wed,  8 Apr 2020 14:44:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52D2AA0091;
 Wed,  8 Apr 2020 14:44:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 08 Apr 2020 14:44:01 -0000
Message-ID: <158635704130.19346.14921504515346093865@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200408111031.2330026-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200408111031.2330026-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_perf/core=3A_Only_copy-to-user_af?=
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

Series: series starting with [01/23] perf/core: Only copy-to-user after completely unlocking all locks, v3.
URL   : https://patchwork.freedesktop.org/series/75668/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8275 -> Patchwork_17253
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17253 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17253, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17253:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-hsw-4770/igt@gem_close_race@basic-process.html
    - fi-hsw-peppy:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-hsw-peppy/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-hsw-peppy/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-blb-e6850:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-blb-e6850/igt@gem_exec_fence@basic-await@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-blb-e6850/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-elk-e7500:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-pnv-d510:        [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-ilk-650:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-ilk-650/igt@gem_exec_fence@basic-await@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-ilk-650/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-ilk-650:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-ilk-650/igt@gem_exec_fence@basic-await@vcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-ilk-650/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_render_tiled_blits@basic:
    - fi-gdg-551:         [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-gdg-551/igt@gem_render_tiled_blits@basic.html

  * igt@gem_sync@basic-each:
    - fi-cfl-8109u:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-cfl-8109u/igt@gem_sync@basic-each.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-cfl-8109u/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-6770hq:      [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-skl-6770hq/igt@i915_selftest@live@gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-skl-6770hq/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_busy@basic@flip:
    - fi-bwr-2160:        [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-bwr-2160/igt@kms_busy@basic@flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-bwr-2160/igt@kms_busy@basic@flip.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-pnv-d510/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-elk-e7500/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-blb-e6850/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17253 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-process:
    - fi-byt-j1900:       [PASS][31] -> [INCOMPLETE][32] ([i915#45])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-byt-j1900/igt@gem_close_race@basic-process.html
    - fi-byt-n2820:       [PASS][33] -> [INCOMPLETE][34] ([i915#45])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-byt-n2820/igt@gem_close_race@basic-process.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-byt-n2820/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-elk-e7500:       [PASS][35] -> [INCOMPLETE][36] ([i915#66])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][37] -> [FAIL][38] ([i915#178])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * {igt@gem_wait@busy@all}:
    - fi-bwr-2160:        [FAIL][39] ([i915#1604]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-bwr-2160/igt@gem_wait@busy@all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-bwr-2160/igt@gem_wait@busy@all.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-icl-dsi:         [INCOMPLETE][41] ([i915#189]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-icl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-icl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][43] ([i915#62]) -> [SKIP][44] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1604]: https://gitlab.freedesktop.org/drm/intel/issues/1604
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (52 -> 46)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8275 -> Patchwork_17253

  CI-20190529: 20190529
  CI_DRM_8275: f2a4da2bcd576d1b56aeb53600e8a0b710117a20 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5581: ab0620e555119ec55f12ba9ab9e6e9246d407648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17253: 68e985f3b25a85cda132487d89625696488d1ed7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

68e985f3b25a drm/i915: Ensure we hold the pin mutex
ef4b37bc4757 drm/i915: Add ww locking to pin_to_display_plane
b8b699f678f6 drm/i915: Add ww locking to vm_fault_gtt
fcf3a2fda97b drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
09011eb630f6 drm/i915: Use ww pinning for intel_context_create_request()
bfc4aab3b1a2 drm/i915/selftests: Fix locking inversion in lrc selftest.
76f08941fb96 drm/i915: Dirty hack to fix selftests locking inversion
8fa1ddf4790a drm/i915: Convert i915_perf to ww locking as well
e3058c9e38cd drm/i915: Kill last user of intel_context_create_request outside of selftests
19816681a8b9 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
ffb87f30e8e4 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
d8aa2d4a5f34 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
e6d6e2ddae25 drm/i915: Pin engine before pinning all objects, v3.
7749cc342e6f drm/i915: Nuke arguments to eb_pin_engine
cfb0d26c1f8e drm/i915: Add ww context handling to context_barrier_task
d7aeab78a2e2 drm/i915: Use ww locking in intel_renderstate.
d3c15b6fa06a drm/i915: Use per object locking in execbuf, v7.
9b2e3aa9640b Revert "drm/i915/gem: Split eb_vma into its own allocation"
db3ef6207fc6 drm/i915: Parse command buffer earlier in eb_relocate(slow)
91b84c36aeac drm/i915: Remove locking from i915_gem_object_prepare_read/write
0650546c9515 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
ae1f1cda17bc Revert "drm/i915/gem: Drop relocation slowpath"
bfdbf3931f48 perf/core: Only copy-to-user after completely unlocking all locks, v3.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
