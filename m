Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 535AB19A359
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 03:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63D36E8C0;
	Wed,  1 Apr 2020 01:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 88D6B6E8C0;
 Wed,  1 Apr 2020 01:43:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 83AE9A0118;
 Wed,  1 Apr 2020 01:43:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 01 Apr 2020 01:43:46 -0000
Message-ID: <158570542650.25625.13727773446126565040@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200401004120.408586-1-jose.souza@intel.com>
In-Reply-To: <20200401004120.408586-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/display=3A_Move_out_code_t?=
 =?utf-8?q?o_return_the_digital=5Fport_of_the_aux_ch?=
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

Series: series starting with [1/6] drm/i915/display: Move out code to return the digital_port of the aux ch
URL   : https://patchwork.freedesktop.org/series/75345/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8230 -> Patchwork_17167
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17167 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17167, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17167:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-skl-lmem/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-skl-lmem/igt@debugfs_test@read_all_entries.html
    - fi-ivb-3770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
    - fi-kbl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
    - fi-bsw-kefka:       NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
    - fi-kbl-x1275:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
    - fi-blb-e6850:       [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
    - fi-bwr-2160:        [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-bwr-2160/igt@debugfs_test@read_all_entries.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-bwr-2160/igt@debugfs_test@read_all_entries.html
    - fi-bdw-5557u:       [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-r:           [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-kbl-r/igt@debugfs_test@read_all_entries.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-r/igt@debugfs_test@read_all_entries.html
    - fi-skl-guc:         NOTRUN -> [INCOMPLETE][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-skl-guc/igt@debugfs_test@read_all_entries.html
    - fi-apl-guc:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-apl-guc/igt@debugfs_test@read_all_entries.html
    - fi-icl-y:           [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-icl-y/igt@debugfs_test@read_all_entries.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-icl-y/igt@debugfs_test@read_all_entries.html
    - fi-snb-2520m:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
    - fi-kbl-8809g:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html
    - fi-icl-u2:          [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-icl-u2/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8109u:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
    - fi-bxt-dsi:         [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8700k:       [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
    - fi-ilk-650:         NOTRUN -> [INCOMPLETE][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-ilk-650/igt@debugfs_test@read_all_entries.html
    - fi-bsw-n3050:       [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
    - fi-skl-6700k2:      NOTRUN -> [INCOMPLETE][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
    - fi-kbl-soraka:      [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
    - fi-cfl-guc:         [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
    - fi-icl-guc:         [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-icl-guc/igt@debugfs_test@read_all_entries.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-icl-guc/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-icl-u2/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][54]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-r/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-bwr-2160/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-byt-n2820/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][57]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][59]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-bxt-dsi/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-elk-e7500/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][64]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-icl-y/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][66] ([i915#1209]) -> [FAIL][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-kbl-8809g/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     NOTRUN -> [INCOMPLETE][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
    - {fi-ehl-1}:         [PASS][69] -> [INCOMPLETE][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-ehl-1/igt@debugfs_test@read_all_entries.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-ehl-1/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-ehl-1/igt@runner@aborted.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-kbl-7560u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17167 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][73] -> [INCOMPLETE][74] ([i915#283])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-cml-s/igt@debugfs_test@read_all_entries.html
    - fi-byt-n2820:       [PASS][75] -> [INCOMPLETE][76] ([i915#45])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-byt-n2820/igt@debugfs_test@read_all_entries.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-byt-n2820/igt@debugfs_test@read_all_entries.html
    - fi-elk-e7500:       [PASS][77] -> [INCOMPLETE][78] ([i915#66])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
    - fi-glk-dsi:         [PASS][79] -> [INCOMPLETE][80] ([i915#58] / [k.org#198133])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-glk-dsi/igt@debugfs_test@read_all_entries.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-glk-dsi/igt@debugfs_test@read_all_entries.html
    - fi-snb-2600:        [PASS][81] -> [INCOMPLETE][82] ([i915#82])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-snb-2600/igt@debugfs_test@read_all_entries.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-snb-2600/igt@debugfs_test@read_all_entries.html
    - fi-gdg-551:         [PASS][83] -> [INCOMPLETE][84] ([i915#172])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-gdg-551/igt@debugfs_test@read_all_entries.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-gdg-551/igt@debugfs_test@read_all_entries.html
    - fi-cml-u2:          [PASS][85] -> [INCOMPLETE][86] ([i915#283])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-cml-u2/igt@debugfs_test@read_all_entries.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-cml-u2/igt@debugfs_test@read_all_entries.html
    - fi-pnv-d510:        [PASS][87] -> [INCOMPLETE][88] ([i915#299])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/fi-pnv-d510/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (40 -> 38)
------------------------------

  Additional (7): fi-byt-j1900 fi-skl-guc fi-ilk-650 fi-hsw-4770 fi-bsw-kefka fi-kbl-7560u fi-skl-6700k2 
  Missing    (9): fi-tgl-u fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8230 -> Patchwork_17167

  CI-20190529: 20190529
  CI_DRM_8230: fa9f8453ffb88a4fc4e36d68b84a7ff9bf90f769 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5550: 98927dfde17aecaecfe67bb9853ceca326ca2b23 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17167: a4d30b0caff30e2d6c58f3619c89efce9449873c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a4d30b0caff3 drm/i915/tc/tgl: Implement TC cold sequences
98804eb04a10 drm/i915/tc/icl: Implement TC cold sequences
353532a4fb43 drm/i915/display: Split hsw_power_well_enable() into two
f5268c854061 drm/i915/display: Add intel_aux_ch_to_power_domain()
a7b982777f87 drm/i915/tc: Export tc_port_live_status_mask()
30bd6120eb62 drm/i915/display: Move out code to return the digital_port of the aux ch

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17167/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
