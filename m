Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5181539C5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 21:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023386F960;
	Wed,  5 Feb 2020 20:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5F566F96A;
 Wed,  5 Feb 2020 20:54:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DEE73A0009;
 Wed,  5 Feb 2020 20:54:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Wed, 05 Feb 2020 20:54:30 -0000
Message-ID: <158093607089.17318.6212015297489934758@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205152448.2679-1-animesh.manna@intel.com>
In-Reply-To: <20200205152448.2679-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_Pre_allocate_and_late_cleanup_of_cmd_buffer?=
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

Series: drm/i915/dsb: Pre allocate and late cleanup of cmd buffer
URL   : https://patchwork.freedesktop.org/series/73036/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7871 -> Patchwork_16437
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/index.html

Known issues
------------

  Here are the changes found in Patchwork_16437 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2] ([CI#94] / [i915#472])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#553] / [i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#770])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-skl-6700k2:      [PASS][7] -> [INCOMPLETE][8] ([i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([CI#94] / [i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][11] ([i915#45]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][13] ([CI#94]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-guc:         [TIMEOUT][15] ([fdo#112271]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-guc/igt@i915_selftest@live_gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/fi-icl-guc/igt@i915_selftest@live_gtt.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770


Participating hosts (45 -> 46)
------------------------------

  Additional (6): fi-bdw-5557u fi-hsw-peppy fi-bwr-2160 fi-ilk-650 fi-kbl-7500u fi-gdg-551 
  Missing    (5): fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7871 -> Patchwork_16437

  CI-20190529: 20190529
  CI_DRM_7871: c9b0237ee7ffb1bbb62f864f0b2d7b290ee1313d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16437: b799b665a35ce36fbcb3bcc51dde8406b9387c4f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b799b665a35c drm/i915/dsb: Pre allocate and late cleanup of cmd buffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16437/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
