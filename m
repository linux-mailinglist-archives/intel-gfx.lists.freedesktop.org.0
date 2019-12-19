Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C17126DDA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 20:18:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 234946E3C7;
	Thu, 19 Dec 2019 19:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF3926E3C1;
 Thu, 19 Dec 2019 19:17:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A64D7A0087;
 Thu, 19 Dec 2019 19:17:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 19 Dec 2019 19:17:57 -0000
Message-ID: <157678307765.26201.1949096419847442713@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUGVy?=
 =?utf-8?q?_client_engine_busyness_=28rev2=29?=
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

Series: Per client engine busyness (rev2)
URL   : https://patchwork.freedesktop.org/series/70977/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7608 -> Patchwork_15846
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15846 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15846, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15846:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7500u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html
    - fi-snb-2520m:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
    - fi-skl-lmem:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-skl-lmem/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-skl-lmem/igt@debugfs_test@read_all_entries.html
    - fi-kbl-guc:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
    - fi-bsw-kefka:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
    - fi-blb-e6850:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
    - fi-bwr-2160:        [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-bwr-2160/igt@debugfs_test@read_all_entries.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-bwr-2160/igt@debugfs_test@read_all_entries.html
    - fi-bdw-5557u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-bdw-5557u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-r:           [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-kbl-r/igt@debugfs_test@read_all_entries.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-r/igt@debugfs_test@read_all_entries.html
    - fi-skl-guc:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-skl-guc/igt@debugfs_test@read_all_entries.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-skl-guc/igt@debugfs_test@read_all_entries.html
    - fi-kbl-8809g:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html
    - fi-bsw-nick:        [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
    - fi-skl-6600u:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-skl-6600u/igt@debugfs_test@read_all_entries.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-skl-6600u/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8700k:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
    - fi-bsw-n3050:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
    - fi-skl-6700k2:      [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html
    - fi-kbl-soraka:      [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
    - fi-cfl-guc:         [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-cfl-guc/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-pnv-d510/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-hsw-peppy/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][42]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-7500u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-bxt-dsi/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-blb-e6850/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-cfl-8700k/igt@runner@aborted.html
    - fi-hsw-4770r:       NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-hsw-4770r/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-r/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][54]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-byt-n2820/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-snb-2600/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-elk-e7500/igt@runner@aborted.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][57] ([i915#62] / [i915#92]) -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-byt-j1900:       [FAIL][59] ([i915#816]) -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-byt-j1900/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-byt-j1900/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][61] ([i915#858]) -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-kbl-8809g/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-kbl-8809g/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15846 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][63] -> [INCOMPLETE][64] ([i915#283])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-cml-s/igt@debugfs_test@read_all_entries.html
    - fi-glk-dsi:         [PASS][65] -> [INCOMPLETE][66] ([i915#58] / [k.org#198133])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-glk-dsi/igt@debugfs_test@read_all_entries.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-glk-dsi/igt@debugfs_test@read_all_entries.html
    - fi-hsw-peppy:       [PASS][67] -> [INCOMPLETE][68] ([i915#435])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-hsw-peppy/igt@debugfs_test@read_all_entries.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-hsw-peppy/igt@debugfs_test@read_all_entries.html
    - fi-icl-u3:          [PASS][69] -> [INCOMPLETE][70] ([i915#140])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-icl-u3/igt@debugfs_test@read_all_entries.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-icl-u3/igt@debugfs_test@read_all_entries.html
    - fi-gdg-551:         [PASS][71] -> [INCOMPLETE][72] ([i915#172])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-gdg-551/igt@debugfs_test@read_all_entries.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-gdg-551/igt@debugfs_test@read_all_entries.html
    - fi-icl-u2:          [PASS][73] -> [INCOMPLETE][74] ([i915#140])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-icl-u2/igt@debugfs_test@read_all_entries.html
    - fi-pnv-d510:        [PASS][75] -> [INCOMPLETE][76] ([i915#299])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
    - fi-ilk-650:         [PASS][77] -> [INCOMPLETE][78] ([i915#435])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-ilk-650/igt@debugfs_test@read_all_entries.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-ilk-650/igt@debugfs_test@read_all_entries.html
    - fi-byt-n2820:       [PASS][79] -> [INCOMPLETE][80] ([i915#45])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-byt-n2820/igt@debugfs_test@read_all_entries.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-byt-n2820/igt@debugfs_test@read_all_entries.html
    - fi-elk-e7500:       [PASS][81] -> [INCOMPLETE][82] ([i915#66])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
    - fi-snb-2600:        [PASS][83] -> [INCOMPLETE][84] ([i915#82])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-snb-2600/igt@debugfs_test@read_all_entries.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-snb-2600/igt@debugfs_test@read_all_entries.html
    - fi-hsw-4770r:       [PASS][85] -> [INCOMPLETE][86] ([i915#435])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-hsw-4770r/igt@debugfs_test@read_all_entries.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-hsw-4770r/igt@debugfs_test@read_all_entries.html
    - fi-apl-guc:         [PASS][87] -> [INCOMPLETE][88] ([fdo#103927])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-apl-guc/igt@debugfs_test@read_all_entries.html
    - fi-icl-y:           [PASS][89] -> [INCOMPLETE][90] ([i915#140])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-icl-y/igt@debugfs_test@read_all_entries.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-icl-y/igt@debugfs_test@read_all_entries.html
    - fi-byt-j1900:       [PASS][91] -> [INCOMPLETE][92] ([i915#45])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-byt-j1900/igt@debugfs_test@read_all_entries.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-byt-j1900/igt@debugfs_test@read_all_entries.html
    - fi-bxt-dsi:         [PASS][93] -> [INCOMPLETE][94] ([fdo#103927])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-bxt-dsi/igt@debugfs_test@read_all_entries.html
    - fi-icl-dsi:         [PASS][95] -> [INCOMPLETE][96] ([i915#140])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-icl-dsi/igt@debugfs_test@read_all_entries.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-icl-dsi/igt@debugfs_test@read_all_entries.html
    - fi-cml-u2:          [PASS][97] -> [INCOMPLETE][98] ([i915#283])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-cml-u2/igt@debugfs_test@read_all_entries.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-cml-u2/igt@debugfs_test@read_all_entries.html
    - fi-hsw-4770:        [PASS][99] -> [INCOMPLETE][100] ([i915#435])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
    - fi-icl-guc:         [PASS][101] -> [INCOMPLETE][102] ([i915#140])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-icl-guc/igt@debugfs_test@read_all_entries.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-icl-guc/igt@debugfs_test@read_all_entries.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][103] ([fdo#110943] / [fdo#111093]) -> [FAIL][104] ([fdo#111093] / [i915#338])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-icl-guc/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-icl-guc/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][105] ([fdo#111764] / [i915#577]) -> [FAIL][106] ([fdo#111893] / [i915#577])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-cml-s/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111893]: https://bugs.freedesktop.org/show_bug.cgi?id=111893
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#338]: https://gitlab.freedesktop.org/drm/intel/issues/338
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (51 -> 44)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7608 -> Patchwork_15846

  CI-20190529: 20190529
  CI_DRM_7608: f21c4c7ff253121180f4399271e55b81f06a3989 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15846: c6adb62d258766c022a8f3773a005191c8fc9a08 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c6adb62d2587 drm/i915: Expose per-engine client busyness
c17f2c454f61 drm/i915: Contexts can use struct pid stored in the client
86c433d16fd4 drm/i915: Track all user contexts per client
de1d52278f7f drm/i915: Track per-context engine busyness
a81f7132f3ac drm/i915: Update client name on context create
8b12b7cce4b8 drm/i915: Expose list of clients in sysfs
884f76e9c8c3 drm/i915: Reference count struct drm_i915_file_private
c0a00684578c drm/i915: Switch context id allocation directoy to xarray

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15846/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
