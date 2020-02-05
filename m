Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA50B153175
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 14:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E788B6F59B;
	Wed,  5 Feb 2020 13:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9CF46F59A;
 Wed,  5 Feb 2020 13:10:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2046A010F;
 Wed,  5 Feb 2020 13:10:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 05 Feb 2020 13:10:31 -0000
Message-ID: <158090823176.17318.2767965379085760243@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200204211853.1323966-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200204211853.1323966-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Disable_use_of_hwsp=5Fcacheline_for_kernel=5Fcontext_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915: Disable use of hwsp_cacheline for kernel_context (rev2)
URL   : https://patchwork.freedesktop.org/series/72992/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7869 -> Patchwork_16429
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/index.html

Known issues
------------

  Here are the changes found in Patchwork_16429 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4] ([fdo#108569])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-icl-y/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-kbl-x1275:       [PASS][5] -> [DMESG-FAIL][6] ([i915#943])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-bxt-dsi:         [PASS][7] -> [TIMEOUT][8] ([fdo#112271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-bxt-dsi/igt@i915_selftest@live_gtt.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][9] -> [DMESG-WARN][10] ([i915#44])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([CI#94] / [i915#402]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][13] ([i915#45]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-icl-u3:          [INCOMPLETE][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-icl-u3/igt@gem_exec_parallel@fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-icl-u3/igt@gem_exec_parallel@fds.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [INCOMPLETE][19] ([i915#392]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-bsw-nick/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [FAIL][21] ([fdo#109635] / [i915#217]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][23] ([fdo#111096] / [i915#323]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][25] ([i915#553]) -> [DMESG-FAIL][26] ([i915#725])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#943]: https://gitlab.freedesktop.org/drm/intel/issues/943


Participating hosts (49 -> 46)
------------------------------

  Additional (2): fi-gdg-551 fi-snb-2520m 
  Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7869 -> Patchwork_16429

  CI-20190529: 20190529
  CI_DRM_7869: db0579be255412f38a450c3c577f8d10f1195034 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16429: 85580c848ee89623ebcf037d3f20540622a482e8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

85580c848ee8 drm/i915: Disable use of hwsp_cacheline for kernel_context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16429/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
