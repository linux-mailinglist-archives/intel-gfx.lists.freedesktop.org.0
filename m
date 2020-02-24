Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD8B16ABB7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 17:36:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5BAC6E5C1;
	Mon, 24 Feb 2020 16:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A4606E5B4;
 Mon, 24 Feb 2020 16:36:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12670A0099;
 Mon, 24 Feb 2020 16:36:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 24 Feb 2020 16:36:01 -0000
Message-ID: <158256216104.28360.2055759265856917732@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224120828.22105-1-jani.nikula@intel.com>
In-Reply-To: <20200224120828.22105-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_split_intel=5Fmodeset=5Finit=28=29_to_pre/post_irq_ins?=
 =?utf-8?q?tall?=
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

Series: drm/i915: split intel_modeset_init() to pre/post irq install
URL   : https://patchwork.freedesktop.org/series/73849/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7997 -> Patchwork_16686
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/index.html

Known issues
------------

  Here are the changes found in Patchwork_16686 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][3] -> [FAIL][4] ([i915#694])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][5] -> [FAIL][6] ([CI#94])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [PASS][9] -> [FAIL][10] ([fdo#109635] / [i915#262])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([fdo#111407])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][13] -> [DMESG-WARN][14] ([i915#44])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_store@basic-all:
    - fi-byt-j1900:       [FAIL][15] ([i915#694]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-byt-j1900/igt@gem_exec_store@basic-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-byt-j1900/igt@gem_exec_store@basic-all.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-byt-j1900:       [TIMEOUT][17] ([fdo#112271] / [i915#1084]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][19] ([CI#94] / [i915#402]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-kbl-x1275:       [DMESG-FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-kbl-x1275/igt@i915_selftest@live_gt_lrc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-kbl-x1275/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_perf:
    - fi-apl-guc:         [INCOMPLETE][23] ([fdo#103927]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-apl-guc/igt@i915_selftest@live_perf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-apl-guc/igt@i915_selftest@live_perf.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][25] ([i915#694]) -> [TIMEOUT][26] ([fdo#112271])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [TIMEOUT][27] ([fdo#112271] / [i915#1084]) -> [FAIL][28] ([i915#694])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694


Participating hosts (50 -> 45)
------------------------------

  Additional (1): fi-snb-2520m 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7997 -> Patchwork_16686

  CI-20190529: 20190529
  CI_DRM_7997: 3d3098d1384ee777baa141f69112669fed5ea90e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16686: 8af6978ef20bd1afa0234aabd96d9bd64e476758 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8af6978ef20b drm/i915: split intel_modeset_init() to pre/post irq install

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
