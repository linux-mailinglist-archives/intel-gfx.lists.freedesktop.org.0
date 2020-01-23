Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E03D1472EE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 22:04:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309C76E12E;
	Thu, 23 Jan 2020 21:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 34BEF6E12B;
 Thu, 23 Jan 2020 21:04:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CF3EA00E9;
 Thu, 23 Jan 2020 21:04:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 23 Jan 2020 21:04:15 -0000
Message-ID: <157981345515.1146.7229455797954958602@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123124801.14958-1-jani.nikula@intel.com>
In-Reply-To: <20200123124801.14958-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/2=5D_drm=3A_add_drm=5Fcore=5Fcheck?=
 =?utf-8?q?=5Fall=5Ffeatures=28=29_to_check_for_a_mask_of_features?=
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

Series: series starting with [v4,1/2] drm: add drm_core_check_all_features() to check for a mask of features
URL   : https://patchwork.freedesktop.org/series/72466/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7804 -> Patchwork_16233
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16233 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16233, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16233:

### IGT changes ###

#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-skl-6700k2:      [SKIP][1] ([fdo#109271]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-skl-6700k2/igt@amdgpu/amd_prime@i915-to-amd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-skl-6700k2/igt@amdgpu/amd_prime@i915-to-amd.html

  
Known issues
------------

  Here are the changes found in Patchwork_16233 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][3] -> [TIMEOUT][4] ([fdo#112271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [PASS][5] -> [INCOMPLETE][6] ([i915#879])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6700k2:      [PASS][7] -> [DMESG-WARN][8] ([i915#889]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [PASS][9] -> [INCOMPLETE][10] ([CI#80] / [i915#424])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([CI#94] / [i915#402])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][13] ([fdo#112271] / [i915#816]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [FAIL][15] ([i915#694]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][17] ([CI#94]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][19] ([i915#725]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][21] ([i915#725]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [DMESG-WARN][23] ([CI#94] / [i915#402]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][25] ([fdo#112271]) -> [FAIL][26] ([i915#694])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [TIMEOUT][27] ([fdo#112271]) -> [INCOMPLETE][28] ([i915#45])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][29] ([fdo#109271]) -> [FAIL][30] ([i915#704])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][31] ([fdo#111096] / [i915#323]) -> [FAIL][32] ([i915#217])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (49 -> 43)
------------------------------

  Additional (2): fi-hsw-peppy fi-snb-2600 
  Missing    (8): fi-bxt-dsi fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7804 -> Patchwork_16233

  CI-20190529: 20190529
  CI_DRM_7804: 74ed9d57007ab848a57ec6d785de4187b70acd9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16233: e98170f60c437e2b7b5f4bad02c01d0e3ba35b4a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e98170f60c43 drm/debugfs: also take per device driver features into account
05a09878547a drm: add drm_core_check_all_features() to check for a mask of features

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
