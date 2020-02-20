Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 068FC16642A
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 18:18:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EEE76EE03;
	Thu, 20 Feb 2020 17:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A3106EE02;
 Thu, 20 Feb 2020 17:18:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3180FA0088;
 Thu, 20 Feb 2020 17:18:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 20 Feb 2020 17:18:07 -0000
Message-ID: <158221908719.17408.3835917680782618608@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220123608.1666271-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200220123608.1666271-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Double_check_bumping_af?=
 =?utf-8?q?ter_the_spinlock?=
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

Series: series starting with [1/2] drm/i915: Double check bumping after the spinlock
URL   : https://patchwork.freedesktop.org/series/73707/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7973 -> Patchwork_16645
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16645/index.html

New tests
---------

  New tests have been introduced between CI_DRM_7973 and Patchwork_16645:

### New IGT tests (4) ###

  * igt@i915_pm_backlight@basic-brightness:
    - Statuses : 1 dmesg-warn(s) 13 pass(s) 22 skip(s)
    - Exec time: [0.0, 0.22] s

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - Statuses : 1 dmesg-warn(s) 25 pass(s) 10 skip(s)
    - Exec time: [0.0, 6.74] s

  * igt@i915_pm_rpm@basic-rte:
    - Statuses : 1 dmesg-warn(s) 25 pass(s) 10 skip(s)
    - Exec time: [0.45, 17.72] s

  * igt@i915_pm_rps@basic-api:
    - Statuses : 31 pass(s) 5 skip(s)
    - Exec time: [0.0, 0.02] s

  

Known issues
------------

  Here are the changes found in Patchwork_16645 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gtt:
    - fi-hsw-4770r:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-hsw-4770r/igt@i915_selftest@live_gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16645/fi-hsw-4770r/igt@i915_selftest@live_gtt.html

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16645/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][5] ([i915#694]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16645/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][7] ([i915#217]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16645/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16645/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][11] ([fdo#109315]) -> [SKIP][12] ([fdo#109315] / [i915#585])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16645/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][13] ([fdo#111407]) -> [FAIL][14] ([fdo#111096] / [i915#323])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16645/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694


Participating hosts (49 -> 39)
------------------------------

  Additional (4): fi-kbl-soraka fi-skl-lmem fi-ivb-3770 fi-pnv-d510 
  Missing    (14): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-skl-6770hq fi-hsw-peppy fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-cfl-8109u fi-bsw-kefka fi-bdw-samus fi-bsw-nick fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7973 -> Patchwork_16645

  CI-20190529: 20190529
  CI_DRM_7973: 07350317e4b2be54b1de7f1e73f77875df5e43f3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5453: cae9a5881ed2c5be2c2518a255740b612a927f9a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16645: e5bc0f843da36cdc8a5b8fcdb5c692f14347dcb3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e5bc0f843da3 drm/i915: Protect i915_request_await_start from early waits
00c160893898 drm/i915: Double check bumping after the spinlock

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16645/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
