Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A9679F538
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 00:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0520910E1CD;
	Wed, 13 Sep 2023 22:50:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 611EF10E1C5;
 Wed, 13 Sep 2023 22:50:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49FC7AADF3;
 Wed, 13 Sep 2023 22:50:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2376736878773690405=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Wed, 13 Sep 2023 22:50:46 -0000
Message-ID: <169464544629.31251.2396695322140350466@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230913150425.5742-1-tzimmermann@suse.de>
In-Reply-To: <20230913150425.5742-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Convert_fbdev_to_DRM_client_=28rev2=29?=
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

--===============2376736878773690405==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Convert fbdev to DRM client (rev2)
URL   : https://patchwork.freedesktop.org/series/115714/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13627 -> Patchwork_115714v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_115714v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_115714v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_115714v2:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@basic:
    - bat-dg1-5:          NOTRUN -> [FAIL][1] +3 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg1-5/igt@gem_lmem_swapping@basic.html
    - bat-dg2-11:         NOTRUN -> [FAIL][2] +5 other tests fail
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg2-11/igt@gem_lmem_swapping@basic.html

  * igt@i915_module_load@load:
    - bat-atsm-1:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-atsm-1/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-atsm-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - bat-mtlp-6:         NOTRUN -> [WARN][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][6] -> [WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-skl-6600u/igt@i915_module_load@reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-apl-guc:         [PASS][8] -> [WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-apl-guc/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-apl-guc/igt@i915_module_load@reload.html
    - bat-dg1-5:          [PASS][10] -> [WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-dg1-5/igt@i915_module_load@reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg1-5/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][12] -> [WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-pnv-d510/igt@i915_module_load@reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-pnv-d510/igt@i915_module_load@reload.html
    - fi-glk-j4005:       [PASS][14] -> [WARN][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-glk-j4005/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-glk-j4005/igt@i915_module_load@reload.html
    - bat-adlp-9:         [PASS][16] -> [WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adlp-9/igt@i915_module_load@reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlp-9/igt@i915_module_load@reload.html
    - fi-skl-guc:         [PASS][18] -> [WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-skl-guc/igt@i915_module_load@reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-guc/igt@i915_module_load@reload.html
    - bat-dg2-11:         [PASS][20] -> [WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-dg2-11/igt@i915_module_load@reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg2-11/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][22] -> [WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-8700k/igt@i915_module_load@reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][24] -> [WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-bsw-nick/igt@i915_module_load@reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-nick/igt@i915_module_load@reload.html
    - bat-kbl-2:          [PASS][26] -> [WARN][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-kbl-2/igt@i915_module_load@reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-kbl-2/igt@i915_module_load@reload.html
    - fi-rkl-11600:       [PASS][28] -> [WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-rkl-11600/igt@i915_module_load@reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-rkl-11600/igt@i915_module_load@reload.html
    - bat-adls-5:         [PASS][30] -> [WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adls-5/igt@i915_module_load@reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adls-5/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][32] -> [WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-guc/igt@i915_module_load@reload.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-guc/igt@i915_module_load@reload.html
    - bat-jsl-3:          [PASS][34] -> [WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-3/igt@i915_module_load@reload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-3/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       [PASS][36] -> [WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-x1275/igt@i915_module_load@reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-x1275/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][38] -> [WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-8109u/igt@i915_module_load@reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8109u/igt@i915_module_load@reload.html
    - fi-kbl-8809g:       [PASS][40] -> [WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-8809g/igt@i915_module_load@reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][42] -> [WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-ivb-3770/igt@i915_module_load@reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ivb-3770/igt@i915_module_load@reload.html
    - bat-mtlp-8:         [PASS][44] -> [WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-mtlp-8/igt@i915_module_load@reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-8/igt@i915_module_load@reload.html
    - fi-elk-e7500:       [PASS][46] -> [WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-elk-e7500/igt@i915_module_load@reload.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][48] -> [WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-guc/igt@i915_module_load@reload.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-guc/igt@i915_module_load@reload.html
    - bat-adlm-1:         [PASS][50] -> [WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adlm-1/igt@i915_module_load@reload.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlm-1/igt@i915_module_load@reload.html
    - fi-ilk-650:         [PASS][52] -> [WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-ilk-650/igt@i915_module_load@reload.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ilk-650/igt@i915_module_load@reload.html
    - bat-jsl-1:          [PASS][54] -> [WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-1/igt@i915_module_load@reload.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-1/igt@i915_module_load@reload.html
    - fi-tgl-1115g4:      [PASS][56] -> [WARN][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-tgl-1115g4/igt@i915_module_load@reload.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-tgl-1115g4/igt@i915_module_load@reload.html
    - fi-blb-e6850:       [PASS][58] -> [WARN][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-blb-e6850/igt@i915_module_load@reload.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-blb-e6850/igt@i915_module_load@reload.html
    - fi-bsw-n3050:       [PASS][60] -> [WARN][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-bsw-n3050/igt@i915_module_load@reload.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-n3050/igt@i915_module_load@reload.html
    - bat-rpls-1:         [PASS][62] -> [WARN][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-rpls-1/igt@i915_module_load@reload.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-rpls-1/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-nick:        [PASS][64] -> [FAIL][65] +2 other tests fail
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
    - bat-kbl-2:          [PASS][66] -> [FAIL][67] +2 other tests fail
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
    - bat-dg2-11:         [PASS][68] -> [FAIL][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-x1275:       [PASS][70] -> [FAIL][71] +1 other test fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
    - bat-mtlp-8:         [PASS][72] -> [FAIL][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-guc:         [PASS][74] -> [FAIL][75] +2 other tests fail
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
    - bat-jsl-1:          [PASS][76] -> [FAIL][77] +1 other test fail
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-1/igt@i915_pm_rpm@module-reload.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-1/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-n3050:       [PASS][78] -> [FAIL][79] +2 other tests fail
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-1:         [PASS][80] -> [FAIL][81] +1 other test fail
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-rpls-1/igt@i915_pm_rpm@module-reload.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-rpls-1/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         NOTRUN -> [SKIP][82]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-adlm-1:         NOTRUN -> [SKIP][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlm-1/igt@i915_selftest@live.html
    - bat-jsl-1:          NOTRUN -> [SKIP][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-1/igt@i915_selftest@live.html
    - bat-rpls-1:         NOTRUN -> [SKIP][85]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-rpls-1/igt@i915_selftest@live.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][86]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@i915_selftest@live.html
    - bat-dg1-5:          NOTRUN -> [SKIP][87]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg1-5/igt@i915_selftest@live.html
    - bat-adlp-9:         NOTRUN -> [SKIP][88]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlp-9/igt@i915_selftest@live.html
    - bat-dg2-11:         NOTRUN -> [SKIP][89]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg2-11/igt@i915_selftest@live.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][90]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-rkl-11600/igt@i915_selftest@live.html
    - bat-adls-5:         NOTRUN -> [SKIP][91]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adls-5/igt@i915_selftest@live.html
    - bat-jsl-3:          NOTRUN -> [SKIP][92]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-3/igt@i915_selftest@live.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [PASS][93] -> [FAIL][94] +2 other tests fail
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-cfl-8700k:       [PASS][95] -> [FAIL][96] +2 other tests fail
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-kbl-8809g:       [PASS][97] -> [FAIL][98] +2 other tests fail
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-elk-e7500:       [PASS][99] -> [FAIL][100] +1 other test fail
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-adlm-1:         [PASS][101] -> [FAIL][102] +2 other tests fail
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adlm-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlm-1/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-tgl-1115g4:      [PASS][103] -> [FAIL][104] +1 other test fail
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-cfl-guc:         [PASS][105] -> [FAIL][106] +2 other tests fail
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-ilk-650:         [PASS][107] -> [FAIL][108] +1 other test fail
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-blb-e6850:       [PASS][109] -> [FAIL][110] +1 other test fail
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-blb-e6850/igt@i915_suspend@basic-s2idle-without-i915.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-blb-e6850/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][111] -> [FAIL][112] +2 other tests fail
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
    - fi-skl-6600u:       [PASS][113] -> [FAIL][114] +2 other tests fail
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html
    - bat-adls-5:         [PASS][115] -> [FAIL][116] +2 other tests fail
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html
    - fi-apl-guc:         [PASS][117] -> [FAIL][118] +2 other tests fail
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html
    - bat-dg1-5:          [PASS][119] -> [FAIL][120] +2 other tests fail
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-dg1-5/igt@i915_suspend@basic-s3-without-i915.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg1-5/igt@i915_suspend@basic-s3-without-i915.html
    - fi-pnv-d510:        [PASS][121] -> [FAIL][122] +1 other test fail
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html
    - bat-jsl-3:          [PASS][123] -> [FAIL][124] +2 other tests fail
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
    - fi-glk-j4005:       [PASS][125] -> [FAIL][126] +2 other tests fail
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-glk-j4005/igt@i915_suspend@basic-s3-without-i915.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-glk-j4005/igt@i915_suspend@basic-s3-without-i915.html
    - bat-adlp-9:         [PASS][127] -> [FAIL][128] +2 other tests fail
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adlp-9/igt@i915_suspend@basic-s3-without-i915.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlp-9/igt@i915_suspend@basic-s3-without-i915.html
    - fi-skl-guc:         [PASS][129] -> [FAIL][130] +2 other tests fail
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-skl-guc/igt@i915_suspend@basic-s3-without-i915.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-guc/igt@i915_suspend@basic-s3-without-i915.html
    - bat-mtlp-6:         NOTRUN -> [FAIL][131] +1 other test fail
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-ivb-3770:        [DMESG-WARN][132] ([i915#8841]) -> [FAIL][133] +1 other test fail
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-tgl-1115g4:      [INCOMPLETE][134] ([i915#7443] / [i915#8102]) -> [FAIL][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
    - fi-kbl-x1275:       [SKIP][136] ([fdo#109271]) -> [FAIL][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html
    - bat-mtlp-8:         [SKIP][138] ([i915#6645]) -> [FAIL][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html
    - bat-jsl-1:          [FAIL][140] ([fdo#103375]) -> [FAIL][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html
    - bat-rpls-1:         [ABORT][142] ([i915#7978] / [i915#8668]) -> [FAIL][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_115714v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-hsw-4770:        [PASS][144] -> [FAIL][145] ([i915#8293])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-hsw-4770/boot.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         NOTRUN -> [ABORT][146] ([i915#7978] / [i915#8668])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-6:         NOTRUN -> [SKIP][147] ([i915#4613]) +3 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][148] ([i915#4083])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@gem_mmap@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][149] ([i915#4077]) +2 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][150] ([i915#4079]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-6:         NOTRUN -> [SKIP][151] ([i915#6621])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][152] ([fdo#109271])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-x1275/igt@i915_selftest@live.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][153] ([fdo#109271])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8109u/igt@i915_selftest@live.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][154] ([fdo#109271])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-8809g/igt@i915_selftest@live.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][155] ([fdo#109271])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ivb-3770/igt@i915_selftest@live.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][156] ([fdo#109271])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-elk-e7500/igt@i915_selftest@live.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][157] ([fdo#109271])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-guc/igt@i915_selftest@live.html
    - fi-ilk-650:         NOTRUN -> [SKIP][158] ([fdo#109271])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ilk-650/igt@i915_selftest@live.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][159] ([i915#1245])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-tgl-1115g4/igt@i915_selftest@live.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][160] ([fdo#109271])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-blb-e6850/igt@i915_selftest@live.html
    - fi-bsw-n3050:       NOTRUN -> [SKIP][161] ([fdo#109271])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-n3050/igt@i915_selftest@live.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][162] ([fdo#109271])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-6600u/igt@i915_selftest@live.html
    - fi-apl-guc:         NOTRUN -> [SKIP][163] ([fdo#109271])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-apl-guc/igt@i915_selftest@live.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][164] ([fdo#109271])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-pnv-d510/igt@i915_selftest@live.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][165] ([fdo#109271])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-glk-j4005/igt@i915_selftest@live.html
    - fi-skl-guc:         NOTRUN -> [SKIP][166] ([fdo#109271])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-guc/igt@i915_selftest@live.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][167] ([fdo#109271])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8700k/igt@i915_selftest@live.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][168] ([fdo#109271])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-nick/igt@i915_selftest@live.html
    - bat-kbl-2:          NOTRUN -> [SKIP][169] ([fdo#109271])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-kbl-2/igt@i915_selftest@live.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][170] ([fdo#109271])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-guc/igt@i915_selftest@live.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-mtlp-6:         NOTRUN -> [FAIL][171] ([i915#9092])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-mtlp-8:         [PASS][172] -> [FAIL][173] ([i915#9092])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-mtlp-8/igt@i915_suspend@basic-s2idle-without-i915.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-8/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-mtlp-6:         NOTRUN -> [SKIP][174] ([i915#4212]) +8 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-6:         NOTRUN -> [SKIP][175] ([i915#5190])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-mtlp-6:         NOTRUN -> [SKIP][176] ([i915#1845]) +12 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-mtlp-6:         NOTRUN -> [SKIP][177] ([i915#3637]) +3 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-6:         NOTRUN -> [SKIP][178] ([fdo#109285])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-6:         NOTRUN -> [SKIP][179] ([i915#5274])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][180] ([i915#4342])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][181] ([i915#1845] / [i915#4078]) +4 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@cursor_plane_move:
    - bat-mtlp-6:         NOTRUN -> [SKIP][182] ([i915#1072]) +3 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_psr@cursor_plane_move.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][183] ([i915#3555] / [i915#8809])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-mtlp-6:         NOTRUN -> [SKIP][184] ([i915#1845] / [i915#3708])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-6:         NOTRUN -> [SKIP][185] ([i915#3708] / [i915#4077]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-mtlp-6:         NOTRUN -> [SKIP][186] ([i915#3708]) +2 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@fds:
    - bat-mtlp-6:         [ABORT][187] ([i915#9262]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-mtlp-6/igt@gem_exec_parallel@engines@fds.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-1:          [INCOMPLETE][189] ([i915#9275]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1245]: https://gitlab.freedesktop.org/drm/intel/issues/1245
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8102]: https://gitlab.freedesktop.org/drm/intel/issues/8102
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#9092]: https://gitlab.freedesktop.org/drm/intel/issues/9092
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9273]: https://gitlab.freedesktop.org/drm/intel/issues/9273
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9279]: https://gitlab.freedesktop.org/drm/intel/issues/9279


Build changes
-------------

  * Linux: CI_DRM_13627 -> Patchwork_115714v2

  CI-20190529: 20190529
  CI_DRM_13627: 45460a37f9be43072b509ca6044b215648f56221 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7486: afd9a940c8247291baadd1977fe881d4f2edf0c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115714v2: 45460a37f9be43072b509ca6044b215648f56221 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a2a5b292def1 drm/i915: Implement fbdev emulation as in-kernel client
51bcff966a8f drm/i915: Implement fbdev client callbacks
141d36f2ce60 drm/i915: Initialize fbdev DRM client with callback functions
643d1d4e09f9 drm/i915: Move fbdev functions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/index.html

--===============2376736878773690405==
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
<tr><td><b>Series:</b></td><td>drm/i915: Convert fbdev to DRM client (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115714/">https://patchwork.freedesktop.org/series/115714/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13627 -&gt; Patchwork_115714v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_115714v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_115714v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_115714v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg1-5/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg2-11/igt@gem_lmem_swapping@basic.html">FAIL</a> +5 other tests fail</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-atsm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-atsm-1/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-6600u/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-apl-guc/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-dg1-5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg1-5/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-pnv-d510/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-pnv-d510/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-glk-j4005/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-glk-j4005/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adlp-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlp-9/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-skl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-guc/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-dg2-11/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg2-11/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-8700k/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8700k/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-bsw-nick/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-nick/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-kbl-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-kbl-2/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-rkl-11600/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-rkl-11600/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adls-5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adls-5/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-guc/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-3/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-3/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-x1275/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-x1275/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8109u/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-8809g/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-8809g/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ivb-3770/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-mtlp-8/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-8/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-elk-e7500/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-elk-e7500/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-guc/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adlm-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlm-1/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-ilk-650/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ilk-650/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-1/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-tgl-1115g4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-tgl-1115g4/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-blb-e6850/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-blb-e6850/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-bsw-n3050/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-n3050/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-rpls-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-rpls-1/igt@i915_module_load@reload.html">WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-1/igt@i915_pm_rpm@module-reload.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-rpls-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-rpls-1/igt@i915_pm_rpm@module-reload.html">FAIL</a> +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-8/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlm-1/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-1/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-rpls-1/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg1-5/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlp-9/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg2-11/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-rkl-11600/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-adls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adls-5/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-3/igt@i915_selftest@live.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adlm-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlm-1/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-blb-e6850/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-blb-e6850/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-dg1-5/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-dg1-5/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-glk-j4005/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-glk-j4005/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-adlp-9/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-adlp-9/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-skl-guc/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-guc/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +1 other test fail</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8102">i915#8102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a></p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a></p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115714v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-x1275/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8109u/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-8809g/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ivb-3770/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-elk-e7500/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-kbl-guc/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-ilk-650/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-tgl-1115g4/igt@i915_selftest@live.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1245">i915#1245</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-blb-e6850/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-n3050/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-6600u/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-apl-guc/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-pnv-d510/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-glk-j4005/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-skl-guc/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-8700k/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-bsw-nick/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-kbl-2/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/fi-cfl-guc/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9092">i915#9092</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-mtlp-8/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-8/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9092">i915#9092</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-mtlp-6/igt@gem_exec_parallel@engines@fds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-mtlp-6/igt@gem_exec_parallel@engines@fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13627/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v2/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13627 -&gt; Patchwork_115714v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13627: 45460a37f9be43072b509ca6044b215648f56221 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7486: afd9a940c8247291baadd1977fe881d4f2edf0c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115714v2: 45460a37f9be43072b509ca6044b215648f56221 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a2a5b292def1 drm/i915: Implement fbdev emulation as in-kernel client<br />
51bcff966a8f drm/i915: Implement fbdev client callbacks<br />
141d36f2ce60 drm/i915: Initialize fbdev DRM client with callback functions<br />
643d1d4e09f9 drm/i915: Move fbdev functions</p>

</body>
</html>

--===============2376736878773690405==--
