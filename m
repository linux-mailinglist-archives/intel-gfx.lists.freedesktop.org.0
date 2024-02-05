Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C362849935
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 12:49:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D451E1124FB;
	Mon,  5 Feb 2024 11:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E581124FB;
 Mon,  5 Feb 2024 11:49:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7304316085402588792=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/mst=3A_enable_MST_?=
 =?utf-8?q?mode_for_128b/132b_single-stream_sideband_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Feb 2024 11:49:16 -0000
Message-ID: <170713375641.1024297.3582193301950149687@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <cover.1706882590.git.jani.nikula@intel.com>
In-Reply-To: <cover.1706882590.git.jani.nikula@intel.com>
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

--===============7304316085402588792==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mst: enable MST mode for 128b/132b single-stream sideband (rev2)
URL   : https://patchwork.freedesktop.org/series/129468/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14218_full -> Patchwork_129468v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129468v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129468v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  Additional (1): shard-snb-0 
  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129468v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
    - shard-tglu:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
    - shard-dg2:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332:
    - shard-snb:          [PASS][4] -> [ABORT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-snb6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html
    - shard-glk:          [PASS][6] -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html
    - shard-dg2:          NOTRUN -> [ABORT][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xbgr8888:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xbgr8888.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xbgr8888.html

  * igt@runner@aborted:
    - shard-glk:          NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk1/igt@runner@aborted.html

  
#### Warnings ####

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
    - shard-tglu:         [DMESG-FAIL][12] -> [DMESG-WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-tglu-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html

  
Known issues
------------

  Here are the changes found in Patchwork_129468v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-rkl:          ([PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [FAIL][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38]) ([i915#8293]) -> ([PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-5/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-5/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-5/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-5/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-6/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-6/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-6/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-7/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-7/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-7/boot.html
    - shard-glk:          ([PASS][63], [PASS][64], [FAIL][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [FAIL][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86]) ([i915#8293]) -> ([PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk1/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk1/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk1/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk2/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk2/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk2/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk3/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk3/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk3/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk3/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk4/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk4/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk4/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk4/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk6/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk6/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk7/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk7/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk8/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk8/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk8/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk9/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk9/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk9/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk1/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk1/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk3/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk3/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk3/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk4/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk4/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk4/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk4/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk6/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk6/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk6/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk7/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk7/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk7/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk8/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk8/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk8/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk9/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk9/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk9/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#8411])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@api_intel_bb@blit-reloc-purge-cache.html
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#8411])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][114] ([i915#10140])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit.html

  * igt@drm_fdinfo@isolation@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#8414]) +12 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@drm_fdinfo@isolation@rcs0.html

  * igt@drm_fdinfo@virtual-busy-idle-all:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#8414]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@drm_fdinfo@virtual-busy-idle-all.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [PASS][117] -> [FAIL][118] ([i915#7742])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html

  * igt@gem_caching@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#4873])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_caching@reads.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][120] ([i915#7297])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#7697]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#8562])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][123] -> [FAIL][124] ([i915#6268])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#8555]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#8555]) +2 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#5882]) +9 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#280])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#280])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4771])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#4771])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4812]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#6334]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg2:          NOTRUN -> [FAIL][134] ([i915#9606]) +1 other test fail
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-glk:          NOTRUN -> [FAIL][135] ([i915#9606])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][136] ([i915#2842])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#4473])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#4473] / [i915#4771])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][139] -> [FAIL][140] ([i915#2842])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         NOTRUN -> [FAIL][141] ([i915#2842])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#3539] / [i915#4852]) +5 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_params@secure-non-master:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([fdo#112283])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#3281]) +13 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#3281]) +5 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4537] / [i915#4812]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#4537] / [i915#4812])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          [PASS][148] -> [INCOMPLETE][149] ([i915#9275])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-dg2-10/igt@gem_exec_suspend@basic-s0@lmem0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-6/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#4860])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#4860])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#4613])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-7/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-glk:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#4613]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_madvise@dontneed-before-exec:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#3282]) +6 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_madvise@dontneed-before-exec.html
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#3282]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_madvise@dontneed-before-exec.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#8289])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@basic-copy:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#4077]) +10 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_mmap_gtt@basic-copy.html

  * igt@gem_mmap_gtt@basic-short:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#4077]) +8 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_mmap_gtt@basic-short.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#4083]) +5 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#4083]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3282])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#4270]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#4270]) +4 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#4270])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#8428]) +3 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#4079])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#4079]) +2 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#4879])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@access-control:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#3297]) +3 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#3297]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([fdo#109289])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@gen7_exec_parse@basic-offset.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([fdo#109289]) +2 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#2856]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gen9_exec_parse@allowed-all.html
    - shard-glk:          [PASS][175] -> [INCOMPLETE][176] ([i915#10137] / [i915#5566])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#2856]) +3 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][178] -> [INCOMPLETE][179] ([i915#10137] / [i915#9849])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][180] -> [INCOMPLETE][181] ([i915#10137] / [i915#9200])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          NOTRUN -> [ABORT][182] ([i915#9820])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#7091])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#8399])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][185] ([i915#9407])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#6621])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@i915_pm_rps@min-max-config-loaded.html
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#6621])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#8925])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#8437])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@i915_pm_sseu@full-enable.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#4212]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#4212]) +2 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#6228])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#3555]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#9531])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([fdo#111614]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][196] -> [FAIL][197] ([i915#5138])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#5286])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([fdo#111614]) +5 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][200] -> [FAIL][201] ([i915#3743]) +1 other test fail
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([fdo#111615]) +7 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#5190]) +5 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#4538] / [i915#5190]) +9 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#6187])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([fdo#110723]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#5354]) +79 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#5354] / [i915#6095]) +3 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_ccs@pipe-b-crc-primary-basic-y-tiled-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#5354] / [i915#6095]) +27 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-ccs.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#5354]) +2 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#5354] / [i915#6095]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-7/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-glk:          NOTRUN -> [SKIP][212] ([fdo#109271]) +145 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms_chamelium_color@ctm-blue-to-red.html
    - shard-dg2:          NOTRUN -> [SKIP][213] ([fdo#111827]) +2 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([fdo#111827])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-mtlp:         NOTRUN -> [SKIP][215] ([fdo#111827])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#7828]) +5 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#7828]) +6 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#3299])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#7118]) +2 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#3359]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#3555] / [i915#8814]) +1 other test skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#3359])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#8814])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#3359])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([fdo#111767])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][226] ([fdo#109274])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-7/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([fdo#109274] / [i915#5354]) +3 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#9809]) +1 other test skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          NOTRUN -> [FAIL][229] ([i915#2346])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@torture-move@all-pipes:
    - shard-snb:          [PASS][230] -> [DMESG-WARN][231] ([i915#10166])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-snb6/igt@kms_cursor_legacy@torture-move@all-pipes.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb7/igt@kms_cursor_legacy@torture-move@all-pipes.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([fdo#110189] / [i915#9227])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][233] ([fdo#110189] / [i915#9723])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg1-12/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#8588])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#3804])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#3555]) +5 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#8812])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#3555] / [i915#3840])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#3555] / [i915#3840] / [i915#9053])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#4854])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#1839])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_feature_discovery@display-2x.html
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#1839])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#658]) +1 other test skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#3637]) +5 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([fdo#111767] / [i915#3637])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([fdo#109274]) +6 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#8381]) +2 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#8381]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#2672]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#2672]) +3 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#2672] / [i915#3555])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#8708]) +19 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([fdo#111767] / [i915#1825]) +2 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-snb:          [PASS][254] -> [SKIP][255] ([fdo#109271] / [fdo#111767]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-snb:          [PASS][256] -> [SKIP][257] ([fdo#109271]) +14 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#1825]) +23 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([fdo#111767] / [i915#5354]) +2 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([fdo#111767] / [fdo#111825] / [i915#1825])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#3023]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#8708]) +5 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([fdo#111825] / [i915#1825]) +7 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#3458]) +20 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#3555] / [i915#8228])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#3555] / [i915#8228])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][267] ([fdo#109271]) +2 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#3555] / [i915#8821])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][269] ([i915#8292])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#9423]) +3 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#9423]) +3 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#9423]) +7 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#5176] / [i915#9423]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][274] ([i915#5176] / [i915#9423]) +3 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][275] ([i915#5235]) +9 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][276] ([i915#5235]) +15 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#5235] / [i915#9423]) +15 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][278] ([i915#5235]) +5 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#3555] / [i915#5235]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#9519]) +1 other test skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][281] -> [SKIP][282] ([i915#9519]) +3 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-pc8-residency-stress:
    - shard-dg2:          NOTRUN -> [SKIP][283] ([fdo#109293] / [fdo#109506])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#6524])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#9683]) +2 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-mtlp:         NOTRUN -> [SKIP][286] ([i915#4235]) +1 other test skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#5289]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][288] ([i915#5030]) +3 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#3555] / [i915#8809])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [PASS][290] -> [FAIL][291] ([i915#9196]) +1 other test fail
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#2437] / [i915#9412])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-mtlp:         NOTRUN -> [SKIP][293] ([i915#2437]) +1 other test skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][294] ([fdo#109271] / [i915#2437])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms_writeback@writeback-pixel-formats.html
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#2437])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][296] ([fdo#109289]) +2 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#2436])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#7387])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@perf@global-sseu-config-invalid.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][299] ([i915#7484])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [PASS][300] -> [FAIL][301] ([i915#4349])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-mtlp-1/igt@perf_pmu@busy-double-start@ccs0.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@perf_pmu@busy-double-start@ccs0.html

  * igt@prime_udl:
    - shard-mtlp:         NOTRUN -> [SKIP][302] ([fdo#109291])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@prime_udl.html
    - shard-dg2:          NOTRUN -> [SKIP][303] ([fdo#109291])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#3291] / [i915#3708])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-mtlp:         NOTRUN -> [SKIP][305] ([i915#3708])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#3708]) +1 other test skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2:          NOTRUN -> [SKIP][307] ([i915#9917])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@sriov_basic@bind-unbind-vf.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-glk:          NOTRUN -> [FAIL][308] ([i915#9781])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@v3d/v3d_get_param@get-bad-flags:
    - shard-mtlp:         NOTRUN -> [SKIP][309] ([i915#2575]) +9 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@v3d/v3d_get_param@get-bad-flags.html

  * igt@v3d/v3d_submit_cl@bad-multisync-in-sync:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([fdo#109315]) +1 other test skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@v3d/v3d_submit_cl@bad-multisync-in-sync.html

  * igt@v3d/v3d_submit_cl@simple-flush-cache:
    - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#2575]) +13 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@v3d/v3d_submit_cl@simple-flush-cache.html

  * igt@vc4/vc4_create_bo@create-bo-0:
    - shard-mtlp:         NOTRUN -> [SKIP][312] ([i915#7711]) +5 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@vc4/vc4_create_bo@create-bo-0.html

  * igt@vc4/vc4_mmap@mmap-bo:
    - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#7711]) +5 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@vc4/vc4_mmap@mmap-bo.html

  * igt@vc4/vc4_tiling@set-get:
    - shard-rkl:          NOTRUN -> [SKIP][314] ([i915#7711])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@vc4/vc4_tiling@set-get.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][315] ([i915#7297]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [ABORT][317] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-tglu-10/igt@gem_eio@hibernate.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-7/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          [FAIL][319] ([i915#2842]) -> [PASS][320] +1 other test pass
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][321] ([i915#3591]) -> [PASS][322]
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][323] ([i915#3743]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-snb:          [SKIP][325] ([fdo#109271] / [fdo#111767]) -> [PASS][326]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-snb:          [SKIP][327] ([fdo#109271]) -> [PASS][328] +11 other tests pass
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [SKIP][329] ([i915#9519]) -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html
    - shard-rkl:          [SKIP][331] ([i915#9519]) -> [PASS][332] +2 other tests pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565:
    - shard-snb:          [ABORT][333] -> [PASS][334]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-snb6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html
    - shard-glk:          [ABORT][335] -> [PASS][336]
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][337] ([i915#9196]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [FAIL][339] ([i915#9196]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][341] ([i915#2842]) -> [FAIL][342] ([i915#2876])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-tglu-10/igt@gem_exec_fair@basic-pace@rcs0.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@kms_content_protection@srm:
    - shard-snb:          [SKIP][343] ([fdo#109271]) -> [INCOMPLETE][344] ([i915#8816])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-snb4/igt@kms_content_protection@srm.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb7/igt@kms_content_protection@srm.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][345] ([fdo#110189] / [i915#3955]) -> [SKIP][346] ([i915#3955])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-snb:          [SKIP][347] ([fdo#109271] / [fdo#111767]) -> [SKIP][348] ([fdo#109271]) +2 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          [SKIP][349] ([fdo#109271]) -> [SKIP][350] ([fdo#109271] / [fdo#111767])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][351] ([i915#4070] / [i915#4816]) -> [SKIP][352] ([i915#4816])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][353] ([i915#9351]) -> [INCOMPLETE][354] ([i915#5493])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#10140]: https://gitlab.freedesktop.org/drm/intel/issues/10140
  [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8437]: https://gitlab.freedesktop.org/drm/intel/issues/8437
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
  [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917


Build changes
-------------

  * Linux: CI_DRM_14218 -> Patchwork_129468v2

  CI-20190529: 20190529
  CI_DRM_14218: 200b5a40e45282dfa868d4cb363dca46fc2cf60e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129468v2: 200b5a40e45282dfa868d4cb363dca46fc2cf60e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/index.html

--===============7304316085402588792==
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
<tr><td><b>Series:</b></td><td>drm/i915/mst: enable MST mode for 128b/132b =
single-stream sideband (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/129468/">https://patchwork.freedesktop.org/series/129468/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_129468v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129468v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14218_full -&gt; Patchwork_129468v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129468v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_129468v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>Additional (1): shard-snb-0 <br />
  Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
129468v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_bu=
ild_fourcc_list:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-tglu-6/igt@kms_selftest@drm_format_h=
elper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html">FAIL</a></=
li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html">FAIL</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_cl=
ip_offset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_clip_offset.html">DMESG-WARN</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_rgb332:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-snb6/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_rgb332.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb6/igt@kms_=
selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_r=
gb332.html">ABORT</a></li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_rgb332.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms_=
selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_r=
gb332.html">ABORT</a></li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html">ABORT</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_xbgr8888:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_xbgr8888.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@km=
s_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to=
_xbgr8888.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-glk1/igt@runner@aborted.html">FAIL</=
a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_c=
lip_offset:<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-tglu-2/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_clip_offset.html">DMESG-FAIL</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-6/igt@k=
ms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offse=
t.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129468v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14218/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14218/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14218/shard-rkl-1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-2/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_142=
18/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14218/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/sha=
rd-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14218/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14218/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14218/shard-rkl-5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-5/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1421=
8/shard-rkl-6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14218/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shar=
d-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14218/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-rkl-7/boot.html">PASS</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129468v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rk=
l-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_129468v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12946=
8v2/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129468v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2=
/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129468v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-5/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129468v2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-5/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shar=
d-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_129468v2/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-6/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29468v2/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl=
-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_129468v2/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-rkl-7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468=
v2/shard-rkl-7/boot.html">PASS</a>)</li>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14218/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk1/boot.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14218/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14218/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14218/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14218/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14218/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14218/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk6/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4218/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14218/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14218/shar=
d-glk9/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_129468v2/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk1=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129468v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/s=
hard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129468v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29468v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_129468v2/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129468v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_129468v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9468v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_129468v2/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129468v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_129468v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9468v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_129468v2/shard-glk9/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@api_intel_bb@blit-reloc-p=
urge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8411">i915#8411</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@drm_buddy@drm_buddy@drm_te=
st_buddy_alloc_limit.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/10140">i915#10140</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@drm_fdinfo@isolation@rcs0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8414">i915#8414</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@drm_fdinfo@virtual-busy-id=
le-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8414">i915#8414</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shar=
d-rkl-1/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_caching@reads.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4873">i=
915#4873</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gem_ccs@suspend-resume@ti=
le4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12946=
8v2/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_ctx_persistence@heart=
beat-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8555">i915#8555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@gem_ctx_persistence@satura=
ted-hostile-nopreempt@ccs0.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5882">i915#5882</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_ctx_sseu@engines.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280"=
>i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_exec_balancer@bonded-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@gem_exec_balancer@bonded-t=
rue-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gem_exec_capture@capture-=
invisible@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9606">i915#9606</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@gem_exec_capture@many-4k-ze=
ro.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@gem_exec_fair@basic-none-rr=
ul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_exec_fair@basic-none-=
solo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4473">i915#4473</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_exec_fair@basic-none-=
vip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9468v2/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-tglu-7/igt@gem_exec_fair@basic-pace-=
share@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_exec_flush@basic-uc-ro=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4852">i915#4852</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_exec_params@secure-no=
n-master.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-=
read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3281">i915#3281</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_exec_reloc@basic-writ=
e-wc-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_exec_schedule@reorder-=
wide.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@gem_exec_schedule@semapho=
re-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-dg2-10/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1294=
68v2/shard-dg2-6/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_fence_thrash@bo-copy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-tglu-7/igt@gem_lmem_swapping@heavy-m=
ulti.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@gem_lmem_swapping@heavy-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_lmem_swapping@verify-=
ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_madvise@dontneed-befo=
re-exec.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3282">i915#3282</a>) +6 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_madvise@dontneed-befor=
e-exec.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_media_fill@media-fill=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_mmap_gtt@basic-copy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
77">i915#4077</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-short:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_mmap_gtt@basic-short.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4077">i915#4077</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@gem_mmap_wc@close.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i9=
15#4083</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_mmap_wc@invalid-flags=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@gem_pwrite@basic-exhaustio=
n.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_pxp@create-valid-prot=
ected-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4270">i915#4270</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@gem_pxp@verify-pxp-stale-c=
tx-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@gem_render_copy@yf-tiled-=
ccs-to-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gem_set_tiling_vs_blt@til=
ed-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4079">i915#4079</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gem_unfence_active_buffer=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@gem_userptr_blits@access-=
control.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@gen7_exec_parse@basic-offs=
et.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@gen9_exec_parse@allowed-a=
ll.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>) +1 other test skip</li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/s=
hard-glk4/igt@gen9_exec_parse@allowed-all.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129468v2/shard-rkl-4/igt@i915_module_load@reload-with-fault-injecti=
on.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/10137">i915#10137</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9849">i915#9849</a>)</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129468v2/shard-tglu-3/igt@i915_module_load@reload-with-fault-injec=
tion.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/10137">i915#10137</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9200">i915#9200</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@i915_module_load@reload-wi=
th-fault-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@i915_pm_freq_api@freq-rese=
t-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@i915_pm_freq_api@freq-susp=
end@gt0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9407">i915#9407</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@i915_pm_rps@min-max-config=
-loaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6621">i915#6621</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@i915_pm_rps@thresholds-id=
le@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8437">i915#8437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_addfb_basic@basic-x-ti=
led-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_addfb_basic@bo-too-sm=
all-due-to-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4212">i915#4212</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_async_flips@invalid-as=
ync-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-8bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_129468v2/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bp=
p-rotate-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_big_fb@x-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-8/igt@kms_big_fb@x-tiled-m=
ax-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other =
test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_big_fb@y-tiled-32bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5190">i915#5190</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +9 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_big_fb@yf-tiled-addfb=
-size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_ccs@pipe-b-crc-primary=
-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5354">i915#5354</a>) +79 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_ccs@pipe-b-crc-primary=
-basic-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_ccs@pipe-c-crc-primar=
y-basic-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6095">i915#6095</a>) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_ccs@pipe-d-ccs-on-anot=
her-bo-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-tglu-7/igt@kms_ccs@pipe-d-ccs-on-ano=
ther-bo-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms_chamelium_color@ctm-blu=
e-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +145 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_chamelium_color@ctm-bl=
ue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111827">fdo#111827</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_chamelium_color@ctm-li=
mited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_chamelium_color@ctm-r=
ed-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_chamelium_frames@dp-c=
rc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_chamelium_hpd@vga-hpd=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_content_protection@uev=
ent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-sli=
ding-256x85.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-tglu-7/igt@kms_cursor_legacy@cursora=
-vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_cursor_legacy@cursorb=
-vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9809">i915#9809</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-move@all-pipes:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-snb6/igt@kms_cursor_legacy@torture-move@all-pipes.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_129468v2/shard-snb7/igt@kms_cursor_legacy@torture-move@all-pipes.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
0166">i915#10166</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg1-12/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1839">i915#1839</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_feature_discovery@psr=
1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/658">i915#658</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_flip@2x-dpms-vs-vblan=
k-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3637">i915#3637</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_flip@2x-flip-vs-expir=
ed-vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
381">i915#8381</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_flip@flip-vs-fences-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8381">i915#8381</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915=
#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +19 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +2 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_129468v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_129468v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-=
scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +23 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3023">i915#3023</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +5 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +7 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3458">i915#3458</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_hdr@static-swap.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-snb4/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_plane_lowres@tiling-y=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8821">i915#8821</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg1-15/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg1-17/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>)=
 +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-h=
dmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hd=
mi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-1/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-4/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg1-18/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-6/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +15 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9=
423</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@p=
ipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
 +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@p=
ipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#523=
5</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-st=
ress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9468v2/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</=
a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_pm_rpm@modeset-pc8-res=
idency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/9683">i915#9683</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_rotation_crc@bad-pixe=
l-format.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_scaling_modes@scaling=
-mode-none@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5030">i915#5030</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@kms_setmode@invalid-clone=
-single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_129468v2/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak=
@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@kms_writeback@writeback-fb=
-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@perf@gen8-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109289">fdo#109289</a>) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@perf@global-sseu-config-i=
nvalid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@perf@non-zero-reason@0-rcs=
0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/7484">i915#7484</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-mtlp-1/igt@perf_pmu@busy-double-start@ccs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1294=
68v2/shard-mtlp-6/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-6/igt@prime_udl.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#1092=
91</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@prime_udl.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#10929=
1</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@prime_vgem@basic-fence-re=
ad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@prime_vgem@basic-read.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/370=
8">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-5/igt@sriov_basic@bind-unbind-vf=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@syncobj_timeline@invalid-wa=
it-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9781">i915#9781</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@get-bad-flags:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-3/igt@v3d/v3d_get_param@get-bad=
-flags.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2575">i915#2575</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-in-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@v3d/v3d_submit_cl@bad-mult=
isync-in-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109315">fdo#109315</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@simple-flush-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@v3d/v3d_submit_cl@simple-=
flush-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2575">i915#2575</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-mtlp-4/igt@vc4/vc4_create_bo@create-=
bo-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-dg2-3/igt@vc4/vc4_mmap@mmap-bo.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7711"=
>i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-get:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129468v2/shard-rkl-2/igt@vc4/vc4_tiling@set-get.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/771=
1">i915#7711</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/7297">i915#7297</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-dg2-10/igt@gem_ccs@susp=
end-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-tglu-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/10030">i915#10030</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8213">i91=
5#8213</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_129468v2/shard-tglu-7/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_129468v2/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591=
">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_129468v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_129468v2/shard-tglu-4/igt@kms_big_fb@x-tiled=
-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129468v2/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-c=
ursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb7/igt@kms_frontbuffer_tr=
acking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +11 other tests=
 pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9468v2/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129=
468v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +2 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_rgb565:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-snb6/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_rgb565.html">ABORT</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb6/igt@kms=
_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_=
rgb565.html">PASS</a></li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_rgb565.html">ABORT</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-glk2/igt@kms=
_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_=
rgb565.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-ed=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129468v2/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-l=
eak@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129468v2/shard-tglu-5/igt@kms_universal_plane@cursor-f=
b-leak@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-tglu-10/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_129468v2/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2876">i915#2876</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-snb4/igt@kms_content_protection@srm.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129=
468v2/shard-snb7/igt@kms_content_protection@srm.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/8816">i915#8816</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_129468v2/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pr=
i-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129468v2/shard-snb7/igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109=
271</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb=
-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_129468v2/shard-snb2/igt@kms_frontbuffer_trackin=
g@psr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_129468v2/shard-rkl-4/igt@kms_multipipe_modeset@basic-=
max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14218/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">CRASH</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9351">i915#9351</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_129468v2/shard-dg2-1/igt@prime_mmap@test_aperture=
_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14218 -&gt; Patchwork_129468v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14218: 200b5a40e45282dfa868d4cb363dca46fc2cf60e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129468v2: 200b5a40e45282dfa868d4cb363dca46fc2cf60e @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7304316085402588792==--
