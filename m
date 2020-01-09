Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F26B13631C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 23:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDABC6E975;
	Thu,  9 Jan 2020 22:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DC266E975;
 Thu,  9 Jan 2020 22:13:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 038C6A432F;
 Thu,  9 Jan 2020 22:13:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Thu, 09 Jan 2020 22:13:05 -0000
Message-ID: <157860798500.4565.15998905056310817084@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1578560355.git.wambui.karugax@gmail.com>
In-Reply-To: <cover.1578560355.git.wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVXNl?=
 =?utf-8?q?_new_logging_macros_in_drm/i915?=
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

Series: Use new logging macros in drm/i915
URL   : https://patchwork.freedesktop.org/series/71824/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7714 -> Patchwork_16040
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16040:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s0:
    - {fi-ehl-1}:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html

  
Known issues
------------

  Here are the changes found in Patchwork_16040 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [PASS][2] -> [INCOMPLETE][3] ([i915#671])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][4] -> [DMESG-FAIL][5] ([i915#725])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][6] -> [FAIL][7] ([fdo#111096] / [i915#323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][8] ([i915#623]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       [DMESG-FAIL][10] ([i915#722]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [DMESG-FAIL][12] ([i915#722]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][14] ([i915#725]) -> [DMESG-FAIL][15] ([i915#770])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770


Participating hosts (46 -> 44)
------------------------------

  Additional (5): fi-bsw-n3050 fi-skl-6770hq fi-gdg-551 fi-bsw-kefka fi-skl-6600u 
  Missing    (7): fi-hsw-4770r fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-tgl-y fi-byt-clapper fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7714 -> Patchwork_16040

  CI-20190529: 20190529
  CI_DRM_7714: b633f28f2de80cdb861d6c1c3b4df6fd2d53239f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16040: 5a7f997a4d1030c8439cff40e7b2d48ecec4ed7e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5a7f997a4d10 drm/i915: convert to new logging macros in i915/intel_memory_region.c
8b2185c99b0c drm/i915: convert to new logging macros in i915/intel_gvt.c
3158f9687959 drm/i915: conversion to new logging macros in i915/intel_device_info.c
fc31ec5bc0b8 drm/i915: conversion to new logging macros in i915/intel_csr.c
7c89f73e822e drm/i915: conversion to new logging macros in i915/i915_vgpu.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
