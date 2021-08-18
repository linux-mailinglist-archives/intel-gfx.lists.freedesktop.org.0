Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D27C23F0560
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 15:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8EC36E5B6;
	Wed, 18 Aug 2021 13:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1C196E5B6;
 Wed, 18 Aug 2021 13:53:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DACA0AADD5;
 Wed, 18 Aug 2021 13:53:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1113075556497839104=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 13:53:21 -0000
Message-ID: <162929480189.16674.17699642820090645670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=2C_kernel=3A_update_locking_for_DRM?=
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

--===============1113075556497839104==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm, kernel: update locking for DRM
URL   : https://patchwork.freedesktop.org/series/93782/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10495 -> Patchwork_20844
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20844 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20844, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20844:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-bwr-2160:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bwr-2160/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bwr-2160/igt@core_auth@basic-auth.html
    - fi-bdw-5557u:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bdw-5557u/igt@core_auth@basic-auth.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bdw-5557u/igt@core_auth@basic-auth.html
    - fi-skl-guc:         [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-skl-guc/igt@core_auth@basic-auth.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-skl-guc/igt@core_auth@basic-auth.html
    - fi-kbl-7567u:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-kbl-7567u/igt@core_auth@basic-auth.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-7567u/igt@core_auth@basic-auth.html
    - fi-kbl-8809g:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-kbl-8809g/igt@core_auth@basic-auth.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-8809g/igt@core_auth@basic-auth.html
    - fi-kbl-guc:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-kbl-guc/igt@core_auth@basic-auth.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-guc/igt@core_auth@basic-auth.html
    - fi-bdw-gvtdvm:      [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bdw-gvtdvm/igt@core_auth@basic-auth.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bdw-gvtdvm/igt@core_auth@basic-auth.html
    - fi-kbl-7500u:       [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-kbl-7500u/igt@core_auth@basic-auth.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-7500u/igt@core_auth@basic-auth.html
    - fi-icl-u2:          [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-icl-u2/igt@core_auth@basic-auth.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-icl-u2/igt@core_auth@basic-auth.html
    - fi-hsw-4770:        [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-hsw-4770/igt@core_auth@basic-auth.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-hsw-4770/igt@core_auth@basic-auth.html
    - fi-cfl-8700k:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-cfl-8700k/igt@core_auth@basic-auth.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-8700k/igt@core_auth@basic-auth.html
    - fi-pnv-d510:        [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-pnv-d510/igt@core_auth@basic-auth.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-pnv-d510/igt@core_auth@basic-auth.html
    - fi-snb-2520m:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-snb-2520m/igt@core_auth@basic-auth.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-snb-2520m/igt@core_auth@basic-auth.html
    - fi-apl-guc:         [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-apl-guc/igt@core_auth@basic-auth.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-apl-guc/igt@core_auth@basic-auth.html
    - fi-cml-u2:          [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-cml-u2/igt@core_auth@basic-auth.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cml-u2/igt@core_auth@basic-auth.html
    - fi-skl-6700k2:      [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-skl-6700k2/igt@core_auth@basic-auth.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-skl-6700k2/igt@core_auth@basic-auth.html
    - fi-tgl-1115g4:      [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-tgl-1115g4/igt@core_auth@basic-auth.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-tgl-1115g4/igt@core_auth@basic-auth.html
    - fi-ivb-3770:        [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-ivb-3770/igt@core_auth@basic-auth.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ivb-3770/igt@core_auth@basic-auth.html
    - fi-bxt-dsi:         [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bxt-dsi/igt@core_auth@basic-auth.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bxt-dsi/igt@core_auth@basic-auth.html
    - fi-cfl-guc:         [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-cfl-guc/igt@core_auth@basic-auth.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-guc/igt@core_auth@basic-auth.html
    - fi-elk-e7500:       [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-elk-e7500/igt@core_auth@basic-auth.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-elk-e7500/igt@core_auth@basic-auth.html
    - fi-ilk-650:         [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-ilk-650/igt@core_auth@basic-auth.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ilk-650/igt@core_auth@basic-auth.html
    - fi-kbl-soraka:      [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-kbl-soraka/igt@core_auth@basic-auth.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-soraka/igt@core_auth@basic-auth.html
    - fi-bsw-kefka:       [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bsw-kefka/igt@core_auth@basic-auth.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bsw-kefka/igt@core_auth@basic-auth.html
    - fi-rkl-guc:         [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-rkl-guc/igt@core_auth@basic-auth.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-rkl-guc/igt@core_auth@basic-auth.html
    - fi-icl-y:           [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-icl-y/igt@core_auth@basic-auth.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-icl-y/igt@core_auth@basic-auth.html
    - fi-glk-dsi:         [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-glk-dsi/igt@core_auth@basic-auth.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-glk-dsi/igt@core_auth@basic-auth.html
    - fi-bsw-nick:        [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bsw-nick/igt@core_auth@basic-auth.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bsw-nick/igt@core_auth@basic-auth.html
    - fi-cfl-8109u:       [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-cfl-8109u/igt@core_auth@basic-auth.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-8109u/igt@core_auth@basic-auth.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_auth@basic-auth:
    - {fi-ehl-2}:         [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-ehl-2/igt@core_auth@basic-auth.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ehl-2/igt@core_auth@basic-auth.html
    - {fi-hsw-gt1}:       [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-hsw-gt1/igt@core_auth@basic-auth.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-hsw-gt1/igt@core_auth@basic-auth.html
    - {fi-jsl-1}:         [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-jsl-1/igt@core_auth@basic-auth.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-jsl-1/igt@core_auth@basic-auth.html
    - {fi-tgl-dsi}:       [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-tgl-dsi/igt@core_auth@basic-auth.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-tgl-dsi/igt@core_auth@basic-auth.html

  * igt@runner@aborted:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20844 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][69] ([i915#2426])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][70] ([i915#2403] / [i915#2505])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-pnv-d510/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][71] ([i915#1250] / [i915#3690])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][72] ([i915#2426])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][73] ([i915#2426] / [i915#3363])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][74] ([i915#2426] / [i915#3363])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][75] ([i915#2426] / [i915#3363] / [i915#3690])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][76] ([i915#2426] / [i915#3363] / [k.org#202321])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][77] ([i915#1250] / [i915#3690])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][78] ([i915#2426] / [i915#3363])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][79] ([i915#2426])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-snb-2520m/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][80] ([i915#2505])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][81] ([i915#2426] / [i915#3363])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][82] ([i915#2505])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][83] ([i915#2426] / [i915#3363])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][84] ([i915#2426] / [i915#3363])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][85] ([i915#2082] / [i915#2426] / [i915#3363])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cml-u2/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][86] ([i915#2426])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-rkl-guc/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][87] ([i915#2426])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][88] ([i915#2426] / [i915#3363])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bxt-dsi/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][89] ([i915#3690])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][90] ([i915#2426])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-elk-e7500/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][91] ([i915#2426] / [i915#3363])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][92] ([i915#3690])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][93] ([i915#2426] / [i915#3363])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][94] ([i915#2426] / [i915#3363])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][95] ([i915#2426] / [i915#3363])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-skl-6700k2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][96] ([i915#1602] / [i915#2029]) -> [FAIL][97] ([i915#2426])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bdw-5557u/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bdw-5557u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (35 -> 34)
------------------------------

  Missing    (1): fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10495 -> Patchwork_20844

  CI-20190529: 20190529
  CI_DRM_10495: 63052a17b50710a64ac3c5064d3aa7d92d82a6b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20844: 2226f53a92a79fdd63fdc3cd802223a027afb852 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2226f53a92a7 drm: avoid races with modesetting rights
295b688df245 kernel: export task_work_add
d9a05e5d3c91 drm: update global mutex lock in the ioctl handler
09b974dff9b5 drm: convert drm_device.master_mutex into a rwsem
e645eea7a734 drm: protect magic_map, unique{_len} with master_lookup_lock
83470a919d8e drm: fix potential null ptr dereferences in drm_{auth, ioctl}
e0cc117a9c8a drm: check for null master in drm_is_current_master_locked
f3c5885d403a drm: hold master_lookup_lock when releasing a drm_file's master
0c2de0fa81fa drm: move master_lookup_lock into drm_device

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/index.html

--===============1113075556497839104==
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
<tr><td><b>Series:</b></td><td>drm, kernel: update locking for DRM</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93782/">https://patchwork.freedesktop.org/series/93782/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10495 -&gt; Patchwork_20844</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20844 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20844, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20844:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bwr-2160/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bwr-2160/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bdw-5557u/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bdw-5557u/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-skl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-skl-guc/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-kbl-7567u/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-7567u/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-kbl-8809g/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-8809g/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-kbl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-guc/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bdw-gvtdvm/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bdw-gvtdvm/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-kbl-7500u/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-7500u/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-icl-u2/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-icl-u2/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-hsw-4770/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-hsw-4770/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-cfl-8700k/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-8700k/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-pnv-d510/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-pnv-d510/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-snb-2520m/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-snb-2520m/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-apl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-apl-guc/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-cml-u2/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cml-u2/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-skl-6700k2/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-skl-6700k2/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-tgl-1115g4/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-tgl-1115g4/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-ivb-3770/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ivb-3770/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bxt-dsi/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bxt-dsi/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-cfl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-guc/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-elk-e7500/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-elk-e7500/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-ilk-650/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ilk-650/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-kbl-soraka/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-soraka/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bsw-kefka/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bsw-kefka/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-rkl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-rkl-guc/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-icl-y/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-icl-y/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-glk-dsi/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-glk-dsi/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bsw-nick/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bsw-nick/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-cfl-8109u/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-8109u/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-ehl-2/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ehl-2/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-hsw-gt1/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-hsw-gt1/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-jsl-1/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-jsl-1/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-tgl-dsi/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-tgl-dsi/igt@core_auth@basic-auth.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20844 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1250">i915#1250</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1250">i915#1250</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20844/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10495 -&gt; Patchwork_20844</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10495: 63052a17b50710a64ac3c5064d3aa7d92d82a6b9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20844: 2226f53a92a79fdd63fdc3cd802223a027afb852 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2226f53a92a7 drm: avoid races with modesetting rights<br />
295b688df245 kernel: export task_work_add<br />
d9a05e5d3c91 drm: update global mutex lock in the ioctl handler<br />
09b974dff9b5 drm: convert drm_device.master_mutex into a rwsem<br />
e645eea7a734 drm: protect magic_map, unique{<em>len} with master_lookup_lock<br />
83470a919d8e drm: fix potential null ptr dereferences in drm</em>{auth, ioctl}<br />
e0cc117a9c8a drm: check for null master in drm_is_current_master_locked<br />
f3c5885d403a drm: hold master_lookup_lock when releasing a drm_file's master<br />
0c2de0fa81fa drm: move master_lookup_lock into drm_device</p>

</body>
</html>

--===============1113075556497839104==--
