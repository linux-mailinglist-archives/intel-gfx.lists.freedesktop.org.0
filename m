Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA1B119019
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 19:55:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B46DF6E151;
	Tue, 10 Dec 2019 18:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E2FC16E151;
 Tue, 10 Dec 2019 18:55:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC22DA0075;
 Tue, 10 Dec 2019 18:55:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 10 Dec 2019 18:55:31 -0000
Message-ID: <157600413183.23231.7993049498665924476@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1575974743.git.jani.nikula@intel.com>
In-Reply-To: <cover.1575974743.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_enable_DSC_=28rev7=29?=
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

Series: drm/i915/dsi: enable DSC (rev7)
URL   : https://patchwork.freedesktop.org/series/69540/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7532 -> Patchwork_15665
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/index.html

Known issues
------------

  Here are the changes found in Patchwork_15665 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-all:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#470])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-tgl-y/igt@gem_sync@basic-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-tgl-y/igt@gem_sync@basic-all.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-skl-lmem:        [PASS][5] -> [DMESG-WARN][6] ([i915#592])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-skl-lmem/igt@i915_selftest@live_sanitycheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-skl-lmem/igt@i915_selftest@live_sanitycheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-bsw-n3050:       [DMESG-FAIL][7] ([i915#723]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-bsw-n3050/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [DMESG-FAIL][9] ([i915#725]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-byt-j1900:       [DMESG-FAIL][11] ([i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-byt-j1900/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#770]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [INCOMPLETE][15] ([i915#45]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][18] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][22] ([i915#62] / [i915#92]) +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (55 -> 47)
------------------------------

  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7532 -> Patchwork_15665

  CI-20190529: 20190529
  CI_DRM_7532: 2004c1c9d9669c6722274d5cf62f8f2b00720d57 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5341: 5fe683cdebde2d77d16ffc42c9fdf29a9f95bb82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15665: 83f777bd3452f8a3e5a13239d0a3fcd66487ee6c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

83f777bd3452 drm/i915/dsi: add support for DSC
0ecba96a4eba drm/i915/dsi: Fix state mismatch warns for horizontal timings with DSC
d1daa436911c drm/i915/dsi: account for DSC in horizontal timings
8ce0fa00a604 drm/i915/dsi: use compressed pixel format with DSC
f157802beff5 drm/i915/dsi: take compression into account in afe_clk()
e4ef078dc802 drm/i915/dsi: use afe_clk() instead of intel_dsi_bitrate()
31a42d4e02bd drm/i915/dsi: abstract afe_clk calculation
04c5ad923b3d drm/i915/dsi: set pipe_bpp on ICL configure config
df59e592dc6f drm/i915/dsc: add basic hardware state readout support
ad44ed62aa51 drm/i915/dsc: make DSC source support helper generic
f974e1823e76 drm/i915/dsc: add support for computing and writing PPS for DSI encoders
c57b5b30f0bd drm/i915/dsc: move slice height calculation to encoder
45e4e91d5a96 drm/i915/dsc: move DP specific compute params to intel_dp.c
73921fea08b1 drm/i915/bios: add support for querying DSC details for encoder
5f29128c3cd0 drm/i915/bios: parse compression parameters block
6f76029d9c5d drm/i915/bios: pass devdata to parse_ddi_port

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
