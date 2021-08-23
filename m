Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C68E3F5057
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 20:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ADBA89B3B;
	Mon, 23 Aug 2021 18:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C0DB899E9;
 Mon, 23 Aug 2021 18:25:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37969A0118;
 Mon, 23 Aug 2021 18:25:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9117928252837447976=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Aug 2021 18:25:06 -0000
Message-ID: <162974310619.1910.15006536319951952860@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210823171437.829404-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210823171437.829404-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_update_locking_for_modesetting_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============9117928252837447976==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: update locking for modesetting (rev2)
URL   : https://patchwork.freedesktop.org/series/93864/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10508 -> Patchwork_20877
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20877 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20877, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20877:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-cfl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-cfl-guc/igt@kms_addfb_basic@invalid-set-prop.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-guc/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-pnv-d510:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-pnv-d510/igt@kms_addfb_basic@invalid-set-prop.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-pnv-d510/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-ilk-650:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-ilk-650/igt@kms_addfb_basic@invalid-set-prop.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ilk-650/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-kbl-soraka:      [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-soraka/igt@kms_addfb_basic@invalid-set-prop.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-soraka/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-bsw-n3050:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-bsw-n3050/igt@kms_addfb_basic@invalid-set-prop.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-n3050/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-skl-6700k2:      [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-skl-6700k2/igt@kms_addfb_basic@invalid-set-prop.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-skl-6700k2/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-ivb-3770:        [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-ivb-3770/igt@kms_addfb_basic@invalid-set-prop.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ivb-3770/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-rkl-guc:         NOTRUN -> [DMESG-WARN][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-rkl-guc/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-elk-e7500:       [PASS][18] -> [DMESG-WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-elk-e7500/igt@kms_addfb_basic@invalid-set-prop.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-elk-e7500/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-bsw-kefka:       [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-bsw-kefka/igt@kms_addfb_basic@invalid-set-prop.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-kefka/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-glk-dsi:         [PASS][22] -> [DMESG-WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-bwr-2160:        [PASS][24] -> [DMESG-WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-bwr-2160/igt@kms_addfb_basic@invalid-set-prop.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bwr-2160/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-skl-guc:         [PASS][26] -> [DMESG-WARN][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-skl-guc/igt@kms_addfb_basic@invalid-set-prop.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-skl-guc/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-kbl-7567u:       [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-kbl-guc:         [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-guc/igt@kms_addfb_basic@invalid-set-prop.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-guc/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-kbl-7500u:       [PASS][32] -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-7500u/igt@kms_addfb_basic@invalid-set-prop.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-7500u/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-icl-y:           [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-icl-y/igt@kms_addfb_basic@invalid-set-prop.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-icl-y/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-rkl-11600:       [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-rkl-11600/igt@kms_addfb_basic@invalid-set-prop.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-rkl-11600/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-bsw-nick:        [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-bsw-nick/igt@kms_addfb_basic@invalid-set-prop.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-nick/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-cfl-8109u:       [PASS][40] -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-icl-u2:          [PASS][42] -> [DMESG-WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-icl-u2/igt@kms_addfb_basic@invalid-set-prop.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-icl-u2/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-cfl-8700k:       [PASS][44] -> [DMESG-WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-cfl-8700k/igt@kms_addfb_basic@invalid-set-prop.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-8700k/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-kbl-8809g:       [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-8809g/igt@kms_addfb_basic@invalid-set-prop.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-8809g/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-snb-2520m:       [PASS][48] -> [DMESG-WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-snb-2520m/igt@kms_addfb_basic@invalid-set-prop.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-snb-2520m/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-cml-u2:          [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-cml-u2/igt@kms_addfb_basic@invalid-set-prop.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cml-u2/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-rkl-11600/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_addfb_basic@invalid-set-prop:
    - {fi-hsw-gt1}:       [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-hsw-gt1/igt@kms_addfb_basic@invalid-set-prop.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-hsw-gt1/igt@kms_addfb_basic@invalid-set-prop.html
    - {fi-ehl-2}:         [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-ehl-2/igt@kms_addfb_basic@invalid-set-prop.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ehl-2/igt@kms_addfb_basic@invalid-set-prop.html
    - {fi-jsl-1}:         [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-jsl-1/igt@kms_addfb_basic@invalid-set-prop.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-jsl-1/igt@kms_addfb_basic@invalid-set-prop.html
    - {fi-tgl-dsi}:       [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-tgl-dsi/igt@kms_addfb_basic@invalid-set-prop.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-tgl-dsi/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@runner@aborted:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20877 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][63] ([i915#2190])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][64] ([i915#4002]) +28 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-tgl-1115g4/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][65] ([i915#2426])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][66] ([i915#2403] / [i915#2505])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-pnv-d510/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][67] ([i915#3690])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][68] ([i915#2426] / [i915#3363])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][69] ([i915#2426] / [i915#3363])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][70] ([i915#2426] / [i915#3363] / [i915#3690])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][71] ([i915#2426] / [i915#3363] / [k.org#202321])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][72] ([i915#3690])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][73] ([i915#2426] / [i915#3363])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][74] ([i915#2426])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-snb-2520m/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][75] ([i915#2505])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][76] ([i915#2426] / [i915#3363])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][77] ([i915#2505])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][78] ([i915#2426] / [i915#3363])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][79] ([i915#2426] / [i915#3363])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][80] ([i915#2082] / [i915#2426] / [i915#3363])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][81] ([i915#2426])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][82] ([i915#2426] / [i915#3363])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bxt-dsi/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][83] ([i915#3690])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][84] ([i915#2426])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-elk-e7500/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][85] ([i915#2426] / [i915#3363])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][86] ([i915#3690])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][87] ([i915#2426] / [i915#3363])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][88] ([i915#2426] / [i915#3363])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][89] ([i915#2426] / [i915#3363])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][90] ([i915#3690])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_wait@busy@all:
    - fi-rkl-guc:         [INCOMPLETE][91] -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-rkl-guc/igt@gem_wait@busy@all.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-rkl-guc/igt@gem_wait@busy@all.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#4002]: https://gitlab.freedesktop.org/drm/intel/issues/4002
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (39 -> 34)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (6): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10508 -> Patchwork_20877

  CI-20190529: 20190529
  CI_DRM_10508: 00400e0b1213556376e556de6561f117909dcab9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6183: c75ffa39b2f8b3b991deba834a3828e102c909e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20877: bcfcb5a1985a5ef1e357efee886d33391ba5f9e0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bcfcb5a1985a drm: remove drm_file.master_lookup_lock
f9b63eb41d70 drm: avoid circular locks with modeset_mutex and master_rwsem
8f1a1005810f drm: avoid races with modesetting rights
7f6fcee21124 drm: lock drm_global_mutex earlier in the ioctl handler
e3b0e0e52731 drm: convert drm_device.master_mutex into a rwsem
0be74e866c75 drm: fix null ptr dereference in drm_master_release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/index.html

--===============9117928252837447976==
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
<tr><td><b>Series:</b></td><td>drm: update locking for modesetting (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93864/">https://patchwork.freedesktop.org/series/93864/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10508 -&gt; Patchwork_20877</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20877 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20877, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20877:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-cfl-guc/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-guc/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-pnv-d510/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-pnv-d510/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-ilk-650/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ilk-650/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-soraka/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-soraka/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-bsw-n3050/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-n3050/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-skl-6700k2/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-skl-6700k2/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-ivb-3770/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ivb-3770/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-rkl-guc/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-elk-e7500/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-elk-e7500/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-bsw-kefka/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-kefka/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-bwr-2160/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bwr-2160/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-skl-guc/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-skl-guc/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-guc/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-guc/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-7500u/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-7500u/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-icl-y/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-icl-y/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-rkl-11600/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-rkl-11600/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-bsw-nick/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-nick/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-icl-u2/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-icl-u2/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-cfl-8700k/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-8700k/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-8809g/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-8809g/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-snb-2520m/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-snb-2520m/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-cml-u2/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cml-u2/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-hsw-gt1/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-hsw-gt1/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-ehl-2/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ehl-2/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-jsl-1/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-jsl-1/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-tgl-dsi/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-tgl-dsi/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20877 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-128:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-tgl-1115g4/igt@kms_addfb_basic@bad-pitch-128.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_wait@busy@all:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-rkl-guc/igt@gem_wait@busy@all.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20877/fi-rkl-guc/igt@gem_wait@busy@all.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (6): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10508 -&gt; Patchwork_20877</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10508: 00400e0b1213556376e556de6561f117909dcab9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6183: c75ffa39b2f8b3b991deba834a3828e102c909e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20877: bcfcb5a1985a5ef1e357efee886d33391ba5f9e0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bcfcb5a1985a drm: remove drm_file.master_lookup_lock<br />
f9b63eb41d70 drm: avoid circular locks with modeset_mutex and master_rwsem<br />
8f1a1005810f drm: avoid races with modesetting rights<br />
7f6fcee21124 drm: lock drm_global_mutex earlier in the ioctl handler<br />
e3b0e0e52731 drm: convert drm_device.master_mutex into a rwsem<br />
0be74e866c75 drm: fix null ptr dereference in drm_master_release</p>

</body>
</html>

--===============9117928252837447976==--
