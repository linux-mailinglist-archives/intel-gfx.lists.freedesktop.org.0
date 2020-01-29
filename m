Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 826A014C4CF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 04:19:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CB96E198;
	Wed, 29 Jan 2020 03:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6710C6E198;
 Wed, 29 Jan 2020 03:19:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F265A0009;
 Wed, 29 Jan 2020 03:19:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 29 Jan 2020 03:19:51 -0000
Message-ID: <158026799135.5461.789868123561230365@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128235241.169694-1-jose.souza@intel.com>
In-Reply-To: <20200128235241.169694-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display/fbc=3A_Make_fences?=
 =?utf-8?q?_a_nice-to-have_for_GEN9+?=
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

Series: series starting with [1/2] drm/i915/display/fbc: Make fences a nice-to-have for GEN9+
URL   : https://patchwork.freedesktop.org/series/72698/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7833 -> Patchwork_16309
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16309 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16309, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16309:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@contexts:
    - fi-hsw-peppy:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-hsw-peppy/igt@gem_exec_parallel@contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16309 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [PASS][2] -> [DMESG-WARN][3] ([i915#95]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][4] -> [DMESG-FAIL][5] ([i915#770])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gtt:
    - fi-bdw-5557u:       [PASS][6] -> [TIMEOUT][7] ([fdo#112271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][8] ([i915#45]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][10] ([fdo#112271]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [FAIL][12] ([fdo#103375]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [FAIL][14] ([fdo#111550]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][16] ([i915#563]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-icl-guc:         [INCOMPLETE][18] ([i915#140]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][20] ([i915#816]) -> [TIMEOUT][21] ([fdo#112271])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][22] ([i915#579]) -> [SKIP][23] ([fdo#109271])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][24] ([i915#725]) -> [DMESG-FAIL][25] ([i915#563])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][26] ([fdo#103375]) -> [DMESG-WARN][27] ([IGT#4] / [i915#263])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (50 -> 43)
------------------------------

  Additional (1): fi-snb-2520m 
  Missing    (8): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7833 -> Patchwork_16309

  CI-20190529: 20190529
  CI_DRM_7833: 8210f0f999e2d396a8611e0cabc2f6c6a52468de @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5394: 991fd07bcd7add7a5beca2c95b72a994e62fbb75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16309: 711facbac8e60cc5995d5d5eb64d969679aedba0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

711facbac8e6 drm/i915/dgfx: Do not write in removed FBC fence registers
13e7bfd6489c drm/i915/display/fbc: Make fences a nice-to-have for GEN9+

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16309/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
