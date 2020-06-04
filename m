Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BA71EE09A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 11:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4557E89E63;
	Thu,  4 Jun 2020 09:08:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBA1F89E63;
 Thu,  4 Jun 2020 09:08:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5065A0019;
 Thu,  4 Jun 2020 09:08:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 04 Jun 2020 09:08:20 -0000
Message-ID: <159126170083.14555.15660446529910252360@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZG1h?=
 =?utf-8?q?-fence_lockdep_annotations=2C_round_2?=
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

Series: dma-fence lockdep annotations, round 2
URL   : https://patchwork.freedesktop.org/series/77986/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8580 -> Patchwork_17864
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17864 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17864, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17864:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-byt-j1900:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-byt-j1900/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-hsw-4770/igt@gem_close_race@basic-process.html
    - fi-byt-n2820:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-byt-n2820/igt@gem_close_race@basic-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-byt-n2820/igt@gem_close_race@basic-process.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@kms_busy@basic@flip:
    - fi-snb-2600:        [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-snb-2600/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-snb-2600/igt@kms_busy@basic@flip.html
    - fi-snb-2520m:       [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-snb-2520m/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-snb-2520m/igt@kms_busy@basic@flip.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-ilk-650:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-cfl-8700k/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-tgl-y/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-icl-u2/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-bdw-5557u/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-byt-n2820/igt@runner@aborted.html
    - fi-icl-guc:         NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-icl-guc/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-snb-2600/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-whl-u/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-bxt-dsi/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-byt-j1900/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-icl-y/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_busy@busy@all}:
    - fi-kbl-x1275:       [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-kbl-x1275/igt@gem_busy@busy@all.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-kbl-x1275/igt@gem_busy@busy@all.html
    - fi-cfl-8700k:       [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-cfl-8700k/igt@gem_busy@busy@all.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-cfl-8700k/igt@gem_busy@busy@all.html
    - fi-tgl-y:           [PASS][40] -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-tgl-y/igt@gem_busy@busy@all.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-tgl-y/igt@gem_busy@busy@all.html
    - fi-skl-6600u:       [PASS][42] -> [DMESG-WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-skl-6600u/igt@gem_busy@busy@all.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-skl-6600u/igt@gem_busy@busy@all.html
    - fi-cfl-8109u:       [PASS][44] -> [DMESG-WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-cfl-8109u/igt@gem_busy@busy@all.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-cfl-8109u/igt@gem_busy@busy@all.html
    - fi-icl-u2:          [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-icl-u2/igt@gem_busy@busy@all.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-icl-u2/igt@gem_busy@busy@all.html
    - {fi-tgl-dsi}:       [PASS][48] -> [DMESG-WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-tgl-dsi/igt@gem_busy@busy@all.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-tgl-dsi/igt@gem_busy@busy@all.html
    - fi-glk-dsi:         [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-glk-dsi/igt@gem_busy@busy@all.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-glk-dsi/igt@gem_busy@busy@all.html
    - fi-kbl-8809g:       [PASS][52] -> [DMESG-WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-kbl-8809g/igt@gem_busy@busy@all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-kbl-8809g/igt@gem_busy@busy@all.html
    - fi-skl-lmem:        [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-skl-lmem/igt@gem_busy@busy@all.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-skl-lmem/igt@gem_busy@busy@all.html
    - fi-kbl-r:           [PASS][56] -> [DMESG-WARN][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-kbl-r/igt@gem_busy@busy@all.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-kbl-r/igt@gem_busy@busy@all.html
    - fi-bdw-5557u:       [PASS][58] -> [DMESG-WARN][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-bdw-5557u/igt@gem_busy@busy@all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-bdw-5557u/igt@gem_busy@busy@all.html
    - fi-icl-guc:         [PASS][60] -> [DMESG-WARN][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-icl-guc/igt@gem_busy@busy@all.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-icl-guc/igt@gem_busy@busy@all.html
    - fi-kbl-soraka:      [PASS][62] -> [DMESG-WARN][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-kbl-soraka/igt@gem_busy@busy@all.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-kbl-soraka/igt@gem_busy@busy@all.html
    - {fi-ehl-1}:         [PASS][64] -> [DMESG-WARN][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-ehl-1/igt@gem_busy@busy@all.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-ehl-1/igt@gem_busy@busy@all.html
    - fi-kbl-7500u:       [PASS][66] -> [DMESG-WARN][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-kbl-7500u/igt@gem_busy@busy@all.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-kbl-7500u/igt@gem_busy@busy@all.html
    - fi-kbl-guc:         [PASS][68] -> [DMESG-WARN][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-kbl-guc/igt@gem_busy@busy@all.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-kbl-guc/igt@gem_busy@busy@all.html
    - fi-whl-u:           [PASS][70] -> [DMESG-WARN][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-whl-u/igt@gem_busy@busy@all.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-whl-u/igt@gem_busy@busy@all.html
    - fi-cml-u2:          [PASS][72] -> [DMESG-WARN][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-cml-u2/igt@gem_busy@busy@all.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-cml-u2/igt@gem_busy@busy@all.html
    - fi-bxt-dsi:         [PASS][74] -> [DMESG-WARN][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-bxt-dsi/igt@gem_busy@busy@all.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-bxt-dsi/igt@gem_busy@busy@all.html
    - {fi-tgl-u}:         [PASS][76] -> [DMESG-WARN][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-tgl-u/igt@gem_busy@busy@all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-tgl-u/igt@gem_busy@busy@all.html
    - fi-cml-s:           [PASS][78] -> [DMESG-WARN][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-cml-s/igt@gem_busy@busy@all.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-cml-s/igt@gem_busy@busy@all.html
    - fi-cfl-guc:         [PASS][80] -> [DMESG-WARN][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-cfl-guc/igt@gem_busy@busy@all.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-cfl-guc/igt@gem_busy@busy@all.html
    - fi-icl-y:           [PASS][82] -> [DMESG-WARN][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-icl-y/igt@gem_busy@busy@all.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-icl-y/igt@gem_busy@busy@all.html
    - fi-skl-guc:         [PASS][84] -> [DMESG-WARN][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-skl-guc/igt@gem_busy@busy@all.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-skl-guc/igt@gem_busy@busy@all.html
    - fi-skl-6700k2:      [PASS][86] -> [DMESG-WARN][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-skl-6700k2/igt@gem_busy@busy@all.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-skl-6700k2/igt@gem_busy@busy@all.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][88]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][89]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-ehl-1/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][90]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17864 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [PASS][91] -> [DMESG-WARN][92] ([i915#1982])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8580/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Participating hosts (50 -> 44)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8580 -> Patchwork_17864

  CI-20190529: 20190529
  CI_DRM_8580: dbab119950f978cd41000b0daba1ff332e5b0856 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17864: 4db85879be37fd460696d0ea753a5eb243880719 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4db85879be37 drm/i915: Annotate dma_fence_work
77ef9df05cc0 drm/amdgpu: gpu recovery does full modesets
1bb25e8d8189 Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
552ee41a6739 drm/amdgpu: use dma-fence annotations for gpu reset code
6fd3e8ef0756 drm/scheduler: use dma-fence annotations in tdr work
838703bb63b9 drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
753d44dd8a51 drm/amdgpu: DC also loves to allocate stuff where it shouldn't
05627337ac19 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
82020872a9a2 drm/amdgpu: use dma-fence annotations in cs_submit()
0485794be8aa drm/scheduler: use dma-fence annotations in main thread
911b274bb909 drm/amdgpu: add dma-fence annotations to atomic commit path
9d42aa205b3f drm/atomic-helper: Add dma-fence annotations
93efe4f7dc82 drm/vblank: Annotate with dma-fence signalling section
2fb5c8b43ac8 drm/vkms: Annotate vblank timer
96b50a5032df dma-fence: prime lockdep annotations
7f8c3b44f8eb dma-fence: basic lockdep annotations
b85d9997eaca dma-buf: minor doc touch-ups
199c3f9df986 mm: Track mmu notifiers in fs_reclaim_acquire/release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17864/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
