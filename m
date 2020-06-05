Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B371EFA32
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 16:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595196E908;
	Fri,  5 Jun 2020 14:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B2CE66E908;
 Fri,  5 Jun 2020 14:15:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1954A00E6;
 Fri,  5 Jun 2020 14:15:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 05 Jun 2020 14:15:02 -0000
Message-ID: <159136650265.18507.16407660034706237133@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZG1h?=
 =?utf-8?q?-fence_lockdep_annotations=2C_round_2_=28rev2=29?=
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

Series: dma-fence lockdep annotations, round 2 (rev2)
URL   : https://patchwork.freedesktop.org/series/77986/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8590 -> Patchwork_17886
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17886 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17886, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17886:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-byt-j1900:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-byt-j1900/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-hsw-4770/igt@gem_close_race@basic-process.html
    - fi-byt-n2820:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-byt-n2820/igt@gem_close_race@basic-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-byt-n2820/igt@gem_close_race@basic-process.html

  * igt@kms_busy@basic@flip:
    - fi-snb-2600:        [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-snb-2600/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-snb-2600/igt@kms_busy@basic@flip.html
    - fi-snb-2520m:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-snb-2520m/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-snb-2520m/igt@kms_busy@basic@flip.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-ilk-650:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-cfl-8700k/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-tgl-y/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-icl-u2/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-bdw-5557u/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-byt-n2820/igt@runner@aborted.html
    - fi-icl-guc:         NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-icl-guc/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-snb-2600/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-whl-u/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-bxt-dsi/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-byt-j1900/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-icl-y/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_busy@busy@all}:
    - fi-kbl-x1275:       [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-kbl-x1275/igt@gem_busy@busy@all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-kbl-x1275/igt@gem_busy@busy@all.html
    - fi-cfl-8700k:       [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-cfl-8700k/igt@gem_busy@busy@all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-cfl-8700k/igt@gem_busy@busy@all.html
    - fi-tgl-y:           [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-tgl-y/igt@gem_busy@busy@all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-tgl-y/igt@gem_busy@busy@all.html
    - fi-skl-6600u:       [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-skl-6600u/igt@gem_busy@busy@all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-skl-6600u/igt@gem_busy@busy@all.html
    - fi-cfl-8109u:       [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-cfl-8109u/igt@gem_busy@busy@all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-cfl-8109u/igt@gem_busy@busy@all.html
    - fi-icl-u2:          [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-icl-u2/igt@gem_busy@busy@all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-icl-u2/igt@gem_busy@busy@all.html
    - {fi-tgl-dsi}:       [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-tgl-dsi/igt@gem_busy@busy@all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-tgl-dsi/igt@gem_busy@busy@all.html
    - fi-glk-dsi:         [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-glk-dsi/igt@gem_busy@busy@all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-glk-dsi/igt@gem_busy@busy@all.html
    - fi-kbl-8809g:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-kbl-8809g/igt@gem_busy@busy@all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-kbl-8809g/igt@gem_busy@busy@all.html
    - fi-skl-lmem:        [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-skl-lmem/igt@gem_busy@busy@all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-skl-lmem/igt@gem_busy@busy@all.html
    - fi-kbl-r:           [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-kbl-r/igt@gem_busy@busy@all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-kbl-r/igt@gem_busy@busy@all.html
    - fi-bdw-5557u:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-bdw-5557u/igt@gem_busy@busy@all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-bdw-5557u/igt@gem_busy@busy@all.html
    - fi-icl-guc:         [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-icl-guc/igt@gem_busy@busy@all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-icl-guc/igt@gem_busy@busy@all.html
    - fi-kbl-soraka:      [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-kbl-soraka/igt@gem_busy@busy@all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-kbl-soraka/igt@gem_busy@busy@all.html
    - {fi-ehl-1}:         [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-ehl-1/igt@gem_busy@busy@all.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-ehl-1/igt@gem_busy@busy@all.html
    - fi-kbl-7500u:       [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-kbl-7500u/igt@gem_busy@busy@all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-kbl-7500u/igt@gem_busy@busy@all.html
    - fi-kbl-guc:         [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-kbl-guc/igt@gem_busy@busy@all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-kbl-guc/igt@gem_busy@busy@all.html
    - fi-whl-u:           [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-whl-u/igt@gem_busy@busy@all.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-whl-u/igt@gem_busy@busy@all.html
    - fi-cml-u2:          [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-cml-u2/igt@gem_busy@busy@all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-cml-u2/igt@gem_busy@busy@all.html
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-WARN][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-kbl-7560u/igt@gem_busy@busy@all.html
    - fi-bxt-dsi:         [PASS][72] -> [DMESG-WARN][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-bxt-dsi/igt@gem_busy@busy@all.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-bxt-dsi/igt@gem_busy@busy@all.html
    - {fi-tgl-u}:         [PASS][74] -> [DMESG-WARN][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-tgl-u/igt@gem_busy@busy@all.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-tgl-u/igt@gem_busy@busy@all.html
    - fi-cml-s:           [PASS][76] -> [DMESG-WARN][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-cml-s/igt@gem_busy@busy@all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-cml-s/igt@gem_busy@busy@all.html
    - fi-cfl-guc:         [PASS][78] -> [DMESG-WARN][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-cfl-guc/igt@gem_busy@busy@all.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-cfl-guc/igt@gem_busy@busy@all.html
    - fi-icl-y:           [PASS][80] -> [DMESG-WARN][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-icl-y/igt@gem_busy@busy@all.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-icl-y/igt@gem_busy@busy@all.html
    - fi-skl-6700k2:      [PASS][82] -> [DMESG-WARN][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-skl-6700k2/igt@gem_busy@busy@all.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-skl-6700k2/igt@gem_busy@busy@all.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][85]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-ehl-1/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][86]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17886 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [PASS][87] -> [DMESG-WARN][88] ([i915#1982])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][89] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][90] ([i915#62] / [i915#92])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8590 -> Patchwork_17886

  CI-20190529: 20190529
  CI_DRM_8590: 91c6f0274b54c89679cd23f6fc65e9fe5922971f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17886: edc7511baed1bde446c55372c108b49f5f7acf39 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

edc7511baed1 drm/i915: Annotate dma_fence_work
92582d6b872d drm/amdgpu: gpu recovery does full modesets
ca71ae15991e Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
edb53cc8cdcc drm/amdgpu: use dma-fence annotations for gpu reset code
428021cf6ac1 drm/scheduler: use dma-fence annotations in tdr work
2a75b848a16e drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
4c8281f15785 drm/amdgpu: DC also loves to allocate stuff where it shouldn't
47de02c44f96 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
0e0f7023514c drm/amdgpu: use dma-fence annotations in cs_submit()
c0009c21b60f drm/scheduler: use dma-fence annotations in main thread
ac0b1f52d0fe drm/amdgpu: add dma-fence annotations to atomic commit path
46b7c2fd5ffd drm/atomic-helper: Add dma-fence annotations
5594f77b32e6 drm/vblank: Annotate with dma-fence signalling section
f0ab547cc6c5 drm/vkms: Annotate vblank timer
24dfd7c2f31d dma-fence: prime lockdep annotations
83bbee724172 dma-fence: basic lockdep annotations
7e972dd54c14 dma-buf: minor doc touch-ups
e78a321ad3b9 mm: Track mmu notifiers in fs_reclaim_acquire/release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17886/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
