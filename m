Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 770C2656E07
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Dec 2022 19:40:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB24910E340;
	Tue, 27 Dec 2022 18:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EAE1B10E32F;
 Tue, 27 Dec 2022 18:40:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2B6FAA3D8;
 Tue, 27 Dec 2022 18:40:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9191331637047444591=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Deepak R Varma" <drv@mailo.com>
Date: Tue, 27 Dec 2022 18:40:54 -0000
Message-ID: <167216645492.15129.16140055950037642380@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1671952191.git.drv@mailo.com>
In-Reply-To: <cover.1671952191.git.drv@mailo.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgY29u?=
 =?utf-8?q?vert_i915=5Factive=2Ecount_from_atomic=5Ft_to_refcount=5Ft?=
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

--===============9191331637047444591==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: convert i915_active.count from atomic_t to refcount_t
URL   : https://patchwork.freedesktop.org/series/112246/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12526 -> Patchwork_112246v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_112246v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_112246v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/index.html

Participating hosts (45 -> 43)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (3): fi-hsw-4770 fi-bdw-gvtdvm bat-dg2-oem1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112246v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-ilk-650/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-ilk-650/igt@i915_module_load@load.html
    - fi-blb-e6850:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-blb-e6850/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-blb-e6850/igt@i915_module_load@load.html
    - fi-bsw-n3050:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-bsw-n3050/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-n3050/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-rkl-11600/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-skl-6600u/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-6600u/igt@i915_module_load@load.html
    - fi-icl-u2:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-icl-u2/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-icl-u2/igt@i915_module_load@load.html
    - fi-apl-guc:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-apl-guc/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-apl-guc/igt@i915_module_load@load.html
    - bat-dg1-5:          [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg1-5/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg1-5/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-pnv-d510/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-pnv-d510/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-glk-j4005/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-glk-j4005/igt@i915_module_load@load.html
    - fi-rkl-guc:         [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-rkl-guc/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-rkl-guc/igt@i915_module_load@load.html
    - fi-skl-guc:         [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-skl-guc/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-guc/igt@i915_module_load@load.html
    - fi-skl-6700k2:      [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-skl-6700k2/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-6700k2/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-kbl-7567u/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-cfl-8700k/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-kbl-8809g:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-kbl-8809g/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-kbl-8809g/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-elk-e7500/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-bsw-nick/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-nick/igt@i915_module_load@load.html
    - fi-adl-ddr5:        [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-adl-ddr5/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-adl-ddr5/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-cfl-guc/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-guc/igt@i915_module_load@load.html
    - fi-bwr-2160:        [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-bwr-2160/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bwr-2160/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-cfl-8109u/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-8109u/igt@i915_module_load@load.html
    - bat-adlp-4:         [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-adlp-4/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adlp-4/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-ivb-3770/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-ivb-3770/igt@i915_module_load@load.html
    - fi-snb-2600:        [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-snb-2600/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-snb-2600/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {fi-jsl-1}:         [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-jsl-1/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-jsl-1/igt@i915_module_load@load.html
    - {bat-rpls-1}:       [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-rpls-1/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-rpls-1/igt@i915_module_load@load.html
    - {bat-adlp-6}:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-adlp-6/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adlp-6/igt@i915_module_load@load.html
    - {fi-ehl-2}:         [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-ehl-2/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-ehl-2/igt@i915_module_load@load.html
    - {bat-dg1-7}:        [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg1-7/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg1-7/igt@i915_module_load@load.html
    - {bat-jsl-3}:        [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-jsl-3/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-jsl-3/igt@i915_module_load@load.html
    - {bat-adlp-9}:       [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-adlp-9/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adlp-9/igt@i915_module_load@load.html
    - {bat-dg2-11}:       [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg2-11/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg2-11/igt@i915_module_load@load.html
    - {bat-adln-1}:       [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-adln-1/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adln-1/igt@i915_module_load@load.html
    - {bat-kbl-2}:        [PASS][69] -> [INCOMPLETE][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-kbl-2/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-kbl-2/igt@i915_module_load@load.html
    - {bat-adlm-1}:       [PASS][71] -> [DMESG-WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-adlm-1/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adlm-1/igt@i915_module_load@load.html
    - {bat-atsm-1}:       [PASS][73] -> [DMESG-WARN][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-atsm-1/igt@i915_module_load@load.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-atsm-1/igt@i915_module_load@load.html
    - {bat-dg2-9}:        [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg2-9/igt@i915_module_load@load.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg2-9/igt@i915_module_load@load.html
    - {bat-rpls-2}:       [PASS][77] -> [DMESG-WARN][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-rpls-2/igt@i915_module_load@load.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-rpls-2/igt@i915_module_load@load.html
    - {bat-dg2-8}:        [PASS][79] -> [DMESG-WARN][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg2-8/igt@i915_module_load@load.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg2-8/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_112246v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][81] ([i915#1982])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-kbl-soraka/igt@i915_module_load@load.html
    - bat-dg1-6:          [PASS][82] -> [DMESG-WARN][83] ([i915#1982])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg1-6/igt@i915_module_load@load.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg1-6/igt@i915_module_load@load.html
    - fi-bsw-kefka:       [PASS][84] -> [INCOMPLETE][85] ([i915#1982])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-bsw-kefka/igt@i915_module_load@load.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-kefka/igt@i915_module_load@load.html

  * igt@runner@aborted:
    - fi-skl-6700k2:      NOTRUN -> [FAIL][86] ([i915#4312])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][87] ([i915#4312])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-8109u/igt@runner@aborted.html
    - bat-adlp-4:         NOTRUN -> [FAIL][88] ([i915#4312])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adlp-4/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][89] ([i915#4312])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][90] ([i915#4312])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-elk-e7500/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][91] ([i915#4312])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-snb-2600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][92] ([i915#4312])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-ilk-650/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][93] ([i915#4312])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-blb-e6850/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][94] ([i915#4312])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-n3050/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][95] ([i915#4312])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][96] ([i915#4312])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-icl-u2/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][97] ([i915#4312])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-apl-guc/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][98] ([i915#4312])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg1-5/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][99] ([i915#4312])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][100] ([i915#4312])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][101] ([i915#4312])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][102] ([i915#4312])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][103] ([i915#4312] / [i915#4991])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-kbl-soraka/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][104] ([i915#4312])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg1-6/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][105] ([i915#4312])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][106] ([i915#4312])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-8700k/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][107] ([i915#4312])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-nick/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][108] ([i915#4312])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][109] ([i915#4312])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-kefka/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][110] ([i915#4312])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][111] ([i915#4312])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-guc/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][112] ([i915#4312])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bwr-2160/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991


Build changes
-------------

  * Linux: CI_DRM_12526 -> Patchwork_112246v1

  CI-20190529: 20190529
  CI_DRM_12526: 34f2552b43d664ce4b76c6e356a57b7835f59c81 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7102: bacfdc84a9c02556c5441deb21e3a3f18a07347d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112246v1: 34f2552b43d664ce4b76c6e356a57b7835f59c81 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

17817aeb6ac5 drm/i915/selftests: Convert atomic_* API calls for i915_active.count refcount_*
6addb8688071 drm/i915: convert i915_active.count from atomic_t to refcount_t

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/index.html

--===============9191331637047444591==
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
<tr><td><b>Series:</b></td><td>convert i915_active.count from atomic_t to refcount_t</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112246/">https://patchwork.freedesktop.org/series/112246/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12526 -&gt; Patchwork_112246v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_112246v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_112246v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (3): fi-hsw-4770 fi-bdw-gvtdvm bat-dg2-oem1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112246v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-ilk-650/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-blb-e6850/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-blb-e6850/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-n3050/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-rkl-11600/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-6600u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-icl-u2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-icl-u2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-apl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-apl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg1-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg1-5/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-pnv-d510/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-glk-j4005/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-rkl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-rkl-guc/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-skl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-skl-6700k2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-6700k2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-kbl-7567u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-8700k/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-kbl-8809g/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-kbl-8809g/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-elk-e7500/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-nick/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-adl-ddr5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-adl-ddr5/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-bwr-2160/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bwr-2160/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-8109u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-adlp-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adlp-4/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-ivb-3770/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-snb-2600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-snb-2600/igt@i915_module_load@load.html">DMESG-WARN</a></p>
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
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-jsl-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-rpls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-rpls-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adlp-6/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-ehl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-ehl-2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg1-7/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-jsl-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-jsl-3/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adlp-9/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg2-11/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-adln-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adln-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-kbl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-kbl-2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-adlm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adlm-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-atsm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-atsm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-atsm-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg2-9/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-rpls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-rpls-2/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112246v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-kbl-soraka/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/bat-dg1-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg1-6/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12526/fi-bsw-kefka/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-kefka/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112246v1/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12526 -&gt; Patchwork_112246v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12526: 34f2552b43d664ce4b76c6e356a57b7835f59c81 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7102: bacfdc84a9c02556c5441deb21e3a3f18a07347d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112246v1: 34f2552b43d664ce4b76c6e356a57b7835f59c81 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>17817aeb6ac5 drm/i915/selftests: Convert atomic_<em> API calls for i915_active.count refcount_</em><br />
6addb8688071 drm/i915: convert i915_active.count from atomic_t to refcount_t</p>

</body>
</html>

--===============9191331637047444591==--
