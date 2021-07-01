Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0837A3B96CE
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 21:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5646EB1C;
	Thu,  1 Jul 2021 19:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 201A26E0B8;
 Thu,  1 Jul 2021 19:58:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 176C3A9932;
 Thu,  1 Jul 2021 19:58:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
Date: Thu, 01 Jul 2021 19:58:40 -0000
Message-ID: <162516952006.15053.6639387098101206445@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701154754.665034-1-michael.j.ruhl@intel.com>
In-Reply-To: <20210701154754.665034-1-michael.j.ruhl@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gem=3A_Correct_the_locking?=
 =?utf-8?q?_and_pin_pattern_for_dma-buf?=
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
Content-Type: multipart/mixed; boundary="===============1494274989=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1494274989==
Content-Type: multipart/alternative;
 boundary="===============1217766290637562433=="

--===============1217766290637562433==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/gem: Correct the locking and pin pattern for dma-buf
URL   : https://patchwork.freedesktop.org/series/92117/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10299 -> Patchwork_20510
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20510 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20510, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20510:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-busy@rcs0:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-elk-e7500:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-ilk-650:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-apl-guc:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-hsw-4770:        [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bxt-dsi:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-6700k2:      [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-8700k:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-n3050:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-soraka:      [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cml-s:           [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-kefka:       NOTRUN -> [DMESG-WARN][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-glk-dsi:         [PASS][26] -> [DMESG-WARN][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-8809g:       [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-8809g/igt@gem_exec_fence@basic-busy@vecs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-8809g/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-r:           [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-8109u:       [PASS][32] -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-icl-y:           [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-guc:         [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-nick:        [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bdw-gvtdvm:      [PASS][40] -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bdw-5557u:       [PASS][42] -> [DMESG-WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-7500u:       [PASS][44] -> [DMESG-WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-7567u:       [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-7567u/igt@gem_exec_fence@basic-busy@vecs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-7567u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-6600u:       [PASS][48] -> [DMESG-WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-ilk-650/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][54]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bdw-5557u/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][57]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-elk-e7500/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][59]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-icl-y/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-n3050/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-busy@vecs0:
    - {fi-jsl-1}:         [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-tgl-1115g4}:    [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-tgl-1115g4/igt@gem_exec_fence@basic-busy@vecs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-tgl-1115g4/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-ehl-2}:         [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-ehl-2/igt@gem_exec_fence@basic-busy@vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-ehl-2/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-hsw-gt1}:       [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-hsw-gt1/igt@gem_exec_fence@basic-busy@vecs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-hsw-gt1/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-tgl-dsi}:       [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-tgl-1115g4}:    NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-tgl-1115g4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20510 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][73] ([i915#2403] / [i915#2505])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][74] ([i915#3363])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][75] ([i915#3363])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][76] ([i915#3363])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][77] ([i915#3363] / [k.org#202321])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][78] ([i915#3363])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][79] ([i915#3363])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-r/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][80] ([i915#2505])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][81] ([i915#3363])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][82] ([i915#2505])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][83] ([i915#3363])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][84] ([i915#3363])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-guc/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][85] ([i915#3363])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][86] ([i915#3363])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cml-s/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][87] ([i915#3363])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][88] ([i915#3363])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-skl-6700k2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][89] ([i915#2426] / [i915#3363]) -> [FAIL][90] ([i915#3363])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-apl-guc/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3626]: https://gitlab.freedesktop.org/drm/intel/issues/3626
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (36 -> 35)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10299 -> Patchwork_20510

  CI-20190529: 20190529
  CI_DRM_10299: 40a1952a06a94218e1bb751a3091a1c105173f1a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6126: 098d0b82276fa0595e3d0fd745885f9d2147035d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20510: 330645251595f4b440e290bbe2cad517ce5059aa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

330645251595 drm/i915/gem: Migrate to system at dma-buf attach time
8dae31d4d6f8 drm/i915/gem: Correct the locking and pin pattern for dma-buf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/index.html

--===============1217766290637562433==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/gem: Correct the locking and pin pattern for dma-buf</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92117/">https://patchwork.freedesktop.org/series/92117/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10299 -&gt; Patchwork_20510</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20510 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20510, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20510:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@rcs0:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-pnv-d510/igt@gem_exec_fence@basic-busy@rcs0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vcs0:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-hsw-4770/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-8809g/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-8809g/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-kbl-7567u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-7567u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-snb-2600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-icl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-tgl-1115g4/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-tgl-1115g4/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-ehl-2/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-ehl-2/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-hsw-gt1/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-hsw-gt1/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20510 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10299/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20510/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Additional (1): fi-bsw-kefka <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10299 -&gt; Patchwork_20510</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10299: 40a1952a06a94218e1bb751a3091a1c105173f1a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6126: 098d0b82276fa0595e3d0fd745885f9d2147035d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20510: 330645251595f4b440e290bbe2cad517ce5059aa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>330645251595 drm/i915/gem: Migrate to system at dma-buf attach time<br />
8dae31d4d6f8 drm/i915/gem: Correct the locking and pin pattern for dma-buf</p>

</body>
</html>

--===============1217766290637562433==--

--===============1494274989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1494274989==--
