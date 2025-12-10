Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4ABDCB2FB3
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 14:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFEFD10E044;
	Wed, 10 Dec 2025 13:14:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21DFA10E044;
 Wed, 10 Dec 2025 13:14:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3367700211887061581=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_Fix_BO_alloc_?=
 =?utf-8?q?flags?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Lo=C3=AFc_Molinari?= <loic.molinari@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Dec 2025 13:14:28 -0000
Message-ID: <176537246812.74068.163478741148036723@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251210110952.691446-1-loic.molinari@collabora.com>
In-Reply-To: <20251210110952.691446-1-loic.molinari@collabora.com>
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

--===============3367700211887061581==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix BO alloc flags
URL   : https://patchwork.freedesktop.org/series/158754/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17654 -> Patchwork_158754v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/index.html

Participating hosts (42 -> 34)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (9): bat-mtlp-9 bat-adlp-11 fi-bsw-n3050 bat-adlp-6 fi-snb-2520m bat-dg2-13 bat-apl-1 fi-bsw-nick bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_158754v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - bat-twl-2:          NOTRUN -> [SKIP][1] ([i915#15249])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-2/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-twl-1:          NOTRUN -> [SKIP][2] ([i915#15249])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-1/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-jsl-5:          NOTRUN -> [SKIP][3] ([i915#15249])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-jsl-5/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][4] ([i915#15249])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-tgl-1115g4/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-skl-6600u/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-kbl-2:          NOTRUN -> [SKIP][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-kbl-2/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-glk-j4005:       NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@kms_psr@psr-primary-page-flip:
    - fi-glk-j4005:       NOTRUN -> [SKIP][9] +12 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [ABORT][10] -> [PASS][11] +1 other test pass
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-hsw-4770/igt@i915_selftest@live.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-hsw-4770/igt@i915_selftest@live.html
    - fi-ivb-3770:        [ABORT][12] ([i915#15399]) -> [PASS][13] +1 other test pass
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-ivb-3770/igt@i915_selftest@live.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-ivb-3770/igt@i915_selftest@live.html
    - bat-mtlp-8:         [ABORT][14] ([i915#15399]) -> [PASS][15] +1 other test pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-mtlp-8/igt@i915_selftest@live.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-dg2-8:          [ABORT][16] ([i915#15399]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-8/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-8/igt@i915_selftest@live.html
    - bat-adls-6:         [ABORT][18] ([i915#15399]) -> [PASS][19] +1 other test pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-adls-6/igt@i915_selftest@live.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-adls-6/igt@i915_selftest@live.html
    - bat-arlh-3:         [ABORT][20] ([i915#15399]) -> [PASS][21] +1 other test pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-arlh-3/igt@i915_selftest@live.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-arlh-3/igt@i915_selftest@live.html
    - bat-adlp-9:         [ABORT][22] ([i915#14365] / [i915#15399]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-adlp-9/igt@i915_selftest@live.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-adlp-9/igt@i915_selftest@live.html
    - bat-twl-1:          [ABORT][24] ([i915#14365] / [i915#15399]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-twl-1/igt@i915_selftest@live.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-1/igt@i915_selftest@live.html
    - bat-rplp-1:         [ABORT][26] ([i915#14365] / [i915#15399]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-rplp-1/igt@i915_selftest@live.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-rplp-1/igt@i915_selftest@live.html
    - fi-skl-6600u:       [INCOMPLETE][28] ([i915#15157]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-skl-6600u/igt@i915_selftest@live.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-skl-6600u/igt@i915_selftest@live.html
    - bat-twl-2:          [ABORT][30] ([i915#14365] / [i915#15399]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-twl-2/igt@i915_selftest@live.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - fi-rkl-11600:       [DMESG-FAIL][32] -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-rkl-11600/igt@i915_selftest@live@active.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-rkl-11600/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6600u:       [INCOMPLETE][34] -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hugepages:
    - bat-adlp-9:         [ABORT][36] ([i915#15399]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-adlp-9/igt@i915_selftest@live@hugepages.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-adlp-9/igt@i915_selftest@live@hugepages.html
    - bat-twl-1:          [ABORT][38] ([i915#15399]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-twl-1/igt@i915_selftest@live@hugepages.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-1/igt@i915_selftest@live@hugepages.html
    - bat-arls-5:         [ABORT][40] ([i915#15399]) -> [PASS][41] +1 other test pass
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-arls-5/igt@i915_selftest@live@hugepages.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-arls-5/igt@i915_selftest@live@hugepages.html
    - bat-rplp-1:         [ABORT][42] ([i915#15399]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-rplp-1/igt@i915_selftest@live@hugepages.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-rplp-1/igt@i915_selftest@live@hugepages.html
    - bat-arlh-2:         [ABORT][44] ([i915#15399]) -> [PASS][45] +1 other test pass
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-arlh-2/igt@i915_selftest@live@hugepages.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-arlh-2/igt@i915_selftest@live@hugepages.html
    - fi-rkl-11600:       [ABORT][46] ([i915#15399]) -> [PASS][47] +1 other test pass
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
    - bat-dg1-7:          [ABORT][48] ([i915#15399]) -> [PASS][49] +1 other test pass
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg1-7/igt@i915_selftest@live@hugepages.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg1-7/igt@i915_selftest@live@hugepages.html
    - bat-dg2-9:          [ABORT][50] ([i915#15399]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-9/igt@i915_selftest@live@hugepages.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-9/igt@i915_selftest@live@hugepages.html
    - fi-kbl-x1275:       [ABORT][52] ([i915#15399]) -> [PASS][53] +1 other test pass
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
    - bat-rpls-4:         [ABORT][54] ([i915#15399]) -> [PASS][55] +1 other test pass
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-rpls-4/igt@i915_selftest@live@hugepages.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-rpls-4/igt@i915_selftest@live@hugepages.html
    - fi-kbl-7567u:       [ABORT][56] ([i915#15399]) -> [PASS][57] +1 other test pass
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-kbl-7567u/igt@i915_selftest@live@hugepages.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-kbl-7567u/igt@i915_selftest@live@hugepages.html
    - fi-kbl-8809g:       [ABORT][58] ([i915#15399]) -> [PASS][59] +1 other test pass
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html
    - bat-jsl-5:          [ABORT][60] ([i915#15399]) -> [PASS][61] +1 other test pass
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-jsl-5/igt@i915_selftest@live@hugepages.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-jsl-5/igt@i915_selftest@live@hugepages.html
    - bat-dg1-6:          [ABORT][62] ([i915#15399]) -> [PASS][63] +1 other test pass
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg1-6/igt@i915_selftest@live@hugepages.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg1-6/igt@i915_selftest@live@hugepages.html
    - fi-tgl-1115g4:      [ABORT][64] ([i915#15399]) -> [PASS][65] +1 other test pass
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html
    - fi-cfl-guc:         [ABORT][66] ([i915#15399]) -> [PASS][67] +1 other test pass
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-cfl-guc/igt@i915_selftest@live@hugepages.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-cfl-guc/igt@i915_selftest@live@hugepages.html
    - bat-twl-2:          [ABORT][68] ([i915#15399]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-twl-2/igt@i915_selftest@live@hugepages.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-2/igt@i915_selftest@live@hugepages.html
    - fi-cfl-8700k:       [ABORT][70] ([i915#15399]) -> [PASS][71] +1 other test pass
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html
    - bat-dg2-14:         [ABORT][72] ([i915#15399]) -> [PASS][73] +1 other test pass
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-14/igt@i915_selftest@live@hugepages.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-14/igt@i915_selftest@live@hugepages.html
    - bat-kbl-2:          [ABORT][74] ([i915#15399]) -> [PASS][75] +1 other test pass
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-kbl-2/igt@i915_selftest@live@hugepages.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-kbl-2/igt@i915_selftest@live@hugepages.html
    - bat-atsm-1:         [INCOMPLETE][76] ([i915#15399]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-atsm-1/igt@i915_selftest@live@hugepages.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-atsm-1/igt@i915_selftest@live@hugepages.html
    - bat-dg2-11:         [ABORT][78] ([i915#15399]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-11/igt@i915_selftest@live@hugepages.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-11/igt@i915_selftest@live@hugepages.html
    - bat-arls-6:         [ABORT][80] ([i915#15399]) -> [PASS][81] +1 other test pass
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-arls-6/igt@i915_selftest@live@hugepages.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-arls-6/igt@i915_selftest@live@hugepages.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-dg2-9:          [ABORT][82] ([i915#15399]) -> [DMESG-FAIL][83] ([i915#12061])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-9/igt@i915_selftest@live.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-9/igt@i915_selftest@live.html
    - bat-dg2-11:         [ABORT][84] ([i915#15399]) -> [DMESG-FAIL][85] ([i915#12061])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-11/igt@i915_selftest@live.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-11/igt@i915_selftest@live.html
    - bat-atsm-1:         [INCOMPLETE][86] ([i915#15157]) -> [DMESG-FAIL][87] ([i915#12061] / [i915#14204])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-atsm-1/igt@i915_selftest@live.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-atsm-1/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#15157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157
  [i915#15249]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249
  [i915#15399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_17654 -> Patchwork_158754v1

  CI-20190529: 20190529
  CI_DRM_17654: 2a9deeb5c3fd4dddbed361f10b26ce567072a985 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8662: 9410b6926f317e8bf824502394e09ee8753ff65e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_158754v1: 2a9deeb5c3fd4dddbed361f10b26ce567072a985 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/index.html

--===============3367700211887061581==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix BO alloc flags</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158754/">https://patchwork.freedesktop.org/series/158754/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17654 -&gt; Patchwork_158754v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/index.html</p>
<h2>Participating hosts (42 -&gt; 34)</h2>
<p>Additional (1): fi-glk-j4005 <br />
  Missing    (9): bat-mtlp-9 bat-adlp-11 fi-bsw-n3050 bat-adlp-6 fi-snb-2520m bat-dg2-13 bat-apl-1 fi-bsw-nick bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158754v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-2/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-1/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
<li>bat-jsl-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-jsl-5/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-tgl-1115g4/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-skl-6600u/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a></li>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-kbl-2/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-hsw-4770/igt@i915_selftest@live.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-hsw-4770/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-ivb-3770/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-ivb-3770/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-adls-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-adls-6/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-adlp-9/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-1/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-rplp-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-rplp-1/igt@i915_selftest@live.html">PASS</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-skl-6600u/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-skl-6600u/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-twl-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-2/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-rkl-11600/igt@i915_selftest@live@active.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-rkl-11600/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-adlp-9/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-adlp-9/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-twl-1/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-arls-5/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-arls-5/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-rplp-1/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-rplp-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-arlh-2/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-arlh-2/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg1-7/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg1-7/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-9/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-9/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-rpls-4/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-rpls-4/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-kbl-7567u/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-kbl-7567u/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-jsl-5/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-jsl-5/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg1-6/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg1-6/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-cfl-guc/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-cfl-guc/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-twl-2/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-twl-2/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-14/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-14/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-kbl-2/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-kbl-2/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-atsm-1/igt@i915_selftest@live@hugepages.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-atsm-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-11/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-11/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-arls-6/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-arls-6/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-dg2-11/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17654/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v1/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17654 -&gt; Patchwork_158754v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17654: 2a9deeb5c3fd4dddbed361f10b26ce567072a985 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8662: 9410b6926f317e8bf824502394e09ee8753ff65e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_158754v1: 2a9deeb5c3fd4dddbed361f10b26ce567072a985 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3367700211887061581==--
