Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F85153D9F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 04:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8E46F9AD;
	Thu,  6 Feb 2020 03:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC6956E2A0;
 Thu,  6 Feb 2020 03:33:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3365A011C;
 Thu,  6 Feb 2020 03:33:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 03:33:42 -0000
Message-ID: <158096002290.14483.7984505581902713018@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206003337.2125297-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206003337.2125297-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Trim_blitter_block_size?=
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

Series: drm/i915/selftests: Trim blitter block size
URL   : https://patchwork.freedesktop.org/series/73066/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7874 -> Patchwork_16448
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16448 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16448, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16448:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_blt:
    - fi-whl-u:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-whl-u/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-whl-u/igt@i915_selftest@live_blt.html
    - fi-bdw-5557u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-bdw-5557u/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-bdw-5557u/igt@i915_selftest@live_blt.html
    - fi-icl-u3:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u3/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-icl-u3/igt@i915_selftest@live_blt.html
    - fi-cfl-8109u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cfl-8109u/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-cfl-8109u/igt@i915_selftest@live_blt.html
    - fi-kbl-7500u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-7500u/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-kbl-7500u/igt@i915_selftest@live_blt.html
    - fi-kbl-guc:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-guc/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-kbl-guc/igt@i915_selftest@live_blt.html
    - fi-kbl-8809g:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-8809g/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-kbl-8809g/igt@i915_selftest@live_blt.html
    - fi-icl-guc:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-guc/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-icl-guc/igt@i915_selftest@live_blt.html
    - fi-kbl-r:           [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-r/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-kbl-r/igt@i915_selftest@live_blt.html
    - fi-cfl-8700k:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cfl-8700k/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-cfl-8700k/igt@i915_selftest@live_blt.html
    - fi-icl-u2:          [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u2/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-icl-u2/igt@i915_selftest@live_blt.html
    - fi-kbl-x1275:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-x1275/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-kbl-x1275/igt@i915_selftest@live_blt.html
    - fi-icl-dsi:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-dsi/igt@i915_selftest@live_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-icl-dsi/igt@i915_selftest@live_blt.html
    - fi-cfl-guc:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cfl-guc/igt@i915_selftest@live_blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-cfl-guc/igt@i915_selftest@live_blt.html
    - fi-skl-6600u:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6600u/igt@i915_selftest@live_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-skl-6600u/igt@i915_selftest@live_blt.html
    - fi-icl-y:           [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-y/igt@i915_selftest@live_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-icl-y/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_16448 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][35] -> [INCOMPLETE][36] ([i915#694] / [i915#816])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-skl-6770hq:      [PASS][37] -> [INCOMPLETE][38] ([fdo#112429])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6770hq/igt@i915_selftest@live_blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-skl-6770hq/igt@i915_selftest@live_blt.html
    - fi-glk-dsi:         [PASS][39] -> [INCOMPLETE][40] ([i915#58] / [k.org#198133])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-glk-dsi/igt@i915_selftest@live_blt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-glk-dsi/igt@i915_selftest@live_blt.html
    - fi-apl-guc:         [PASS][41] -> [INCOMPLETE][42] ([fdo#103927])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-apl-guc/igt@i915_selftest@live_blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-apl-guc/igt@i915_selftest@live_blt.html
    - fi-skl-guc:         [PASS][43] -> [INCOMPLETE][44] ([fdo#112429])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-guc/igt@i915_selftest@live_blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-skl-guc/igt@i915_selftest@live_blt.html
    - fi-tgl-y:           [PASS][45] -> [INCOMPLETE][46] ([CI#94] / [i915#472])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-tgl-y/igt@i915_selftest@live_blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-tgl-y/igt@i915_selftest@live_blt.html
    - fi-cml-u2:          [PASS][47] -> [INCOMPLETE][48] ([i915#283])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cml-u2/igt@i915_selftest@live_blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-cml-u2/igt@i915_selftest@live_blt.html
    - fi-bxt-dsi:         [PASS][49] -> [INCOMPLETE][50] ([fdo#103927])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-bxt-dsi/igt@i915_selftest@live_blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-bxt-dsi/igt@i915_selftest@live_blt.html
    - fi-skl-6700k2:      [PASS][51] -> [INCOMPLETE][52] ([fdo#112429])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6700k2/igt@i915_selftest@live_blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-skl-6700k2/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][53] -> [DMESG-FAIL][54] ([i915#1052])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [PASS][55] -> [DMESG-WARN][56] ([CI#94] / [i915#402]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [TIMEOUT][57] ([fdo#112271] / [i915#1084]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][59] ([i915#694]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][61] ([CI#94]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][63] ([i915#722]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [DMESG-WARN][65] ([CI#94] / [i915#402]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][67] ([fdo#109635] / [i915#217]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][69] ([fdo#112271] / [i915#1084]) -> [FAIL][70] ([i915#694])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][71] ([fdo#111096] / [i915#323]) -> [FAIL][72] ([fdo#111407])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112429]: https://bugs.freedesktop.org/show_bug.cgi?id=112429
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (51 -> 42)
------------------------------

  Missing    (9): fi-kbl-soraka fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-bsw-kefka fi-kbl-7560u fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7874 -> Patchwork_16448

  CI-20190529: 20190529
  CI_DRM_7874: 3f234d1ab91ec2321312150116c1285bcb0a260b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5420: 497e13d2b4c1053bcd01bd15739fef55e7694a03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16448: b4454179762f2834d20162d34661643c84031684 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b4454179762f drm/i915/selftests: Trim blitter block size

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16448/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
