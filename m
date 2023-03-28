Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 368206CCCCB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 00:07:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DCB910E146;
	Tue, 28 Mar 2023 22:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C68910E146;
 Tue, 28 Mar 2023 22:07:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02561A0169;
 Tue, 28 Mar 2023 22:07:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0622319296698228398=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Tue, 28 Mar 2023 22:07:28 -0000
Message-ID: <168004124896.29055.11328929822027924548@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230328111422.23986-1-tzimmermann@suse.de>
In-Reply-To: <20230328111422.23986-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Convert_fbdev_to_DRM_client?=
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

--===============0622319296698228398==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Convert fbdev to DRM client
URL   : https://patchwork.freedesktop.org/series/115714/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12931 -> Patchwork_115714v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_115714v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_115714v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/index.html

Participating hosts (36 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_115714v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@basic:
    - bat-dg1-5:          NOTRUN -> [FAIL][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-5/igt@gem_lmem_swapping@basic.html
    - bat-dg1-7:          NOTRUN -> [FAIL][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-7/igt@gem_lmem_swapping@basic.html
    - bat-dg2-11:         NOTRUN -> [FAIL][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-dg2-9:          NOTRUN -> [FAIL][4] +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html
    - bat-dg2-8:          NOTRUN -> [FAIL][5] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_module_load@reload:
    - bat-dg1-5:          [PASS][6] -> [WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg1-5/igt@i915_module_load@reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-5/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][8] -> [WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-pnv-d510/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-pnv-d510/igt@i915_module_load@reload.html
    - bat-dg1-7:          [PASS][10] -> [WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg1-7/igt@i915_module_load@reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-7/igt@i915_module_load@reload.html
    - bat-adlp-9:         [PASS][12] -> [WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adlp-9/igt@i915_module_load@reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adlp-9/igt@i915_module_load@reload.html
    - bat-rplp-1:         [PASS][14] -> [WARN][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rplp-1/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rplp-1/igt@i915_module_load@reload.html
    - fi-rkl-11600:       [PASS][16] -> [WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-rkl-11600/igt@i915_module_load@reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-rkl-11600/igt@i915_module_load@reload.html
    - bat-adls-5:         [PASS][18] -> [WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adls-5/igt@i915_module_load@reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adls-5/igt@i915_module_load@reload.html
    - bat-jsl-3:          [PASS][20] -> [WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-jsl-3/igt@i915_module_load@reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-3/igt@i915_module_load@reload.html
    - bat-adln-1:         [PASS][22] -> [WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adln-1/igt@i915_module_load@reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adln-1/igt@i915_module_load@reload.html
    - bat-rpls-2:         [PASS][24] -> [WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-2/igt@i915_module_load@reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-2/igt@i915_module_load@reload.html
    - fi-elk-e7500:       [PASS][26] -> [WARN][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-elk-e7500/igt@i915_module_load@reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-elk-e7500/igt@i915_module_load@reload.html
    - bat-jsl-1:          [PASS][28] -> [WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-jsl-1/igt@i915_module_load@reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-1/igt@i915_module_load@reload.html
    - bat-rpls-1:         [PASS][30] -> [WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-1/igt@i915_module_load@reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-1/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-nick:        [PASS][32] -> [FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
    - bat-rplp-1:         [PASS][34] -> [FAIL][35] +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rplp-1/igt@i915_pm_rpm@module-reload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rplp-1/igt@i915_pm_rpm@module-reload.html
    - fi-apl-guc:         [PASS][36] -> [FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
    - bat-dg2-9:          [PASS][38] -> [FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-9/igt@i915_pm_rpm@module-reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-9/igt@i915_pm_rpm@module-reload.html
    - bat-dg2-11:         [PASS][40] -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-x1275:       [PASS][42] -> [FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html
    - fi-hsw-4770:        [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8109u:       [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-7567u:       [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-8809g:       [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html
    - bat-dg2-8:          [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-8/igt@i915_pm_rpm@module-reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-guc:         [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
    - bat-jsl-1:          [PASS][57] -> [FAIL][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-jsl-1/igt@i915_pm_rpm@module-reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-1/igt@i915_pm_rpm@module-reload.html
    - fi-tgl-1115g4:      [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-n3050:       [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-1:         [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-1/igt@i915_pm_rpm@module-reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-1/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-guc:         [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6600u:       [PASS][67] -> [FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-2:         [PASS][69] -> [FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
    - bat-adlp-9:         [PASS][71] -> [FAIL][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adlp-9/igt@i915_pm_rpm@module-reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adlp-9/igt@i915_pm_rpm@module-reload.html
    - fi-skl-guc:         NOTRUN -> [FAIL][73]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8700k:       [PASS][74] -> [FAIL][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-adln-1:         NOTRUN -> [SKIP][76]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adln-1/igt@i915_selftest@live.html
    - bat-rpls-2:         NOTRUN -> [SKIP][77]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-2/igt@i915_selftest@live.html
    - bat-dg2-8:          NOTRUN -> [SKIP][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@i915_selftest@live.html
    - bat-jsl-1:          NOTRUN -> [SKIP][79]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-1/igt@i915_selftest@live.html
    - bat-rpls-1:         NOTRUN -> [SKIP][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-1/igt@i915_selftest@live.html
    - bat-dg1-5:          NOTRUN -> [SKIP][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-5/igt@i915_selftest@live.html
    - bat-dg1-7:          NOTRUN -> [SKIP][82]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-7/igt@i915_selftest@live.html
    - bat-adlp-9:         NOTRUN -> [SKIP][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adlp-9/igt@i915_selftest@live.html
    - bat-dg2-11:         NOTRUN -> [SKIP][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@i915_selftest@live.html
    - bat-rplp-1:         NOTRUN -> [SKIP][85]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rplp-1/igt@i915_selftest@live.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][86]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-rkl-11600/igt@i915_selftest@live.html
    - bat-adls-5:         NOTRUN -> [SKIP][87]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adls-5/igt@i915_selftest@live.html
    - bat-jsl-3:          NOTRUN -> [SKIP][88]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-3/igt@i915_selftest@live.html
    - bat-dg2-9:          NOTRUN -> [SKIP][89]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-9/igt@i915_selftest@live.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-adln-1:         [PASS][90] -> [FAIL][91] +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adln-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adln-1/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-elk-e7500:       [PASS][92] -> [FAIL][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][94] -> [FAIL][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
    - bat-adls-5:         [PASS][96] -> [FAIL][97] +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html
    - bat-dg1-5:          [PASS][98] -> [FAIL][99] +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg1-5/igt@i915_suspend@basic-s3-without-i915.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-5/igt@i915_suspend@basic-s3-without-i915.html
    - fi-pnv-d510:        [PASS][100] -> [FAIL][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html
    - bat-dg1-7:          [PASS][102] -> [FAIL][103] +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg1-7/igt@i915_suspend@basic-s3-without-i915.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-7/igt@i915_suspend@basic-s3-without-i915.html
    - bat-jsl-3:          [PASS][104] -> [FAIL][105] +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
    - fi-glk-j4005:       [PASS][106] -> [FAIL][107] +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-glk-j4005/igt@i915_suspend@basic-s3-without-i915.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-glk-j4005/igt@i915_suspend@basic-s3-without-i915.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {bat-kbl-2}:        [PASS][108] -> [FAIL][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-kbl-2/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_115714v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-kbl-soraka:      NOTRUN -> [ABORT][110] ([i915#7830] / [i915#8129])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#2190])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-skl-guc:         NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#4613]) +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#4613]) +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_module_load@reload:
    - fi-skl-6600u:       [PASS][114] -> [WARN][115] ([i915#6596])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-skl-6600u/igt@i915_module_load@reload.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-apl-guc:         [PASS][116] -> [WARN][117] ([i915#6596])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-apl-guc/igt@i915_module_load@reload.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-glk-j4005:       [PASS][118] -> [WARN][119] ([i915#6596])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-glk-j4005/igt@i915_module_load@reload.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-glk-j4005/igt@i915_module_load@reload.html
    - fi-skl-guc:         NOTRUN -> [WARN][120] ([i915#6596])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@i915_module_load@reload.html
    - bat-dg2-11:         [PASS][121] -> [WARN][122] ([i915#6596])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-11/igt@i915_module_load@reload.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      NOTRUN -> [WARN][123] ([i915#6596])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-kbl-7567u:       [PASS][124] -> [WARN][125] ([i915#6596])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-7567u/igt@i915_module_load@reload.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-7567u/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][126] -> [WARN][127] ([i915#6596])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8700k/igt@i915_module_load@reload.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][128] -> [WARN][129] ([i915#6596])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-nick/igt@i915_module_load@reload.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-nick/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][130] -> [WARN][131] ([i915#6596])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-guc/igt@i915_module_load@reload.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-guc/igt@i915_module_load@reload.html
    - bat-dg2-9:          [PASS][132] -> [WARN][133] ([i915#6596])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-9/igt@i915_module_load@reload.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-9/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       [PASS][134] -> [WARN][135] ([i915#6596])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-x1275/igt@i915_module_load@reload.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-x1275/igt@i915_module_load@reload.html
    - fi-hsw-4770:        [PASS][136] -> [WARN][137] ([i915#6596])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-hsw-4770/igt@i915_module_load@reload.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-hsw-4770/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][138] -> [WARN][139] ([i915#6596])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8109u/igt@i915_module_load@reload.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8109u/igt@i915_module_load@reload.html
    - fi-kbl-8809g:       [PASS][140] -> [WARN][141] ([i915#6596])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-8809g/igt@i915_module_load@reload.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][142] -> [WARN][143] ([i915#6596])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-ivb-3770/igt@i915_module_load@reload.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ivb-3770/igt@i915_module_load@reload.html
    - bat-dg2-8:          [PASS][144] -> [WARN][145] ([i915#6596])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-8/igt@i915_module_load@reload.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][146] -> [WARN][147] ([i915#6596])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-guc/igt@i915_module_load@reload.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-guc/igt@i915_module_load@reload.html
    - fi-ilk-650:         [PASS][148] -> [WARN][149] ([i915#6596])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-ilk-650/igt@i915_module_load@reload.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ilk-650/igt@i915_module_load@reload.html
    - fi-tgl-1115g4:      [PASS][150] -> [WARN][151] ([i915#6596])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-tgl-1115g4/igt@i915_module_load@reload.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@i915_module_load@reload.html
    - fi-bsw-n3050:       [PASS][152] -> [WARN][153] ([i915#6596])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-n3050/igt@i915_module_load@reload.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-n3050/igt@i915_module_load@reload.html

  * igt@i915_selftest@live:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][154] ([fdo#109271])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-x1275/igt@i915_selftest@live.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][155] ([fdo#109271])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-hsw-4770/igt@i915_selftest@live.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][156] ([fdo#109271])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8109u/igt@i915_selftest@live.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][157] ([fdo#109271])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-8809g/igt@i915_selftest@live.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][158] ([fdo#109271])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ivb-3770/igt@i915_selftest@live.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][159] ([fdo#109271])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-elk-e7500/igt@i915_selftest@live.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][160] ([fdo#109271])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-guc/igt@i915_selftest@live.html
    - fi-ilk-650:         NOTRUN -> [SKIP][161] ([fdo#109271])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ilk-650/igt@i915_selftest@live.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][162] ([i915#1245])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@i915_selftest@live.html
    - fi-bsw-n3050:       NOTRUN -> [SKIP][163] ([fdo#109271])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-n3050/igt@i915_selftest@live.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][164] ([fdo#109271])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-6600u/igt@i915_selftest@live.html
    - fi-apl-guc:         NOTRUN -> [SKIP][165] ([fdo#109271])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-apl-guc/igt@i915_selftest@live.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][166] ([fdo#109271])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-pnv-d510/igt@i915_selftest@live.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][167] ([fdo#109271])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-glk-j4005/igt@i915_selftest@live.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][168] ([fdo#109271])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-7567u/igt@i915_selftest@live.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][169] ([fdo#109271])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8700k/igt@i915_selftest@live.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][170] ([fdo#109271])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-nick/igt@i915_selftest@live.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][171] ([fdo#109271])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-guc/igt@i915_selftest@live.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [PASS][172] -> [FAIL][173] ([i915#6559]) +1 similar issue
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-kbl-7567u:       [PASS][174] -> [FAIL][175] ([i915#6559]) +1 similar issue
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-cfl-8700k:       [PASS][176] -> [FAIL][177] ([i915#6559]) +1 similar issue
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-kbl-8809g:       [PASS][178] -> [FAIL][179] ([i915#6559]) +1 similar issue
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-ivb-3770:        [PASS][180] -> [FAIL][181] ([i915#6559]) +1 similar issue
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-dg2-8:          [PASS][182] -> [FAIL][183] ([i915#6559])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-8/igt@i915_suspend@basic-s2idle-without-i915.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-bsw-nick:        [PASS][184] -> [FAIL][185] ([i915#6559]) +1 similar issue
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-nick/igt@i915_suspend@basic-s2idle-without-i915.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-nick/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-tgl-1115g4:      [PASS][186] -> [FAIL][187] ([i915#6559])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-cfl-guc:         [PASS][188] -> [FAIL][189] ([i915#6559]) +1 similar issue
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-dg2-9:          [PASS][190] -> [FAIL][191] ([i915#6559]) +1 similar issue
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-9/igt@i915_suspend@basic-s2idle-without-i915.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-9/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-kbl-x1275:       [PASS][192] -> [FAIL][193] ([i915#6559])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-x1275/igt@i915_suspend@basic-s2idle-without-i915.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-x1275/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-hsw-4770:        [PASS][194] -> [FAIL][195] ([i915#6559]) +1 similar issue
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-hsw-4770/igt@i915_suspend@basic-s2idle-without-i915.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-hsw-4770/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-rpls-2:         [PASS][196] -> [FAIL][197] ([i915#6559]) +1 similar issue
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-kbl-guc:         [PASS][198] -> [FAIL][199] ([i915#6559]) +1 similar issue
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-ilk-650:         [PASS][200] -> [FAIL][201] ([i915#6559]) +1 similar issue
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-bsw-n3050:       [PASS][202] -> [FAIL][203] ([i915#6559]) +1 similar issue
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-rpls-1:         [PASS][204] -> [FAIL][205] ([i915#6559]) +1 similar issue
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-skl-6600u:       [PASS][206] -> [FAIL][207] ([i915#6559]) +1 similar issue
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html
    - fi-apl-guc:         [PASS][208] -> [FAIL][209] ([i915#6559]) +1 similar issue
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html
    - bat-adlp-9:         [PASS][210] -> [FAIL][211] ([i915#6559])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adlp-9/igt@i915_suspend@basic-s3-without-i915.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adlp-9/igt@i915_suspend@basic-s3-without-i915.html
    - fi-skl-guc:         NOTRUN -> [FAIL][212] ([i915#6559]) +1 similar issue
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@i915_suspend@basic-s3-without-i915.html
    - bat-dg2-11:         [PASS][213] -> [FAIL][214] ([i915#6559]) +1 similar issue
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-11/igt@i915_suspend@basic-s3-without-i915.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][215] ([fdo#109271]) +17 similar issues
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][216] ([i915#7828])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][217] ([i915#5354]) +1 similar issue
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-skl-guc:         NOTRUN -> [SKIP][218] ([fdo#109271]) +20 similar issues
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-skl-guc:         [ABORT][219] -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-skl-guc/igt@i915_module_load@load.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@i915_module_load@load.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-tgl-1115g4:      [INCOMPLETE][221] ([i915#7443]) -> [FAIL][222] ([i915#6559])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
    - fi-kbl-x1275:       [SKIP][223] ([fdo#109271]) -> [FAIL][224] ([i915#6559])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html
    - bat-dg2-8:          [SKIP][225] ([i915#6645]) -> [FAIL][226] ([i915#6559])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1245]: https://gitlab.freedesktop.org/drm/intel/issues/1245
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6596]: https://gitlab.freedesktop.org/drm/intel/issues/6596
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7830]: https://gitlab.freedesktop.org/drm/intel/issues/7830
  [i915#8129]: https://gitlab.freedesktop.org/drm/intel/issues/8129


Build changes
-------------

  * Linux: CI_DRM_12931 -> Patchwork_115714v1

  CI-20190529: 20190529
  CI_DRM_12931: e1b8055e62c6f94ef94db3e7f125704ac0fab0b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7223: 2cbfa210fc95d126edf9a60ae6ab4e96cf4fca7f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115714v1: e1b8055e62c6f94ef94db3e7f125704ac0fab0b5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4b3b7e91e591 drm/i915: Implement fbdev emulation as in-kernel client
c3a0d642b8a4 drm/i915: Implement fbdev client callbacks
462bf201a9e5 drm/i915: Initialize fbdev DRM client with callback functions
c067f21a9905 drm/i915: Move fbdev functions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/index.html

--===============0622319296698228398==
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
<tr><td><b>Series:</b></td><td>drm/i915: Convert fbdev to DRM client</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115714/">https://patchwork.freedesktop.org/series/115714/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12931 -&gt; Patchwork_115714v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_115714v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_115714v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/index.html</p>
<h2>Participating hosts (36 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_115714v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-5/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-7/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg1-5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-5/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-pnv-d510/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-pnv-d510/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg1-7/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-7/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adlp-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adlp-9/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rplp-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rplp-1/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-rkl-11600/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-rkl-11600/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adls-5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adls-5/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-jsl-3/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-3/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adln-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adln-1/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-2/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-elk-e7500/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-elk-e7500/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-jsl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-1/igt@i915_module_load@reload.html">WARN</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-1/igt@i915_module_load@reload.html">WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rplp-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rplp-1/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-9/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-9/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-8/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-jsl-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-1/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-1/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adlp-9/igt@i915_pm_rpm@module-reload.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adln-1/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-2/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-1/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-1/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-5/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-7/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adlp-9/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rplp-1/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-rkl-11600/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-adls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adls-5/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-3/igt@i915_selftest@live.html">SKIP</a></p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-9/igt@i915_selftest@live.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adln-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adln-1/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg1-5/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-5/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg1-7/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg1-7/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-glk-j4005/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-glk-j4005/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115714v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@dmabuf@all-tests@dma_fence_chain.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7830">i915#7830</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8129">i915#8129</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-6600u/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-apl-guc/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-glk-j4005/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-glk-j4005/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-11/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-7567u/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8700k/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8700k/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-nick/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-nick/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-guc/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-9/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-x1275/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-x1275/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-hsw-4770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-hsw-4770/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8109u/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-8809g/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-8809g/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ivb-3770/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-8/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-guc/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-ilk-650/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ilk-650/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-tgl-1115g4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-n3050/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-n3050/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-x1275/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-hsw-4770/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8109u/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-8809g/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ivb-3770/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-elk-e7500/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-guc/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ilk-650/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@i915_selftest@live.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1245">i915#1245</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-n3050/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-6600u/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-apl-guc/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-pnv-d510/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-glk-j4005/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-7567u/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8700k/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-nick/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-guc/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-8/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-nick/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-nick/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-cfl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-9/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-9/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-x1275/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-x1275/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-hsw-4770/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-hsw-4770/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-adlp-9/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-adlp-9/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-skl-guc/igt@i915_module_load@load.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-skl-guc/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>)</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115714v1/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12931 -&gt; Patchwork_115714v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12931: e1b8055e62c6f94ef94db3e7f125704ac0fab0b5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7223: 2cbfa210fc95d126edf9a60ae6ab4e96cf4fca7f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115714v1: e1b8055e62c6f94ef94db3e7f125704ac0fab0b5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4b3b7e91e591 drm/i915: Implement fbdev emulation as in-kernel client<br />
c3a0d642b8a4 drm/i915: Implement fbdev client callbacks<br />
462bf201a9e5 drm/i915: Initialize fbdev DRM client with callback functions<br />
c067f21a9905 drm/i915: Move fbdev functions</p>

</body>
</html>

--===============0622319296698228398==--
