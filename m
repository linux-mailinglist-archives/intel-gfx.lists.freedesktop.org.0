Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D487F5FABA8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 06:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95A810E7A0;
	Tue, 11 Oct 2022 04:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FB5010E7A0;
 Tue, 11 Oct 2022 04:37:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54A7CAA0ED;
 Tue, 11 Oct 2022 04:37:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6091641514730697293=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Tue, 11 Oct 2022 04:37:24 -0000
Message-ID: <166546304430.5542.12239927834190420357@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1665458639.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1665458639.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRmly?=
 =?utf-8?q?m_up_gt_park/unpark?=
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

--===============6091641514730697293==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Firm up gt park/unpark
URL   : https://patchwork.freedesktop.org/series/109563/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12231 -> Patchwork_109563v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109563v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109563v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/index.html

Participating hosts (46 -> 47)
------------------------------

  Additional (3): fi-kbl-soraka bat-atsm-1 bat-adls-5 
  Missing    (2): fi-ctg-p8600 fi-tgl-mst 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109563v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - bat-dg1-5:          [PASS][1] -> [DMESG-WARN][2] +16 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg1-5/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg1-5/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-4:         [PASS][3] -> [DMESG-WARN][4] +16 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlp-4/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlp-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] +16 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-rkl-guc:         [PASS][7] -> [DMESG-WARN][8] +16 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-rkl-guc/igt@i915_selftest@live@gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-guc/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@mman:
    - bat-dg1-5:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg1-5/igt@i915_selftest@live@mman.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg1-5/igt@i915_selftest@live@mman.html
    - fi-pnv-d510:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-pnv-d510/igt@i915_selftest@live@mman.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-pnv-d510/igt@i915_selftest@live@mman.html
    - fi-glk-j4005:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-glk-j4005/igt@i915_selftest@live@mman.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-glk-j4005/igt@i915_selftest@live@mman.html
    - fi-kbl-7567u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-kbl-7567u/igt@i915_selftest@live@mman.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-7567u/igt@i915_selftest@live@mman.html
    - fi-rkl-11600:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-rkl-11600/igt@i915_selftest@live@mman.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-11600/igt@i915_selftest@live@mman.html
    - fi-adl-ddr5:        [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-adl-ddr5/igt@i915_selftest@live@mman.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-adl-ddr5/igt@i915_selftest@live@mman.html
    - fi-cfl-guc:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-cfl-guc/igt@i915_selftest@live@mman.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-guc/igt@i915_selftest@live@mman.html
    - fi-skl-6700k2:      [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-skl-6700k2/igt@i915_selftest@live@mman.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-6700k2/igt@i915_selftest@live@mman.html
    - fi-cfl-8109u:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-cfl-8109u/igt@i915_selftest@live@mman.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-8109u/igt@i915_selftest@live@mman.html
    - fi-ilk-650:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-ilk-650/igt@i915_selftest@live@mman.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ilk-650/igt@i915_selftest@live@mman.html
    - fi-blb-e6850:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-blb-e6850/igt@i915_selftest@live@mman.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-blb-e6850/igt@i915_selftest@live@mman.html
    - fi-skl-6600u:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-skl-6600u/igt@i915_selftest@live@mman.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-6600u/igt@i915_selftest@live@mman.html
    - fi-apl-guc:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-apl-guc/igt@i915_selftest@live@mman.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-apl-guc/igt@i915_selftest@live@mman.html
    - fi-bdw-5557u:       [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bdw-5557u/igt@i915_selftest@live@mman.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bdw-5557u/igt@i915_selftest@live@mman.html
    - fi-snb-2520m:       [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-snb-2520m/igt@i915_selftest@live@mman.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-snb-2520m/igt@i915_selftest@live@mman.html
    - fi-rkl-guc:         [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-rkl-guc/igt@i915_selftest@live@mman.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-guc/igt@i915_selftest@live@mman.html
    - fi-skl-guc:         [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-skl-guc/igt@i915_selftest@live@mman.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-guc/igt@i915_selftest@live@mman.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@i915_selftest@live@mman.html
    - fi-cfl-8700k:       [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-cfl-8700k/igt@i915_selftest@live@mman.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-8700k/igt@i915_selftest@live@mman.html
    - fi-bsw-nick:        [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bsw-nick/igt@i915_selftest@live@mman.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bsw-nick/igt@i915_selftest@live@mman.html
    - fi-hsw-g3258:       [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-hsw-g3258/igt@i915_selftest@live@mman.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-hsw-g3258/igt@i915_selftest@live@mman.html
    - fi-bdw-gvtdvm:      [PASS][50] -> [INCOMPLETE][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bdw-gvtdvm/igt@i915_selftest@live@mman.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bdw-gvtdvm/igt@i915_selftest@live@mman.html
    - fi-hsw-4770:        [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-hsw-4770/igt@i915_selftest@live@mman.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-hsw-4770/igt@i915_selftest@live@mman.html
    - bat-adlp-4:         [PASS][54] -> [INCOMPLETE][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlp-4/igt@i915_selftest@live@mman.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlp-4/igt@i915_selftest@live@mman.html
    - fi-ivb-3770:        [PASS][56] -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-ivb-3770/igt@i915_selftest@live@mman.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ivb-3770/igt@i915_selftest@live@mman.html
    - fi-elk-e7500:       [PASS][58] -> [INCOMPLETE][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-elk-e7500/igt@i915_selftest@live@mman.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-elk-e7500/igt@i915_selftest@live@mman.html
    - fi-snb-2600:        [PASS][60] -> [INCOMPLETE][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-snb-2600/igt@i915_selftest@live@mman.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-snb-2600/igt@i915_selftest@live@mman.html
    - fi-bxt-dsi:         [PASS][62] -> [INCOMPLETE][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bxt-dsi/igt@i915_selftest@live@mman.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bxt-dsi/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-rkl-11600:       [PASS][64] -> [DMESG-WARN][65] +16 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html
    - fi-adl-ddr5:        [PASS][66] -> [DMESG-WARN][67] +16 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-adl-ddr5/igt@i915_selftest@live@sanitycheck.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-adl-ddr5/igt@i915_selftest@live@sanitycheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-atsm-1}:       NOTRUN -> [DMESG-WARN][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-atsm-1/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-adlp-6}:       [PASS][69] -> [DMESG-WARN][70] +16 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
    - {bat-jsl-3}:        [PASS][71] -> [DMESG-WARN][72] +16 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
    - {bat-dg2-8}:        [PASS][73] -> [DMESG-WARN][74] +16 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-8/igt@i915_pm_rpm@module-reload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-8/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@active:
    - {bat-adlm-1}:       [PASS][75] -> [DMESG-WARN][76] +16 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlm-1/igt@i915_selftest@live@active.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlm-1/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@gt_contexts:
    - {bat-jsl-1}:        [PASS][77] -> [DMESG-WARN][78] +16 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html
    - {fi-jsl-1}:         [PASS][79] -> [DMESG-WARN][80] +16 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-jsl-1/igt@i915_selftest@live@gt_contexts.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-jsl-1/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - {bat-rpls-2}:       [PASS][81] -> [DMESG-WARN][82] +14 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rpls-2/igt@i915_selftest@live@gt_engines.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rpls-2/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {bat-adln-1}:       [PASS][83] -> [DMESG-WARN][84] +16 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adln-1/igt@i915_selftest@live@gt_heartbeat.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adln-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - {fi-ehl-2}:         [PASS][85] -> [DMESG-WARN][86] +16 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - {bat-dg2-11}:       [PASS][87] -> [DMESG-WARN][88] +16 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_timelines:
    - {bat-dg2-9}:        [PASS][89] -> [DMESG-WARN][90] +16 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-9/igt@i915_selftest@live@gt_timelines.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-9/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@mman:
    - {fi-tgl-dsi}:       [PASS][91] -> [INCOMPLETE][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-tgl-dsi/igt@i915_selftest@live@mman.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-tgl-dsi/igt@i915_selftest@live@mman.html
    - {bat-rplp-1}:       [PASS][93] -> [INCOMPLETE][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rplp-1/igt@i915_selftest@live@mman.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rplp-1/igt@i915_selftest@live@mman.html
    - {bat-adls-5}:       NOTRUN -> [INCOMPLETE][95]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adls-5/igt@i915_selftest@live@mman.html
    - {bat-dg2-9}:        [PASS][96] -> [INCOMPLETE][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-9/igt@i915_selftest@live@mman.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-9/igt@i915_selftest@live@mman.html
    - {bat-adln-1}:       [PASS][98] -> [INCOMPLETE][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adln-1/igt@i915_selftest@live@mman.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adln-1/igt@i915_selftest@live@mman.html
    - {bat-rpls-2}:       [PASS][100] -> [INCOMPLETE][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rpls-2/igt@i915_selftest@live@mman.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rpls-2/igt@i915_selftest@live@mman.html
    - {bat-adlp-6}:       [PASS][102] -> [INCOMPLETE][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlp-6/igt@i915_selftest@live@mman.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlp-6/igt@i915_selftest@live@mman.html
    - {fi-ehl-2}:         [PASS][104] -> [INCOMPLETE][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-ehl-2/igt@i915_selftest@live@mman.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ehl-2/igt@i915_selftest@live@mman.html
    - {bat-dg2-11}:       [PASS][106] -> [INCOMPLETE][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-11/igt@i915_selftest@live@mman.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-11/igt@i915_selftest@live@mman.html
    - {bat-jsl-3}:        [PASS][108] -> [INCOMPLETE][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-jsl-3/igt@i915_selftest@live@mman.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-jsl-3/igt@i915_selftest@live@mman.html
    - {bat-dg2-8}:        [PASS][110] -> [INCOMPLETE][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-8/igt@i915_selftest@live@mman.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-8/igt@i915_selftest@live@mman.html
    - {bat-adlm-1}:       [PASS][112] -> [INCOMPLETE][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlm-1/igt@i915_selftest@live@mman.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlm-1/igt@i915_selftest@live@mman.html
    - {bat-jsl-1}:        [PASS][114] -> [INCOMPLETE][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-jsl-1/igt@i915_selftest@live@mman.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-jsl-1/igt@i915_selftest@live@mman.html
    - {fi-jsl-1}:         [PASS][116] -> [INCOMPLETE][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-jsl-1/igt@i915_selftest@live@mman.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-jsl-1/igt@i915_selftest@live@mman.html
    - {bat-rpls-1}:       [PASS][118] -> [INCOMPLETE][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rpls-1/igt@i915_selftest@live@mman.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@sanitycheck:
    - {fi-tgl-dsi}:       [PASS][120] -> [DMESG-WARN][121] +12 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-tgl-dsi/igt@i915_selftest@live@sanitycheck.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-tgl-dsi/igt@i915_selftest@live@sanitycheck.html
    - {bat-rplp-1}:       [PASS][122] -> [DMESG-WARN][123] +16 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - {bat-rpls-1}:       [PASS][124] -> [DMESG-WARN][125] +16 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rpls-1/igt@i915_selftest@live@workarounds.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rpls-1/igt@i915_selftest@live@workarounds.html
    - {bat-adls-5}:       NOTRUN -> [DMESG-WARN][126] +16 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adls-5/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_109563v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][127] ([fdo#109271]) +9 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#2190])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#4613]) +3 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bxt-dsi:         [PASS][130] -> [DMESG-FAIL][131] ([i915#5334])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][132] ([i915#1886])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - fi-icl-u2:          [PASS][133] -> [INCOMPLETE][134] ([i915#7057])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-icl-u2/igt@i915_selftest@live@mman.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-icl-u2/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][135] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][136] ([i915#4312])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlp-4/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][137] ([fdo#109271] / [i915#4312])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][138] ([fdo#109271] / [i915#4312])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-elk-e7500/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][139] ([i915#4312])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-snb-2600/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][140] ([i915#4312])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bxt-dsi/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][141] ([i915#4312])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg1-5/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][142] ([fdo#109271] / [i915#2403] / [i915#4312])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][143] ([i915#4312])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][144] ([i915#4312])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][145] ([i915#4312])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][146] ([i915#4312])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][147] ([i915#4312])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][148] ([i915#4312])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][149] ([i915#4312])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-8109u/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][150] ([fdo#109271] / [i915#4312])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ilk-650/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][151] ([fdo#109271] / [i915#2403] / [i915#4312])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-blb-e6850/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][152] ([i915#4312])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][153] ([i915#4312] / [i915#4991])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-icl-u2/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][154] ([fdo#109271] / [i915#4312] / [i915#6641])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-apl-guc/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][155] ([i915#4312])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bdw-5557u/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][156] ([i915#4312])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-snb-2520m/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][157] ([i915#4312])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][158] ([i915#4312] / [i915#6641])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][159] ([i915#4312] / [i915#6641])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][160] ([i915#4312])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-8700k/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][161] ([fdo#109271] / [i915#4312])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bsw-nick/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][162] ([i915#4312])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bdw-gvtdvm/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#6641]: https://gitlab.freedesktop.org/drm/intel/issues/6641
  [i915#7030]: https://gitlab.freedesktop.org/drm/intel/issues/7030
  [i915#7057]: https://gitlab.freedesktop.org/drm/intel/issues/7057


Build changes
-------------

  * Linux: CI_DRM_12231 -> Patchwork_109563v1

  CI-20190529: 20190529
  CI_DRM_12231: bb84c1baa34eed834400e9a3cf9642840be002e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7007: 39a979fb4453c557022f0477c609afe10a049e48 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109563v1: bb84c1baa34eed834400e9a3cf9642840be002e1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

63e047aeba79 drm/i915/gt: Warn if not in RC6 when GT is parked
672b75d1fb78 drm/i915/gt: Don't do display work on platforms without display

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/index.html

--===============6091641514730697293==
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
<tr><td><b>Series:</b></td><td>Firm up gt park/unpark</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109563/">https://patchwork.freedesktop.org/series/109563/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12231 -&gt; Patchwork_109563v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109563v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_109563v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/index.html</p>
<h2>Participating hosts (46 -&gt; 47)</h2>
<p>Additional (3): fi-kbl-soraka bat-atsm-1 bat-adls-5 <br />
  Missing    (2): fi-ctg-p8600 fi-tgl-mst </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109563v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg1-5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg1-5/igt@i915_module_load@reload.html">DMESG-WARN</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-rkl-guc/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-guc/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg1-5/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg1-5/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-pnv-d510/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-pnv-d510/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-glk-j4005/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-glk-j4005/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-kbl-7567u/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-7567u/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-rkl-11600/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-11600/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-adl-ddr5/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-adl-ddr5/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-cfl-guc/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-guc/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-skl-6700k2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-6700k2/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-cfl-8109u/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-8109u/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-ilk-650/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ilk-650/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-blb-e6850/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-blb-e6850/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-skl-6600u/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-6600u/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-apl-guc/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-apl-guc/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bdw-5557u/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bdw-5557u/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-snb-2520m/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-snb-2520m/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-rkl-guc/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-guc/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-skl-guc/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-guc/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-cfl-8700k/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-8700k/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bsw-nick/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bsw-nick/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-hsw-g3258/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-hsw-g3258/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bdw-gvtdvm/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bdw-gvtdvm/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-hsw-4770/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-hsw-4770/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlp-4/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlp-4/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-ivb-3770/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ivb-3770/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-elk-e7500/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-elk-e7500/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-snb-2600/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-snb-2600/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bxt-dsi/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bxt-dsi/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +16 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-adl-ddr5/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-adl-ddr5/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +16 similar issues</p>
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
<li>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-atsm-1/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +16 similar issues</p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-jsl-3/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-jsl-3/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +16 similar issues</p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-8/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-8/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +16 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlm-1/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlm-1/igt@i915_selftest@live@active.html">DMESG-WARN</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +16 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-jsl-1/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-jsl-1/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +16 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rpls-2/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rpls-2/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adln-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adln-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-9/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-9/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-tgl-dsi/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-tgl-dsi/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rplp-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rplp-1/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adls-5/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-9/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-9/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adln-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adln-1/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rpls-2/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlp-6/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlp-6/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-ehl-2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ehl-2/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-11/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-11/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-jsl-3/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-jsl-3/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-8/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg2-8/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlm-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlm-1/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-jsl-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-jsl-1/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-jsl-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-jsl-1/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rpls-1/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-tgl-dsi/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-tgl-dsi/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +12 similar issues</p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +16 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rpls-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-rpls-1/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +16 similar issues</p>
</li>
<li>
<p>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adls-5/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +16 similar issues</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109563v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-icl-u2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-icl-u2/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7057">i915#7057</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6641">i915#6641</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6641">i915#6641</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6641">i915#6641</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109563v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12231 -&gt; Patchwork_109563v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12231: bb84c1baa34eed834400e9a3cf9642840be002e1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7007: 39a979fb4453c557022f0477c609afe10a049e48 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109563v1: bb84c1baa34eed834400e9a3cf9642840be002e1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>63e047aeba79 drm/i915/gt: Warn if not in RC6 when GT is parked<br />
672b75d1fb78 drm/i915/gt: Don't do display work on platforms without display</p>

</body>
</html>

--===============6091641514730697293==--
