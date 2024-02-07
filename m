Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5548A84D379
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 22:09:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B123C10E72D;
	Wed,  7 Feb 2024 21:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC5A810E72D;
 Wed,  7 Feb 2024 21:09:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2831668668610030802=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/buddy=3A_Fix_alloc=5Fra?=
 =?utf-8?q?nge=28=29_error_handling_code?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin Paneer Selvam" <arunpravin.paneerselvam@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 07 Feb 2024 21:09:15 -0000
Message-ID: <170734015575.1087964.15706217468333117062@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240207174456.341121-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20240207174456.341121-1-Arunpravin.PaneerSelvam@amd.com>
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

--===============2831668668610030802==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/buddy: Fix alloc_range() error handling code
URL   : https://patchwork.freedesktop.org/series/129637/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14239_full -> Patchwork_129637v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129637v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129637v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 7)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129637v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
    - shard-rkl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
    - shard-glk:          NOTRUN -> [DMESG-FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html
    - shard-tglu:         [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-tglu-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb8888:
    - shard-snb:          [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-snb5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb8888.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb8888.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_mono:
    - shard-dg1:          NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-18/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_mono.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332:
    - shard-rkl:          NOTRUN -> [ABORT][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb888:
    - shard-snb:          [PASS][10] -> [DMESG-WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-snb5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb888.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb888.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb1555:
    - shard-glk:          [PASS][12] -> [ABORT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb1555.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb1555.html

  
#### Warnings ####

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
    - shard-tglu:         [DMESG-WARN][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-tglu-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb2101010:
    - shard-dg1:          [FAIL][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb2101010.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-18/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb2101010.html

  
Known issues
------------

  Here are the changes found in Patchwork_129637v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-rkl:          ([PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [FAIL][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41]) ([i915#8293]) -> ([PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-4/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-4/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-5/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-5/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-5/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-5/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-5/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/boot.html
    - shard-glk:          ([FAIL][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88]) ([i915#8293]) -> ([PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk1/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk2/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk2/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk2/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk3/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk3/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk3/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk3/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk4/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk4/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk4/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk4/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk6/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk6/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk6/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk7/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk7/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk7/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk8/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk8/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk8/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk9/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk9/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk9/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk9/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk1/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk1/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk1/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk2/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk2/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk2/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk3/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk3/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk3/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk4/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk4/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk4/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk6/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk6/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk6/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk8/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk8/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk8/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk9/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk9/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk9/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@render-ccs:
    - shard-dg2:          NOTRUN -> [FAIL][114] ([i915#6122])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@api_intel_bb@render-ccs.html

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#9318])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#7701])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@device_reset@cold-reset-bound.html

  * igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:
    - shard-glk:          NOTRUN -> [DMESG-WARN][117] ([i915#10140])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk4/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#8414]) +19 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#7697])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3555]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][121] ([i915#7297])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#8562])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][123] -> [FAIL][124] ([i915#6268])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#8555])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#1099])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb5/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][127] -> [FAIL][128] ([i915#5784])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-dg1-12/igt@gem_eio@reset-stress.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-12/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#4771])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4036])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#4525])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#6334]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#6344])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][134] ([i915#2842])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3539]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][136] -> [FAIL][137] ([i915#2842]) +1 other test fail
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3539] / [i915#4852])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3281]) +7 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3281]) +4 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#4537] / [i915#4812]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4860]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#4613])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([fdo#111656])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4083]) +3 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3282]) +4 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3282]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][148] ([i915#2658])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb5/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#4270]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#5190]) +10 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#4079])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#4885])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_softpin@evict-snoop.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#4077]) +10 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#3297]) +4 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#3282] / [i915#3297])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#3297] / [i915#4880])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#2527]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#2856]) +2 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [PASS][159] -> [INCOMPLETE][160] ([i915#10137] / [i915#9849])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#6412])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([fdo#109289]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#8925])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#4387])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock@memory_region:
    - shard-glk:          NOTRUN -> [DMESG-WARN][165] ([i915#9311])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk4/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][166] ([i915#7443])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#4212])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#8709]) +11 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#9531])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([fdo#111614]) +4 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#5286]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3638])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-16/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([fdo#111614] / [i915#3638])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#4538] / [i915#5190]) +8 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([fdo#110723]) +2 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#2705])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#5354] / [i915#6095]) +8 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_ccs@pipe-a-crc-primary-basic-yf-tiled-ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#5354] / [i915#6095]) +5 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#5354]) +13 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#5354]) +75 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#7213]) +3 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([fdo#111827])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#7828]) +3 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#7828]) +8 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#3299]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#3116])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([fdo#109279] / [i915#3359])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#3359]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-snb:          [PASS][189] -> [SKIP][190] ([fdo#109271] / [fdo#111767])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-snb4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#4103] / [i915#4213]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#4103])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([fdo#111825]) +2 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([fdo#109274] / [i915#5354]) +3 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][195] -> [FAIL][196] ([i915#2346])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#9067])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#4103])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#9833])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][200] ([fdo#110189] / [i915#9723])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-18/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#8588])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#8812])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#3555] / [i915#3840])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_feature_discovery@chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#4854])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#1839])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([fdo#109274] / [i915#3637]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([fdo#109274]) +4 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#2672]) +5 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#2587] / [i915#2672])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([fdo#109285])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([fdo#109280]) +4 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#8708]) +20 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-snb:          [PASS][213] -> [SKIP][214] ([fdo#109271]) +4 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#8708])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][216] ([fdo#110189])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#3023]) +10 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([fdo#111825] / [i915#1825]) +14 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([fdo#111767] / [i915#5354])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-glk:          NOTRUN -> [SKIP][220] ([fdo#109271]) +45 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-snb:          NOTRUN -> [SKIP][221] ([fdo#109271]) +10 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#3458]) +13 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#3555] / [i915#8228]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_hdr@static-toggle.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#4816])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([fdo#109289]) +7 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([fdo#109274] / [i915#5354] / [i915#9423])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][227] ([i915#8292])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-16/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#9423]) +11 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#9423]) +5 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#9423]) +7 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#5235]) +3 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#5235]) +19 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#5235] / [i915#9423]) +7 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#9685]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#9340])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][236] -> [SKIP][237] ([i915#9519])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][238] ([i915#9683])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#9683]) +3 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][240] ([fdo#109642] / [fdo#111068] / [i915#9683])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#4235])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#3555]) +1 other test skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#8623])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flipline:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#3555]) +2 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#2437] / [i915#9412])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#2436])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][247] ([i915#4349]) +3 other tests fail
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][248] ([i915#6806])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@perf_pmu@frequency@gt0.html

  * igt@prime_udl:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([fdo#109291])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#3708] / [i915#4077])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#3291] / [i915#3708])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][252] ([fdo#109295] / [i915#3708])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#9917])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#9917])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#4818])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_perfmon@create-two-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#2575]) +9 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@v3d/v3d_perfmon@create-two-perfmon.html

  * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([fdo#109315]) +4 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  * igt@v3d/v3d_submit_cl@bad-multisync-in-sync:
    - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#2575])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-16/igt@v3d/v3d_submit_cl@bad-multisync-in-sync.html

  * igt@v3d/v3d_submit_csd@multisync-out-syncs:
    - shard-tglu:         NOTRUN -> [SKIP][259] ([fdo#109315] / [i915#2575]) +1 other test skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@v3d/v3d_submit_csd@multisync-out-syncs.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#7711]) +3 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html

  * igt@vc4/vc4_tiling@set-bad-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#7711]) +8 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@vc4/vc4_tiling@set-bad-modifier.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][262] ([i915#7742]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][264] ([i915#7297]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_eio@kms:
    - shard-dg2:          [FAIL][266] ([i915#5784]) -> [PASS][267]
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-dg2-6/igt@gem_eio@kms.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         [FAIL][268] ([i915#2842]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][270] ([i915#2842]) -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-rkl:          [FAIL][272] ([i915#2842]) -> [PASS][273] +1 other test pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-7/igt@gem_exec_fair@basic-pace@bcs0.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][274] ([i915#3591]) -> [PASS][275] +1 other test pass
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][276] ([i915#10031]) -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][278] ([i915#3743]) -> [PASS][279] +1 other test pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-snb:          [SKIP][280] ([fdo#109271]) -> [PASS][281] +9 other tests pass
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-snb6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-snb:          [SKIP][282] ([fdo#109271] / [fdo#111767]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][284] ([i915#9519]) -> [PASS][285] +1 other test pass
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][286] ([i915#9519]) -> [PASS][287] +1 other test pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_gray8:
    - shard-glk:          [ABORT][288] -> [PASS][289]
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_gray8.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_gray8.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb888:
    - shard-glk:          [DMESG-FAIL][290] ([i915#118]) -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb888.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb888.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgba5551:
    - shard-glk:          [DMESG-WARN][292] -> [PASS][293]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgba5551.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgba5551.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb2101010:
    - shard-dg1:          [DMESG-WARN][294] -> [PASS][295]
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb2101010.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-18/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb2101010.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:
    - shard-snb:          [FAIL][296] ([i915#9196]) -> [PASS][297]
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-rkl:          [FAIL][298] ([i915#9196]) -> [PASS][299]
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [FAIL][300] ([i915#9196]) -> [PASS][301] +1 other test pass
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][302] ([i915#2876]) -> [FAIL][303] ([i915#2842])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-tglu:         [FAIL][304] ([i915#3591]) -> [WARN][305] ([i915#2681]) +1 other test warn
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@kms_content_protection@content-type-change:
    - shard-snb:          [INCOMPLETE][306] ([i915#8816]) -> [SKIP][307] ([fdo#109271])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-snb7/igt@kms_content_protection@content-type-change.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb4/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@srm:
    - shard-snb:          [SKIP][308] ([fdo#109271]) -> [INCOMPLETE][309] ([i915#8816])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-snb6/igt@kms_content_protection@srm.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb7/igt@kms_content_protection@srm.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][310] ([i915#3955]) -> [SKIP][311] ([fdo#110189] / [i915#3955])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-snb:          [SKIP][312] ([fdo#109271]) -> [SKIP][313] ([fdo#109271] / [fdo#111767])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#10140]: https://gitlab.freedesktop.org/drm/intel/issues/10140
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
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
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
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
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6122]: https://gitlab.freedesktop.org/drm/intel/issues/6122
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9833]: https://gitlab.freedesktop.org/drm/intel/issues/9833
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917


Build changes
-------------

  * Linux: CI_DRM_14239 -> Patchwork_129637v1

  CI-20190529: 20190529
  CI_DRM_14239: 473fff9e18e4e77aa4c1f1ae5484a6fb809a89e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7705: 45aef708b65772e54ee9a68b1f3885fa25140fdf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129637v1: 473fff9e18e4e77aa4c1f1ae5484a6fb809a89e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/index.html

--===============2831668668610030802==
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
<tr><td><b>Series:</b></td><td>drm/buddy: Fix alloc_range() error handling =
code</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/129637/">https://patchwork.freedesktop.org/series/129637/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_129637v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129637v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14239_full -&gt; Patchwork_129637v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129637v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_129637v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (8 -&gt; 7)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
129637v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_cl=
ip_offset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_clip_offset.html">FAIL</a></li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-glk7/igt@kms_selftest@drm_format_hel=
per@drm_format_helper_test-drm_test_fb_clip_offset.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_abgr8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html">DMESG-WA=
RN</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-tglu-2/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_xrgb8888_to_abgr8888.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/ig=
t@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb888=
8_to_abgr8888.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_argb8888:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-snb5/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_argb8888.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb2/igt@km=
s_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to=
_argb8888.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_mono:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg1-18/igt@kms_selftest@drm_format_h=
elper@drm_format_helper_test-drm_test_fb_xrgb8888_to_mono.html">FAIL</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_rgb332:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html">ABORT</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_rgb888:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-snb5/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_rgb888.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb2/igt@kms_=
selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_r=
gb888.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_xrgb1555:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-glk6/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_xrgb1555.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/igt@km=
s_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to=
_xrgb1555.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_cl=
ip_offset:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-tglu-2/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_clip_offset.html">DMESG-WARN</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@k=
ms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offse=
t.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_argb2101010:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_xrgb8888_to_argb2101010.html">FAIL</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg1-1=
8/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrg=
b8888_to_argb2101010.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129637v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14239/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14239/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14239/shard-rkl-1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-2/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_142=
39/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14239/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/sha=
rd-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14239/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl=
-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14239/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14239/shard-rkl-6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-6/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1423=
9/shard-rkl-6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14239/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-rkl-7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shar=
d-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14239/shard-rkl-7/boot.html">PASS</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_129637v1/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/sh=
ard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129637v1/shard-rkl-2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_129637v1/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-r=
kl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_129637v1/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-4/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1296=
37v1/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_129637v1/shard-rkl-5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-5=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129637v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1=
/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129637v1/shard-rkl-6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129637v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shar=
d-rkl-7/boot.html">PASS</a>)</li>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14239/shard-glk1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14239/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14239/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14239/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14239/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14239/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14239/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4239/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14239/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_14239/shard-glk9/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_129637v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-g=
lk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_129637v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v=
1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129637v1/shard-glk3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_129637v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_129637v1/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_129637v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129637v1/shard-glk7/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_129637v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_129637v1/shard-glk8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk=
8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_129637v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk9/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_129637v1/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk9/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@api_intel_bb@render-ccs.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
122">i915#6122</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-glk4/igt@drm_buddy@drm_buddy@drm_tes=
t_buddy_alloc_limit.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/10140">i915#10140</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@drm_fdinfo@most-busy-idle-=
check-all@vecs1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8414">i915#8414</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_ccs@block-multicopy-in=
place.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_ccs@suspend-resume@ti=
le4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637=
v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_ctx_persistence@heartb=
eat-stop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-snb5/igt@gem_ctx_persistence@legacy-=
engines-hostile-preempt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-dg1-12/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-=
dg1-12/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_exec_balancer@bonded-=
dual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_exec_balancer@invalid=
-bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_exec_balancer@parallel=
-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_exec_capture@capture-i=
nvisible@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@gem_exec_capture@capture-=
recoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_exec_fair@basic-none-r=
rul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_exec_fair@basic-pace-=
solo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9637v1/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-rw=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-r=
ead.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-r=
ead-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_fenced_exec_thrash@no-=
spare-fences-busy-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_lmem_swapping@parallel=
-random-engines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@gem_mmap_gtt@coherency.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
656">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_mmap_wc@write-wc-read-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4083">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_partial_pwrite_pread@r=
eads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-snb5/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_pxp@create-regular-bu=
ffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_render_copy@yf-tiled-=
mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5190">i915#5190</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
85">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_tiled_partial_pwrite_p=
read@writes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4077">i915#4077</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3297">i915#3297</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@gem_userptr_blits@map-fixe=
d-invalidate.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@gen9_exec_parse@bb-start-p=
aram.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129637v1/shard-dg1-15/igt@i915_module_load@reload-with-fault-injec=
tion.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/10137">i915#10137</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@i915_pm_rc6_residency@medi=
a-rc6-accuracy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@i915_pm_rps@thresholds-par=
k@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-glk4/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@i915_suspend@basic-s3-wit=
hout-i915.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7443">i915#7443</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_addfb_basic@tile-pitch=
-mismatch.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_big_fb@4-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg1-16/igt@kms_big_fb@linear-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +8 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110723">fdo#110723</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_ccs@pipe-a-crc-primary=
-basic-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_ccs@pipe-a-crc-sprite=
-planes-basic-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +5 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_ccs@pipe-d-ccs-on-anot=
her-bo-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_ccs@pipe-d-missing-ccs=
-buffer-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a>) +75 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-2/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_chamelium_color@ctm-ne=
gative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_chamelium_edid@dp-edid=
-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_chamelium_frames@hdmi=
-cmp-planar-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-snb4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_129637v1/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_cursor_legacy@cursorb-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111825">fdo#111825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb=
-vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_129637v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-i=
octl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg1-18/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_dsc@dsc-with-formats.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915=
#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_force_connector_basic=
@force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +4 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +20 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_129637v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-=
scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +10 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +14 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-glk4/igt@kms_frontbuffer_tracking@fb=
cpsr-tiling-linear.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +45 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-snb5/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +10 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_frontbuffer_tracking@=
psr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3458">i915#3458</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_hdr@static-toggle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_pipe_b_c_ivb@from-pip=
e-c-to-b-with-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109289">fdo#109289</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_plane_scaling@2x-scale=
r-multi-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg1-16/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) =
+11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-h=
dmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-3/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg1-18/igt@kms_plane_scaling@plane-s=
caler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +7=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-=
hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-2/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</=
a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_pm_dc@dc6-psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9685">i9=
15#9685</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9340"=
>i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-r=
kl-1/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9683">i915#9683</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_rotation_crc@sprite-ro=
tation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@kms_scaling_modes@scaling=
-mode-full-aspect.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-1/igt@kms_vrr@flipline.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@perf_pmu@busy-double-star=
t@vecs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4349">i915#4349</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@perf_pmu@frequency@gt0.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/68=
06">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@prime_udl.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#10929=
1</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@prime_vgem@basic-fence-mm=
ap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291=
">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@sriov_basic@enable-vfs-aut=
oprobe-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-5/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4818">i915#4818</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@v3d/v3d_perfmon@create-tw=
o-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2575">i915#2575</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@v3d/v3d_perfmon@get-values=
-valid-perfmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109315">fdo#109315</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-in-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg1-16/igt@v3d/v3d_submit_cl@bad-mul=
tisync-in-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@multisync-out-syncs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-tglu-6/igt@v3d/v3d_submit_csd@multis=
ync-out-syncs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@vc4/vc4_purgeable_bo@mark-=
unpurgeable-check-retained.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/7711">i915#7711</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-bad-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@vc4/vc4_tiling@set-bad-mo=
difier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7711">i915#7711</a>) +8 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i91=
5#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_129637v1/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7297">i915#7297</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-10/igt@gem_ccs@suspe=
nd-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-dg2-6/igt@gem_eio@kms.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-dg2-=
10/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_129637v1/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129637v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-rkl-7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29637v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +1 oth=
er test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591=
">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_129637v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10031">i91=
5#10031</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_129637v1/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-tglu-5/igt@kms_big_fb@x-t=
iled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +1 other =
test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-snb6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-tran=
sitions-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb7/igt@kms_cursor_leg=
acy@cursora-vs-flipb-atomic-transitions-varying-size.html">PASS</a> +9 othe=
r tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129637v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-fl=
ipb-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v=
1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +1 other test pas=
s</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_129637v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-=
wait.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_gray8:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-glk6/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_gray8.html">ABORT</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/igt@kms_=
selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_g=
ray8.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_rgb888:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-glk6/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_rgb888.html">DMESG-FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk=
7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrg=
b8888_to_rgb888.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_rgba5551:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-glk6/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_xrgb8888_to_rgba5551.html">DMESG-WARN</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-glk7/=
igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8=
888_to_rgba5551.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_xrgb2101010:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_xrgb8888_to_xrgb2101010.html">DMESG-WARN</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-=
dg1-18/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_f=
b_xrgb8888_to_xrgb2101010.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-=
1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_129637v1/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@=
pipe-a-vga-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdm=
i-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129637v1/shard-rkl-7/igt@kms_universal_plane@cursor-fb-=
leak@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129637v1/shard-tglu-5/igt@kms_universal_plane@cursor-f=
b-leak@pipe-d-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2876">i915#287=
6</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129637v1/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591=
">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_129637v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-snb7/igt@kms_content_protection@content-type-change.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8816">i915#8816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_129637v1/shard-snb4/igt@kms_content_protection@content-typ=
e-change.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-snb6/igt@kms_content_protection@srm.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129=
637v1/shard-snb7/igt@kms_content_protection@srm.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/8816">i915#8816</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12963=
7v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14239/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-s=
hrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129637v1/shard-snb4/igt@kms_frontbuffer_tr=
acking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)=
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14239 -&gt; Patchwork_129637v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14239: 473fff9e18e4e77aa4c1f1ae5484a6fb809a89e6 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7705: 45aef708b65772e54ee9a68b1f3885fa25140fdf @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129637v1: 473fff9e18e4e77aa4c1f1ae5484a6fb809a89e6 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2831668668610030802==--
