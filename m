Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6015C14914A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 23:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC9D06E462;
	Fri, 24 Jan 2020 22:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C29FD6E461;
 Fri, 24 Jan 2020 22:46:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAF34A0003;
 Fri, 24 Jan 2020 22:46:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Jan 2020 22:46:35 -0000
Message-ID: <157990599576.15090.18228834573994935985@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124192255.541355-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200124192255.541355-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Stub_out_i915=5Fgpu=5Fcoredump=5Fput?=
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

Series: drm/i915: Stub out i915_gpu_coredump_put
URL   : https://patchwork.freedesktop.org/series/72547/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7811 -> Patchwork_16260
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16260 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16260, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16260:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  
Known issues
------------

  Here are the changes found in Patchwork_16260 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6700k2:      [PASS][3] -> [FAIL][4] ([fdo#103375])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][5] -> [INCOMPLETE][6] ([i915#671])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][7] -> [INCOMPLETE][8] ([i915#671])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][9] -> [DMESG-FAIL][10] ([i915#725])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([fdo#111407])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#725]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gtt:
    - fi-bdw-5557u:       [TIMEOUT][15] ([fdo#112271]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][17] ([i915#217]) -> [DMESG-WARN][18] ([IGT#4] / [i915#263])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (47 -> 40)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (8): fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7811 -> Patchwork_16260

  CI-20190529: 20190529
  CI_DRM_7811: f528982f5c837f075e82ca544df010ca5183064a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5384: fd6896567f7d612c76207970376d4f1e634ded55 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16260: dccc204efc6705cdeb99def97ca4b216a95699fe @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dccc204efc67 drm/i915: Stub out i915_gpu_coredump_put

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16260/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
