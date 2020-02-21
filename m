Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1686168A34
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 00:04:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615DB6E2B8;
	Fri, 21 Feb 2020 23:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A52E36E2A9;
 Fri, 21 Feb 2020 23:04:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D0BCA0088;
 Fri, 21 Feb 2020 23:04:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 21 Feb 2020 23:04:20 -0000
Message-ID: <158232626061.7916.3934333539065179032@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221152647.3682-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200221152647.3682-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_intel=5Fplane=5Fdata=5Frate_for_min=5Fcdclk_calcul?=
 =?utf-8?q?ation_=28rev3=29?=
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

Series: drm/i915: Use intel_plane_data_rate for min_cdclk calculation (rev3)
URL   : https://patchwork.freedesktop.org/series/73718/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7983 -> Patchwork_16664
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16664 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16664, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16664:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-gdg-551:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-gdg-551/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-gdg-551/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-bwr-2160:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-bwr-2160/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-bwr-2160/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-blb-e6850:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-blb-e6850/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-blb-e6850/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_busy@basic@flip}:
    - fi-icl-guc:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-icl-guc/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-icl-guc/igt@kms_busy@basic@flip.html
    - fi-hsw-4770:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-hsw-4770/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-hsw-4770/igt@kms_busy@basic@flip.html
    - {fi-tgl-u}:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-tgl-u/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-tgl-u/igt@kms_busy@basic@flip.html
    - fi-cfl-guc:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-cfl-guc/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-cfl-guc/igt@kms_busy@basic@flip.html
    - fi-bsw-n3050:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-bsw-n3050/igt@kms_busy@basic@flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-bsw-n3050/igt@kms_busy@basic@flip.html
    - fi-skl-guc:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-skl-guc/igt@kms_busy@basic@flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-skl-guc/igt@kms_busy@basic@flip.html
    - fi-ilk-650:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-ilk-650/igt@kms_busy@basic@flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-ilk-650/igt@kms_busy@basic@flip.html
    - fi-ivb-3770:        [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-ivb-3770/igt@kms_busy@basic@flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-ivb-3770/igt@kms_busy@basic@flip.html
    - fi-icl-y:           [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-icl-y/igt@kms_busy@basic@flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-icl-y/igt@kms_busy@basic@flip.html
    - fi-hsw-4770r:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-hsw-4770r/igt@kms_busy@basic@flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-hsw-4770r/igt@kms_busy@basic@flip.html
    - fi-skl-6700k2:      [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-skl-6700k2/igt@kms_busy@basic@flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-skl-6700k2/igt@kms_busy@basic@flip.html
    - fi-icl-u2:          [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-icl-u2/igt@kms_busy@basic@flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-icl-u2/igt@kms_busy@basic@flip.html
    - fi-hsw-peppy:       [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-hsw-peppy/igt@kms_busy@basic@flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-hsw-peppy/igt@kms_busy@basic@flip.html
    - fi-cfl-8700k:       [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-cfl-8700k/igt@kms_busy@basic@flip.html
    - fi-snb-2520m:       [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-snb-2520m/igt@kms_busy@basic@flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-snb-2520m/igt@kms_busy@basic@flip.html
    - fi-icl-dsi:         [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-icl-dsi/igt@kms_busy@basic@flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-icl-dsi/igt@kms_busy@basic@flip.html
    - fi-bsw-kefka:       [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-bsw-kefka/igt@kms_busy@basic@flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-bsw-kefka/igt@kms_busy@basic@flip.html
    - fi-bdw-5557u:       [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-bdw-5557u/igt@kms_busy@basic@flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-bdw-5557u/igt@kms_busy@basic@flip.html
    - fi-skl-6600u:       [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-skl-6600u/igt@kms_busy@basic@flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-skl-6600u/igt@kms_busy@basic@flip.html
    - fi-kbl-x1275:       [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-kbl-x1275/igt@kms_busy@basic@flip.html
    - fi-cfl-8109u:       [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-cfl-8109u/igt@kms_busy@basic@flip.html
    - fi-kbl-7500u:       [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-kbl-7500u/igt@kms_busy@basic@flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-kbl-7500u/igt@kms_busy@basic@flip.html
    - fi-skl-lmem:        [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-skl-lmem/igt@kms_busy@basic@flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-skl-lmem/igt@kms_busy@basic@flip.html
    - fi-kbl-r:           [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-kbl-r/igt@kms_busy@basic@flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-kbl-r/igt@kms_busy@basic@flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_16664 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@addfb25-yf-tiled:
    - fi-tgl-y:           [PASS][57] -> [DMESG-WARN][58] ([CI#94] / [i915#402])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-tgl-y/igt@kms_addfb_basic@addfb25-yf-tiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-tgl-y/igt@kms_addfb_basic@addfb25-yf-tiled.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][59] ([i915#45]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][61] ([CI#94]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][63] ([CI#94] / [i915#402]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-ehl-1 fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7983 -> Patchwork_16664

  CI-20190529: 20190529
  CI_DRM_7983: 85ccd7de7d75735a667c4133b0927481986a2a1c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16664: 999b67585942412202ea993b3249d342e4e45313 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

999b67585942 drm/i915: Use intel_plane_data_rate for min_cdclk calculation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16664/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
