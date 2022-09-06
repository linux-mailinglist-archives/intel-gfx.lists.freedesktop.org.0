Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FAF5AF641
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 22:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 294D010EA8B;
	Tue,  6 Sep 2022 20:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAB1E10EA8A;
 Tue,  6 Sep 2022 20:42:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B27A1A00FD;
 Tue,  6 Sep 2022 20:42:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6500971625091881619=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Date: Tue, 06 Sep 2022 20:42:10 -0000
Message-ID: <166249693069.8881.7566524716852530922@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220906201629.419160-1-michal.winiarski@intel.com>
In-Reply-To: <20220906201629.419160-1-michal.winiarski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_full_allocated_minor_range_for_DRM?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6500971625091881619==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use full allocated minor range for DRM
URL   : https://patchwork.freedesktop.org/series/108206/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12081 -> Patchwork_108206v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108206v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108206v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/index.html

Participating hosts (41 -> 41)
------------------------------

  Additional (2): fi-rkl-11600 fi-snb-2520m 
  Missing    (2): fi-icl-u2 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108206v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-ilk-650/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-ilk-650/igt@i915_module_load@load.html
    - fi-blb-e6850:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-blb-e6850/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-blb-e6850/igt@i915_module_load@load.html
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-skl-6600u/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-skl-6600u/igt@i915_module_load@load.html
    - fi-bdw-gvtdvm:      [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-bdw-gvtdvm/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bdw-gvtdvm/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-pnv-d510/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-pnv-d510/igt@i915_module_load@load.html
    - fi-snb-2520m:       NOTRUN -> [INCOMPLETE][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-snb-2520m/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-glk-j4005/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-glk-j4005/igt@i915_module_load@load.html
    - fi-rkl-guc:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-rkl-guc/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-rkl-guc/igt@i915_module_load@load.html
    - fi-skl-6700k2:      [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-skl-6700k2/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-skl-6700k2/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-kbl-7567u/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-cfl-8700k/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-elk-e7500/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-bsw-nick/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bsw-nick/igt@i915_module_load@load.html
    - fi-hsw-g3258:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-hsw-g3258/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-hsw-g3258/igt@i915_module_load@load.html
    - fi-bsw-kefka:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-bsw-kefka/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bsw-kefka/igt@i915_module_load@load.html
    - fi-adl-ddr5:        [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-adl-ddr5/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-adl-ddr5/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-cfl-guc/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-guc/igt@i915_module_load@load.html
    - fi-glk-dsi:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-glk-dsi/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-glk-dsi/igt@i915_module_load@load.html
    - fi-bdw-5557u:       [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-bdw-5557u/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bdw-5557u/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-hsw-4770/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-cfl-8109u/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-8109u/igt@i915_module_load@load.html
    - bat-adlp-4:         [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-adlp-4/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-adlp-4/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-ivb-3770/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-ivb-3770/igt@i915_module_load@load.html
    - fi-snb-2600:        [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-snb-2600/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-snb-2600/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {fi-jsl-1}:         [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-jsl-1/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-jsl-1/igt@i915_module_load@load.html
    - {bat-rpls-1}:       [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-rpls-1/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-rpls-1/igt@i915_module_load@load.html
    - {fi-ehl-2}:         [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-ehl-2/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-ehl-2/igt@i915_module_load@load.html
    - {bat-dg2-11}:       [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-dg2-11/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-dg2-11/igt@i915_module_load@load.html
    - {bat-adln-1}:       [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-adln-1/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-adln-1/igt@i915_module_load@load.html
    - {bat-rplp-1}:       [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-rplp-1/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-rplp-1/igt@i915_module_load@load.html
    - {bat-dg2-9}:        [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-dg2-9/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-dg2-9/igt@i915_module_load@load.html
    - {bat-rpls-2}:       [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-rpls-2/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-rpls-2/igt@i915_module_load@load.html
    - {bat-dg2-8}:        [PASS][65] -> [INCOMPLETE][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-dg2-8/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-dg2-8/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_108206v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-skl-6700k2:      NOTRUN -> [FAIL][67] ([i915#4312] / [i915#6599])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][68] ([i915#4312] / [i915#6599])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-8109u/igt@runner@aborted.html
    - bat-adlp-4:         NOTRUN -> [FAIL][69] ([i915#4312] / [i915#6641])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-adlp-4/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][70] ([i915#4312] / [i915#6219])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][71] ([i915#4312])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-elk-e7500/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][72] ([i915#4312])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-snb-2600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][73] ([i915#4312] / [i915#4991])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-ilk-650/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][74] ([i915#4312] / [i915#6599])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][75] ([i915#4312] / [i915#6599])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-glk-dsi/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][76] ([i915#2403] / [i915#4312])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-pnv-d510/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][77] ([i915#4312])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bdw-5557u/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][78] ([i915#4312])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-snb-2520m/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][79] ([i915#4312] / [i915#6599])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][80] ([i915#4312] / [i915#6599])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][81] ([i915#4312] / [i915#6219])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][82] ([i915#4312] / [i915#6599])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-8700k/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][83] ([i915#4312])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bsw-nick/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][84] ([i915#4312] / [i915#6599])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][85] ([i915#4312] / [i915#6246])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-hsw-g3258/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][86] ([i915#4312])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][87] ([i915#4312])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bsw-kefka/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][88] ([i915#4312] / [i915#6599])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][89] ([i915#4312] / [i915#6599])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-guc/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-hsw-4770:        [FAIL][90] ([fdo#109271] / [i915#4312] / [i915#5594] / [i915#6246]) -> [FAIL][91] ([i915#4312] / [i915#5594] / [i915#6246])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-hsw-4770/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-hsw-4770/igt@runner@aborted.html
    - fi-blb-e6850:       [FAIL][92] ([fdo#109271] / [i915#2403] / [i915#4312]) -> [FAIL][93] ([i915#2403] / [i915#4312])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-blb-e6850/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-blb-e6850/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6641]: https://gitlab.freedesktop.org/drm/intel/issues/6641


Build changes
-------------

  * Linux: CI_DRM_12081 -> Patchwork_108206v1

  CI-20190529: 20190529
  CI_DRM_12081: ef7295a11c7673ae29b70cec4ce36ee91855a740 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6646: c1f420ae84b76079cd32ac014cfdf95b5f2922f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108206v1: ef7295a11c7673ae29b70cec4ce36ee91855a740 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

eb3923073e94 drm: Introduce skip_legacy_minors modparam
0ffff27c26aa drm: Expand max DRM device number to full MINORBITS
9d3acd2d8f7f drm: Use XArray instead of IDR for minors

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/index.html

--===============6500971625091881619==
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
<tr><td><b>Series:</b></td><td>drm: Use full allocated minor range for DRM</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108206/">https://patchwork.freedesktop.org/series/108206/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12081 -&gt; Patchwork_108206v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108206v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_108206v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>Additional (2): fi-rkl-11600 fi-snb-2520m <br />
  Missing    (2): fi-icl-u2 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108206v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-ilk-650/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-blb-e6850/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-blb-e6850/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-rkl-11600/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-skl-6600u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-bdw-gvtdvm/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bdw-gvtdvm/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-pnv-d510/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-snb-2520m/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-glk-j4005/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-rkl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-rkl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-skl-6700k2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-skl-6700k2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-kbl-7567u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-8700k/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-elk-e7500/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bsw-nick/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-hsw-g3258/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-hsw-g3258/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-bsw-kefka/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bsw-kefka/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-adl-ddr5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-adl-ddr5/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-glk-dsi/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-glk-dsi/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-bdw-5557u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bdw-5557u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-hsw-4770/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-8109u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-adlp-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-adlp-4/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-ivb-3770/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-snb-2600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-snb-2600/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-jsl-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-rpls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-rpls-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-ehl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-ehl-2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-dg2-11/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-adln-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-adln-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-rplp-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-dg2-9/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-rpls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-rpls-2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-dg2-8/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108206v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6641">i915#6641</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12081/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12081 -&gt; Patchwork_108206v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12081: ef7295a11c7673ae29b70cec4ce36ee91855a740 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6646: c1f420ae84b76079cd32ac014cfdf95b5f2922f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108206v1: ef7295a11c7673ae29b70cec4ce36ee91855a740 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>eb3923073e94 drm: Introduce skip_legacy_minors modparam<br />
0ffff27c26aa drm: Expand max DRM device number to full MINORBITS<br />
9d3acd2d8f7f drm: Use XArray instead of IDR for minors</p>

</body>
</html>

--===============6500971625091881619==--
