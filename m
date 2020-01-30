Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F1D14D833
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 10:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 312716E0AA;
	Thu, 30 Jan 2020 09:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDC1F89DBC;
 Thu, 30 Jan 2020 09:20:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5054A0088;
 Thu, 30 Jan 2020 09:20:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Thu, 30 Jan 2020 09:20:41 -0000
Message-ID: <158037604184.21034.18247662555122014752@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130083229.12889-1-wambui.karugax@gmail.com>
In-Reply-To: <20200130083229.12889-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_conversion_to_drm=5Fdevice_based_logging_macro?=
 =?utf-8?q?s?=
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

Series: drm/i915/display: conversion to drm_device based logging macros
URL   : https://patchwork.freedesktop.org/series/72760/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7841 -> Patchwork_16328
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16328 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16328, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16328/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16328:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16328/fi-bsw-nick/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16328 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][2] -> [TIMEOUT][3] ([fdo#112271] / [i915#816])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7841/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16328/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gtt:
    - fi-glk-dsi:         [PASS][4] -> [TIMEOUT][5] ([fdo#112271] / [i915#690])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7841/fi-glk-dsi/igt@i915_selftest@live_gtt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16328/fi-glk-dsi/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [PASS][6] -> [DMESG-WARN][7] ([IGT#4])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7841/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16328/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][8] ([fdo#108569]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7841/fi-icl-y/igt@i915_selftest@live_execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16328/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][10] ([CI#80] / [fdo#106070] / [i915#424]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7841/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16328/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#690]: https://gitlab.freedesktop.org/drm/intel/issues/690
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (50 -> 41)
------------------------------

  Additional (2): fi-bsw-nick fi-pnv-d510 
  Missing    (11): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ivb-3770 fi-cfl-8109u fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7841 -> Patchwork_16328

  CI-20190529: 20190529
  CI_DRM_7841: a5c892c26cf9bca34fb6772a7bca3fde77fb8856 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5406: 786c79af483a9f6e4688811f74116030c734ca1f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16328: ebef0a39e4da242cb2f6b2746ddd2c246baac818 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ebef0a39e4da drm/i915/panel: automatic conversion to drm_device based logging macros.
a6f0a8f6d765 drm/i915/pipe_crc: automatic conversion to drm_device based logging macros.
374966aa7e11 drm/i915/psr: automatic conversion to drm_device based logging macros.
b71c84bed5a3 drm/i915/quirks: automatic conversion to drm_device based logging macros.
d0e0ccaf9a87 drm/i915/sdvo: automatic conversion to drm_device based logging macros.
0ec280e883ab drm/i915/sprite: automatic conversion to drm_device based logging macros
6e8ee3a0938c drm/i915/tc: automatic conversion to drm_device based logging macros.
12dd9a8f1bbb drm/i915/tv: automatic conversion to drm_device based logging macros.
1818232acd79 drm/i915/vdsc: convert to struct drm_device based logging macros.
0626d20032f7 drm/i915/vga: conversion to drm_device based logging macros.
2b51f5f726ac drm/i915/vlv_dsi: conversion to drm_device based logging macros.
5aa62b70df2b drm/i915/vlv_dsi_pll: conversion to struct drm_device logging macros.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16328/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
