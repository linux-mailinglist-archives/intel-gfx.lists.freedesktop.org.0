Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4B6A55392
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 18:54:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51E810EA47;
	Thu,  6 Mar 2025 17:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 64e06c682a23 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00EFA10EA47;
 Thu,  6 Mar 2025 17:54:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6008256386345983675=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_dma-buf=3A_Take_a_breath_?=
 =?utf-8?q?during_dma-fence-chain_subtests_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 06 Mar 2025 17:54:33 -0000
Message-ID: <174128367399.69070.34455959310409624@64e06c682a23>
X-Patchwork-Hint: ignore
References: <20250306151111.1405362-1-nitin.r.gote@intel.com>
In-Reply-To: <20250306151111.1405362-1-nitin.r.gote@intel.com>
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

--===============6008256386345983675==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: dma-buf: Take a breath during dma-fence-chain subtests (rev2)
URL   : https://patchwork.freedesktop.org/series/145497/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16236 -> Patchwork_145497v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_145497v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_145497v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): fi-snb-2520m fi-elk-e7500 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_145497v2:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all-tests:
    - fi-rkl-11600:       [PASS][1] -> [TIMEOUT][2] +1 other test timeout
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-rkl-11600/igt@dmabuf@all-tests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-rkl-11600/igt@dmabuf@all-tests.html
    - bat-arlh-3:         [PASS][3] -> [TIMEOUT][4] +1 other test timeout
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-arlh-3/igt@dmabuf@all-tests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-arlh-3/igt@dmabuf@all-tests.html
    - bat-dg1-7:          [PASS][5] -> [TIMEOUT][6] +1 other test timeout
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg1-7/igt@dmabuf@all-tests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg1-7/igt@dmabuf@all-tests.html
    - fi-glk-j4005:       [PASS][7] -> [TIMEOUT][8] +1 other test timeout
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-glk-j4005/igt@dmabuf@all-tests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-glk-j4005/igt@dmabuf@all-tests.html
    - bat-adlp-9:         [PASS][9] -> [TIMEOUT][10] +1 other test timeout
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-adlp-9/igt@dmabuf@all-tests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-adlp-9/igt@dmabuf@all-tests.html
    - bat-rpls-4:         [PASS][11] -> [TIMEOUT][12] +1 other test timeout
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-rpls-4/igt@dmabuf@all-tests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-rpls-4/igt@dmabuf@all-tests.html
    - fi-cfl-8109u:       [PASS][13] -> [TIMEOUT][14] +1 other test timeout
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-8109u/igt@dmabuf@all-tests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-8109u/igt@dmabuf@all-tests.html
    - fi-kbl-7567u:       [PASS][15] -> [TIMEOUT][16] +1 other test timeout
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-kbl-7567u/igt@dmabuf@all-tests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-7567u/igt@dmabuf@all-tests.html
    - bat-twl-1:          [PASS][17] -> [TIMEOUT][18] +1 other test timeout
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-twl-1/igt@dmabuf@all-tests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-twl-1/igt@dmabuf@all-tests.html
    - fi-kbl-8809g:       NOTRUN -> [TIMEOUT][19] +1 other test timeout
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-8809g/igt@dmabuf@all-tests.html
    - bat-rplp-1:         [PASS][20] -> [TIMEOUT][21] +1 other test timeout
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-rplp-1/igt@dmabuf@all-tests.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-rplp-1/igt@dmabuf@all-tests.html
    - fi-ilk-650:         [PASS][22] -> [TIMEOUT][23] +1 other test timeout
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-ilk-650/igt@dmabuf@all-tests.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-ilk-650/igt@dmabuf@all-tests.html
    - fi-tgl-1115g4:      [PASS][24] -> [TIMEOUT][25] +1 other test timeout
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-tgl-1115g4/igt@dmabuf@all-tests.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-tgl-1115g4/igt@dmabuf@all-tests.html
    - fi-cfl-guc:         [PASS][26] -> [TIMEOUT][27] +1 other test timeout
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-guc/igt@dmabuf@all-tests.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-guc/igt@dmabuf@all-tests.html
    - bat-mtlp-6:         [PASS][28] -> [TIMEOUT][29] +1 other test timeout
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-mtlp-6/igt@dmabuf@all-tests.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-mtlp-6/igt@dmabuf@all-tests.html
    - bat-dg2-9:          [PASS][30] -> [TIMEOUT][31] +1 other test timeout
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg2-9/igt@dmabuf@all-tests.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg2-9/igt@dmabuf@all-tests.html
    - fi-kbl-x1275:       [PASS][32] -> [TIMEOUT][33] +1 other test timeout
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-kbl-x1275/igt@dmabuf@all-tests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-x1275/igt@dmabuf@all-tests.html
    - bat-adlp-11:        [PASS][34] -> [TIMEOUT][35] +1 other test timeout
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-adlp-11/igt@dmabuf@all-tests.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-adlp-11/igt@dmabuf@all-tests.html
    - bat-dg1-6:          [PASS][36] -> [INCOMPLETE][37] +1 other test incomplete
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg1-6/igt@dmabuf@all-tests.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg1-6/igt@dmabuf@all-tests.html
    - fi-cfl-8700k:       [PASS][38] -> [TIMEOUT][39] +1 other test timeout
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-8700k/igt@dmabuf@all-tests.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-8700k/igt@dmabuf@all-tests.html
    - fi-blb-e6850:       [PASS][40] -> [TIMEOUT][41] +1 other test timeout
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-blb-e6850/igt@dmabuf@all-tests.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-blb-e6850/igt@dmabuf@all-tests.html
    - bat-kbl-2:          [PASS][42] -> [TIMEOUT][43] +1 other test timeout
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-kbl-2/igt@dmabuf@all-tests.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-kbl-2/igt@dmabuf@all-tests.html
    - bat-adlp-6:         [PASS][44] -> [TIMEOUT][45] +1 other test timeout
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-adlp-6/igt@dmabuf@all-tests.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-adlp-6/igt@dmabuf@all-tests.html

  * igt@dmabuf@all-tests@dma_fence_chain:
    - bat-jsl-3:          [PASS][46] -> [TIMEOUT][47] +1 other test timeout
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-jsl-3/igt@dmabuf@all-tests@dma_fence_chain.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-jsl-3/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-twl-2:          NOTRUN -> [TIMEOUT][48] +1 other test timeout
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-twl-2/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-dg2-11:         [PASS][49] -> [TIMEOUT][50] +1 other test timeout
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg2-11/igt@dmabuf@all-tests@dma_fence_chain.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg2-11/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-ivb-3770:        [PASS][51] -> [TIMEOUT][52] +1 other test timeout
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-ivb-3770/igt@dmabuf@all-tests@dma_fence_chain.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-ivb-3770/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-dg2-14:         [PASS][53] -> [TIMEOUT][54] +1 other test timeout
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg2-14/igt@dmabuf@all-tests@dma_fence_chain.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg2-14/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-dg2-8:          [PASS][55] -> [TIMEOUT][56] +1 other test timeout
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg2-8/igt@dmabuf@all-tests@dma_fence_chain.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg2-8/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-bsw-nick:        [PASS][57] -> [TIMEOUT][58] +1 other test timeout
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-kbl-guc:         [PASS][59] -> [TIMEOUT][60] +1 other test timeout
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-kbl-guc/igt@dmabuf@all-tests@dma_fence_chain.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-guc/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-bsw-n3050:       [PASS][61] -> [TIMEOUT][62] +1 other test timeout
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-mtlp-9:         [PASS][63] -> [TIMEOUT][64] +1 other test timeout
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-mtlp-9/igt@dmabuf@all-tests@dma_fence_chain.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-mtlp-9/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-arls-6:         [PASS][65] -> [TIMEOUT][66] +1 other test timeout
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-arls-6/igt@dmabuf@all-tests@dma_fence_chain.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-arls-6/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-mtlp-8:         [PASS][67] -> [TIMEOUT][68] +1 other test timeout
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-mtlp-8/igt@dmabuf@all-tests@dma_fence_chain.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-mtlp-8/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-adls-6:         [PASS][69] -> [TIMEOUT][70] +1 other test timeout
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-adls-6/igt@dmabuf@all-tests@dma_fence_chain.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-adls-6/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-arls-5:         [PASS][71] -> [TIMEOUT][72] +1 other test timeout
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-arls-5/igt@dmabuf@all-tests@dma_fence_chain.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-arls-5/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@kms_flip@basic-plain-flip:
    - fi-cfl-8109u:       [PASS][73] -> [DMESG-WARN][74] +1 other test dmesg-warn
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-8109u/igt@kms_flip@basic-plain-flip.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-8109u/igt@kms_flip@basic-plain-flip.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-7567u:       [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html

  
#### Warnings ####

  * igt@dmabuf@all-tests:
    - fi-pnv-d510:        [INCOMPLETE][77] ([i915#12904]) -> [TIMEOUT][78] +1 other test timeout
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-pnv-d510/igt@dmabuf@all-tests.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-pnv-d510/igt@dmabuf@all-tests.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@dmabuf@all-tests:
    - {bat-jsl-4}:        [PASS][79] -> [TIMEOUT][80] +1 other test timeout
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-jsl-4/igt@dmabuf@all-tests.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-jsl-4/igt@dmabuf@all-tests.html

  
Known issues
------------

  Here are the changes found in Patchwork_145497v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][81] ([i915#1849])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-8809g/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][82] ([i915#2190])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][83] ([i915#4613]) +3 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_module_load@reload:
    - fi-bsw-n3050:       [PASS][84] -> [DMESG-WARN][85] ([i915#13736])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-bsw-n3050/igt@i915_module_load@reload.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-bsw-n3050/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][86] -> [FAIL][87] ([i915#13633])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-guc:         [PASS][88] -> [FAIL][89] ([i915#13633])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arlh-2:         [PASS][90] -> [INCOMPLETE][91] ([i915#12435] / [i915#12445])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-arlh-2/igt@i915_selftest@live.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-arlh-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - bat-arlh-2:         [PASS][92] -> [INCOMPLETE][93] ([i915#12445])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-arlh-2/igt@i915_selftest@live@active.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-arlh-2/igt@i915_selftest@live@active.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][94] +34 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2:
    - fi-cfl-8109u:       [PASS][95] -> [DMESG-WARN][96] ([i915#13768]) +1 other test dmesg-warn
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][97] -> [SKIP][98] ([i915#9197]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][99] ([i915#12061]) -> [PASS][100] +1 other test pass
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-mtlp-8/igt@i915_selftest@live.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-twl-2:          [INCOMPLETE][101] ([i915#12445]) -> [PASS][102] +1 other test pass
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-twl-2/igt@i915_selftest@live.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-twl-2/igt@i915_selftest@live.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
  [i915#13736]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736
  [i915#13768]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13768
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_16236 -> Patchwork_145497v2

  CI-20190529: 20190529
  CI_DRM_16236: 7f20d05164065bf88d6b34fec900f63fae45d9fc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8263: 25f60274b3dd14d35a7f32558b489ab7a02b6223 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_145497v2: 7f20d05164065bf88d6b34fec900f63fae45d9fc @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/index.html

--===============6008256386345983675==
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
<tr><td><b>Series:</b></td><td>dma-buf: Take a breath during dma-fence-chain subtests (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/145497/">https://patchwork.freedesktop.org/series/145497/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16236 -&gt; Patchwork_145497v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_145497v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_145497v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): fi-snb-2520m fi-elk-e7500 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_145497v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-rkl-11600/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-rkl-11600/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-arlh-3/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-arlh-3/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg1-7/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg1-7/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-glk-j4005/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-glk-j4005/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-adlp-9/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-adlp-9/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-rpls-4/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-rpls-4/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-8109u/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-8109u/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-kbl-7567u/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-7567u/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-twl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-twl-1/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-8809g/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-rplp-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-rplp-1/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-ilk-650/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-ilk-650/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-tgl-1115g4/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-tgl-1115g4/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-guc/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-guc/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-mtlp-6/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-mtlp-6/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg2-9/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg2-9/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-kbl-x1275/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-x1275/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-adlp-11/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-adlp-11/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg1-6/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg1-6/igt@dmabuf@all-tests.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-8700k/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-8700k/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-blb-e6850/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-blb-e6850/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-kbl-2/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-kbl-2/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-adlp-6/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-adlp-6/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-jsl-3/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-jsl-3/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-twl-2/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg2-11/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg2-11/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-ivb-3770/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-ivb-3770/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg2-14/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg2-14/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg2-8/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg2-8/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-kbl-guc/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-guc/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-mtlp-9/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-mtlp-9/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-arls-6/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-arls-6/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-mtlp-8/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-mtlp-8/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-adls-6/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-adls-6/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-arls-5/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-arls-5/igt@dmabuf@all-tests@dma_fence_chain.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-8109u/igt@kms_flip@basic-plain-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-8109u/igt@kms_flip@basic-plain-flip.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@dmabuf@all-tests:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-pnv-d510/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-pnv-d510/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@dmabuf@all-tests:<ul>
<li>{bat-jsl-4}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-jsl-4/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-jsl-4/igt@dmabuf@all-tests.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_145497v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-8809g/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-bsw-n3050/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-bsw-n3050/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736">i915#13736</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-arlh-2/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-arlh-2/igt@i915_selftest@live@active.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html">SKIP</a> +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13768">i915#13768</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16236/bat-twl-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145497v2/bat-twl-2/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16236 -&gt; Patchwork_145497v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16236: 7f20d05164065bf88d6b34fec900f63fae45d9fc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8263: 25f60274b3dd14d35a7f32558b489ab7a02b6223 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_145497v2: 7f20d05164065bf88d6b34fec900f63fae45d9fc @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6008256386345983675==--
