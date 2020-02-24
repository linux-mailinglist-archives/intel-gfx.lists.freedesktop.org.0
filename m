Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B0B16B103
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 21:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC6D6E961;
	Mon, 24 Feb 2020 20:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 378E86E83C;
 Mon, 24 Feb 2020 20:37:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EB23A47E9;
 Mon, 24 Feb 2020 20:37:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 24 Feb 2020 20:37:28 -0000
Message-ID: <158257664816.28363.12626072553574668984@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224161046.4149881-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200224161046.4149881-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Make_the_kernel=5Fcontext_pulse_explicit?=
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

Series: drm/i915/selftests: Make the kernel_context pulse explicit
URL   : https://patchwork.freedesktop.org/series/73858/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7999 -> Patchwork_16693
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16693 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16693, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16693:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-bdw-5557u:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-bdw-5557u/igt@i915_selftest@live_gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-bdw-5557u/igt@i915_selftest@live_gt_lrc.html
    - fi-bsw-nick:        [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-bsw-nick/igt@i915_selftest@live_gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-bsw-nick/igt@i915_selftest@live_gt_lrc.html
    - fi-bsw-kefka:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-bsw-kefka/igt@i915_selftest@live_gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-bsw-kefka/igt@i915_selftest@live_gt_lrc.html
    - fi-bsw-n3050:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-bsw-n3050/igt@i915_selftest@live_gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-bsw-n3050/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16693 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][9] -> [INCOMPLETE][10] ([i915#694] / [i915#816])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][11] -> [FAIL][12] ([CI#94])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_addfb_basic@bad-pitch-63:
    - fi-tgl-y:           [PASS][13] -> [DMESG-WARN][14] ([CI#94] / [i915#402]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-63.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-63.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][15] -> [FAIL][16] ([i915#217] / [i915#976])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][17] -> [FAIL][18] ([fdo#111407])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][19] ([i915#45]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@kms_addfb_basic@addfb25-yf-tiled:
    - fi-tgl-y:           [DMESG-WARN][21] ([CI#94] / [i915#402]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-tgl-y/igt@kms_addfb_basic@addfb25-yf-tiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/fi-tgl-y/igt@kms_addfb_basic@addfb25-yf-tiled.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (52 -> 43)
------------------------------

  Missing    (9): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7999 -> Patchwork_16693

  CI-20190529: 20190529
  CI_DRM_7999: e853e3d470d1bb4ac87042094b99adbdbaa87944 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16693: a0827091afb8cf0331d80829f72c9573e718c35d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a0827091afb8 drm/i915/selftests: Make the kernel_context pulse explicit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16693/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
