Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF1514ED13
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 14:16:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E946E217;
	Fri, 31 Jan 2020 13:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02E3D6E217;
 Fri, 31 Jan 2020 13:16:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF38DA0087;
 Fri, 31 Jan 2020 13:16:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Fri, 31 Jan 2020 13:16:10 -0000
Message-ID: <158047657097.13120.12508199182837561015@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131093416.28431-1-wambui.karugax@gmail.com>
In-Reply-To: <20200131093416.28431-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_conversion_to_new_struct_drm=5Fdevice_based_logging_ma?=
 =?utf-8?q?cros=2E?=
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

Series: drm/i915: conversion to new struct drm_device based logging macros.
URL   : https://patchwork.freedesktop.org/series/72812/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7850 -> Patchwork_16352
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/index.html

Known issues
------------

  Here are the changes found in Patchwork_16352 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2] ([fdo#108569])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-icl-u2/igt@i915_selftest@live_hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/fi-icl-u2/igt@i915_selftest@live_hangcheck.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([fdo#109635] / [i915#217])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][5] -> [DMESG-WARN][6] ([i915#44])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][7] ([fdo#112271] / [i915#1084] / [i915#816]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_store@basic-all:
    - fi-apl-guc:         [TIMEOUT][9] ([fdo#112271]) -> [PASS][10] +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-apl-guc/igt@gem_exec_store@basic-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/fi-apl-guc/igt@gem_exec_store@basic-all.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][11] ([CI#94]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-apl-guc:         [SKIP][13] ([fdo#109271]) -> [PASS][14] +47 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html

  * igt@kms_addfb_basic@bad-pitch-32:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-32.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-32.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][17] ([fdo#111407]) -> [FAIL][18] ([fdo#111096] / [i915#323])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@runner@aborted:
    - fi-byt-n2820:       [FAIL][19] ([i915#816]) -> [FAIL][20] ([i915#999])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-byt-n2820/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/fi-byt-n2820/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (43 -> 41)
------------------------------

  Additional (6): fi-bdw-5557u fi-byt-j1900 fi-snb-2520m fi-whl-u fi-elk-e7500 fi-kbl-r 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7850 -> Patchwork_16352

  CI-20190529: 20190529
  CI_DRM_7850: ae66f2257648ce52c51298506977baa32873c9d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16352: 9b2c54ed27f3d82dd194b1201a4bd5412e994cdc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9b2c54ed27f3 drm/i915/pci: conversion to drm_device based logging macros.
629879bbcc3c drm/i915/perf: conversion to struct drm_device based logging macros.
cf40c77787e9 drm/i915/cmd_parser: conversion to struct drm_device logging macros.
5e3766f431a0 drm/i915/debugfs: conversion to drm_device based logging macros.
be9ed48fe6e7 drm/i915: conversion to drm_device logging macros when drm_i915_private is present.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16352/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
