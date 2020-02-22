Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27258168BED
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:04:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B906E40A;
	Sat, 22 Feb 2020 02:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31B046E393;
 Sat, 22 Feb 2020 02:04:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21C14A47E9;
 Sat, 22 Feb 2020 02:04:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 22 Feb 2020 02:04:28 -0000
Message-ID: <158233706810.32578.6537544974618276825@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221184355.2848409-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200221184355.2848409-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Verify_LRC_isolation?=
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

Series: drm/i915/selftests: Verify LRC isolation
URL   : https://patchwork.freedesktop.org/series/73788/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7984 -> Patchwork_16669
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16669 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16669, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16669:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-y/igt@i915_selftest@live_gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-y/igt@i915_selftest@live_gt_lrc.html
    - fi-icl-u3:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u3/igt@i915_selftest@live_gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-u3/igt@i915_selftest@live_gt_lrc.html
    - fi-icl-guc:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-guc/igt@i915_selftest@live_gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-guc/igt@i915_selftest@live_gt_lrc.html
    - fi-icl-u2:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u2/igt@i915_selftest@live_gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-u2/igt@i915_selftest@live_gt_lrc.html
    - fi-icl-dsi:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-dsi/igt@i915_selftest@live_gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-dsi/igt@i915_selftest@live_gt_lrc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_lrc:
    - {fi-ehl-1}:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-ehl-1/igt@i915_selftest@live_gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-ehl-1/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16669 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][13] -> [INCOMPLETE][14] ([i915#694] / [i915#816])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [PASS][15] -> [TIMEOUT][16] ([fdo#112271] / [i915#1084] / [i915#816])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [PASS][17] -> [FAIL][18] ([i915#694])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [PASS][19] -> [DMESG-WARN][20] ([CI#94] / [i915#402]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_selftest@live_gtt:
    - fi-bxt-dsi:         [PASS][21] -> [TIMEOUT][22] ([fdo#112271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-bxt-dsi/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-guc:         [PASS][23] -> [INCOMPLETE][24] ([fdo#108569])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-guc/igt@i915_selftest@live_hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-guc/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [PASS][25] -> [DMESG-WARN][26] ([i915#585])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][27] ([CI#94]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][29] ([CI#94] / [i915#402]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][31] ([i915#623]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][33] ([fdo#111407]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][35] ([fdo#109315] / [i915#585]) -> [SKIP][36] ([fdo#109315])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (48 -> 45)
------------------------------

  Additional (4): fi-byt-j1900 fi-skl-lmem fi-gdg-551 fi-bsw-nick 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7984 -> Patchwork_16669

  CI-20190529: 20190529
  CI_DRM_7984: ab1d770e389d9407be633b5afbe6859e0072ca9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16669: 14585105911e477ddf8029d9636552f5d86e5826 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

14585105911e drm/i915/selftests: Verify LRC isolation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
