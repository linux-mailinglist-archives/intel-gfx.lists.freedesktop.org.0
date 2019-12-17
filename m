Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F41A122C6F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 14:00:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D826E0CD;
	Tue, 17 Dec 2019 13:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C38316E9D3;
 Tue, 17 Dec 2019 13:00:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB4AAA0BC6;
 Tue, 17 Dec 2019 13:00:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Tue, 17 Dec 2019 13:00:15 -0000
Message-ID: <157658761576.21846.16936136899356498570@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217115750.11938-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191217115750.11938-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Add_lmem_fault_handler?=
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

Series: series starting with [1/2] drm/i915: Add lmem fault handler
URL   : https://patchwork.freedesktop.org/series/71051/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7580 -> Patchwork_15810
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15810 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15810, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15810:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_mman:
    - fi-ilk-650:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-ilk-650/igt@i915_selftest@live_mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-ilk-650/igt@i915_selftest@live_mman.html
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-bsw-n3050/igt@i915_selftest@live_mman.html
    - fi-ivb-3770:        [PASS][4] -> [DMESG-FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-ivb-3770/igt@i915_selftest@live_mman.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-ivb-3770/igt@i915_selftest@live_mman.html
    - fi-hsw-4770r:       [PASS][6] -> [DMESG-FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-hsw-4770r/igt@i915_selftest@live_mman.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-hsw-4770r/igt@i915_selftest@live_mman.html
    - fi-bsw-kefka:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-bsw-kefka/igt@i915_selftest@live_mman.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-bsw-kefka/igt@i915_selftest@live_mman.html
    - fi-blb-e6850:       [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-blb-e6850/igt@i915_selftest@live_mman.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-blb-e6850/igt@i915_selftest@live_mman.html
    - fi-bwr-2160:        [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-bwr-2160/igt@i915_selftest@live_mman.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-bwr-2160/igt@i915_selftest@live_mman.html
    - fi-kbl-8809g:       [PASS][14] -> [DMESG-FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-kbl-8809g/igt@i915_selftest@live_mman.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-kbl-8809g/igt@i915_selftest@live_mman.html
    - fi-bsw-nick:        [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-bsw-nick/igt@i915_selftest@live_mman.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-bsw-nick/igt@i915_selftest@live_mman.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-pnv-d510/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-bxt-dsi/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-bsw-n3050/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-blb-e6850/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-bsw-nick/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-elk-e7500/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15810 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-tgl-y:           [PASS][26] -> [INCOMPLETE][27] ([fdo#111593])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-tgl-y/igt@gem_exec_gttfill@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-tgl-y/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][28] -> [DMESG-FAIL][29] ([i915#725])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [PASS][30] -> [DMESG-FAIL][31] ([i915#725])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][32] -> [INCOMPLETE][33] ([i915#694])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-4770r:       [PASS][34] -> [DMESG-FAIL][35] ([i915#722])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [PASS][36] -> [INCOMPLETE][37] ([fdo#103927])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-bxt-dsi/igt@i915_selftest@live_mman.html
    - fi-glk-dsi:         [PASS][38] -> [INCOMPLETE][39] ([i915#58] / [k.org#198133])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-glk-dsi/igt@i915_selftest@live_mman.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-glk-dsi/igt@i915_selftest@live_mman.html
    - fi-byt-j1900:       [PASS][40] -> [INCOMPLETE][41] ([i915#45])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-byt-j1900/igt@i915_selftest@live_mman.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-byt-j1900/igt@i915_selftest@live_mman.html
    - fi-elk-e7500:       [PASS][42] -> [INCOMPLETE][43] ([i915#66])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-elk-e7500/igt@i915_selftest@live_mman.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-elk-e7500/igt@i915_selftest@live_mman.html
    - fi-apl-guc:         [PASS][44] -> [INCOMPLETE][45] ([fdo#103927])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-apl-guc/igt@i915_selftest@live_mman.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-apl-guc/igt@i915_selftest@live_mman.html
    - fi-pnv-d510:        [PASS][46] -> [INCOMPLETE][47] ([i915#299])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-pnv-d510/igt@i915_selftest@live_mman.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-pnv-d510/igt@i915_selftest@live_mman.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][48] -> [FAIL][49] ([fdo#111407])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-icl-u2:          [PASS][50] -> [INCOMPLETE][51] ([i915#140])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-icl-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-icl-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][52] ([i915#816]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][54] ([i915#553] / [i915#725]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][56] ([i915#424]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][58] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][59] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][60] ([i915#62] / [i915#92]) -> [DMESG-WARN][61] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][62] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][63] ([i915#62] / [i915#92]) +4 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@runner@aborted:
    - fi-byt-n2820:       [FAIL][64] ([i915#816]) -> [FAIL][65] ([fdo#111249])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/fi-byt-n2820/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/fi-byt-n2820/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111249]: https://bugs.freedesktop.org/show_bug.cgi?id=111249
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (51 -> 47)
------------------------------

  Additional (3): fi-whl-u fi-icl-u3 fi-bsw-n3050 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7580 -> Patchwork_15810

  CI-20190529: 20190529
  CI_DRM_7580: 4154d505504bd58e3cc90d27f7221c3d29045b51 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15810: ded079f2d6fcfa3e30c5a7ce63450651bf7cd3dd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ded079f2d6fc drm/i915/selftests: Add selftest for memory region PF handling
21b92ebb9c01 drm/i915: Add lmem fault handler

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15810/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
