Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA86E163C22
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 05:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EECC26E075;
	Wed, 19 Feb 2020 04:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A77D6E075;
 Wed, 19 Feb 2020 04:49:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 835A0A47E2;
 Wed, 19 Feb 2020 04:49:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Wed, 19 Feb 2020 04:49:23 -0000
Message-ID: <158208776350.21059.12935869152345220827@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218194710.2808-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200218194710.2808-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt/tgl=3A_implement_Wa=5F1409085225?=
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

Series: drm/i915/gt/tgl: implement Wa_1409085225
URL   : https://patchwork.freedesktop.org/series/73611/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7963 -> Patchwork_16612
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16612 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16612, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16612:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_workarounds:
    - fi-icl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-guc/igt@i915_selftest@live_workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-icl-guc/igt@i915_selftest@live_workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_16612 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [PASS][3] -> [DMESG-WARN][4] ([i915#585]) +39 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][5] ([i915#694] / [i915#816]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [INCOMPLETE][7] ([i915#45]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - {fi-ehl-1}:         [INCOMPLETE][9] ([i915#937]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-ehl-1/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-ehl-1/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_active:
    - fi-icl-dsi:         [DMESG-FAIL][11] ([i915#765]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-dsi/igt@i915_selftest@live_active.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-icl-dsi/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][13] ([i915#424]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [DMESG-FAIL][15] ([i915#877]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-7500u:       [DMESG-FAIL][17] ([fdo#112406]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [FAIL][19] ([i915#34]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][21] ([fdo#109315]) -> [SKIP][22] ([fdo#109315] / [i915#585])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][23] ([i915#579]) -> [SKIP][24] ([fdo#109271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u3:          [SKIP][25] ([fdo#109284] / [fdo#111827]) -> [SKIP][26] ([fdo#109284] / [fdo#111827] / [i915#585])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u3:          [SKIP][27] ([fdo#109285]) -> [SKIP][28] ([fdo#109285] / [i915#585])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_force_connector_basic@force-load-detect.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/fi-icl-u3/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1169]: https://gitlab.freedesktop.org/drm/intel/issues/1169
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (50 -> 39)
------------------------------

  Missing    (11): fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-ivb-3770 fi-bsw-kefka fi-bdw-samus fi-skl-6700k2 fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16612

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16612: 80f68b98697d1377b6537fdae1601f61e5a65149 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

80f68b98697d drm/i915/gt/tgl: implement Wa_1409085225

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16612/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
