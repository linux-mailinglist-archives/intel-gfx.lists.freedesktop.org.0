Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB23147190
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 20:14:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0325C6FE2D;
	Thu, 23 Jan 2020 19:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC6AA6FE2D;
 Thu, 23 Jan 2020 19:14:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2D1BA010F;
 Thu, 23 Jan 2020 19:14:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Thu, 23 Jan 2020 19:14:26 -0000
Message-ID: <157980686671.1146.11682036095122879938@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121214641.7262-1-wambui.karugax@gmail.com>
In-Reply-To: <20200121214641.7262-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_conversion_to_new_struct_drm=5Fdevice_logging_?=
 =?utf-8?q?macros=2E?=
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

Series: drm/i915/display: conversion to new struct drm_device logging macros.
URL   : https://patchwork.freedesktop.org/series/72456/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7802 -> Patchwork_16229
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/index.html

Known issues
------------

  Here are the changes found in Patchwork_16229 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-7500u:       [PASS][3] -> [INCOMPLETE][4] ([i915#879])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][9] ([CI#94]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][11] ([i915#505]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][13] ([fdo#112406]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-bxt-dsi/igt@i915_selftest@live_gt_heartbeat.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-bxt-dsi/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][15] ([fdo#111407]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_busy@basic-wait-before-default:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][19] ([i915#563]) -> [DMESG-FAIL][20] ([i915#725])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           [SKIP][21] ([CI#94] / [fdo#111827]) -> [SKIP][22] ([CI#94] / [fdo#111827] / [i915#1017]) +8 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-y:           [SKIP][23] ([CI#94] / [fdo#109285]) -> [SKIP][24] ([CI#94] / [fdo#109285] / [i915#1017])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1017]: https://gitlab.freedesktop.org/drm/intel/issues/1017
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879


Participating hosts (43 -> 43)
------------------------------

  Additional (6): fi-bdw-5557u fi-hsw-peppy fi-snb-2520m fi-gdg-551 fi-skl-lmem fi-blb-e6850 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7802 -> Patchwork_16229

  CI-20190529: 20190529
  CI_DRM_7802: cd932df72f11bdff93423a8d4a9e0e9ccb0985d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5381: 4ff48cdd5c94140d2dd9bfa3225a6e1e0238e247 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16229: 23e149f682604438ea1b2e048e92edb32d2e8c0b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

23e149f68260 drm/i915/display: conversion to new struct drm_device logging macros.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16229/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
