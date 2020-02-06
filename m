Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A4F153E6D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 07:03:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F6386F9CF;
	Thu,  6 Feb 2020 06:03:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED5086F9CE;
 Thu,  6 Feb 2020 06:03:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5A73A0094;
 Thu,  6 Feb 2020 06:03:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Thu, 06 Feb 2020 06:03:18 -0000
Message-ID: <158096899891.14483.10238069513461805492@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205223627.5680-1-andi@etezian.org>
In-Reply-To: <20200205223627.5680-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_add_basic_selftests_for_rc6_=28rev7=29?=
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

Series: drm/i915/selftests: add basic selftests for rc6 (rev7)
URL   : https://patchwork.freedesktop.org/series/69825/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7874 -> Patchwork_16452
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16452 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16452, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16452:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-cfl-8700k:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-r:           [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
    - fi-byt-j1900:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-j1900/igt@i915_selftest@live_gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-byt-j1900/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-guc:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-skl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-icl-u3:          [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u3/igt@i915_selftest@live_gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-icl-u3/igt@i915_selftest@live_gt_pm.html
    - fi-bdw-5557u:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
    - fi-snb-2600:        [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-snb-2600/igt@i915_selftest@live_gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-snb-2600/igt@i915_selftest@live_gt_pm.html
    - fi-glk-dsi:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-icl-guc:         [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-guc/igt@i915_selftest@live_gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-icl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6700k2:      [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-n3050:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-bsw-n3050/igt@i915_selftest@live_gt_pm.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-bsw-n3050/igt@i915_selftest@live_gt_pm.html
    - fi-whl-u:           [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-whl-u/igt@i915_selftest@live_gt_pm.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-whl-u/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6770hq:      [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-guc:         [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-bxt-dsi:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6600u:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
    - fi-cml-u2:          [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
    - fi-apl-guc:         [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-8809g:       [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
    - fi-snb-2520m:       [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-snb-2520m/igt@i915_selftest@live_gt_pm.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-snb-2520m/igt@i915_selftest@live_gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_pm:
    - {fi-kbl-7560u}:     [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-7560u/igt@i915_selftest@live_gt_pm.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-kbl-7560u/igt@i915_selftest@live_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_16452 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][47] -> [INCOMPLETE][48] ([i915#45])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [PASS][49] -> [DMESG-WARN][50] ([i915#92]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6770hq/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][51] -> [DMESG-FAIL][52] ([i915#725])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-peppy:       [PASS][53] -> [DMESG-FAIL][54] ([i915#553] / [i915#725])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-hsw-peppy/igt@i915_selftest@live_blt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-hsw-peppy/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][55] -> [DMESG-FAIL][56] ([fdo#108569])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-y/igt@i915_selftest@live_execlists.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [PASS][57] -> [DMESG-WARN][58] ([CI#94] / [i915#402])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [PASS][59] -> [SKIP][60] ([fdo#109271]) +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [PASS][61] -> [DMESG-WARN][62] ([i915#106] / [i915#188])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [DMESG-WARN][63] ([CI#94] / [i915#402]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][65] ([fdo#109635] / [i915#217]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [TIMEOUT][67] ([fdo#112271] / [i915#1084]) -> [FAIL][68] ([i915#694])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#188]: https://gitlab.freedesktop.org/drm/intel/issues/188
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (51 -> 41)
------------------------------

  Missing    (10): fi-ehl-1 fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-kbl-7500u fi-cfl-8109u fi-bsw-kefka fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7874 -> Patchwork_16452

  CI-20190529: 20190529
  CI_DRM_7874: 3f234d1ab91ec2321312150116c1285bcb0a260b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5420: 497e13d2b4c1053bcd01bd15739fef55e7694a03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16452: 274f9c305cc9670894fbe7a3c7eeffe6a933d8f1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

274f9c305cc9 drm/i915/selftests: add basic selftests for rc6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16452/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
