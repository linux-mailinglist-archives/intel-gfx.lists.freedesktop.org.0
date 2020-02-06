Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D994C1541B1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 11:19:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 611E36FA1E;
	Thu,  6 Feb 2020 10:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B7AC6FA18;
 Thu,  6 Feb 2020 10:19:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 818D5A0094;
 Thu,  6 Feb 2020 10:19:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 10:19:07 -0000
Message-ID: <158098434750.14482.4381570924580921644@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <158096002290.14483.7984505581902713018@emeril.freedesktop.org>
In-Reply-To: <158096002290.14483.7984505581902713018@emeril.freedesktop.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Trim_blitter_block_size_=28rev2=29?=
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

Series: drm/i915/selftests: Trim blitter block size (rev2)
URL   : https://patchwork.freedesktop.org/series/73066/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7874 -> Patchwork_16454
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16454 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16454, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16454:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_blt:
    - fi-whl-u:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-whl-u/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-whl-u/igt@i915_selftest@live_blt.html
    - fi-skl-6770hq:      [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6770hq/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-skl-6770hq/igt@i915_selftest@live_blt.html
    - fi-kbl-7500u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-7500u/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-kbl-7500u/igt@i915_selftest@live_blt.html
    - fi-kbl-guc:         [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-guc/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-kbl-guc/igt@i915_selftest@live_blt.html
    - fi-kbl-8809g:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-8809g/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-kbl-8809g/igt@i915_selftest@live_blt.html
    - fi-icl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-guc/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-icl-guc/igt@i915_selftest@live_blt.html
    - fi-kbl-r:           [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-r/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-kbl-r/igt@i915_selftest@live_blt.html
    - fi-cfl-8700k:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cfl-8700k/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-cfl-8700k/igt@i915_selftest@live_blt.html
    - fi-icl-u2:          [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u2/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-icl-u2/igt@i915_selftest@live_blt.html
    - fi-kbl-x1275:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-x1275/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-kbl-x1275/igt@i915_selftest@live_blt.html
    - fi-icl-dsi:         [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-dsi/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-icl-dsi/igt@i915_selftest@live_blt.html
    - fi-skl-guc:         [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-guc/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-skl-guc/igt@i915_selftest@live_blt.html
    - fi-cfl-guc:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cfl-guc/igt@i915_selftest@live_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-cfl-guc/igt@i915_selftest@live_blt.html
    - fi-icl-y:           [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-y/igt@i915_selftest@live_blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-icl-y/igt@i915_selftest@live_blt.html
    - fi-cml-u2:          [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cml-u2/igt@i915_selftest@live_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-cml-u2/igt@i915_selftest@live_blt.html
    - fi-skl-6700k2:      [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6700k2/igt@i915_selftest@live_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-skl-6700k2/igt@i915_selftest@live_blt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_blt:
    - {fi-ehl-1}:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-ehl-1/igt@i915_selftest@live_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-ehl-1/igt@i915_selftest@live_blt.html
    - {fi-tgl-u}:         [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-tgl-u/igt@i915_selftest@live_blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-tgl-u/igt@i915_selftest@live_blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_16454 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-icl-u3:          [PASS][37] -> [INCOMPLETE][38] ([i915#1090])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u3/igt@gem_exec_suspend@basic-s0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-icl-u3/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][39] -> [DMESG-FAIL][40] ([fdo#108569])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-y/igt@i915_selftest@live_execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][41] -> [DMESG-FAIL][42] ([i915#1052])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u2:          [PASS][43] -> [INCOMPLETE][44] ([fdo#108569])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u2/igt@i915_selftest@live_hangcheck.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-icl-u2/igt@i915_selftest@live_hangcheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][45] -> [FAIL][46] ([i915#217] / [i915#976])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][47] ([i915#694]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][49] ([fdo#109635] / [i915#217]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][51] ([fdo#111096] / [i915#323]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [TIMEOUT][53] ([fdo#112271] / [i915#1084]) -> [FAIL][54] ([i915#694])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
    - fi-byt-n2820:       [TIMEOUT][55] ([fdo#112271] / [i915#1084]) -> [FAIL][56] ([i915#694])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][57] ([i915#722]) -> [DMESG-FAIL][58] ([i915#1052])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1090]: https://gitlab.freedesktop.org/drm/intel/issues/1090
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (51 -> 41)
------------------------------

  Missing    (10): fi-bdw-5557u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-bsw-kefka fi-kbl-7560u fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7874 -> Patchwork_16454

  CI-20190529: 20190529
  CI_DRM_7874: 3f234d1ab91ec2321312150116c1285bcb0a260b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5420: 497e13d2b4c1053bcd01bd15739fef55e7694a03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16454: c015b6f11a83afdc8b363957ca8aaa726203cf7b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c015b6f11a83 drm/i915/selftests: Trim blitter block size

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16454/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
