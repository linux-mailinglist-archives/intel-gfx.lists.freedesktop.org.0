Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DB61AE573
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE146E542;
	Fri, 17 Apr 2020 19:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BDDD6E542;
 Fri, 17 Apr 2020 19:08:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8F90A47EA;
 Fri, 17 Apr 2020 19:08:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 17 Apr 2020 19:08:24 -0000
Message-ID: <158715050492.10464.9383998592385139755@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417133937.1980239-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200417133937.1980239-1-maarten.lankhorst@linux.intel.com>
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
URL   : https://patchwork.freedesktop.org/series/76096/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8319 -> Patchwork_17349
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17349 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17349, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17349:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_render_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-pnv-d510/igt@gem_render_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-pnv-d510/igt@gem_render_tiled_blits@basic.html
    - fi-gdg-551:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
    - fi-blb-e6850:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html

  * igt@i915_module_load@reload:
    - fi-hsw-4770:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-hsw-4770/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-hsw-4770/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-bsw-nick:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html

  * igt@kms_busy@basic@flip:
    - fi-bwr-2160:        [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-bwr-2160/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-bwr-2160/igt@kms_busy@basic@flip.html

  * igt@runner@aborted:
    - fi-hsw-peppy:       NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-hsw-peppy/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-bsw-nick/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@basic}:
    - fi-kbl-r:           [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-kbl-r/igt@gem_exec_parallel@engines@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-kbl-r/igt@gem_exec_parallel@engines@basic.html
    - {fi-kbl-7560u}:     NOTRUN -> [INCOMPLETE][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-kbl-7560u/igt@gem_exec_parallel@engines@basic.html
    - fi-skl-6600u:       [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-skl-6600u/igt@gem_exec_parallel@engines@basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-skl-6600u/igt@gem_exec_parallel@engines@basic.html
    - fi-kbl-x1275:       [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-kbl-x1275/igt@gem_exec_parallel@engines@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-kbl-x1275/igt@gem_exec_parallel@engines@basic.html
    - fi-bdw-5557u:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-bdw-5557u/igt@gem_exec_parallel@engines@basic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-bdw-5557u/igt@gem_exec_parallel@engines@basic.html
    - fi-kbl-soraka:      [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-kbl-soraka/igt@gem_exec_parallel@engines@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-kbl-soraka/igt@gem_exec_parallel@engines@basic.html

  * {igt@gem_exec_parallel@engines@contexts}:
    - fi-skl-lmem:        [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-skl-lmem/igt@gem_exec_parallel@engines@contexts.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-skl-lmem/igt@gem_exec_parallel@engines@contexts.html
    - fi-hsw-peppy:       [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-hsw-peppy/igt@gem_exec_parallel@engines@contexts.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-hsw-peppy/igt@gem_exec_parallel@engines@contexts.html

  * {igt@gem_exec_parallel@engines@fds}:
    - fi-icl-dsi:         [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-icl-dsi/igt@gem_exec_parallel@engines@fds.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-icl-dsi/igt@gem_exec_parallel@engines@fds.html
    - fi-bxt-dsi:         [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-bxt-dsi/igt@gem_exec_parallel@engines@fds.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/fi-bxt-dsi/igt@gem_exec_parallel@engines@fds.html

  
Known issues
------------

  Here are the changes found in Patchwork_17349 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (51 -> 46)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8319 -> Patchwork_17349

  CI-20190529: 20190529
  CI_DRM_8319: 18043327e8a9cba095bca9f80cdc70900a51f92c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17349: 4020a1a6ee367fa98569d13ffc22189562d56a83 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4020a1a6ee36 drm/i915: Ensure we hold the pin mutex
d6904362a6ce drm/i915: Add ww locking to pin_to_display_plane
ea84a0c54701 drm/i915: Add ww locking to vm_fault_gtt
4f2f4dd1dc89 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
5dd61a2e5601 drm/i915: Use ww pinning for intel_context_create_request()
6a1366bfdbfd drm/i915/selftests: Fix locking inversion in lrc selftest.
7090cc8880f1 drm/i915: Dirty hack to fix selftests locking inversion
aba9cc8e87ff drm/i915: Convert i915_perf to ww locking as well
26df1bbc28b0 drm/i915: Kill last user of intel_context_create_request outside of selftests
0177c8a29336 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
6822ff18c288 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
c92b2540f0bd drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
67a517dd1f51 drm/i915: Pin engine before pinning all objects, v3.
1f28a398cfa7 drm/i915: Nuke arguments to eb_pin_engine
10c1773ccd10 drm/i915: Add ww context handling to context_barrier_task
ad97b3a07fb3 drm/i915: Use ww locking in intel_renderstate.
380c532e5cfb drm/i915: Use per object locking in execbuf, v7.
434cd3192a8f Revert "drm/i915/gem: Split eb_vma into its own allocation"
117538ce7e6c drm/i915: Parse command buffer earlier in eb_relocate(slow)
998413e3cfb7 drm/i915: Remove locking from i915_gem_object_prepare_read/write
26f5b6d94aa1 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
69262497009f Revert "drm/i915/gem: Drop relocation slowpath"
0f9301e7d5f1 drm/i915/gt: Move the batch buffer pool from the engine to the gt
ff1eb751fb43 perf/core: Only copy-to-user after completely unlocking all locks, v3.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17349/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
