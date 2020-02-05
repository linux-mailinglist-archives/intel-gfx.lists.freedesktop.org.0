Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F6D1533FD
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 16:37:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 603236E9BC;
	Wed,  5 Feb 2020 15:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E01E6E9BC;
 Wed,  5 Feb 2020 15:37:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 60ABAA0119;
 Wed,  5 Feb 2020 15:37:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Wed, 05 Feb 2020 15:37:03 -0000
Message-ID: <158091702339.17320.851348057603819858@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205105749.1769982-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200205105749.1769982-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_add_basic_selftests_for_rc6_=28rev5=29?=
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

Series: drm/i915/selftests: add basic selftests for rc6 (rev5)
URL   : https://patchwork.freedesktop.org/series/69825/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7869 -> Patchwork_16431
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16431 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16431, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16431:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-cfl-8700k:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-r:           [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
    - fi-byt-j1900:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-byt-j1900/igt@i915_selftest@live_gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-byt-j1900/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-cfl-8109u/igt@i915_selftest@live_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-cfl-8109u/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-nick:        [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-bsw-nick/igt@i915_selftest@live_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-bsw-nick/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-7500u:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-x1275:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-guc:         [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-skl-guc:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-icl-u3:          NOTRUN -> [DMESG-FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-icl-u3/igt@i915_selftest@live_gt_pm.html
    - fi-snb-2600:        [PASS][20] -> [DMESG-FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-snb-2600/igt@i915_selftest@live_gt_pm.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-snb-2600/igt@i915_selftest@live_gt_pm.html
    - fi-glk-dsi:         [PASS][22] -> [DMESG-FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-kefka:       [PASS][24] -> [DMESG-FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-bsw-kefka/igt@i915_selftest@live_gt_pm.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-bsw-kefka/igt@i915_selftest@live_gt_pm.html
    - fi-byt-n2820:       NOTRUN -> [DMESG-FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-byt-n2820/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6700k2:      [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
    - fi-whl-u:           [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-whl-u/igt@i915_selftest@live_gt_pm.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-whl-u/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6770hq:      [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-guc:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-bxt-dsi:         [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6600u:       [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
    - fi-cml-u2:          [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
    - fi-apl-guc:         [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-8809g:       [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
    - fi-snb-2520m:       NOTRUN -> [DMESG-FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-snb-2520m/igt@i915_selftest@live_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_16431 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][46] -> [TIMEOUT][47] ([fdo#112271] / [i915#1084])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][48] -> [DMESG-WARN][49] ([CI#94] / [i915#402]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][50] -> [DMESG-FAIL][51] ([i915#553] / [i915#725])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][52] -> [DMESG-FAIL][53] ([fdo#108569])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-icl-y/igt@i915_selftest@live_execlists.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][54] -> [DMESG-FAIL][55] ([i915#722])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [PASS][56] -> [TIMEOUT][57] ([fdo#112271])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][58] ([i915#45]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-icl-u3:          [INCOMPLETE][60] -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-icl-u3/igt@gem_exec_parallel@fds.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-icl-u3/igt@gem_exec_parallel@fds.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][62] ([CI#94] / [i915#402]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [DMESG-WARN][64] ([i915#92]) -> [PASS][65] +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-skl-6770hq/igt@i915_module_load@reload.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [INCOMPLETE][66] ([i915#392]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-bsw-nick/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][68] ([i915#553]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [FAIL][70] ([fdo#109635] / [i915#217]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [SKIP][72] ([fdo#109271]) -> [PASS][73] +4 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-skl-6770hq:      [DMESG-WARN][74] ([i915#106] / [i915#188]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][76] ([fdo#111096] / [i915#323]) -> [FAIL][77] ([fdo#111407])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#188]: https://gitlab.freedesktop.org/drm/intel/issues/188
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (49 -> 42)
------------------------------

  Additional (1): fi-snb-2520m 
  Missing    (8): fi-bdw-5557u fi-hsw-4200u fi-bsw-n3050 fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7869 -> Patchwork_16431

  CI-20190529: 20190529
  CI_DRM_7869: db0579be255412f38a450c3c577f8d10f1195034 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16431: 342c89d084c1ce19884b1b7c5141f91ccd1ca9d4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

342c89d084c1 drm/i915/selftests: add basic selftests for rc6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16431/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
