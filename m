Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE553171573
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 11:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51AC86E7E2;
	Thu, 27 Feb 2020 10:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 662C06E7E2;
 Thu, 27 Feb 2020 10:57:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D730A47E9;
 Thu, 27 Feb 2020 10:57:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Thu, 27 Feb 2020 10:57:58 -0000
Message-ID: <158280107844.29659.8877685192880024154@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_conversion_to_drm=5Fdevice_based_logging_macro?=
 =?utf-8?q?s_=28rev4=29?=
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

Series: drm/i915/display: conversion to drm_device based logging macros (rev4)
URL   : https://patchwork.freedesktop.org/series/72760/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8013 -> Patchwork_16730
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16730 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16730, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16730/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16730:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16730/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16730 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [PASS][3] -> [INCOMPLETE][4] ([i915#1242])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16730/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][5] -> [FAIL][6] ([CI#94])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16730/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([fdo#111407])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16730/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][9] ([i915#44]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16730/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16730/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
#### Warnings ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-tgl-y:           [INCOMPLETE][13] ([CI#94] / [i915#1233]) -> [DMESG-FAIL][14] ([CI#94] / [i915#1233])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8013/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16730/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1242]: https://gitlab.freedesktop.org/drm/intel/issues/1242
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460


Participating hosts (51 -> 41)
------------------------------

  Missing    (10): fi-hsw-4770r fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-elk-e7500 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8013 -> Patchwork_16730

  CI-20190529: 20190529
  CI_DRM_8013: ddbaa8ebcf171da63385dccb8a6b4d0209c2f6fb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16730: 0b7851f0573c7eeb936a533f4be35d7fde434734 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0b7851f0573c drm/i915/overlay: convert to drm_device based logging.
7dfa3b5fa559 drm/i915/lvds: convert to drm_device based logging macros.
23085b0407ab drm/i915/lpe_audio: convert to drm_device based logging macros.
79f92fa059cb drm/i915/hotplug: convert to drm_device based logging.
d6b8e1e05480 drm/i915/hdcp: convert to struct drm_device based logging.
b67c2a76b9a9 drm/i915/gmbus: convert to drm_device based logging,
52091797541d drm/i915/fifo_underrun: convert to drm_device based logging.
e85eca106b1e drm/i915/fbdev: convert to drm_device based logging.
86a7f80aaa81 drm/i915/fbc: convert to drm_device based logging macros.
c1ef2220a44e drm/i915/dsb: convert to drm_device based logging macros.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16730/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
