Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D7C128BB9
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 22:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3FCA6E088;
	Sat, 21 Dec 2019 21:39:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5DC06E06B;
 Sat, 21 Dec 2019 21:39:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CC01A0019;
 Sat, 21 Dec 2019 21:39:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 21 Dec 2019 21:39:17 -0000
Message-ID: <157696435761.32689.16232566284915664049@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191221203731.1204256-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191221203731.1204256-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_Move_i915=5Fgem=5F?=
 =?utf-8?q?init=5Fcontexts=28=29_earlier?=
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

Series: series starting with [CI,1/2] drm/i915: Move i915_gem_init_contexts() earlier
URL   : https://patchwork.freedesktop.org/series/71255/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7619 -> Patchwork_15877
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15877 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15877, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15877:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-cfl-guc/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-icl-guc:         [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-icl-guc/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-icl-guc/igt@i915_module_load@reload.html
    - fi-skl-guc:         [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-skl-guc/igt@i915_module_load@reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-skl-guc/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][8] -> [DMESG-WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-kbl-guc/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-kbl-guc/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_15877 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-7500u:       [PASS][10] -> [DMESG-WARN][11] ([fdo#107139])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-kbl-7500u/igt@gem_exec_suspend@basic-s4-devices.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-kbl-7500u/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledy:
    - fi-ilk-650:         [PASS][12] -> [FAIL][13] ([i915#700])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-ilk-650/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-ilk-650/igt@gem_mmap_gtt@basic-small-bo-tiledy.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-guc}:       [INCOMPLETE][14] ([i915#435]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-tgl-guc/igt@gem_close_race@basic-threads.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-tgl-guc/igt@gem_close_race@basic-threads.html
    - fi-byt-j1900:       [TIMEOUT][16] ([i915#816]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_uncore:
    - fi-whl-u:           [FAIL][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-whl-u/igt@i915_selftest@live_uncore.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-whl-u/igt@i915_selftest@live_uncore.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [FAIL][22] ([i915#34]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][24] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][25] ([fdo#107139] / [i915#62] / [i915#92])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][26] ([i915#62] / [i915#92]) -> [DMESG-WARN][27] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][29] ([i915#62] / [i915#92]) +6 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][30] ([fdo#110943] / [fdo#111093]) -> [FAIL][31] ([fdo#111093] / [i915#287] / [k.org#203557] / [k.org#204565])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/fi-icl-guc/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/fi-icl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#287]: https://gitlab.freedesktop.org/drm/intel/issues/287
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#700]: https://gitlab.freedesktop.org/drm/intel/issues/700
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#203557]: https://bugzilla.kernel.org/show_bug.cgi?id=203557
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (43 -> 37)
------------------------------

  Additional (5): fi-hsw-4770r fi-apl-guc fi-snb-2520m fi-skl-6600u fi-kbl-r 
  Missing    (11): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-icl-u2 fi-bwr-2160 fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-skl-lmem fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7619 -> Patchwork_15877

  CI-20190529: 20190529
  CI_DRM_7619: 2dddcb8e66a017f20509e48cb49d5326e4eac742 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15877: d3784ea90a1baa72fbe9a545ba95d0a51b57034e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d3784ea90a1b drm/i915/gt: Pull GT initialisation under intel_gt_init()
8e3b031a2499 drm/i915: Move i915_gem_init_contexts() earlier

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15877/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
