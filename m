Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9D31B260E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 14:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D7B56E939;
	Tue, 21 Apr 2020 12:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 177F26E939;
 Tue, 21 Apr 2020 12:30:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 103DDA008A;
 Tue, 21 Apr 2020 12:30:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 21 Apr 2020 12:30:53 -0000
Message-ID: <158747225306.17662.15308609671987985187@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421104626.1480208-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200421104626.1480208-1-maarten.lankhorst@linux.intel.com>
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
URL   : https://patchwork.freedesktop.org/series/76255/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8342 -> Patchwork_17402
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17402 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17402, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17402:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_render_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-pnv-d510/igt@gem_render_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-pnv-d510/igt@gem_render_tiled_blits@basic.html
    - fi-gdg-551:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
    - fi-blb-e6850:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-byt-j1900/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-hsw-4770:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-hsw-4770/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-hsw-4770/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-cml-s/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-guc:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6700k2:      [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
    - fi-skl-guc:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-x1275:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-8700k:       [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-cfl-8700k/igt@i915_selftest@live@gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-cfl-8700k/igt@i915_selftest@live@gt_pm.html
    - fi-skl-lmem:        [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-8809g:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-r:           [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-7500u:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-guc:         [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-kbl-guc/igt@i915_selftest@live@gt_pm.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-kbl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-whl-u:           [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-whl-u/igt@i915_selftest@live@gt_pm.html
    - fi-bxt-dsi:         [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-bsw-nick:        [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html

  * igt@kms_busy@basic@flip:
    - fi-bwr-2160:        [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-bwr-2160/igt@kms_busy@basic@flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-bwr-2160/igt@kms_busy@basic@flip.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-bsw-nick/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-glk-dsi:         [DMESG-FAIL][42] ([i915#1751]) -> [DMESG-WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_pm:
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-kbl-7560u/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17402 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][45] -> [SKIP][46] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-apl-guc:         [PASS][47] -> [DMESG-FAIL][48] ([i915#1751])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-apl-guc/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           [DMESG-FAIL][49] ([i915#1744]) -> [DMESG-FAIL][50] ([i915#1759])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759


Participating hosts (48 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8342 -> Patchwork_17402

  CI-20190529: 20190529
  CI_DRM_8342: 17407a9f61a0ee402254522e391a626acc4375ec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17402: 4d754b4bc0dcd643a49abffd0971d3c2d798f6ae @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4d754b4bc0dc drm/i915: Ensure we hold the pin mutex
bdeb4c14a974 drm/i915: Add ww locking to pin_to_display_plane
851f5de51d57 drm/i915: Add ww locking to vm_fault_gtt
0411a6408179 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
03e24bcadc4b drm/i915: Use ww pinning for intel_context_create_request()
09c03a44baa3 drm/i915/selftests: Fix locking inversion in lrc selftest.
9e9cce8167f6 drm/i915: Dirty hack to fix selftests locking inversion
4063cad86fed drm/i915: Convert i915_perf to ww locking as well
7f0541d81726 drm/i915: Kill last user of intel_context_create_request outside of selftests
cfd0b4d678ca drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
8301fcfaf872 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
fdf30680d0d1 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
96f229c38fbc drm/i915: Pin engine before pinning all objects, v3.
5c0318aeb2b3 drm/i915: Nuke arguments to eb_pin_engine
aeeaf6783820 drm/i915: Add ww context handling to context_barrier_task
7d204f6c17a2 drm/i915: Use ww locking in intel_renderstate.
d1dbc9276ee0 drm/i915: Use per object locking in execbuf, v8.
4a45c519254f Revert "drm/i915/gem: Split eb_vma into its own allocation"
55d5a8b6f2d6 drm/i915: Parse command buffer earlier in eb_relocate(slow)
ce3feac9662e drm/i915: Remove locking from i915_gem_object_prepare_read/write
82487a6c7f3a drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
d7f858dee647 Revert "drm/i915/gem: Drop relocation slowpath"
0b81340ad042 drm/i915/gt: Move the batch buffer pool from the engine to the gt
8184ca928432 perf/core: Only copy-to-user after completely unlocking all locks, v3.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17402/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
