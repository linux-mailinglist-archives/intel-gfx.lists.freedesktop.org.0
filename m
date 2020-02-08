Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B361567C5
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 22:11:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7FD6E41A;
	Sat,  8 Feb 2020 21:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5CAB6E40C;
 Sat,  8 Feb 2020 21:11:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCE00A0003;
 Sat,  8 Feb 2020 21:11:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 08 Feb 2020 21:11:12 -0000
Message-ID: <158119627287.30227.14569287593604993008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200208203653.3128038-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200208203653.3128038-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Exercise_timeslice_rewinding?=
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

Series: drm/i915/selftests: Exercise timeslice rewinding
URL   : https://patchwork.freedesktop.org/series/73198/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7892 -> Patchwork_16497
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16497/index.html

Known issues
------------

  Here are the changes found in Patchwork_16497 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][1] -> [DMESG-FAIL][2] ([i915#563])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16497/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][3] ([i915#694]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16497/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [FAIL][5] ([fdo#103375]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16497/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][7] ([i915#424]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16497/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111096] / [i915#323]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16497/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][11] ([i915#45]) -> [TIMEOUT][12] ([fdo#112271] / [i915#1084] / [i915#816])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16497/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][13] ([fdo#112271]) -> [FAIL][14] ([i915#694])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16497/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [FAIL][15] ([fdo#103375]) -> [INCOMPLETE][16] ([i915#1078] / [i915#283])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16497/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1078]: https://gitlab.freedesktop.org/drm/intel/issues/1078
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (44 -> 40)
------------------------------

  Additional (6): fi-bxt-dsi fi-bdw-5557u fi-snb-2520m fi-ilk-650 fi-blb-e6850 fi-skl-6600u 
  Missing    (10): fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-ivb-3770 fi-skl-lmem fi-byt-clapper fi-bsw-nick 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7892 -> Patchwork_16497

  CI-20190529: 20190529
  CI_DRM_7892: c53ff44eb14e48089e25c34874b318e8f0d11c4c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5427: b7aaa77467742b977b1ea8716d90c7a9a2768220 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16497: e481f7a005f9cf457b6326555f14c24615fefc9e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e481f7a005f9 drm/i915/selftests: Exercise timeslice rewinding

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16497/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
