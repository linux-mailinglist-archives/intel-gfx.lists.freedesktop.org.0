Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B2414720B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 20:47:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D08876FE55;
	Thu, 23 Jan 2020 19:47:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AFF566FE55;
 Thu, 23 Jan 2020 19:47:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9FAD9A0087;
 Thu, 23 Jan 2020 19:47:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Thu, 23 Jan 2020 19:47:02 -0000
Message-ID: <157980882265.1144.10091572307233689769@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122125750.9737-1-wambui.karugax@gmail.com>
In-Reply-To: <20200122125750.9737-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_conversion_to_new_drm_logging_macros?=
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

Series: drm/i915/gem: conversion to new drm logging macros
URL   : https://patchwork.freedesktop.org/series/72454/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7802 -> Patchwork_16231
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/index.html

Known issues
------------

  Here are the changes found in Patchwork_16231 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][1] -> [DMESG-FAIL][2] ([i915#563])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#563])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-guc:         [PASS][5] -> [INCOMPLETE][6] ([fdo#108569] / [i915#140])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-icl-guc/igt@i915_selftest@live_hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-icl-guc/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [PASS][7] -> [DMESG-WARN][8] ([i915#889]) +22 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_reset:
    - fi-bxt-dsi:         [PASS][9] -> [DMESG-FAIL][10] ([i915#889]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-bxt-dsi/igt@i915_selftest@live_reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-bxt-dsi/igt@i915_selftest@live_reset.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([CI#94] / [i915#402])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [INCOMPLETE][13] ([i915#45]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][15] ([CI#94]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][17] ([i915#505]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][19] ([i915#563]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][21] ([fdo#111407]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_busy@basic-wait-before-default:
    - fi-tgl-y:           [DMESG-WARN][23] ([CI#94] / [i915#402]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [TIMEOUT][25] ([fdo#112271]) -> [FAIL][26] ([i915#694])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][27] ([fdo#112406]) -> [DMESG-WARN][28] ([i915#889])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-bxt-dsi/igt@i915_selftest@live_gt_heartbeat.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-bxt-dsi/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           [SKIP][29] ([CI#94] / [fdo#111827]) -> [SKIP][30] ([CI#94] / [fdo#111827] / [i915#1017]) +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-y:           [SKIP][31] ([CI#94] / [fdo#109285]) -> [SKIP][32] ([CI#94] / [fdo#109285] / [i915#1017])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1017]: https://gitlab.freedesktop.org/drm/intel/issues/1017
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (43 -> 44)
------------------------------

  Additional (7): fi-bdw-5557u fi-hsw-peppy fi-snb-2520m fi-gdg-551 fi-skl-lmem fi-blb-e6850 fi-snb-2600 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7802 -> Patchwork_16231

  CI-20190529: 20190529
  CI_DRM_7802: cd932df72f11bdff93423a8d4a9e0e9ccb0985d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5381: 4ff48cdd5c94140d2dd9bfa3225a6e1e0238e247 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16231: 861ca3b565c71d604edcc127031327c14312f8ef @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

861ca3b565c7 drm/i915/gem: manual conversion to struct drm_device logging macros.
dba9aa46dfdf drm/i915/gem: initial conversion to new logging macros using coccinelle

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16231/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
