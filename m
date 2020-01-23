Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2C914728F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 21:26:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297F36E12A;
	Thu, 23 Jan 2020 20:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B618C6E129;
 Thu, 23 Jan 2020 20:26:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD6F8A0019;
 Thu, 23 Jan 2020 20:26:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Thu, 23 Jan 2020 20:26:49 -0000
Message-ID: <157981120968.1146.16485384372457074649@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123112809.12185-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200123112809.12185-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_them_in_i?=
 =?utf-8?q?915_=28rev3=29?=
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

Series: drm: Introduce struct drm_device based WARN* and use them in i915 (rev3)
URL   : https://patchwork.freedesktop.org/series/72035/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7804 -> Patchwork_16232
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/index.html

Known issues
------------

  Here are the changes found in Patchwork_16232 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [PASS][3] -> [INCOMPLETE][4] ([i915#671] / [i915#971])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#289])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [FAIL][9] ([i915#694]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [TIMEOUT][11] ([fdo#112271]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][13] ([i915#725]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][15] ([i915#725]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][19] ([fdo#112271]) -> [FAIL][20] ([i915#694])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][21] ([fdo#111096] / [i915#323]) -> [FAIL][22] ([fdo#111407])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#971]: https://gitlab.freedesktop.org/drm/intel/issues/971


Participating hosts (49 -> 45)
------------------------------

  Additional (2): fi-hsw-peppy fi-snb-2600 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7804 -> Patchwork_16232

  CI-20190529: 20190529
  CI_DRM_7804: 74ed9d57007ab848a57ec6d785de4187b70acd9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16232: ee7e674f9214834634d0a26eceb04115f1d04791 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ee7e674f9214 drm/i915/gvt: Make WARN* drm specific where vgpu ptr is available
a4e641c96669 drm/i915/gvt: Make WARN* drm specific where drm_priv ptr is available
f0a3afb9ae23 drm/i915/display: Make WARN* drm specific where drm_priv ptr is available
ab441b2f141b drm/i915/display: Make WARN* drm specific where drm_device ptr is available

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16232/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
