Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A371BE0D4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 16:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 705826EEA7;
	Wed, 29 Apr 2020 14:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD37D6EEA7;
 Wed, 29 Apr 2020 14:25:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5185A47EB;
 Wed, 29 Apr 2020 14:25:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 29 Apr 2020 14:25:34 -0000
Message-ID: <158817033477.6698.3548027647206426765@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429123307.1449297-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200429123307.1449297-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/25=5D_perf/core=3A_Only_copy-to-user_af?=
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

Series: series starting with [01/25] perf/core: Only copy-to-user after completely unlocking all locks, v3.
URL   : https://patchwork.freedesktop.org/series/76724/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8391 -> Patchwork_17513
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17513 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17513, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17513:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_render_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-pnv-d510/igt@gem_render_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-pnv-d510/igt@gem_render_tiled_blits@basic.html
    - fi-gdg-551:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
    - fi-blb-e6850:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html

  * igt@i915_module_load@reload:
    - fi-hsw-4770:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-hsw-4770/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-hsw-4770/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-cml-s/igt@i915_selftest@live@gt_pm.html
    - fi-icl-y:           [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-icl-y/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-guc:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6700k2:      [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-n3050:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-bsw-n3050/igt@i915_selftest@live@gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-bsw-n3050/igt@i915_selftest@live@gt_pm.html
    - fi-skl-guc:         NOTRUN -> [INCOMPLETE][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-x1275:       [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-kefka:       [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-8700k:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-cfl-8700k/igt@i915_selftest@live@gt_pm.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-cfl-8700k/igt@i915_selftest@live@gt_pm.html
    - fi-icl-u2:          [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6600u:       [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-8109u:       [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-nick:        [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-bsw-nick/igt@i915_selftest@live@gt_pm.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-bsw-nick/igt@i915_selftest@live@gt_pm.html
    - fi-skl-lmem:        [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
    - fi-apl-guc:         [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-8809g:       [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-r:           [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
    - fi-bdw-5557u:       [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-guc:         [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-kbl-guc/igt@i915_selftest@live@gt_pm.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-kbl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-cml-u2:          [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-cml-u2/igt@i915_selftest@live@gt_pm.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-cml-u2/igt@i915_selftest@live@gt_pm.html
    - fi-whl-u:           [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-whl-u/igt@i915_selftest@live@gt_pm.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-bsw-nick/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-bsw-n3050/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17513 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-glk-dsi:         [PASS][53] -> [INCOMPLETE][54] ([i915#58] / [k.org#198133])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-guc:         [INCOMPLETE][55] ([i915#151]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][57] ([fdo#109271]) -> [FAIL][58] ([i915#62])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8391 -> Patchwork_17513

  CI-20190529: 20190529
  CI_DRM_8391: 9cada6f702d618458eb6dda220f5cfefe655f475 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17513: fbabf6ed574dda65e4fe3efa12d6f064f4dcee1e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fbabf6ed574d drm/i915: Ensure we hold the pin mutex
6d55a65aa929 drm/i915: Add ww locking to pin_to_display_plane
a21a55e83bd7 drm/i915: Add ww locking to vm_fault_gtt
b4e454008d90 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
4767394f15d2 drm/i915: Use ww pinning for intel_context_create_request()
4bce8b0eaf1c drm/i915/selftests: Fix locking inversion in lrc selftest.
721977b96311 drm/i915: Dirty hack to fix selftests locking inversion
2bfb06126755 drm/i915: Convert i915_perf to ww locking as well
76e03bb2d8db drm/i915: Kill last user of intel_context_create_request outside of selftests
258c3c07c168 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
6c6ce377212c drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
5441a38d2e03 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
c462f8c0ca20 drm/i915: Pin engine before pinning all objects, v3.
478459be927d drm/i915: Nuke arguments to eb_pin_engine
e116e8f69bb5 drm/i915: Add ww context handling to context_barrier_task
42110a27a8ba drm/i915: Use ww locking in intel_renderstate.
2d8552c85070 drm/i915: Use per object locking in execbuf, v9.
9a58917dabff drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
bb53e9b6c6ca Revert "drm/i915/gem: Split eb_vma into its own allocation"
85aa13998baf drm/i915: Parse command buffer earlier in eb_relocate(slow)
e4210d8c394b drm/i915: Remove locking from i915_gem_object_prepare_read/write
85895bb7e825 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
ceef52523e21 Revert "drm/i915/gem: Drop relocation slowpath"
03f36ece8c46 drm/i915/gt: Move the batch buffer pool from the engine to the gt
fafe194bca56 perf/core: Only copy-to-user after completely unlocking all locks, v3.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17513/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
