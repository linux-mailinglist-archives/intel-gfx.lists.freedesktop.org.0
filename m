Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7391F12D8EB
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 14:18:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A0156E22C;
	Tue, 31 Dec 2019 13:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B3876E223;
 Tue, 31 Dec 2019 13:18:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33F4FA0003;
 Tue, 31 Dec 2019 13:18:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Dec 2019 13:18:00 -0000
Message-ID: <157779828018.26887.12950380468324593997@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231122708.4025916-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231122708.4025916-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Restore_coarse_power_gating?=
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

Series: drm/i915/gt: Restore coarse power gating
URL   : https://patchwork.freedesktop.org/series/71520/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7657 -> Patchwork_15953
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/index.html

Known issues
------------

  Here are the changes found in Patchwork_15953 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([fdo#103375])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([fdo#111550])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][7] -> [INCOMPLETE][8] ([i915#505])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6600u:       [PASS][9] -> [INCOMPLETE][10] ([i915#671] / [i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([fdo#111096] / [i915#323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-icl-dsi:         [PASS][13] -> [DMESG-WARN][14] ([i915#109])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-dsi/igt@prime_self_import@basic-with_one_bo_two_files.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-icl-dsi/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [INCOMPLETE][15] ([fdo#111736] / [i915#460]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][17] ([i915#505] / [i915#671]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-guc:         [INCOMPLETE][19] ([i915#151]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][21] ([i915#553] / [i915#725]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-icl-u2:          [INCOMPLETE][23] ([i915#140]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][26] ([i915#62] / [i915#92]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][28] ([fdo#107139] / [i915#62] / [i915#92])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [SKIP][29] ([fdo#109271]) -> [FAIL][30] ([i915#704])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][31] ([i915#62] / [i915#92]) -> [DMESG-WARN][32] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][33] ([i915#858]) -> [FAIL][34] ([i915#192] / [i915#193] / [i915#194])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-kbl-8809g/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/fi-kbl-8809g/igt@runner@aborted.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 40)
------------------------------

  Additional (4): fi-hsw-peppy fi-glk-dsi fi-tgl-u fi-snb-2520m 
  Missing    (10): fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-gdg-551 fi-elk-e7500 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7657 -> Patchwork_15953

  CI-20190529: 20190529
  CI_DRM_7657: 265f77c05e67b37169ac1a9d750a2e2936928ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5355: 2ead76177f2546d3eec0abbd0d9e47cd36588199 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15953: 0bd0e98f0db7fa9b6d1a10fca7ee24f60039b314 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0bd0e98f0db7 drm/i915/gt: Restore coarse power gating

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
