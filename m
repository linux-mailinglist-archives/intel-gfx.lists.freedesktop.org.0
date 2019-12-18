Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D05A2123B5D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 01:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432FC6E1E2;
	Wed, 18 Dec 2019 00:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C4E7B6E1E2;
 Wed, 18 Dec 2019 00:09:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAF3AA0019;
 Wed, 18 Dec 2019 00:09:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 18 Dec 2019 00:09:09 -0000
Message-ID: <157662774976.8355.7063412257957158200@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217230529.25092-1-lucas.demarchi@intel.com>
In-Reply-To: <20191217230529.25092-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/display=3A_move_clk_o?=
 =?utf-8?q?ff_sanitize_to_its_own_function?=
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

Series: series starting with [CI,1/3] drm/i915/display: move clk off sanitize to its own function
URL   : https://patchwork.freedesktop.org/series/71073/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7590 -> Patchwork_15819
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/index.html

Known issues
------------

  Here are the changes found in Patchwork_15819 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-kefka:       [PASS][1] -> [INCOMPLETE][2] ([i915#392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#722])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-ivb-3770/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-ivb-3770/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       [PASS][5] -> [INCOMPLETE][6] ([i915#694])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [PASS][7] -> [INCOMPLETE][8] ([i915#45])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-icl-u2:          [PASS][9] -> [TIMEOUT][10] ([i915#449])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][11] -> [DMESG-WARN][12] ([i915#44])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][13] ([i915#816]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-guc}:       [INCOMPLETE][15] ([fdo#111735]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-tgl-guc/igt@gem_ctx_create@basic-files.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-tgl-guc/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][17] ([fdo#111593]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@gem_sync@basic-each:
    - fi-tgl-y:           [INCOMPLETE][19] ([i915#472] / [i915#707]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-tgl-y/igt@gem_sync@basic-each.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-tgl-y/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][21] ([i915#725]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][23] ([i915#424]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][25] ([fdo#111407]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][27] ([i915#770]) -> [DMESG-FAIL][28] ([i915#725])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][29] ([i915#62] / [i915#92]) -> [DMESG-WARN][30] ([i915#62] / [i915#92] / [i915#95]) +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][31] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][32] ([i915#62] / [i915#92]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#449]: https://gitlab.freedesktop.org/drm/intel/issues/449
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (51 -> 45)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7590 -> Patchwork_15819

  CI-20190529: 20190529
  CI_DRM_7590: 9d6af21a94f6b11a625d2c9034145a1e6137e621 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5350: 36431c5923099582e87379aec8e16d43090d06a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15819: a5ead65c2279b856cccd0db8ba69dfb2907c50d0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a5ead65c2279 drm/i915/display: fix phy name
a21f177fc3d4 drm/i915/display: use clk_off name to avoid double negation
2abdb8d20ba9 drm/i915/display: move clk off sanitize to its own function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
