Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5F73EA5F9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 15:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609996E03C;
	Thu, 12 Aug 2021 13:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 698076E03C;
 Thu, 12 Aug 2021 13:47:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6242CAA3D8;
 Thu, 12 Aug 2021 13:47:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0715623975334748150=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Aug 2021 13:47:45 -0000
Message-ID: <162877606537.21761.8806922444565189268@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210812103615.491293-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210812103615.491293-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_Revert_=22drm/i915=3A_allow_DG1_aut?=
 =?utf-8?q?oprobe_for_CONFIG=5FBROKEN=22?=
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

--===============0715623975334748150==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] Revert "drm/i915: allow DG1 autoprobe for CONFIG_BROKEN"
URL   : https://patchwork.freedesktop.org/series/93630/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10474 -> Patchwork_20803
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20803 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20803, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20803:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_basic@basic:
    - fi-bsw-nick:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bsw-nick/igt@gem_exec_basic@basic.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-x1275/igt@gem_exec_basic@basic.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-snb-2520m/igt@gem_exec_basic@basic.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-pnv-d510/igt@gem_exec_basic@basic.html
    - fi-apl-guc:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-apl-guc/igt@gem_exec_basic@basic.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-8700k/igt@gem_exec_basic@basic.html
    - fi-icl-u2:          NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-icl-u2/igt@gem_exec_basic@basic.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bdw-gvtdvm/igt@gem_exec_basic@basic.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bsw-kefka/igt@gem_exec_basic@basic.html
    - fi-ilk-650:         NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ilk-650/igt@gem_exec_basic@basic.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-elk-e7500/igt@gem_exec_basic@basic.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-7567u/igt@gem_exec_basic@basic.html
    - fi-skl-guc:         NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-skl-guc/igt@gem_exec_basic@basic.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-guc/igt@gem_exec_basic@basic.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ivb-3770/igt@gem_exec_basic@basic.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-skl-6700k2/igt@gem_exec_basic@basic.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-tgl-1115g4/igt@gem_exec_basic@basic.html
    - fi-icl-y:           NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-icl-y/igt@gem_exec_basic@basic.html
    - fi-cml-u2:          NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cml-u2/igt@gem_exec_basic@basic.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-hsw-4770/igt@gem_exec_basic@basic.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-rkl-guc/igt@gem_exec_basic@basic.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-7500u/igt@gem_exec_basic@basic.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-guc/igt@gem_exec_basic@basic.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-8809g/igt@gem_exec_basic@basic.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bdw-5557u/igt@gem_exec_basic@basic.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bwr-2160/igt@gem_exec_basic@basic.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-8109u/igt@gem_exec_basic@basic.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-glk-dsi/igt@gem_exec_basic@basic.html

  * igt@gem_exec_store@basic:
    - fi-rkl-guc:         [PASS][29] -> [WARN][30] +31 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-rkl-guc/igt@gem_exec_store@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-rkl-guc/igt@gem_exec_store@basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [PASS][31] -> [WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-kbl-8809g/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-icl-u2:          [PASS][33] -> [WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-icl-u2/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-cml-u2:          [PASS][35] -> [WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-cml-u2/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][37] -> [WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-cfl-8700k/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][39] -> [WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-snb-2520m/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-hsw-4770:        [PASS][41] -> [WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-hsw-4770/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-hsw-4770/igt@i915_module_load@reload.html
    - fi-tgl-1115g4:      [PASS][43] -> [WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-tgl-1115g4/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-tgl-1115g4/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][45] -> [WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-pnv-d510/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-pnv-d510/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][47] -> [WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-cfl-guc/igt@i915_module_load@reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-ilk-650:         [PASS][49] -> [WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-ilk-650/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ilk-650/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][51] -> [WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-ivb-3770/igt@i915_module_load@reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ivb-3770/igt@i915_module_load@reload.html
    - fi-elk-e7500:       [PASS][53] -> [WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-elk-e7500/igt@i915_module_load@reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-skl-6700k2:      [PASS][55] -> [WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-skl-6700k2/igt@i915_module_load@reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-skl-6700k2/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][57] -> [WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-bsw-kefka/igt@i915_module_load@reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-bdw-5557u:       [PASS][59] -> [WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-bdw-5557u/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bdw-5557u/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [PASS][61] -> [WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-glk-dsi/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-kbl-7567u:       [PASS][63] -> [WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-kbl-7567u/igt@i915_module_load@reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-7567u/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       [PASS][65] -> [WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-kbl-x1275/igt@i915_module_load@reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-x1275/igt@i915_module_load@reload.html
    - fi-bwr-2160:        [PASS][67] -> [WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-bwr-2160/igt@i915_module_load@reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bwr-2160/igt@i915_module_load@reload.html
    - fi-skl-guc:         [PASS][69] -> [WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-skl-guc/igt@i915_module_load@reload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-skl-guc/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][71] -> [WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-kbl-guc/igt@i915_module_load@reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-guc/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][73] -> [WARN][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-cfl-8109u/igt@i915_module_load@reload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-8109u/igt@i915_module_load@reload.html
    - fi-icl-y:           [PASS][75] -> [WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-icl-y/igt@i915_module_load@reload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-icl-y/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][77] -> [WARN][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-bsw-nick/igt@i915_module_load@reload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bsw-nick/igt@i915_module_load@reload.html
    - fi-kbl-7500u:       [PASS][79] -> [WARN][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-kbl-7500u/igt@i915_module_load@reload.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-7500u/igt@i915_module_load@reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_basic@basic:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-tgl-dsi/igt@gem_exec_basic@basic.html
    - {fi-hsw-gt1}:       NOTRUN -> [FAIL][82]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-hsw-gt1/igt@gem_exec_basic@basic.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ehl-2/igt@gem_exec_basic@basic.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-jsl-1/igt@gem_exec_basic@basic.html

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [PASS][85] -> [WARN][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-tgl-dsi/igt@i915_module_load@reload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-tgl-dsi/igt@i915_module_load@reload.html
    - {fi-ehl-2}:         [PASS][87] -> [WARN][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-ehl-2/igt@i915_module_load@reload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ehl-2/igt@i915_module_load@reload.html
    - {fi-hsw-gt1}:       [PASS][89] -> [WARN][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-hsw-gt1/igt@i915_module_load@reload.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-hsw-gt1/igt@i915_module_load@reload.html
    - {fi-jsl-1}:         [PASS][91] -> [WARN][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-jsl-1/igt@i915_module_load@reload.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-jsl-1/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_20803 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][93] ([i915#1993]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-icl-y/igt@i915_selftest@live@execlists.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-icl-y/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717


Participating hosts (39 -> 33)
------------------------------

  Missing    (6): fi-kbl-soraka fi-bxt-dsi fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10474 -> Patchwork_20803

  CI-20190529: 20190529
  CI_DRM_10474: 046552fb86ff8adbcff75775fa5f407139cc8507 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6172: ffda3a23ee9c108f17147a05c321f32ae1f25132 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20803: 6ef5babea08230d0fa89d8256b6705408fb893ae @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6ef5babea082 drm/i915/topic/for-CI: Disable fake LMEM implementation
3427bfb73c60 drm/i915: Add pci ids for DG1
c35f56eb2f5c Revert "drm/i915: allow DG1 autoprobe for CONFIG_BROKEN"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/index.html

--===============0715623975334748150==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] Revert &quot;drm/i915: allow DG1 autoprobe for CONFIG_BROKEN&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93630/">https://patchwork.freedesktop.org/series/93630/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10474 -&gt; Patchwork_20803</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20803 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20803, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20803:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_basic@basic:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bsw-nick/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-x1275/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-snb-2520m/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-pnv-d510/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-apl-guc/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-8700k/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-icl-u2/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bdw-gvtdvm/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bsw-kefka/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ilk-650/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-elk-e7500/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-7567u/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-skl-guc/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-guc/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ivb-3770/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-skl-6700k2/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-tgl-1115g4/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-icl-y/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cml-u2/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-hsw-4770/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-rkl-guc/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-7500u/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-guc/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-8809g/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bdw-5557u/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bwr-2160/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-8109u/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-glk-dsi/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_store@basic:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-rkl-guc/igt@gem_exec_store@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-rkl-guc/igt@gem_exec_store@basic.html">WARN</a> +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-kbl-8809g/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-8809g/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-icl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-icl-u2/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-cml-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cml-u2/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-cfl-8700k/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-8700k/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-snb-2520m/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-snb-2520m/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-hsw-4770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-hsw-4770/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-tgl-1115g4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-tgl-1115g4/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-pnv-d510/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-pnv-d510/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-cfl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-guc/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-ilk-650/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ilk-650/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ivb-3770/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-elk-e7500/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-elk-e7500/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-skl-6700k2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-skl-6700k2/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-bsw-kefka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bsw-kefka/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-bdw-5557u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bdw-5557u/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-glk-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-glk-dsi/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-7567u/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-kbl-x1275/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-x1275/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-bwr-2160/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bwr-2160/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-skl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-skl-guc/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-guc/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-cfl-8109u/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-icl-y/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-bsw-nick/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-bsw-nick/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-kbl-7500u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-kbl-7500u/igt@i915_module_load@reload.html">WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_basic@basic:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-tgl-dsi/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-hsw-gt1/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ehl-2/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-jsl-1/igt@gem_exec_basic@basic.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-tgl-dsi/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-ehl-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-ehl-2/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-hsw-gt1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-hsw-gt1/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-jsl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-jsl-1/igt@i915_module_load@reload.html">WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20803 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-icl-y/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1993">i915#1993</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20803/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 33)</h2>
<p>Missing    (6): fi-kbl-soraka fi-bxt-dsi fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10474 -&gt; Patchwork_20803</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10474: 046552fb86ff8adbcff75775fa5f407139cc8507 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6172: ffda3a23ee9c108f17147a05c321f32ae1f25132 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20803: 6ef5babea08230d0fa89d8256b6705408fb893ae @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6ef5babea082 drm/i915/topic/for-CI: Disable fake LMEM implementation<br />
3427bfb73c60 drm/i915: Add pci ids for DG1<br />
c35f56eb2f5c Revert "drm/i915: allow DG1 autoprobe for CONFIG_BROKEN"</p>

</body>
</html>

--===============0715623975334748150==--
