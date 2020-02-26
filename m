Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCE61709EE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35886E02A;
	Wed, 26 Feb 2020 20:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49C546E02A;
 Wed, 26 Feb 2020 20:41:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 422D8A882D;
 Wed, 26 Feb 2020 20:41:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Wed, 26 Feb 2020 20:41:27 -0000
Message-ID: <158274968724.21010.2759196402678855998@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226112233.9066-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200226112233.9066-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_intel=5Fplane=5Fdata=5Frate_for_min=5Fcdclk_calcul?=
 =?utf-8?q?ation_=28rev4=29?=
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

Series: drm/i915: Use intel_plane_data_rate for min_cdclk calculation (rev4)
URL   : https://patchwork.freedesktop.org/series/73718/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8008 -> Patchwork_16716
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16716 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16716, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16716:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-blb-e6850:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html
    - fi-bwr-2160:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_busy@basic@flip}:
    - fi-icl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-icl-guc/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-icl-guc/igt@kms_busy@basic@flip.html
    - fi-hsw-4770:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-hsw-4770/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-hsw-4770/igt@kms_busy@basic@flip.html
    - {fi-tgl-u}:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-u/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-tgl-u/igt@kms_busy@basic@flip.html
    - {fi-kbl-7560u}:     NOTRUN -> [INCOMPLETE][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-kbl-7560u/igt@kms_busy@basic@flip.html
    - fi-cfl-guc:         [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-cfl-guc/igt@kms_busy@basic@flip.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-cfl-guc/igt@kms_busy@basic@flip.html
    - fi-bsw-n3050:       [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-bsw-n3050/igt@kms_busy@basic@flip.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-bsw-n3050/igt@kms_busy@basic@flip.html
    - fi-skl-guc:         [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-skl-guc/igt@kms_busy@basic@flip.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-skl-guc/igt@kms_busy@basic@flip.html
    - fi-ilk-650:         [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-ilk-650/igt@kms_busy@basic@flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-ilk-650/igt@kms_busy@basic@flip.html
    - fi-ivb-3770:        [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-ivb-3770/igt@kms_busy@basic@flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-ivb-3770/igt@kms_busy@basic@flip.html
    - fi-icl-y:           [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-icl-y/igt@kms_busy@basic@flip.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-icl-y/igt@kms_busy@basic@flip.html
    - fi-hsw-4770r:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-hsw-4770r/igt@kms_busy@basic@flip.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-hsw-4770r/igt@kms_busy@basic@flip.html
    - fi-skl-6700k2:      [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-skl-6700k2/igt@kms_busy@basic@flip.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-skl-6700k2/igt@kms_busy@basic@flip.html
    - fi-icl-u2:          [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-icl-u2/igt@kms_busy@basic@flip.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-icl-u2/igt@kms_busy@basic@flip.html
    - fi-cfl-8700k:       [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-cfl-8700k/igt@kms_busy@basic@flip.html
    - {fi-tgl-dsi}:       [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-tgl-dsi/igt@kms_busy@basic@flip.html
    - fi-snb-2520m:       [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-snb-2520m/igt@kms_busy@basic@flip.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-snb-2520m/igt@kms_busy@basic@flip.html
    - fi-icl-dsi:         [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-icl-dsi/igt@kms_busy@basic@flip.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-icl-dsi/igt@kms_busy@basic@flip.html
    - fi-bdw-5557u:       [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-bdw-5557u/igt@kms_busy@basic@flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-bdw-5557u/igt@kms_busy@basic@flip.html
    - fi-kbl-x1275:       [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-kbl-x1275/igt@kms_busy@basic@flip.html
    - fi-cfl-8109u:       [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-cfl-8109u/igt@kms_busy@basic@flip.html
    - fi-kbl-7500u:       [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-kbl-7500u/igt@kms_busy@basic@flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-kbl-7500u/igt@kms_busy@basic@flip.html
    - {fi-ehl-1}:         [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-ehl-1/igt@kms_busy@basic@flip.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-ehl-1/igt@kms_busy@basic@flip.html
    - fi-skl-lmem:        [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-skl-lmem/igt@kms_busy@basic@flip.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-skl-lmem/igt@kms_busy@basic@flip.html
    - fi-kbl-r:           [PASS][50] -> [INCOMPLETE][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-kbl-r/igt@kms_busy@basic@flip.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-kbl-r/igt@kms_busy@basic@flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_16716 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][52] -> [FAIL][53] ([CI#94])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap@basic:
    - fi-tgl-y:           [PASS][54] -> [DMESG-WARN][55] ([CI#94] / [i915#402])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@gem_mmap@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-tgl-y/igt@gem_mmap@basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-pnv-d510:        [PASS][56] -> [INCOMPLETE][57] ([i915#299])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html
    - fi-gdg-551:         [PASS][58] -> [INCOMPLETE][59] ([i915#172])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [DMESG-WARN][60] ([CI#94] / [i915#402]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (52 -> 41)
------------------------------

  Additional (2): fi-kbl-7560u fi-byt-n2820 
  Missing    (13): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-skl-6770hq fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8008 -> Patchwork_16716

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16716: 78225fed01ce2584d4def8da9a541c4d689c3378 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

78225fed01ce drm/i915: Use intel_plane_data_rate for min_cdclk calculation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16716/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
