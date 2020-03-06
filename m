Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A36B617C72F
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 21:41:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E50C6E21F;
	Fri,  6 Mar 2020 20:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFD2D6E21F;
 Fri,  6 Mar 2020 20:41:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E82DFA3ECB;
 Fri,  6 Mar 2020 20:41:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 06 Mar 2020 20:41:46 -0000
Message-ID: <158352730692.3080.1585136847138699531@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/17=5D_drm/i915=3A_Add_an_implementation?=
 =?utf-8?q?_for_i915=5Fgem=5Fww=5Fctx_locking=2C_v2=2E?=
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

Series: series starting with [01/17] drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
URL   : https://patchwork.freedesktop.org/series/74387/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8085 -> Patchwork_16861
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16861 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16861, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16861:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-hsw-4770/igt@gem_close_race@basic-process.html
    - fi-hsw-4770r:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-hsw-4770r/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-hsw-4770r/igt@gem_close_race@basic-process.html
    - fi-hsw-peppy:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-hsw-peppy/igt@gem_close_race@basic-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-hsw-peppy/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-blb-e6850:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-blb-e6850/igt@gem_exec_fence@basic-await@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-blb-e6850/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-elk-e7500:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-ilk-650:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-ilk-650/igt@gem_exec_fence@basic-await@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-ilk-650/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-ilk-650:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-ilk-650/igt@gem_exec_fence@basic-await@vcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-ilk-650/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-snb-2520m:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-snb-2520m/igt@i915_selftest@live@gt_lrc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-snb-2520m/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@requests:
    - fi-skl-6770hq:      [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-skl-6770hq/igt@i915_selftest@live@requests.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-skl-6770hq/igt@i915_selftest@live@requests.html
    - fi-cfl-guc:         [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-cfl-guc/igt@i915_selftest@live@requests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-cfl-guc/igt@i915_selftest@live@requests.html
    - fi-kbl-soraka:      [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-kbl-soraka/igt@i915_selftest@live@requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-soraka/igt@i915_selftest@live@requests.html
    - fi-skl-6600u:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-skl-6600u/igt@i915_selftest@live@requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-skl-6600u/igt@i915_selftest@live@requests.html
    - fi-cml-u2:          [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-cml-u2/igt@i915_selftest@live@requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-cml-u2/igt@i915_selftest@live@requests.html
    - fi-kbl-8809g:       [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-kbl-8809g/igt@i915_selftest@live@requests.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-8809g/igt@i915_selftest@live@requests.html
    - fi-cfl-8700k:       [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-cfl-8700k/igt@i915_selftest@live@requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-cfl-8700k/igt@i915_selftest@live@requests.html
    - fi-kbl-r:           [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-kbl-r/igt@i915_selftest@live@requests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-r/igt@i915_selftest@live@requests.html
    - fi-kbl-x1275:       [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-kbl-x1275/igt@i915_selftest@live@requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-x1275/igt@i915_selftest@live@requests.html
    - fi-skl-guc:         [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-skl-guc/igt@i915_selftest@live@requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-skl-guc/igt@i915_selftest@live@requests.html
    - fi-bdw-5557u:       [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-bdw-5557u/igt@i915_selftest@live@requests.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-bdw-5557u/igt@i915_selftest@live@requests.html
    - fi-bwr-2160:        [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-bwr-2160/igt@i915_selftest@live@requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-bwr-2160/igt@i915_selftest@live@requests.html
    - fi-glk-dsi:         [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-glk-dsi/igt@i915_selftest@live@requests.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-glk-dsi/igt@i915_selftest@live@requests.html
    - fi-skl-6700k2:      [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-skl-6700k2/igt@i915_selftest@live@requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-skl-6700k2/igt@i915_selftest@live@requests.html
    - fi-cml-s:           [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-cml-s/igt@i915_selftest@live@requests.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-cml-s/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-snb-2520m:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-snb-2520m/igt@i915_selftest@live@sanitycheck.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-snb-2520m/igt@i915_selftest@live@sanitycheck.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-cfl-8700k/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][54]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-snb-2520m/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][57]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-soraka/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][59]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-cfl-guc/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][62] ([i915#1209]) -> [FAIL][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-kbl-8809g/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@requests:
    - {fi-kbl-7560u}:     [PASS][64] -> [DMESG-WARN][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-kbl-7560u/igt@i915_selftest@live@requests.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-7560u/igt@i915_selftest@live@requests.html
    - {fi-tgl-u}:         [PASS][66] -> [DMESG-WARN][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-tgl-u/igt@i915_selftest@live@requests.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-tgl-u/igt@i915_selftest@live@requests.html
    - {fi-tgl-dsi}:       NOTRUN -> [DMESG-WARN][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-tgl-dsi/igt@i915_selftest@live@requests.html
    - {fi-ehl-1}:         [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-ehl-1/igt@i915_selftest@live@requests.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-ehl-1/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-ehl-1/igt@runner@aborted.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-7560u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16861 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-process:
    - fi-byt-j1900:       [PASS][73] -> [INCOMPLETE][74] ([i915#45])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-byt-j1900/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-pnv-d510:        [PASS][75] -> [INCOMPLETE][76] ([i915#299])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-elk-e7500:       [PASS][77] -> [INCOMPLETE][78] ([i915#66])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_render_tiled_blits@basic:
    - fi-gdg-551:         [PASS][79] -> [INCOMPLETE][80] ([i915#172])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-gdg-551/igt@gem_render_tiled_blits@basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-guc:         [PASS][81] -> [INCOMPLETE][82] ([i915#1390])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-kbl-guc/igt@i915_module_load@reload.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-kbl-guc/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@requests:
    - fi-bxt-dsi:         [PASS][83] -> [DMESG-WARN][84] ([i915#211])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-bxt-dsi/igt@i915_selftest@live@requests.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-bxt-dsi/igt@i915_selftest@live@requests.html
    - fi-icl-dsi:         [PASS][85] -> [DMESG-WARN][86] ([fdo#109644] / [fdo#110464])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-icl-dsi/igt@i915_selftest@live@requests.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-icl-dsi/igt@i915_selftest@live@requests.html
    - fi-apl-guc:         [PASS][87] -> [DMESG-WARN][88] ([i915#211])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-apl-guc/igt@i915_selftest@live@requests.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-apl-guc/igt@i915_selftest@live@requests.html
    - fi-icl-u2:          [PASS][89] -> [DMESG-WARN][90] ([fdo#109644] / [fdo#110464])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-icl-u2/igt@i915_selftest@live@requests.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-icl-u2/igt@i915_selftest@live@requests.html
    - fi-icl-y:           [PASS][91] -> [DMESG-WARN][92] ([fdo#109644] / [fdo#110464])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-icl-y/igt@i915_selftest@live@requests.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-icl-y/igt@i915_selftest@live@requests.html
    - fi-tgl-y:           [PASS][93] -> [DMESG-WARN][94] ([CI#94])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-tgl-y/igt@i915_selftest@live@requests.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-tgl-y/igt@i915_selftest@live@requests.html
    - fi-snb-2600:        [PASS][95] -> [DMESG-WARN][96] ([i915#478])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-snb-2600/igt@i915_selftest@live@requests.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-snb-2600/igt@i915_selftest@live@requests.html
    - fi-icl-guc:         [PASS][97] -> [DMESG-WARN][98] ([fdo#109644] / [fdo#110464])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-icl-guc/igt@i915_selftest@live@requests.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-icl-guc/igt@i915_selftest@live@requests.html
    - fi-bsw-n3050:       [PASS][99] -> [DMESG-WARN][100] ([i915#211])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-bsw-n3050/igt@i915_selftest@live@requests.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-bsw-n3050/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][101] -> [SKIP][102] ([fdo#109271]) +24 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@prime_vgem@basic-wait-default:
    - fi-tgl-y:           [PASS][103] -> [DMESG-WARN][104] ([CI#94] / [i915#402]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-tgl-y/igt@prime_vgem@basic-wait-default.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-tgl-y/igt@prime_vgem@basic-wait-default.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_contexts:
    - fi-snb-2520m:       [DMESG-WARN][105] -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-snb-2520m/igt@i915_selftest@live@gt_contexts.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-snb-2520m/igt@i915_selftest@live@gt_contexts.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [DMESG-WARN][107] ([CI#94] / [i915#402]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
  [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1390]: https://gitlab.freedesktop.org/drm/intel/issues/1390
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66


Participating hosts (51 -> 42)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-cfl-8109u fi-bsw-kefka fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8085 -> Patchwork_16861

  CI-20190529: 20190529
  CI_DRM_8085: f731492964aa6510672f43292d4b2216b73eddeb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5496: 00a8e400876f2c27f62ed7d418be6b55738a4ea6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16861: 92c3b116266e9edde27149e347988411a5b2f135 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

92c3b116266e drm/i915: Move i915_vma_lock in the live selftest to avoid lock inversion
0bca9be4412a drm/i915: Use ww pinning for intel_context_create_request()
7c001d1427b9 drm/i915/selftests: Fix locking inversion in lrc selftest.
5ea034e6c8df drm/i915: Dirty hack to fix selftests locking inversion
2c054c20d39b drm/i915: Convert i915_perf to ww locking as well
8545beb049f5 drm/i915: Kill last user of intel_context_create_request outside of selftests
020d4e2030bb drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
0259f9dcf820 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
205d4811461d drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
9d697baac762 drm/i915: Pin engine before pinning all objects, v3.
af2dc1130f6d drm/i915: Nuke arguments to eb_pin_engine
bfc213d5a176 drm/i915: Add ww context handling to context_barrier_task
28a1ce0b43d8 drm/i915: Use ww locking in intel_renderstate.
b456e7ce4ec6 drm/i915: Use per object locking in execbuf, v5.
70a46e25ba91 drm/i915: Parse command buffer earlier in eb_relocate(slow)
25c12f5343fc drm/i915: Remove locking from i915_gem_object_prepare_read/write
eb9b1e99590c drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16861/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
