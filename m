Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DB717E4CA
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 17:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258076E4B5;
	Mon,  9 Mar 2020 16:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD8D06E02C;
 Mon,  9 Mar 2020 16:29:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6287A00FD;
 Mon,  9 Mar 2020 16:29:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 09 Mar 2020 16:29:46 -0000
Message-ID: <158377138664.9451.5069438950536660026@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/17=5D_drm/i915=3A_Add_an_implementation?=
 =?utf-8?q?_for_i915=5Fgem=5Fww=5Fctx_locking=2C_v2=2E_=28rev2=29?=
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

Series: series starting with [01/17] drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2. (rev2)
URL   : https://patchwork.freedesktop.org/series/74387/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8097 -> Patchwork_16884
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16884 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16884, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16884:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-hsw-4770/igt@gem_close_race@basic-process.html
    - fi-hsw-peppy:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-hsw-peppy/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-hsw-peppy/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-blb-e6850:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-blb-e6850/igt@gem_exec_fence@basic-await@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-blb-e6850/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-elk-e7500:       NOTRUN -> [DMESG-WARN][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-ilk-650:         [PASS][10] -> [DMESG-WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-ilk-650/igt@gem_exec_fence@basic-await@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-ilk-650/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-ilk-650:         [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-ilk-650/igt@gem_exec_fence@basic-await@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-ilk-650/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@i915_selftest@live@mman:
    - fi-bwr-2160:        [PASS][14] -> [DMESG-WARN][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-bwr-2160/igt@i915_selftest@live@mman.html
    - fi-kbl-r:           [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-kbl-r/igt@i915_selftest@live@mman.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-r/igt@i915_selftest@live@mman.html
    - fi-icl-guc:         [PASS][18] -> [DMESG-WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-icl-guc/igt@i915_selftest@live@mman.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-icl-guc/igt@i915_selftest@live@mman.html
    - fi-skl-6770hq:      [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-skl-6770hq/igt@i915_selftest@live@mman.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-skl-6770hq/igt@i915_selftest@live@mman.html
    - fi-kbl-8809g:       [PASS][22] -> [DMESG-WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-kbl-8809g/igt@i915_selftest@live@mman.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-8809g/igt@i915_selftest@live@mman.html
    - fi-skl-lmem:        [PASS][24] -> [DMESG-WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-skl-lmem/igt@i915_selftest@live@mman.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-skl-lmem/igt@i915_selftest@live@mman.html
    - fi-cfl-8109u:       [PASS][26] -> [DMESG-WARN][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-cfl-8109u/igt@i915_selftest@live@mman.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-cfl-8109u/igt@i915_selftest@live@mman.html
    - fi-cml-u2:          [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-cml-u2/igt@i915_selftest@live@mman.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-cml-u2/igt@i915_selftest@live@mman.html
    - fi-cfl-guc:         [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-cfl-guc/igt@i915_selftest@live@mman.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-cfl-guc/igt@i915_selftest@live@mman.html
    - fi-skl-guc:         [PASS][32] -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-skl-guc/igt@i915_selftest@live@mman.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-skl-guc/igt@i915_selftest@live@mman.html
    - fi-cml-s:           [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-cml-s/igt@i915_selftest@live@mman.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-cml-s/igt@i915_selftest@live@mman.html
    - fi-skl-6700k2:      [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-skl-6700k2/igt@i915_selftest@live@mman.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-skl-6700k2/igt@i915_selftest@live@mman.html
    - fi-glk-dsi:         NOTRUN -> [DMESG-WARN][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-glk-dsi/igt@i915_selftest@live@mman.html
    - fi-icl-y:           [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-icl-y/igt@i915_selftest@live@mman.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-icl-y/igt@i915_selftest@live@mman.html
    - fi-cfl-8700k:       [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-cfl-8700k/igt@i915_selftest@live@mman.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-cfl-8700k/igt@i915_selftest@live@mman.html
    - fi-icl-u2:          [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-icl-u2/igt@i915_selftest@live@mman.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-icl-u2/igt@i915_selftest@live@mman.html
    - fi-skl-6600u:       [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-skl-6600u/igt@i915_selftest@live@mman.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-skl-6600u/igt@i915_selftest@live@mman.html
    - fi-kbl-x1275:       [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-kbl-x1275/igt@i915_selftest@live@mman.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-x1275/igt@i915_selftest@live@mman.html
    - fi-kbl-7500u:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-kbl-7500u/igt@i915_selftest@live@mman.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-7500u/igt@i915_selftest@live@mman.html
    - fi-icl-dsi:         [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-icl-dsi/igt@i915_selftest@live@mman.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-icl-dsi/igt@i915_selftest@live@mman.html
    - fi-kbl-guc:         [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-kbl-guc/igt@i915_selftest@live@mman.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-guc/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][57]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-cfl-8109u/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][59]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-guc/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-cfl-guc/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][64] ([i915#1209]) -> [FAIL][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-kbl-8809g/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@mman:
    - {fi-ehl-1}:         [PASS][66] -> [DMESG-WARN][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-ehl-1/igt@i915_selftest@live@mman.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-ehl-1/igt@i915_selftest@live@mman.html
    - {fi-tgl-u}:         [PASS][68] -> [DMESG-WARN][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-tgl-u/igt@i915_selftest@live@mman.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-tgl-u/igt@i915_selftest@live@mman.html
    - {fi-tgl-dsi}:       [PASS][70] -> [DMESG-WARN][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-tgl-dsi/igt@i915_selftest@live@mman.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-tgl-dsi/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16884 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-process:
    - fi-byt-j1900:       [PASS][73] -> [INCOMPLETE][74] ([i915#45])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-byt-j1900/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-pnv-d510:        [PASS][75] -> [INCOMPLETE][76] ([i915#299])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_render_tiled_blits@basic:
    - fi-gdg-551:         [PASS][77] -> [INCOMPLETE][78] ([i915#172])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-gdg-551/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][79] -> [DMESG-FAIL][80] ([i915#877])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - fi-bxt-dsi:         [PASS][81] -> [DMESG-WARN][82] ([i915#889])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-bxt-dsi/igt@i915_selftest@live@gt_engines.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-bxt-dsi/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-snb-2600:        [PASS][83] -> [INCOMPLETE][84] ([i915#82])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-snb-2600/igt@i915_selftest@live@gt_lrc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-snb-2600/igt@i915_selftest@live@gt_lrc.html
    - fi-bxt-dsi:         [PASS][85] -> [INCOMPLETE][86] ([fdo#103927])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@mman:
    - fi-apl-guc:         [PASS][87] -> [DMESG-WARN][88] ([i915#211])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-apl-guc/igt@i915_selftest@live@mman.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-apl-guc/igt@i915_selftest@live@mman.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][89] ([fdo#111407]) -> [FAIL][90] ([fdo#111096] / [i915#323])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (46 -> 40)
------------------------------

  Additional (3): fi-bsw-kefka fi-glk-dsi fi-elk-e7500 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8097 -> Patchwork_16884

  CI-20190529: 20190529
  CI_DRM_8097: 2e46e269a2843c5d0b6c72bfb7fa9d9913c15415 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5499: 2e23cf6f63fc6ba1d9543f8327698d6f21813cec @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16884: c72d21a3cf9cc5158fc3c901fe549ffc7eed4f75 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c72d21a3cf9c drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion
69abe3bc5db6 drm/i915: Use ww pinning for intel_context_create_request()
c8beabdebf22 drm/i915/selftests: Fix locking inversion in lrc selftest.
feaac385addd drm/i915: Dirty hack to fix selftests locking inversion
0ad82c88a73a drm/i915: Convert i915_perf to ww locking as well
e1bf61bde5c0 drm/i915: Kill last user of intel_context_create_request outside of selftests
fb5317b3dbd4 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
b825cd024f91 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
77b62e00cde5 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
8f88e8dab92d drm/i915: Pin engine before pinning all objects, v3.
164cef249306 drm/i915: Nuke arguments to eb_pin_engine
a0b296192afc drm/i915: Add ww context handling to context_barrier_task
22c3999407bc drm/i915: Use ww locking in intel_renderstate.
4e33a47c9b1d drm/i915: Use per object locking in execbuf, v5.
e73c2a91b83f drm/i915: Parse command buffer earlier in eb_relocate(slow)
fb5f8b0f4bd8 drm/i915: Remove locking from i915_gem_object_prepare_read/write
a07375e972da drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
