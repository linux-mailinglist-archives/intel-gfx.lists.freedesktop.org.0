Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAEE16B6E2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 01:51:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5092C6E9C7;
	Tue, 25 Feb 2020 00:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 948036E899;
 Tue, 25 Feb 2020 00:50:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C654A47E9;
 Tue, 25 Feb 2020 00:50:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 25 Feb 2020 00:50:59 -0000
Message-ID: <158259185954.5723.15894878018224766552@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224233110.263694-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200224233110.263694-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Manually_acquire_engine-wakeref_around_use_of_kernel?=
 =?utf-8?q?=5Fcontext?=
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

Series: drm/i915: Manually acquire engine-wakeref around use of kernel_context
URL   : https://patchwork.freedesktop.org/series/73878/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8000 -> Patchwork_16696
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16696 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16696, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16696:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-hsw-peppy:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/fi-hsw-peppy/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/fi-hsw-peppy/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_16696 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-bwr-2160:        [PASS][3] -> [INCOMPLETE][4] ([i915#695])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/fi-bwr-2160/igt@i915_selftest@live_gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/fi-bwr-2160/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_addfb_basic@addfb25-y-tiled:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/fi-tgl-y/igt@kms_addfb_basic@addfb25-y-tiled.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/fi-tgl-y/igt@kms_addfb_basic@addfb25-y-tiled.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][7] ([CI#94]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_render_linear_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/fi-tgl-y/igt@gem_render_linear_blits@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/fi-tgl-y/igt@gem_render_linear_blits@basic.html

  * igt@i915_selftest@live_execlists:
    - fi-bsw-kefka:       [DMESG-FAIL][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/fi-bsw-kefka/igt@i915_selftest@live_execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/fi-bsw-kefka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][13] ([i915#877]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][15] ([i915#44]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-tgl-y:           [DMESG-FAIL][17] ([CI#94] / [i915#1233]) -> [INCOMPLETE][18] ([CI#94] / [i915#1233])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][19] ([fdo#111407]) -> [FAIL][20] ([fdo#111096] / [i915#323])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#695]: https://gitlab.freedesktop.org/drm/intel/issues/695
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (48 -> 45)
------------------------------

  Additional (2): fi-byt-n2820 fi-cfl-8109u 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8000 -> Patchwork_16696

  CI-20190529: 20190529
  CI_DRM_8000: e231691d89abd1b3fff01e75f142e435b44b522f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16696: 38ff2e8edc02e7792d6950ed5bef40d8e2f798a5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

38ff2e8edc02 drm/i915: Manually acquire engine-wakeref around use of kernel_context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16696/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
