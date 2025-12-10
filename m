Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE31DCB373C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 17:20:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423B910E62B;
	Wed, 10 Dec 2025 16:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B41D10E62B;
 Wed, 10 Dec 2025 16:20:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0524120967449269395=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_Fix_BO_alloc_?=
 =?utf-8?q?flags_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Lo=C3=AFc_Molinari?= <loic.molinari@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Dec 2025 16:20:10 -0000
Message-ID: <176538361023.74580.7108523765228085360@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251210143617.712808-1-loic.molinari@collabora.com>
In-Reply-To: <20251210143617.712808-1-loic.molinari@collabora.com>
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

--===============0524120967449269395==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix BO alloc flags (rev2)
URL   : https://patchwork.freedesktop.org/series/158754/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17655 -> Patchwork_158754v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/index.html

Participating hosts (38 -> 40)
------------------------------

  Additional (3): bat-twl-2 fi-ivb-3770 fi-bsw-n3050 
  Missing    (1): bat-dg2-13 

Known issues
------------

  Here are the changes found in Patchwork_158754v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - bat-twl-2:          NOTRUN -> [SKIP][1] ([i915#15249])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-jsl-1:          NOTRUN -> [SKIP][4] ([i915#15249])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-1/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-twl-1:          NOTRUN -> [SKIP][5] ([i915#15249])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-1/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-jsl-5:          NOTRUN -> [SKIP][6] ([i915#15249])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-5/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][7] ([i915#15249])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-tgl-1115g4/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-skl-6600u/igt@dmabuf@all-tests@dma_fence_chain.html
    - bat-kbl-2:          NOTRUN -> [SKIP][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-kbl-2/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@gem_lmem_swapping@basic:
    - bat-twl-2:          NOTRUN -> [SKIP][10] ([i915#10213] / [i915#11671]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@gem_lmem_swapping@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-twl-2:          NOTRUN -> [SKIP][11] ([i915#11031])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-twl-2:          NOTRUN -> [SKIP][12] ([i915#10209] / [i915#11681])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_pm:
    - bat-jsl-1:          [PASS][13] -> [DMESG-FAIL][14] ([i915#15394])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-jsl-1/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][15] -> [DMESG-FAIL][16] ([i915#12061])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  * igt@intel_hwmon@hwmon-write:
    - bat-twl-2:          NOTRUN -> [SKIP][17] ([i915#7707]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@intel_hwmon@hwmon-write.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-twl-2:          NOTRUN -> [SKIP][18] ([i915#11030] / [i915#11731]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_dsc@dsc-basic:
    - bat-twl-2:          NOTRUN -> [SKIP][19] ([i915#9886])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-bsw-n3050:       NOTRUN -> [DMESG-WARN][20] ([i915#15371]) +3 other tests dmesg-warn
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-twl-2:          NOTRUN -> [SKIP][21] ([i915#11032])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-vga-1:
    - fi-ivb-3770:        NOTRUN -> [SKIP][22] +24 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-vga-1.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][23] +22 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-bsw-n3050/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-twl-2:          NOTRUN -> [SKIP][24] ([i915#8809])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-twl-2:          NOTRUN -> [SKIP][25] ([i915#10212] / [i915#3708])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-twl-2:          NOTRUN -> [SKIP][26] ([i915#10214] / [i915#3708])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-twl-2:          NOTRUN -> [SKIP][27] ([i915#10216] / [i915#3708])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [ABORT][28] ([i915#15399]) -> [PASS][29] +1 other test pass
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-hsw-4770/igt@i915_selftest@live.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-hsw-4770/igt@i915_selftest@live.html
    - bat-mtlp-8:         [ABORT][30] ([i915#15399]) -> [PASS][31] +1 other test pass
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-mtlp-8/igt@i915_selftest@live.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-dg2-8:          [ABORT][32] ([i915#15399]) -> [PASS][33] +1 other test pass
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-8/igt@i915_selftest@live.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-8/igt@i915_selftest@live.html
    - bat-adls-6:         [ABORT][34] ([i915#15399]) -> [PASS][35] +1 other test pass
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adls-6/igt@i915_selftest@live.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adls-6/igt@i915_selftest@live.html
    - bat-arlh-3:         [ABORT][36] ([i915#15399]) -> [PASS][37] +1 other test pass
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-arlh-3/igt@i915_selftest@live.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-arlh-3/igt@i915_selftest@live.html
    - bat-adlp-9:         [ABORT][38] ([i915#14365] / [i915#15399]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-9/igt@i915_selftest@live.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-9/igt@i915_selftest@live.html
    - bat-twl-1:          [ABORT][40] ([i915#14365] / [i915#15399]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-twl-1/igt@i915_selftest@live.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-1/igt@i915_selftest@live.html
    - bat-rplp-1:         [ABORT][42] ([i915#14365] / [i915#15399]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-rplp-1/igt@i915_selftest@live.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-rplp-1/igt@i915_selftest@live.html
    - bat-adlp-11:        [ABORT][44] ([i915#14365] / [i915#15399]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-11/igt@i915_selftest@live.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-11/igt@i915_selftest@live.html
    - bat-adlp-6:         [ABORT][46] ([i915#14365] / [i915#15399]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-6/igt@i915_selftest@live.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hugepages:
    - fi-glk-j4005:       [ABORT][48] ([i915#15399]) -> [PASS][49] +1 other test pass
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-glk-j4005/igt@i915_selftest@live@hugepages.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-glk-j4005/igt@i915_selftest@live@hugepages.html
    - bat-adlp-9:         [ABORT][50] ([i915#15399]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-9/igt@i915_selftest@live@hugepages.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-9/igt@i915_selftest@live@hugepages.html
    - bat-twl-1:          [ABORT][52] ([i915#15399]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-twl-1/igt@i915_selftest@live@hugepages.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-1/igt@i915_selftest@live@hugepages.html
    - bat-arls-5:         [ABORT][54] ([i915#15399]) -> [PASS][55] +1 other test pass
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-arls-5/igt@i915_selftest@live@hugepages.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-arls-5/igt@i915_selftest@live@hugepages.html
    - bat-rplp-1:         [ABORT][56] ([i915#15399]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-rplp-1/igt@i915_selftest@live@hugepages.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-rplp-1/igt@i915_selftest@live@hugepages.html
    - bat-arlh-2:         [ABORT][58] ([i915#15399]) -> [PASS][59] +1 other test pass
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-arlh-2/igt@i915_selftest@live@hugepages.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-arlh-2/igt@i915_selftest@live@hugepages.html
    - fi-rkl-11600:       [ABORT][60] ([i915#15399]) -> [PASS][61] +1 other test pass
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
    - bat-dg1-7:          [ABORT][62] ([i915#15399]) -> [PASS][63] +1 other test pass
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg1-7/igt@i915_selftest@live@hugepages.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg1-7/igt@i915_selftest@live@hugepages.html
    - bat-dg2-9:          [ABORT][64] ([i915#15399]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-9/igt@i915_selftest@live@hugepages.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-9/igt@i915_selftest@live@hugepages.html
    - fi-kbl-x1275:       [ABORT][66] ([i915#15399]) -> [PASS][67] +1 other test pass
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
    - bat-adlp-11:        [ABORT][68] ([i915#15399]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-11/igt@i915_selftest@live@hugepages.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-11/igt@i915_selftest@live@hugepages.html
    - bat-rpls-4:         [ABORT][70] ([i915#15399]) -> [PASS][71] +1 other test pass
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-rpls-4/igt@i915_selftest@live@hugepages.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-rpls-4/igt@i915_selftest@live@hugepages.html
    - fi-kbl-7567u:       [ABORT][72] ([i915#15399]) -> [PASS][73] +1 other test pass
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-kbl-7567u/igt@i915_selftest@live@hugepages.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-kbl-7567u/igt@i915_selftest@live@hugepages.html
    - fi-kbl-8809g:       [ABORT][74] ([i915#15399]) -> [PASS][75] +1 other test pass
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html
    - bat-jsl-5:          [ABORT][76] ([i915#15399]) -> [PASS][77] +1 other test pass
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-jsl-5/igt@i915_selftest@live@hugepages.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-5/igt@i915_selftest@live@hugepages.html
    - bat-dg1-6:          [ABORT][78] ([i915#15399]) -> [PASS][79] +1 other test pass
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg1-6/igt@i915_selftest@live@hugepages.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg1-6/igt@i915_selftest@live@hugepages.html
    - fi-tgl-1115g4:      [ABORT][80] ([i915#15399]) -> [PASS][81] +1 other test pass
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html
    - fi-cfl-guc:         [ABORT][82] ([i915#15399]) -> [PASS][83] +1 other test pass
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-cfl-guc/igt@i915_selftest@live@hugepages.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-cfl-guc/igt@i915_selftest@live@hugepages.html
    - fi-skl-6600u:       [ABORT][84] ([i915#15399]) -> [PASS][85] +1 other test pass
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-skl-6600u/igt@i915_selftest@live@hugepages.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-skl-6600u/igt@i915_selftest@live@hugepages.html
    - fi-cfl-8700k:       [ABORT][86] ([i915#15399]) -> [PASS][87] +1 other test pass
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html
    - bat-dg2-14:         [ABORT][88] ([i915#15399]) -> [PASS][89] +1 other test pass
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-14/igt@i915_selftest@live@hugepages.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-14/igt@i915_selftest@live@hugepages.html
    - fi-bsw-nick:        [ABORT][90] ([i915#15399]) -> [PASS][91] +1 other test pass
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-bsw-nick/igt@i915_selftest@live@hugepages.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-bsw-nick/igt@i915_selftest@live@hugepages.html
    - bat-kbl-2:          [ABORT][92] ([i915#15399]) -> [PASS][93] +1 other test pass
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-kbl-2/igt@i915_selftest@live@hugepages.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-kbl-2/igt@i915_selftest@live@hugepages.html
    - bat-adlp-6:         [ABORT][94] ([i915#15399]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-6/igt@i915_selftest@live@hugepages.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-6/igt@i915_selftest@live@hugepages.html
    - bat-atsm-1:         [INCOMPLETE][96] ([i915#15399]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-atsm-1/igt@i915_selftest@live@hugepages.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-atsm-1/igt@i915_selftest@live@hugepages.html
    - bat-dg2-11:         [ABORT][98] ([i915#15399]) -> [PASS][99] +1 other test pass
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-11/igt@i915_selftest@live@hugepages.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-11/igt@i915_selftest@live@hugepages.html
    - bat-jsl-1:          [ABORT][100] ([i915#15399]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-jsl-1/igt@i915_selftest@live@hugepages.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-1/igt@i915_selftest@live@hugepages.html
    - bat-mtlp-9:         [ABORT][102] ([i915#15399]) -> [PASS][103] +1 other test pass
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-mtlp-9/igt@i915_selftest@live@hugepages.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-mtlp-9/igt@i915_selftest@live@hugepages.html
    - bat-arls-6:         [ABORT][104] ([i915#15399]) -> [PASS][105] +1 other test pass
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-arls-6/igt@i915_selftest@live@hugepages.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-arls-6/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [DMESG-FAIL][106] ([i915#12061]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-11/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [DMESG-FAIL][108] ([i915#12061]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][110] ([i915#12061]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-jsl-1:          [ABORT][112] ([i915#15399]) -> [DMESG-FAIL][113] ([i915#15394])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-jsl-1/igt@i915_selftest@live.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-1/igt@i915_selftest@live.html
    - bat-dg2-9:          [ABORT][114] ([i915#15399]) -> [DMESG-FAIL][115] ([i915#12061])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-9/igt@i915_selftest@live.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-9/igt@i915_selftest@live.html
    - bat-atsm-1:         [INCOMPLETE][116] ([i915#12061] / [i915#15157] / [i915#15399]) -> [DMESG-FAIL][117] ([i915#12061] / [i915#13929])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-atsm-1/igt@i915_selftest@live.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][118] ([i915#14204]) -> [DMESG-FAIL][119] ([i915#13929])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-atsm-1/igt@i915_selftest@live@mman.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
  [i915#11031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031
  [i915#11032]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11731]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#15157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157
  [i915#15249]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249
  [i915#15371]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15371
  [i915#15394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15394
  [i915#15399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_17655 -> Patchwork_158754v2

  CI-20190529: 20190529
  CI_DRM_17655: 5592140b76b5e6f658dfd37913184f2990fc666b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8662: 9410b6926f317e8bf824502394e09ee8753ff65e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_158754v2: 5592140b76b5e6f658dfd37913184f2990fc666b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/index.html

--===============0524120967449269395==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix BO alloc flags (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158754/">https://patchwork.freedesktop.org/series/158754/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17655 -&gt; Patchwork_158754v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/index.html</p>
<h2>Participating hosts (38 -&gt; 40)</h2>
<p>Additional (3): bat-twl-2 fi-ivb-3770 fi-bsw-n3050 <br />
  Missing    (1): bat-dg2-13 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158754v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a></li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a></li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-1/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-1/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
<li>bat-jsl-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-5/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-tgl-1115g4/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-skl-6600u/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a></li>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-kbl-2/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031">i915#11031</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15394">i915#15394</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030">i915#11030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15371">i915#15371</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032">i915#11032</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-vga-1:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-vga-1.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-bsw-n3050/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-hsw-4770/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-hsw-4770/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adls-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adls-6/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-9/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-1/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-rplp-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-rplp-1/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-11/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-6/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-9/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-9/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-twl-1/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-twl-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-arls-5/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-arls-5/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-rplp-1/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-rplp-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-arlh-2/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-arlh-2/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg1-7/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg1-7/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-9/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-9/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-11/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-11/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-rpls-4/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-rpls-4/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-kbl-7567u/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-kbl-7567u/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-kbl-8809g/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-jsl-5/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-5/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg1-6/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg1-6/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-cfl-guc/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-cfl-guc/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-skl-6600u/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-skl-6600u/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-cfl-8700k/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-14/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-14/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/fi-bsw-nick/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/fi-bsw-nick/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-kbl-2/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-kbl-2/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-adlp-6/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-adlp-6/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-atsm-1/igt@i915_selftest@live@hugepages.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-atsm-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-11/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-11/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-jsl-1/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-mtlp-9/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-mtlp-9/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-arls-6/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-arls-6/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-jsl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15394">i915#15394</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-dg2-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17655/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158754v2/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17655 -&gt; Patchwork_158754v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17655: 5592140b76b5e6f658dfd37913184f2990fc666b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8662: 9410b6926f317e8bf824502394e09ee8753ff65e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_158754v2: 5592140b76b5e6f658dfd37913184f2990fc666b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0524120967449269395==--
