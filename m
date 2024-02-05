Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25AA84A197
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 18:58:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBB710FB50;
	Mon,  5 Feb 2024 17:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A5D10FB50;
 Mon,  5 Feb 2024 17:58:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7642672251681219278=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/dp=3A_Fix_connecto?=
 =?utf-8?q?r_DSC_HW_state_readout?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Feb 2024 17:58:07 -0000
Message-ID: <170715588721.1024443.8747322923542243335@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240205132631.1588577-1-imre.deak@intel.com>
In-Reply-To: <20240205132631.1588577-1-imre.deak@intel.com>
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

--===============7642672251681219278==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Fix connector DSC HW state readout
URL   : https://patchwork.freedesktop.org/series/129540/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14221_full -> Patchwork_129540v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129540v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129540v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129540v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@cursor-offscreen-128x42@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][1] +1 other test timeout
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-128x42@pipe-d-hdmi-a-3.html

  * igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2:          [PASS][2] -> [TIMEOUT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-10/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
    - shard-snb:          [PASS][4] -> [DMESG-FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-snb6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-snb6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332:
    - shard-rkl:          [PASS][6] -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565:
    - shard-dg1:          [PASS][8] -> [ABORT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html
    - shard-dg2:          [PASS][10] -> [ABORT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb1555:
    - shard-glk:          [PASS][12] -> [ABORT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb1555.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb1555.html

  * igt@perf@oa-exponents@0-rcs0:
    - shard-mtlp:         [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-mtlp-8/igt@perf@oa-exponents@0-rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@perf@oa-exponents@0-rcs0.html

  
#### Warnings ####

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          [SKIP][16] ([fdo#112283]) -> [TIMEOUT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-10/igt@gem_exec_params@secure-non-master.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_exec_params@secure-non-master.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          [SKIP][18] ([i915#6621]) -> [TIMEOUT][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-10/igt@i915_pm_rps@min-max-config-loaded.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-dg2:          [SKIP][20] ([fdo#111614]) -> [TIMEOUT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-10/igt@kms_big_fb@linear-16bpp-rotate-270.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][22] ([i915#5354]) -> [TIMEOUT][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
    - shard-tglu:         [FAIL][24] -> [DMESG-FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-tglu-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html

  
Known issues
------------

  Here are the changes found in Patchwork_129540v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-rkl:          ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [FAIL][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48]) ([i915#8293]) -> ([PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-2/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-3/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-3/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-4/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-4/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-4/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-6/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-6/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/boot.html
    - shard-glk:          ([PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [FAIL][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96]) ([i915#8293]) -> ([PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk9/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk9/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk9/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk8/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk8/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk8/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk8/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk7/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk7/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk6/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk6/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk6/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk4/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk4/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk4/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk3/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk3/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk3/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk2/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk2/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk2/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk1/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk1/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk1/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk1/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk1/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk1/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk2/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk2/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk3/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk3/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk3/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk4/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk4/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk4/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk6/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk6/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk6/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk7/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk7/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk7/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk8/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk8/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk8/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk9/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk9/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#8411])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][122] ([i915#10140])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit.html

  * igt@drm_fdinfo@busy-hang@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#8414]) +9 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@drm_fdinfo@busy-hang@bcs0.html

  * igt@drm_fdinfo@busy-idle@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#8414]) +4 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@drm_fdinfo@busy-idle@vcs1.html

  * igt@drm_fdinfo@busy@bcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#8414]) +6 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@drm_fdinfo@busy@bcs0.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#9323])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#9323])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][128] -> [INCOMPLETE][129] ([i915#7297])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#8562])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_create@hog-create@smem0:
    - shard-mtlp:         NOTRUN -> [FAIL][131] ([i915#8758])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_create@hog-create@smem0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([fdo#109314])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#8555])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#5882]) +9 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#280])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#280])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][137] -> [ABORT][138] ([i915#10030] / [i915#7975] / [i915#8213])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-tglu-2/igt@gem_eio@hibernate.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-9/igt@gem_eio@hibernate.html
    - shard-dg2:          NOTRUN -> [ABORT][139] ([i915#10030] / [i915#7975] / [i915#8213])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_eio@hibernate.html

  * igt@gem_eio@suspend:
    - shard-tglu:         [PASS][140] -> [ABORT][141] ([i915#10030])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-tglu-4/igt@gem_eio@suspend.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-9/igt@gem_eio@suspend.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4812]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#4771]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_exec_balancer@bonded-sync.html
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#4771])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#4036])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#8555]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#4525])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#6334]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-dg2:          NOTRUN -> [FAIL][149] ([i915#9606])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_exec_capture@many-4k-zero.html
    - shard-rkl:          NOTRUN -> [FAIL][150] ([i915#9606])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_endless@dispatch@ccs2:
    - shard-dg2:          NOTRUN -> [TIMEOUT][151] ([i915#7016])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_exec_endless@dispatch@ccs2.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#4473])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [PASS][153] -> [FAIL][154] ([i915#2842]) +1 other test fail
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#3539] / [i915#4852]) +3 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_exec_fair@basic-pace-share.html
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#4473] / [i915#4771])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][157] -> [FAIL][158] ([i915#2842])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][159] ([i915#2842]) +1 other test fail
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@submit:
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#4812]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#3539] / [i915#4852])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#3539])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#5107])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([fdo#112283]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#3281]) +5 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-wc-active.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#3281]) +3 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3281]) +10 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#4537] / [i915#4812]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#4537] / [i915#4812]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][170] ([i915#7975] / [i915#8213])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-dg2:          [PASS][171] -> [TIMEOUT][172] ([i915#7392])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-10/igt@gem_exec_whisper@basic-fds-forked-all.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#4860]) +2 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#4613]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
    - shard-glk:          NOTRUN -> [SKIP][175] ([fdo#109271] / [i915#4613]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][176] -> [TIMEOUT][177] ([i915#5493])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          [PASS][178] -> [TIMEOUT][179] ([i915#5493])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#4613])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_media_vme:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#284])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#4077]) +7 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_mmap_gtt@basic.html

  * igt@gem_mmap_gtt@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#4077]) +12 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@gem_mmap_gtt@coherency:
    - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#4077]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_wc@read-write:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#4083]) +6 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_mmap_wc@read-write.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#4083]) +2 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#3282]) +6 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#3282]) +4 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_partial_pwrite_pread@write.html
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#3282])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_pread@self:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#3282])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_pread@self.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#4270]) +6 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#4270]) +3 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#4270])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#8428]) +3 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#5190]) +6 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#8411])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#4079]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_set_tiling_vs_gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#4079]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_unfence_active_buffers:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#4879])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@access-control:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#3297])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#3297])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#3297]) +3 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#3297])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_userptr_blits@set-cache-level.html

  * igt@gen3_render_linear_blits:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([fdo#109289]) +4 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gen3_render_linear_blits.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([fdo#109289]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@bb-large:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#2856]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#2527])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#2527])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#2856]) +4 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [PASS][210] -> [INCOMPLETE][211] ([i915#10137] / [i915#9820] / [i915#9849])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#8399])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_rps@reset:
    - shard-mtlp:         NOTRUN -> [FAIL][213] ([i915#8346])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#8925]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#8925])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_pm_rps@thresholds-park@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#3555] / [i915#8925])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@i915_pm_rps@thresholds-park@gt1.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#6188])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_selftest@mock@memory_region:
    - shard-glk:          NOTRUN -> [DMESG-WARN][218] ([i915#9311])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk6/igt@i915_selftest@mock@memory_region.html
    - shard-mtlp:         NOTRUN -> [DMESG-WARN][219] ([i915#9311])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@i915_selftest@mock@memory_region.html

  * igt@intel_hwmon@hwmon-write:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#7707])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#5190])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#4212]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#3826])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#8709]) +7 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#3555]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#1769] / [i915#3555])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][227] -> [FAIL][228] ([i915#5138])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][229] ([i915#4538] / [i915#5286])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#5286]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#3638])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([fdo#111614]) +5 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([fdo#111614]) +4 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([fdo#111614] / [i915#3638])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#4538] / [i915#5190]) +15 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([fdo#110723]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][237] ([fdo#111615]) +7 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#2705])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#5354] / [i915#6095]) +4 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-rc-ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#5354] / [i915#6095]) +10 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#5354] / [i915#6095]) +29 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#5354]) +103 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@pipe-d-random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#5354]) +10 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_ccs@pipe-d-random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_chamelium_color@ctm-0-75:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([fdo#111827]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_chamelium_color@ctm-0-75.html
    - shard-rkl:          NOTRUN -> [SKIP][245] ([fdo#111827])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_chamelium_color@ctm-0-75.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([fdo#111827]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#7828])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#7828]) +11 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#7828]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#7828]) +5 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#3299])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][252] ([i915#3299]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#9424])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][254] ([i915#6944])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_content_protection@uevent.html
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#7118])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][256] ([fdo#109279] / [i915#3359])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-dg1:          NOTRUN -> [SKIP][257] ([i915#3555])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#3359]) +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#3359])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][260] ([i915#3555] / [i915#8814]) +1 other test skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#3555]) +4 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#3359])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#8814])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:
    - shard-mtlp:         [PASS][264] -> [FAIL][265] ([i915#9224])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-mtlp-8/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][266] ([fdo#111767])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#4103] / [i915#4213]) +2 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#9809]) +3 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([fdo#109274] / [fdo#111767] / [i915#5354]) +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([fdo#109274] / [i915#5354]) +5 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
    - shard-rkl:          NOTRUN -> [SKIP][271] ([fdo#111825]) +4 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#4213])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@torture-bo@pipe-a:
    - shard-tglu:         [PASS][273] -> [DMESG-WARN][274] ([i915#10166])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-tglu-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([fdo#110189] / [i915#9227])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][276] ([fdo#109271] / [fdo#110189]) +1 other test skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk7/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#9833])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][278] ([i915#3555] / [i915#8827])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#8812])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#3840])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#3555] / [i915#3840])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][282] ([i915#3555] / [i915#3840] / [i915#9053])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg1:          [PASS][283] -> [FAIL][284] ([i915#4767])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg1-12/igt@kms_fbcon_fbt@fbc-suspend.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-16/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#3469])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#9337])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#3637]) +4 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][288] ([fdo#111767] / [i915#3637])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][289] ([fdo#109274] / [fdo#111767])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][290] ([fdo#109274]) +3 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#2587] / [i915#2672])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][292] ([i915#2672])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][293] ([i915#3555] / [i915#8810])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][294] ([i915#2587] / [i915#2672]) +1 other test skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#2672]) +2 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][296] ([i915#2672]) +4 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#2672] / [i915#3555])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][298] ([i915#2672] / [i915#3555])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][299] ([i915#1825]) +21 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
    - shard-snb:          [PASS][300] -> [SKIP][301] ([fdo#109271]) +4 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#3023]) +9 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#8708]) +2 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#8708]) +20 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][305] ([fdo#111825]) +1 other test skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][306] ([fdo#111825] / [i915#1825]) +12 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#9766])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
    - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#9766])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][309] ([fdo#109271]) +184 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#3458]) +24 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg1:          NOTRUN -> [SKIP][311] ([i915#3458]) +2 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][312] ([i915#8708]) +6 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][313] ([fdo#109280]) +1 other test skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][314] ([fdo#111767] / [i915#5354])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][315] ([fdo#110189]) +1 other test skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][316] ([i915#3555] / [i915#8228]) +2 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#3555] / [i915#8228]) +2 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][318] ([i915#4816])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][319] ([i915#4573]) +1 other test fail
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk7/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][320] ([i915#3555]) +4 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html
    - shard-dg2:          NOTRUN -> [SKIP][321] ([i915#3555] / [i915#8806])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#6953] / [i915#9423])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#9423]) +3 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][324] ([i915#9423]) +11 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([i915#9423]) +7 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][326] ([i915#5235] / [i915#9423]) +11 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][327] ([i915#5235]) +3 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][328] ([i915#5235]) +3 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][329] ([i915#5235]) +11 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][330] ([i915#9293])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][331] ([i915#5978])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#9685]) +1 other test skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][333] ([i915#9340])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#8430])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [PASS][335] -> [SKIP][336] ([i915#9519])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-3/igt@kms_pm_rpm@dpms-non-lpsp.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][337] -> [SKIP][338] ([i915#9519])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-dg2:          NOTRUN -> [SKIP][339] ([fdo#109293] / [fdo#109506])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg1:          NOTRUN -> [SKIP][340] ([i915#9683])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][341] ([fdo#111068] / [i915#9683])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-mtlp:         NOTRUN -> [SKIP][342] ([i915#4348])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][343] ([i915#9683]) +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][344] ([i915#9685])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][345] ([i915#5289])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-mtlp:         NOTRUN -> [SKIP][346] ([i915#4235]) +1 other test skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
    - shard-rkl:          [PASS][347] -> [INCOMPLETE][348] ([i915#9569])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][349] ([i915#4235] / [i915#5190])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
    - shard-rkl:          NOTRUN -> [SKIP][350] ([fdo#111615] / [i915#5289])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][351] ([i915#3555] / [i915#8809])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][352] ([fdo#109309])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [FAIL][353] ([i915#9196])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [PASS][354] -> [FAIL][355] ([i915#9196]) +1 other test fail
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  * igt@kms_vblank@ts-continuation-suspend@pipe-a-edp-1:
    - shard-mtlp:         [PASS][356] -> [FAIL][357] ([i915#10127]) +2 other tests fail
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-mtlp-8/igt@kms_vblank@ts-continuation-suspend@pipe-a-edp-1.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-4/igt@kms_vblank@ts-continuation-suspend@pipe-a-edp-1.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-mtlp:         NOTRUN -> [SKIP][358] ([i915#9906])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_writeback@writeback-check-output:
    - shard-glk:          NOTRUN -> [SKIP][359] ([fdo#109271] / [i915#2437])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk6/igt@kms_writeback@writeback-check-output.html
    - shard-mtlp:         NOTRUN -> [SKIP][360] ([i915#2437])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][361] ([i915#2437] / [i915#9412])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][362] ([i915#2436])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][363] ([i915#2434])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@perf@mi-rpc.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-mtlp:         [PASS][364] -> [FAIL][365] ([i915#4349])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-mtlp-7/igt@perf_pmu@busy-double-start@rcs0.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-8/igt@perf_pmu@busy-double-start@rcs0.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][366] ([i915#4349]) +3 other tests fail
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][367] ([i915#8516])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          NOTRUN -> [SKIP][368] ([fdo#109295] / [i915#3291] / [i915#3708])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][369] ([i915#3708] / [i915#4077]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          NOTRUN -> [SKIP][370] ([i915#3708])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@prime_vgem@fence-write-hang.html
    - shard-rkl:          NOTRUN -> [SKIP][371] ([fdo#109295] / [i915#3708])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg1:          NOTRUN -> [SKIP][372] ([i915#9917])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@v3d/v3d_submit_cl@multi-and-single-sync:
    - shard-rkl:          NOTRUN -> [SKIP][373] ([fdo#109315]) +6 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@v3d/v3d_submit_cl@multi-and-single-sync.html

  * igt@v3d/v3d_submit_cl@multisync-out-syncs:
    - shard-dg2:          NOTRUN -> [SKIP][374] ([i915#2575]) +13 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@v3d/v3d_submit_cl@multisync-out-syncs.html

  * igt@v3d/v3d_submit_cl@valid-submission:
    - shard-tglu:         NOTRUN -> [SKIP][375] ([fdo#109315] / [i915#2575])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@v3d/v3d_submit_cl@valid-submission.html

  * igt@v3d/v3d_submit_csd@bad-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][376] ([i915#2575]) +7 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@v3d/v3d_submit_csd@bad-pad.html

  * igt@vc4/vc4_create_bo@create-bo-4096:
    - shard-mtlp:         NOTRUN -> [SKIP][377] ([i915#7711]) +4 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@vc4/vc4_create_bo@create-bo-4096.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
    - shard-dg2:          NOTRUN -> [SKIP][378] ([i915#7711]) +10 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html
    - shard-rkl:          NOTRUN -> [SKIP][379] ([i915#7711]) +3 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:
    - shard-dg1:          NOTRUN -> [SKIP][380] ([i915#7711]) +2 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          [FAIL][381] ([i915#7742]) -> [PASS][382]
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/igt@drm_fdinfo@idle@rcs0.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-2/igt@drm_fdinfo@idle@rcs0.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][383] ([i915#5784]) -> [PASS][384]
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg1-15/igt@gem_eio@reset-stress.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-18/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-rkl:          [FAIL][385] ([i915#2842]) -> [PASS][386]
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][387] ([i915#2842]) -> [PASS][388] +1 other test pass
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [INCOMPLETE][389] ([i915#10137] / [i915#9849]) -> [PASS][390]
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [ABORT][391] ([i915#9849]) -> [PASS][392]
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1:
    - shard-glk:          [INCOMPLETE][393] ([i915#10137]) -> [PASS][394]
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][395] ([i915#3743]) -> [PASS][396]
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][397] ([i915#2346]) -> [PASS][398]
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@torture-move@pipe-b:
    - shard-glk:          [DMESG-WARN][399] -> [PASS][400]
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk4/igt@kms_cursor_legacy@torture-move@pipe-b.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk8/igt@kms_cursor_legacy@torture-move@pipe-b.html

  * igt@kms_flip@flip-vs-rmfb@c-hdmi-a2:
    - shard-glk:          [INCOMPLETE][401] -> [PASS][402]
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk6/igt@kms_flip@flip-vs-rmfb@c-hdmi-a2.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk4/igt@kms_flip@flip-vs-rmfb@c-hdmi-a2.html

  * igt@kms_force_connector_basic@force-edid:
    - shard-dg1:          [ABORT][403] ([i915#4391] / [i915#4423]) -> [PASS][404]
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg1-13/igt@kms_force_connector_basic@force-edid.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-snb:          [SKIP][405] ([fdo#109271]) -> [PASS][406]
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
    - shard-tglu:         [ABORT][407] ([i915#10159]) -> [PASS][408]
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-tglu-9/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][409] ([i915#9519]) -> [PASS][410]
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [FAIL][411] ([i915#8717]) -> [PASS][412]
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_pm_rpm@i2c.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
    - shard-dg1:          [DMESG-WARN][413] -> [PASS][414]
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
    - shard-tglu:         [DMESG-WARN][415] -> [PASS][416]
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-tglu-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb1555:
    - shard-glk:          [ABORT][417] -> [PASS][418]
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb1555.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb1555.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332:
    - shard-dg1:          [ABORT][419] -> [PASS][420]
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html
    - shard-dg2:          [ABORT][421] -> [PASS][422]
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-dg2-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565:
    - shard-rkl:          [ABORT][423] -> [PASS][424]
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [FAIL][425] ([i915#9196]) -> [PASS][426] +1 other test pass
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-snb:          [INCOMPLETE][427] ([i915#8816]) -> [SKIP][428] ([fdo#109271])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-snb7/igt@kms_content_protection@atomic.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-snb6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@mei-interface:
    - shard-snb:          [SKIP][429] ([fdo#109271]) -> [INCOMPLETE][430] ([i915#9878])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-snb4/igt@kms_content_protection@mei-interface.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-snb7/igt@kms_content_protection@mei-interface.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][431] ([fdo#110189] / [i915#3955]) -> [SKIP][432] ([i915#3955])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff:
    - shard-snb:          [SKIP][433] ([fdo#109271]) -> [SKIP][434] ([fdo#109271] / [fdo#111767])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
  [i915#10127]: https://gitlab.freedesktop.org/drm/intel/issues/10127
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#10140]: https://gitlab.freedesktop.org/drm/intel/issues/10140
  [i915#10159]: https://gitlab.freedesktop.org/drm/intel/issues/10159
  [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7016]: https://gitlab.freedesktop.org/drm/intel/issues/7016
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8346]: https://gitlab.freedesktop.org/drm/intel/issues/8346
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
  [i915#8758]: https://gitlab.freedesktop.org/drm/intel/issues/8758
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#8827]: https://gitlab.freedesktop.org/drm/intel/issues/8827
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9224]: https://gitlab.freedesktop.org/drm/intel/issues/9224
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9293]: https://gitlab.freedesktop.org/drm/intel/issues/9293
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9337]: https://gitlab.freedesktop

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/index.html

--===============7642672251681219278==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/dp: Fix connector DSC HW state read=
out</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/129540/">https://patchwork.freedesktop.org/series/129540/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_129540v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129540v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14221_full -&gt; Patchwork_129540v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129540v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_129540v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
129540v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-128x42@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_cursor_crc@cursor-offs=
creen-128x42@pipe-d-hdmi-a-3.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-10/igt@kms_cursor_legacy@nonblocking-modeset-vs-cur=
sor-atomic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_cursor_legacy@nonblocking-m=
odeset-vs-cursor-atomic.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_cl=
ip_offset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-snb6/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_clip_offset.html">PASS</a> -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-snb6/igt@kms_selftes=
t@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html">DM=
ESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_rgb332:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-7/igt@kms_selftest@drm_format_helper@drm_format_hel=
per_test-drm_test_fb_xrgb8888_to_rgb332.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@km=
s_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to=
_rgb332.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_rgb565:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_xrgb8888_to_rgb565.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@=
kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_=
to_rgb565.html">ABORT</a></li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-2/igt@kms_selftest@drm_format_helper@drm_format_hel=
per_test-drm_test_fb_xrgb8888_to_rgb565.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-6/igt@km=
s_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to=
_rgb565.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_xrgb1555:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_xrgb1555.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk9/igt@km=
s_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to=
_xrgb1555.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents@0-rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-mtlp-8/igt@perf@oa-exponents@0-rcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/sh=
ard-mtlp-5/igt@perf@oa-exponents@0-rcs0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-10/igt@gem_exec_params@secure-non-master.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D112283">fdo=
#112283</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_129540v1/shard-dg2-5/igt@gem_exec_params@secure-non-master.html">TIME=
OUT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-10/igt@i915_pm_rps@min-max-config-loaded.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6621">i915=
#6621</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129540v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-loaded.html">TIMEOU=
T</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-10/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fd=
o#111614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_129540v1/shard-dg2-5/igt@kms_big_fb@linear-16bpp-rotate-270.html">TI=
MEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri=
-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_frontbuffer=
_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_bu=
ild_fourcc_list:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-tglu-7/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_build_fourcc_list.html">FAIL</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-6/igt@k=
ms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_four=
cc_list.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129540v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14221/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14221/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14221/shard-rkl-7/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-6/boot.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_142=
21/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14221/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14221/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-4/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14221/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14221/shard-rkl-3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1422=
1/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14221/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-rkl-1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shar=
d-rkl-1/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rk=
l-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_129540v1/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-2/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12954=
0v1/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-2=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129540v1/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1=
/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129540v1/shard-rkl-4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-4/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129540v1/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shar=
d-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_129540v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29540v1/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl=
-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_129540v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540=
v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_129540v1/shard-rkl-7/boot.html">PASS</a>)</li>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14221/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14221/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14221/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14221/shard-glk7/boot.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14221/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14221/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14221/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4221/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14221/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14221/shar=
d-glk1/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_129540v1/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk1=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129540v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk2/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/s=
hard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129540v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29540v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_129540v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129540v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_129540v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9540v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_129540v1/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129540v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_129540v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9540v1/shard-glk9/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@api_intel_bb@object-reloc=
-purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@drm_buddy@drm_buddy@drm_t=
est_buddy_alloc_limit.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/10140">i915#10140</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@drm_fdinfo@busy-hang@bcs0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8414">i915#8414</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@drm_fdinfo@busy-idle@vcs1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8414">i915#8414</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@bcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@drm_fdinfo@busy@bcs0.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8414=
">i915#8414</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/93=
23">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-com=
pfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_ccs@suspend-resume@l=
inear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_create@hog-create@sme=
m0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8758">i915#8758</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_ctx_persistence@heart=
beat-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_ctx_persistence@satura=
ted-hostile-nopreempt@ccs0.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5882">i915#5882</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-tglu-2/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tgl=
u-9/igt@gem_eio@hibernate.html">ABORT</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/10030">i915#10030</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_eio@hibernate.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10030"=
>i915#10030</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-tglu-4/igt@gem_eio@suspend.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-=
9/igt@gem_eio@suspend.html">ABORT</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/10030">i915#10030</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_exec_balancer@bonded-=
false-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_exec_balancer@bonded-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4771">i915#4771</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_exec_balancer@bonded-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@gem_exec_balancer@invalid=
-bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_exec_balancer@noheartb=
eat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8555">i915#8555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@gem_exec_balancer@parallel=
-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_exec_capture@capture-i=
nvisible@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_exec_capture@many-4k-z=
ero.html">FAIL</a> ([i915#9606])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gem_exec_capture@many-4k-z=
ero.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@ccs2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_exec_endless@dispatch=
@ccs2.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7016">i915#7016</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_exec_fair@basic-none-=
solo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4473">i915#4473</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v=
1/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 oth=
er test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_exec_fair@basic-pace-=
share.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4852">i915#4852</a>) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_exec_fair@basic-pace-=
share.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9540v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-glk7/igt@gem_exec_fair@basic-throttl=
e@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_exec_fence@submit.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/481=
2">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_exec_flush@basic-uc-r=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-se=
t-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_exec_params@secure-no=
n-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D112283">fdo#112283</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-=
wc-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gem_exec_reloc@basic-softp=
in.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_exec_schedule@preempt=
-queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@gem_exec_suspend@basic-s4-=
devices@smem.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-10/igt@gem_exec_whisper@basic-fds-forked-all.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_129540v1/shard-dg2-5/igt@gem_exec_whisper@basic-fds-forked-all.html">TIME=
OUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7392">i=
915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_fenced_exec_thrash@2-s=
pare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4860">i915#4860</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-glk1/igt@gem_lmem_swapping@heavy-ver=
ify-random-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1295=
40v1/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a=
>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129=
540v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_lmem_swapping@verify-=
random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#2=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_mmap_gtt@basic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077">=
i915#4077</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@gem_mmap_gtt@basic-small-b=
o.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4077">i915#4077</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_mmap_gtt@coherency.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
77">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_mmap_wc@read-write.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/408=
3">i915#4083</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_mmap_wc@write-read-di=
stinct.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_partial_pwrite_pread@=
reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gem_partial_pwrite_pread@w=
rite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3282">i915#3282</a>) +4 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gem_partial_pwrite_pread@w=
rite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_pread@self.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915=
#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4270">i915#4270</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_pxp@verify-pxp-stale-=
buf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@gem_render_copy@y-tiled-c=
cs-to-y-tiled-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_render_copy@y-tiled-t=
o-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gem_unfence_active_buffer=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gem_userptr_blits@access-c=
ontrol.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@gem_userptr_blits@readonly=
-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@gem_userptr_blits@set-cac=
he-level.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@gen3_render_linear_blits.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@gen9_exec_parse@secure-ba=
tches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129540v1/shard-dg1-15/igt@i915_module_load@reload-with-fault-injec=
tion.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/10137">i915#10137</a> / [i915#9820] / [i915#9849])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@i915_pm_freq_api@freq-basi=
c-api.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@i915_pm_rps@reset.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8346">i=
915#8346</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@i915_pm_rps@thresholds-idl=
e-park@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8925">i915#8925</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@i915_pm_rps@thresholds-pa=
rk@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@i915_pm_rps@thresholds-pa=
rk@gt1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@i915_query@query-topology=
-coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-glk6/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9311">i915#9311</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_addfb_basic@framebuffe=
r-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3826">i915#3826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-17/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129540v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#51=
38</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_big_fb@linear-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_big_fb@linear-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_big_fb@x-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +15 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_big_joiner@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705"=
>i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_ccs@pipe-a-random-ccs=
-data-4-tiled-dg2-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_ccs@pipe-b-crc-primary=
-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6095">i915#6095</a>) +10 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_ccs@pipe-c-crc-primar=
y-basic-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_ccs@pipe-d-crc-sprite-=
planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +103 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_ccs@pipe-d-random-ccs-=
data-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-75:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_chamelium_color@ctm-0-=
75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_chamelium_color@ctm-0-=
75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_chamelium_edid@hdmi-e=
did-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7828">i915#7828</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_chamelium_hpd@hdmi-hpd=
-enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd=
-without-ddc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_content_protection@me=
i-interface.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_content_protection@ue=
vent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6944">i915#6944</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_content_protection@ue=
vent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_cursor_crc@cursor-off=
screen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-ran=
dom-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-sli=
ding-64x21.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-mtlp-8/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_129540v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9224">i915#9224</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +2 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora=
-vs-flipb-atomic.html">SKIP</a> ([i915#9809]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +5 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111825">fdo#111825</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-tglu-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129540v1/shard-tglu-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10166">=
i915#10166</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-glk7/igt@kms_dirtyfb@fbc-dirtyfb-ioc=
tl@a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D110189">fdo#110189</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/8827">i915#8827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_dsc@dsc-with-formats.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg1-12/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/s=
hard-dg1-16/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3469">i9=
15#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop">i915#9337</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_flip@2x-dpms-vs-vblan=
k-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3637">i915#3637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_flip@2x-flip-vs-block=
ing-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8810">i915=
#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915=
#2672</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +21 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb=
-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129540v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p=
-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3023">i915#3023</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +20 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +12 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
ipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_frontbuffer_tracking@p=
ipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-glk1/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +184 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +24 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_frontbuffer_tracking@=
psr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +6 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D110189">fdo#110189</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-glk7/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a>) +4 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6953">i915#6953</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#94=
23]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-h=
dmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-12/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3.html">SKIP</a> ([i915#94=
23]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hd=
mi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#9423=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
> / [i915#9423]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-5-unity-scaling@pipe-a-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-16/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_pm_dc@dc5-dpms-negati=
ve.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9293">i915#9293</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_pm_dc@dc6-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5978">i=
915#5978</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@kms_pm_dc@dc6-psr.html">SK=
IP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-5/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-3/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/sha=
rd-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540=
v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#951=
9])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_pm_rpm@pc8-residency.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@kms_psr2_sf@primary-plane-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111068">fdo#111068</a> / [i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> ([i915#9683]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a>) +1 other test skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129540v1/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-=
x-90.html">INCOMPLETE</a> ([i915#9569])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-1/igt@kms_setmode@basic-clone-s=
ingle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@kms_tv_load_detect@load-d=
etect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109309">fdo#109309</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_universal_plane@curso=
r-fb-leak@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_129540v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak=
@pipe-d-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-mtlp-8/igt@kms_vblank@ts-continuation-suspend@pipe-a-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_129540v1/shard-mtlp-4/igt@kms_vblank@ts-continuation-suspend@pi=
pe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/10127">i915#10127</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-5/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-glk6/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@kms_writeback@writeback-c=
heck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@kms_writeback@writeback-ch=
eck-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2437">i915#2437</a> / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@perf@gen8-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#243=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-mtlp-7/igt@perf_pmu@busy-double-start@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1295=
40v1/shard-mtlp-8/igt@perf_pmu@busy-double-start@rcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@perf_pmu@busy-double-star=
t@vecs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4349">i915#4349</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-1/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10929=
5">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-10/igt@prime_vgem@coherency-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-5/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@sriov_basic@enable-vfs-au=
toprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@multi-and-single-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@v3d/v3d_submit_cl@multi-an=
d-single-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109315">fdo#109315</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@multisync-out-syncs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@v3d/v3d_submit_cl@multisyn=
c-out-syncs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2575">i915#2575</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@valid-submission:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@v3d/v3d_submit_cl@valid-s=
ubmission.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@v3d/v3d_submit_csd@bad-pa=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2575">i915#2575</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-4096:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-mtlp-3/igt@vc4/vc4_create_bo@create-=
bo-4096.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7711">i915#7711</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg2-2/igt@vc4/vc4_purgeable_bo@mark-=
unpurgeable-check-retained.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/7711">i915#7711</a>) +10 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@vc4/vc4_purgeable_bo@mark-=
unpurgeable-check-retained.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/7711">i915#7711</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-purged.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-7/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/=
shard-rkl-2/igt@drm_fdinfo@idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg1-15/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/=
shard-dg1-18/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129540v1/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_129540v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/10137">i915#10137</a> / [i915#9849]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-7/igt@i915_module_lo=
ad@reload-with-fault-injection.html">PASS</a></li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-glk1/igt@i915_module_load@reload-with-fault-injection.h=
tml">ABORT</a> ([i915#9849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_129540v1/shard-glk1/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hd=
mi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transi=
tion-fencing@pipe-b-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/10137">i915#10137</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk7/igt@=
kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@kms_big_fb@y-tiled=
-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129540v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-move@pipe-b:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-glk4/igt@kms_cursor_legacy@torture-move@pipe-b.html">DM=
ESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_129540v1/shard-glk8/igt@kms_cursor_legacy@torture-move@pipe-b.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-glk6/igt@kms_flip@flip-vs-rmfb@c-hdmi-a2.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129540v1/shard-glk4/igt@kms_flip@flip-vs-rmfb@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg1-13/igt@kms_force_connector_basic@force-edid.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4391">=
i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_129540v1/shard-dg1-19/igt@kms_force_connector_basic@force-edi=
d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-s=
hrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-snb7/igt@kms_frontbuffer_t=
racking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-tglu-9/igt@kms_plane@plane-panning-bottom-right-suspend=
@pipe-b.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/10159">i915#10159</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_129540v1/shard-tglu-5/igt@kms_plane@plane-panning-=
bottom-right-suspend@pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#95=
19]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9540v1/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/8717">i915#8717</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-d=
g2-1/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_cl=
ip_offset:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_clip_offset.html">DMESG-WARN</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt@k=
ms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offse=
t.html">PASS</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-tglu-7/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_clip_offset.html">DMESG-WARN</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-tglu-6/igt@k=
ms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offse=
t.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_argb1555:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_argb1555.html">ABORT</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-glk9/igt@k=
ms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_t=
o_argb1555.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_rgb332:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_xrgb8888_to_rgb332.html">ABORT</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg1-19/igt=
@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888=
_to_rgb332.html">PASS</a></li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-dg2-2/igt@kms_selftest@drm_format_helper@drm_format_hel=
per_test-drm_test_fb_xrgb8888_to_rgb332.html">ABORT</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-dg2-6/igt@k=
ms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_t=
o_rgb332.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_rgb565:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-7/igt@kms_selftest@drm_format_helper@drm_format_hel=
per_test-drm_test_fb_xrgb8888_to_rgb565.html">ABORT</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v1/shard-rkl-1/igt@k=
ms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_t=
o_rgb565.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129540v1/shard-tglu-9/igt@kms_universal_plane@cursor-f=
b-leak@pipe-b-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-snb7/igt@kms_content_protection@atomic.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8816">i915=
#8816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129540v1/shard-snb6/igt@kms_content_protection@atomic.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-snb4/igt@kms_content_protection@mei-interface.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_129540v1/shard-snb7/igt@kms_content_protection@mei-interface.html">I=
NCOMPLETE</a> ([i915#9878])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_129540v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14221/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-i=
ndfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_129540v1/shard-snb6/igt@kms_frontbuffer_tracking=
@psr-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============7642672251681219278==--
