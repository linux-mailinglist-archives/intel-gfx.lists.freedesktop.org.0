Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86321188E5B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 20:53:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E176E81F;
	Tue, 17 Mar 2020 19:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED1F16E255;
 Tue, 17 Mar 2020 19:53:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5668A66C7;
 Tue, 17 Mar 2020 19:53:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 19:53:51 -0000
Message-ID: <158447483191.5177.17317322603788728102@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316225153.3394-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316225153.3394-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Avoid_gem=5Fcontext-=3Emutex_for_simple_vma_lookup?=
 =?utf-8?q?_=28rev4=29?=
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

Series: drm/i915/gem: Avoid gem_context->mutex for simple vma lookup (rev4)
URL   : https://patchwork.freedesktop.org/series/74759/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8144 -> Patchwork_16999
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16999 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16999, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16999:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-bdw-5557u/igt@gem_busy@busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-bdw-5557u/igt@gem_busy@busy-all.html
    - fi-kbl-8809g:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-kbl-8809g/igt@gem_busy@busy-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-8809g/igt@gem_busy@busy-all.html
    - fi-icl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-icl-guc/igt@gem_busy@busy-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-icl-guc/igt@gem_busy@busy-all.html
    - fi-kbl-r:           [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-kbl-r/igt@gem_busy@busy-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-r/igt@gem_busy@busy-all.html
    - fi-bsw-kefka:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-bsw-kefka/igt@gem_busy@busy-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-bsw-kefka/igt@gem_busy@busy-all.html
    - fi-icl-dsi:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-icl-dsi/igt@gem_busy@busy-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-icl-dsi/igt@gem_busy@busy-all.html
    - fi-kbl-guc:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-kbl-guc/igt@gem_busy@busy-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-guc/igt@gem_busy@busy-all.html
    - fi-kbl-7500u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-kbl-7500u/igt@gem_busy@busy-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-7500u/igt@gem_busy@busy-all.html
    - fi-kbl-x1275:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-kbl-x1275/igt@gem_busy@busy-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-x1275/igt@gem_busy@busy-all.html
    - fi-pnv-d510:        [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-pnv-d510/igt@gem_busy@busy-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-pnv-d510/igt@gem_busy@busy-all.html
    - fi-icl-u2:          [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-icl-u2/igt@gem_busy@busy-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-icl-u2/igt@gem_busy@busy-all.html
    - fi-skl-6600u:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-skl-6600u/igt@gem_busy@busy-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-skl-6600u/igt@gem_busy@busy-all.html
    - fi-cfl-8700k:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-cfl-8700k/igt@gem_busy@busy-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-cfl-8700k/igt@gem_busy@busy-all.html
    - fi-icl-y:           [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-icl-y/igt@gem_busy@busy-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-icl-y/igt@gem_busy@busy-all.html
    - fi-snb-2520m:       [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-snb-2520m/igt@gem_busy@busy-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-snb-2520m/igt@gem_busy@busy-all.html
    - fi-ivb-3770:        [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-ivb-3770/igt@gem_busy@busy-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-ivb-3770/igt@gem_busy@busy-all.html
    - fi-glk-dsi:         [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-glk-dsi/igt@gem_busy@busy-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-glk-dsi/igt@gem_busy@busy-all.html
    - fi-blb-e6850:       [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-blb-e6850/igt@gem_busy@busy-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-blb-e6850/igt@gem_busy@busy-all.html
    - fi-elk-e7500:       [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-elk-e7500/igt@gem_busy@busy-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-elk-e7500/igt@gem_busy@busy-all.html
    - fi-skl-6700k2:      [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-skl-6700k2/igt@gem_busy@busy-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-skl-6700k2/igt@gem_busy@busy-all.html
    - fi-skl-guc:         [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-skl-guc/igt@gem_busy@busy-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-skl-guc/igt@gem_busy@busy-all.html
    - fi-cfl-guc:         [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-cfl-guc/igt@gem_busy@busy-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-cfl-guc/igt@gem_busy@busy-all.html
    - fi-hsw-4770:        [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-hsw-4770/igt@gem_busy@busy-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-hsw-4770/igt@gem_busy@busy-all.html
    - fi-bsw-n3050:       [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-bsw-n3050/igt@gem_busy@busy-all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-bsw-n3050/igt@gem_busy@busy-all.html
    - fi-ilk-650:         [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-ilk-650/igt@gem_busy@busy-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-ilk-650/igt@gem_busy@busy-all.html
    - fi-cml-u2:          [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-cml-u2/igt@gem_busy@busy-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-cml-u2/igt@gem_busy@busy-all.html
    - fi-cfl-8109u:       [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-cfl-8109u/igt@gem_busy@busy-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-cfl-8109u/igt@gem_busy@busy-all.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-soraka/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-process:
    - fi-bwr-2160:        [PASS][56] -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-bwr-2160/igt@gem_close_race@basic-process.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-bwr-2160/igt@gem_close_race@basic-process.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][59]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-cfl-8109u/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-snb-2520m/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][64]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][69]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-guc/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][70]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-ivb-3770/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-cfl-guc/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][73] ([i915#1209]) -> [FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-kbl-8809g/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-kbl-8809g/igt@runner@aborted.html
    - fi-bxt-dsi:         [FAIL][75] ([i915#529]) -> [FAIL][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-bxt-dsi/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-bxt-dsi/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_busy@busy-all:
    - {fi-ehl-1}:         [PASS][77] -> [INCOMPLETE][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-ehl-1/igt@gem_busy@busy-all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-ehl-1/igt@gem_busy@busy-all.html
    - {fi-tgl-dsi}:       [PASS][79] -> [INCOMPLETE][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-tgl-dsi/igt@gem_busy@busy-all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-tgl-dsi/igt@gem_busy@busy-all.html
    - {fi-tgl-u}:         [PASS][81] -> [INCOMPLETE][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-tgl-u/igt@gem_busy@busy-all.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-tgl-u/igt@gem_busy@busy-all.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-ehl-1/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][85]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16999 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-all:
    - fi-apl-guc:         [PASS][86] -> [INCOMPLETE][87] ([fdo#103927])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-apl-guc/igt@gem_busy@busy-all.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-apl-guc/igt@gem_busy@busy-all.html
    - fi-cml-s:           [PASS][88] -> [INCOMPLETE][89] ([i915#283])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-cml-s/igt@gem_busy@busy-all.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-cml-s/igt@gem_busy@busy-all.html
    - fi-bxt-dsi:         [PASS][90] -> [INCOMPLETE][91] ([fdo#103927])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-bxt-dsi/igt@gem_busy@busy-all.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-bxt-dsi/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-process:
    - fi-gdg-551:         [PASS][92] -> [INCOMPLETE][93] ([i915#172])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8144/fi-gdg-551/igt@gem_close_race@basic-process.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/fi-gdg-551/igt@gem_close_race@basic-process.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529


Participating hosts (45 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (9): fi-hsw-4200u fi-byt-j1900 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-skl-lmem fi-byt-clapper fi-bsw-nick fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8144 -> Patchwork_16999

  CI-20190529: 20190529
  CI_DRM_8144: e22a73e6b26efdc18bd44d26c93e16c2783ab3f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5517: b77e3a470bdf1bc5f047ebb98ed8ca4738dd44c7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16999: 263db7401de7b14a0571c8c31deeccf7a9ceb55d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

263db7401de7 drm/i915/gem: Avoid gem_context->mutex for simple vma lookup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16999/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
