Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 956D3154F86
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 00:51:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBDB56E4A6;
	Thu,  6 Feb 2020 23:51:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E52726E48F;
 Thu,  6 Feb 2020 23:51:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6B59A0003;
 Thu,  6 Feb 2020 23:51:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 23:51:53 -0000
Message-ID: <158103311385.15032.5608060382006627607@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206205700.2654161-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206205700.2654161-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/selftests=3A_drop_igt=5Fpp?=
 =?utf-8?q?gtt=5Fexhaust=5Fhuge?=
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

Series: series starting with [1/2] drm/i915/selftests: drop igt_ppgtt_exhaust_huge
URL   : https://patchwork.freedesktop.org/series/73118/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7880 -> Patchwork_16472
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16472 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16472, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16472:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-kbl-r:           NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
    - fi-byt-j1900:       [PASS][2] -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-byt-j1900/igt@i915_selftest@live_gt_pm.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-byt-j1900/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-nick:        [PASS][4] -> [DMESG-FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-bsw-nick/igt@i915_selftest@live_gt_pm.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-bsw-nick/igt@i915_selftest@live_gt_pm.html
    - fi-bdw-5557u:       NOTRUN -> [DMESG-FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
    - fi-snb-2600:        [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-snb-2600/igt@i915_selftest@live_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-snb-2600/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-kefka:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-bsw-kefka/igt@i915_selftest@live_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-bsw-kefka/igt@i915_selftest@live_gt_pm.html
    - fi-byt-n2820:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-byt-n2820/igt@i915_selftest@live_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-byt-n2820/igt@i915_selftest@live_gt_pm.html
    - fi-whl-u:           [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-whl-u/igt@i915_selftest@live_gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-whl-u/igt@i915_selftest@live_gt_pm.html
    - fi-snb-2520m:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-snb-2520m/igt@i915_selftest@live_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-snb-2520m/igt@i915_selftest@live_gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_pm:
    - {fi-ehl-1}:         [DMESG-FAIL][17] ([i915#801]) -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-ehl-1/igt@i915_selftest@live_gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-ehl-1/igt@i915_selftest@live_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_16472 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][19] -> [DMESG-FAIL][20] ([i915#770])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][21] -> [DMESG-FAIL][22] ([fdo#108569])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-icl-y/igt@i915_selftest@live_execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][23] -> [DMESG-FAIL][24] ([i915#1052])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-hsw-4770:        [PASS][25] -> [TIMEOUT][26] ([fdo#112271])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-hsw-4770/igt@i915_selftest@live_gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-hsw-4770/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][27] -> [FAIL][28] ([i915#217] / [i915#976])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][29] -> [FAIL][30] ([i915#217])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_active:
    - fi-whl-u:           [DMESG-FAIL][31] ([i915#666]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-whl-u/igt@i915_selftest@live_active.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-whl-u/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][33] ([i915#725]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [FAIL][35] ([i915#694]) -> [TIMEOUT][36] ([fdo#112271] / [i915#1084])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][37] ([i915#553] / [i915#725]) -> [DMESG-FAIL][38] ([i915#725])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#801]: https://gitlab.freedesktop.org/drm/intel/issues/801
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (44 -> 39)
------------------------------

  Additional (6): fi-bdw-5557u fi-ilk-650 fi-kbl-7500u fi-gdg-551 fi-skl-lmem fi-kbl-r 
  Missing    (11): fi-bxt-dsi fi-bdw-samus fi-tgl-dsi fi-bsw-n3050 fi-byt-squawks fi-cfl-guc fi-ctg-p8600 fi-skl-6700k2 fi-kbl-7560u fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7880 -> Patchwork_16472

  CI-20190529: 20190529
  CI_DRM_7880: 9f35354710b3db58d16acf74d9ef7bb43b31ac7a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5423: 02ef996e76b3bae1c62d6a1298462aba0b7ac51a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16472: 3475f86b5dd2ef1efca56dcf6a6d137c991d3470 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3475f86b5dd2 drm/i915/selftests: add busy selftests for rc6
8b72bca38012 drm/i915/selftests: drop igt_ppgtt_exhaust_huge

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16472/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
