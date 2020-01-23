Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A18147201
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 20:45:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27BB46E11E;
	Thu, 23 Jan 2020 19:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95AD96E11E;
 Thu, 23 Jan 2020 19:45:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 835F5A0087;
 Thu, 23 Jan 2020 19:45:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Thu, 23 Jan 2020 19:45:05 -0000
Message-ID: <157980870550.1144.18228398291578339346@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122110844.2022-1-wambui.karugax@gmail.com>
In-Reply-To: <20200122110844.2022-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgY29u?=
 =?utf-8?q?version_to_struct_drm=5Fdevice_logging_macros=2E_=28rev2=29?=
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

Series: conversion to struct drm_device logging macros. (rev2)
URL   : https://patchwork.freedesktop.org/series/72349/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7802 -> Patchwork_16230
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/index.html

Known issues
------------

  Here are the changes found in Patchwork_16230 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [PASS][1] -> [DMESG-WARN][2] ([i915#889]) +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#553] / [i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [PASS][5] -> [DMESG-FAIL][6] ([i915#889]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][9] ([i915#694]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [INCOMPLETE][11] ([i915#45]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][13] ([i915#505]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][15] ([fdo#112406]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-bxt-dsi/igt@i915_selftest@live_gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-bxt-dsi/igt@i915_selftest@live_gt_heartbeat.html

  * igt@prime_busy@basic-wait-before-default:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [TIMEOUT][19] ([fdo#112271]) -> [FAIL][20] ([i915#694])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][21] ([i915#563]) -> [DMESG-FAIL][22] ([i915#725])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           [SKIP][23] ([CI#94] / [fdo#111827]) -> [SKIP][24] ([CI#94] / [fdo#111827] / [i915#1017]) +8 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-y:           [SKIP][25] ([CI#94] / [fdo#109285]) -> [SKIP][26] ([CI#94] / [fdo#109285] / [i915#1017])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1017]: https://gitlab.freedesktop.org/drm/intel/issues/1017
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (43 -> 45)
------------------------------

  Additional (7): fi-bdw-5557u fi-kbl-7560u fi-hsw-peppy fi-snb-2520m fi-skl-lmem fi-blb-e6850 fi-snb-2600 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7802 -> Patchwork_16230

  CI-20190529: 20190529
  CI_DRM_7802: cd932df72f11bdff93423a8d4a9e0e9ccb0985d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5381: 4ff48cdd5c94140d2dd9bfa3225a6e1e0238e247 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16230: 1663c971df992b720254923639ed2e0aca965665 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1663c971df99 drm/i915/hdcp: conversion to struct drm_device based logging macros.
6c8c476b032f drm/i915/opregion: conversion to struct drm_device logging macros.
ac753c310c05 drm/i915/dp: conversion to struct drm_device logging macros.
d95df54b4aae drm/i915/power: convert to struct drm_device macros in display/intel_display_power.c
48c2ff81dfd8 drm/i915/ddi: convert to struct drm_device log macros.
770d1dc248d4 drm/i915/dsi: conversion to struct drm_device log macros.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
