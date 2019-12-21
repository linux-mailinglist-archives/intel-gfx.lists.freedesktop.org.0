Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD39F128AE2
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 19:49:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F276E49A;
	Sat, 21 Dec 2019 18:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3CDA6E499;
 Sat, 21 Dec 2019 18:49:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BBD8A0019;
 Sat, 21 Dec 2019 18:49:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 21 Dec 2019 18:49:41 -0000
Message-ID: <157695418161.32687.11794143073422757689@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191221173113.1153688-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191221173113.1153688-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Move_i915=5Fgem=5F?=
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

Series: series starting with [CI,1/4] drm/i915: Move i915_gem_init_contexts() earlier
URL   : https://patchwork.freedesktop.org/series/71251/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7618 -> Patchwork_15874
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15874 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15874, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15874:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-cfl-guc:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-cfl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15874 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][4] -> [TIMEOUT][5] ([i915#816])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-icl-guc:         [PASS][6] -> [INCOMPLETE][7] ([i915#140] / [i915#671])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cfl-guc:         [PASS][8] -> [INCOMPLETE][9] ([i915#505] / [i915#671])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-guc:         [PASS][10] -> [INCOMPLETE][11] ([i915#671])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-skl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-skl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-apl-guc:         [PASS][12] -> [INCOMPLETE][13] ([fdo#103927] / [i915#671])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-apl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-apl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][14] -> [FAIL][15] ([fdo#111096] / [i915#323])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][16] ([i915#725]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][18] ([i915#563]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-4770r:       [DMESG-FAIL][20] ([i915#761]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [INCOMPLETE][22] ([i915#45]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_mocs:
    - fi-kbl-r:           [FAIL][24] -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-kbl-r/igt@i915_selftest@live_gt_mocs.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-kbl-r/igt@i915_selftest@live_gt_mocs.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][26] ([i915#44]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][29] ([i915#62] / [i915#92]) +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][30] ([i915#62] / [i915#92]) -> [DMESG-WARN][31] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][32] ([fdo#110943] / [fdo#111093]) -> [FAIL][33] ([fdo#111093])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7618/fi-icl-guc/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/fi-icl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#761]: https://gitlab.freedesktop.org/drm/intel/issues/761
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (42 -> 42)
------------------------------

  Additional (8): fi-kbl-soraka fi-bdw-5557u fi-elk-e7500 fi-skl-lmem fi-blb-e6850 fi-tgl-y fi-skl-6600u fi-snb-2600 
  Missing    (8): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-kbl-guc fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7618 -> Patchwork_15874

  CI-20190529: 20190529
  CI_DRM_7618: e15ea7eaf8b92d53ed1e2552f71dc626187be773 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15874: 9f51d16187365c4cda81854fa4c3ba29e7b6becf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9f51d1618736 drm/i915/gt: Merge engine init/setup loops
5fd31e0a87bd drm/i915/gt: Pull intel_gt_init_hw() into intel_gt_resume()
cb44322270ba drm/i915/gt: Pull GT initialisation under intel_gt_init()
55e1f171d506 drm/i915: Move i915_gem_init_contexts() earlier

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15874/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
