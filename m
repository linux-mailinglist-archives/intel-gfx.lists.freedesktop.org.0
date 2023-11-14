Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 156C37EAC79
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 10:06:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 742F410E1E2;
	Tue, 14 Nov 2023 09:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 497B210E1E2;
 Tue, 14 Nov 2023 09:06:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3AF0DAADD8;
 Tue, 14 Nov 2023 09:06:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3694553494887679185=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhanjun Dong" <zhanjun.dong@intel.com>
Date: Tue, 14 Nov 2023 09:06:26 -0000
Message-ID: <169995278622.29257.2073858222290384389@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231113224953.378534-1-zhanjun.dong@intel.com>
In-Reply-To: <20231113224953.378534-1-zhanjun.dong@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Skip_pxp_init_if_gt_is_wedged_=28rev3=29?=
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

--===============3694553494887679185==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Skip pxp init if gt is wedged (rev3)
URL   : https://patchwork.freedesktop.org/series/125658/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13870_full -> Patchwork_125658v3_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125658v3_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological}:
    - shard-mtlp:         NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html
    - shard-dg2:          NOTRUN -> [TIMEOUT][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html

  * {igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:
    - shard-apl:          [PASS][3] -> [TIMEOUT][4] +3 other tests timeout
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl7/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
    - shard-rkl:          [PASS][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
    - shard-dg1:          [PASS][7] -> [TIMEOUT][8] +1 other test timeout
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg1-12/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-15/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-mtlp:         [PASS][9] -> [TIMEOUT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-2/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-2/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  
Known issues
------------

  Here are the changes found in Patchwork_125658v3_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35]) -> ([PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [FAIL][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60]) ([i915#8293])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl4/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl4/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl4/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [FAIL][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85]) ([i915#8293]) -> ([PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk9/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk9/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk9/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk9/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk8/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk8/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk8/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk8/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk6/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk6/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk6/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk5/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk5/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk5/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk4/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk4/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk4/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk3/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk3/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk3/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk3/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk2/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk2/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk2/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk2/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk8/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk8/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk8/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk9/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk9/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk9/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk9/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk8/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk6/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk6/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk6/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk6/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk5/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk5/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk5/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk4/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk4/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk4/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk4/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk3/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk3/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk3/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk2/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk2/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#8411])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@api_intel_bb@blit-reloc-purge-cache.html
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#8411])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#6230])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@api_intel_bb@crc32.html

  * igt@drm_fdinfo@busy-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#8414]) +7 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@drm_fdinfo@busy-check-all@ccs0.html

  * igt@drm_fdinfo@busy@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#8414]) +9 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@drm_fdinfo@busy@vcs1.html

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][116] ([i915#7742])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@drm_fdinfo@idle@rcs0.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#8414]) +20 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@fbdev@eof:
    - shard-mtlp:         [PASS][118] -> [DMESG-WARN][119] ([i915#2017]) +1 other test dmesg-warn
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-7/igt@fbdev@eof.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-2/igt@fbdev@eof.html

  * igt@fbdev@pan:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#2582])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@fbdev@pan.html

  * igt@fbdev@unaligned-write:
    - shard-rkl:          [PASS][121] -> [SKIP][122] ([i915#2582])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@fbdev@unaligned-write.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@fbdev@unaligned-write.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#4873])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_caching@writes.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][124] ([i915#7297])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#7697])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([fdo#109314])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#8555])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#280]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@kms:
    - shard-dg2:          [PASS][129] -> [FAIL][130] ([i915#5784])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg2-11/igt@gem_eio@kms.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-1/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#4812]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#4812])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@fairslice:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([Intel XE#874])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@hog:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#4812])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#8555]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#4525]) +2 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-rkl:          NOTRUN -> [FAIL][137] ([i915#9606])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#3539] / [i915#4852])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3539]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][140] ([i915#2842])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3539] / [i915#4852]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#7697])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_params@secure-non-master:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([fdo#112283])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#3281]) +14 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#3281])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-rkl:          [PASS][146] -> [SKIP][147] ([i915#3281]) +4 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#3281]) +2 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#3281]) +6 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#4537] / [i915#4812])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_exec_schedule@preempt-queue-chain.html
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#4537] / [i915#4812])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#4860]) +2 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#4860]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#4860])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-dg1:          [PASS][155] -> [DMESG-WARN][156] ([i915#4391] / [i915#4423])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg1-13/igt@gem_lmem_evict@dontneed-evict-race.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-14/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#4613]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#4613]) +2 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#8289])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#4077]) +12 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#4083])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#4083]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#3282]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_pread@exhaustion:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#3282]) +5 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_pread@exhaustion.html
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#3282])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#3282])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#4270]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#4270]) +3 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#4270])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-rkl:          [PASS][170] -> [SKIP][171] ([i915#3282]) +2 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gem_readwrite@write-bad-handle.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#768]) +3 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#8428]) +4 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#4079]) +3 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
    - shard-rkl:          [PASS][175] -> [SKIP][176] ([i915#8411])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#4885])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#4885])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#4077])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_tiled_pread_basic:
    - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#4079])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_tiled_pread_basic.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#3297]) +2 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#3297] / [i915#4880])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate.html
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#3297])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#3297])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#3297]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-mtlp:         NOTRUN -> [FAIL][186] ([i915#3318])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([fdo#109289]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#2856]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#2527])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#2527] / [i915#2856])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#2856]) +3 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gen9_exec_parse@secure-batches.html
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#2527]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [PASS][193] -> [SKIP][194] ([i915#2527]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#4881])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@i915_fb_tiling.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [PASS][196] -> [SKIP][197] ([i915#9588])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-7/igt@i915_hangman@engine-engine-error@bcs0.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#7091])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#8399]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-dg1:          [PASS][200] -> [FAIL][201] ([i915#3591])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#6621])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@waitboost:
    - shard-mtlp:         NOTRUN -> [FAIL][203] ([i915#8346])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@i915_pm_rps@waitboost.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-mtlp:         NOTRUN -> [SKIP][204] ([fdo#109303])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@i915_query@query-topology-known-pci-ids.html
    - shard-dg2:          NOTRUN -> [SKIP][205] ([fdo#109303])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][206] ([i915#9311])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#4212])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3826])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [FAIL][209] ([i915#8247]) +3 other tests fail
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][210] ([i915#8247]) +3 other tests fail
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-14/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#6228])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#3555])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#1769] / [i915#3555])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#1769] / [i915#3555])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#5286]) +2 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#4538] / [i915#5286])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([fdo#111614]) +3 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([fdo#111614] / [i915#3638]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-rkl:          [PASS][219] -> [SKIP][220] ([i915#1845] / [i915#4098]) +23 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][221] ([fdo#111614])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([fdo#111614]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#5190]) +13 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([fdo#111615]) +4 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][225] -> [FAIL][226] ([i915#3743])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([fdo#110723]) +2 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#4538] / [i915#5190]) +5 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][229] ([fdo#111615])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#4538])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#2705])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_big_joiner@2x-modeset.html
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#2705])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#4087] / [i915#7213]) +3 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#3742])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-dg1:          NOTRUN -> [SKIP][235] ([fdo#111827])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][236] ([fdo#111827]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_color@gamma:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([fdo#111827]) +1 other test skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#7828]) +8 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#7828]) +2 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#7828]) +5 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#7828]) +1 other test skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#7828]) +1 other test skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - shard-rkl:          [PASS][243] -> [SKIP][244] ([i915#4098]) +4 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_color@ctm-green-to-red@pipe-b.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html

  * igt@kms_content_protection@atomic:
    - shard-dg1:          NOTRUN -> [SKIP][245] ([i915#7116])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#3299])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#7118])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#7118])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#1845] / [i915#4098]) +34 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8814])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#3555]) +10 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#3359])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#3546]) +1 other test skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#4103] / [i915#4213] / [i915#5608])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][255] ([fdo#111825]) +8 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([fdo#109274] / [i915#5354]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][258] -> [FAIL][259] ([i915#2346])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#4103])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#4103] / [i915#4213])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#8588])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#4098]) +26 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#8812])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#3555] / [i915#3840])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][266] ([i915#3555] / [i915#3840])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#3469])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#3469])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][269] ([fdo#111767] / [i915#3637])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([fdo#109274] / [fdo#111767])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
    - shard-rkl:          NOTRUN -> [SKIP][271] ([fdo#111767] / [fdo#111825]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([fdo#109274]) +7 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([fdo#111825]) +4 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-snb:          NOTRUN -> [SKIP][274] ([fdo#109271]) +16 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-snb5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#3637]) +1 other test skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#3637] / [i915#4098]) +14 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][277] ([i915#2587] / [i915#2672])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#2672]) +3 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#2672]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][280] ([i915#3555] / [i915#8810])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#2672]) +1 other test skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#3555]) +14 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][283] ([fdo#109280]) +7 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#8708]) +20 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#1825]) +12 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][286] ([i915#8708]) +6 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#1849] / [i915#4098]) +16 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-rkl:          [PASS][288] -> [SKIP][289] ([i915#1849] / [i915#4098]) +16 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [FAIL][290] ([i915#6880])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#3458]) +21 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][292] ([i915#3023]) +8 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-glk:          NOTRUN -> [SKIP][293] ([fdo#109271]) +35 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][294] ([i915#8708]) +2 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][295] ([fdo#111825] / [i915#1825]) +18 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#5354]) +34 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg1:          NOTRUN -> [SKIP][297] ([i915#3458]) +5 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#3555] / [i915#8228]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1:
    - shard-mtlp:         [PASS][299] -> [ABORT][300] ([i915#9414])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-2/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-7/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html

  * igt@kms_hdr@static-swap:
    - shard-dg1:          NOTRUN -> [SKIP][301] ([i915#3555] / [i915#8228])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#3555] / [i915#8228]) +1 other test skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#3555] / [i915#8228])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#6301])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([fdo#109289]) +2 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#3555] / [i915#8821])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_plane_lowres@tiling-yf.html
    - shard-mtlp:         NOTRUN -> [SKIP][307] ([i915#3555] / [i915#8821])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#6953] / [i915#8152]) +1 other test skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][309] ([i915#8292])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][310] ([i915#8292])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-16/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-rkl:          NOTRUN -> [SKIP][311] ([i915#8152])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#3555] / [i915#4098] / [i915#8152])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][313] ([i915#5176] / [i915#9423]) +3 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][314] ([i915#4098] / [i915#6953] / [i915#8152]) +3 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#5235]) +1 other test skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#5235]) +15 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][317] ([i915#3555] / [i915#5235]) +1 other test skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-rkl:          NOTRUN -> [SKIP][318] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][319] ([i915#5235]) +5 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][320] ([i915#5235]) +19 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_prime@d3hot:
    - shard-dg2:          NOTRUN -> [SKIP][321] ([i915#6524] / [i915#6805]) +1 other test skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_prime@d3hot.html
    - shard-mtlp:         NOTRUN -> [SKIP][322] ([i915#6524])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][323] ([i915#658])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-glk:          NOTRUN -> [SKIP][324] ([fdo#109271] / [i915#658])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk8/igt@kms_psr2_sf@cursor-plane-update-sf.html
    - shard-tglu:         NOTRUN -> [SKIP][325] ([fdo#111068] / [i915#658])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][326] ([fdo#111068] / [i915#658]) +1 other test skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg1:          NOTRUN -> [SKIP][327] ([fdo#111068] / [i915#658])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@cursor_mmap_gtt:
    - shard-tglu:         NOTRUN -> [SKIP][328] ([fdo#110189]) +4 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr@no_drrs:
    - shard-dg2:          NOTRUN -> [SKIP][329] ([i915#1072]) +6 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_psr@no_drrs.html

  * igt@kms_psr@primary_blt:
    - shard-dg1:          NOTRUN -> [SKIP][330] ([i915#1072] / [i915#4078])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_psr@primary_blt.html

  * igt@kms_psr@psr2_dpms:
    - shard-rkl:          NOTRUN -> [SKIP][331] ([i915#1072]) +3 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@sprite_mmap_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][332] ([i915#4077]) +9 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_psr@sprite_mmap_gtt.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg1:          NOTRUN -> [SKIP][333] ([i915#4884])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#4235] / [i915#5190])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg1:          NOTRUN -> [SKIP][335] ([fdo#111615] / [i915#5289])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][336] ([i915#4235])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][337] ([i915#3555] / [i915#4098]) +1 other test skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][338] ([i915#3555] / [i915#4098]) +1 other test skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_setmode@invalid-clone-exclusive-crtc.html
    - shard-mtlp:         NOTRUN -> [SKIP][339] ([i915#3555] / [i915#8823])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][340] -> [FAIL][341] ([i915#9196])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][342] -> [FAIL][343] ([i915#4349])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@faulting-read@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][344] ([i915#8440])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@perf_pmu@faulting-read@gtt.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][345] ([i915#5608] / [i915#8516])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][346] ([fdo#109295] / [i915#3291] / [i915#3708])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][347] ([i915#3291] / [i915#3708])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][348] ([i915#3708] / [i915#4077])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@prime_vgem@coherency-gtt.html
    - shard-rkl:          [PASS][349] -> [SKIP][350] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][351] ([i915#3708])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@prime_vgem@fence-read-hang.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][352] ([i915#7812])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-snb1/igt@runner@aborted.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
    - shard-rkl:          NOTRUN -> [FAIL][353] ([i915#9583])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled.html

  * igt@sysfs_timeslice_duration@timeout@ccs2:
    - shard-dg2:          [PASS][354] -> [ABORT][355] ([i915#8521])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg2-6/igt@sysfs_timeslice_duration@timeout@ccs2.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-7/igt@sysfs_timeslice_duration@timeout@ccs2.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg1:          NOTRUN -> [SKIP][356] ([fdo#109307] / [i915#4818])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_get_bo_offset@create-get-offsets:
    - shard-mtlp:         NOTRUN -> [SKIP][357] ([i915#2575]) +4 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@v3d/v3d_get_bo_offset@create-get-offsets.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pointer:
    - shard-dg1:          NOTRUN -> [SKIP][358] ([i915#2575]) +2 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html

  * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][359] ([fdo#109315] / [i915#2575]) +1 other test skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  * igt@v3d/v3d_submit_cl@simple-flush-cache:
    - shard-dg2:          NOTRUN -> [SKIP][360] ([i915#2575]) +11 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@v3d/v3d_submit_cl@simple-flush-cache.html

  * igt@v3d/v3d_submit_csd@valid-multisync-submission:
    - shard-rkl:          NOTRUN -> [SKIP][361] ([fdo#109315]) +8 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@v3d/v3d_submit_csd@valid-multisync-submission.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable-twice:
    - shard-dg1:          NOTRUN -> [SKIP][362] ([i915#7711])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@vc4/vc4_purgeable_bo@mark-purgeable-twice.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:
    - shard-mtlp:         NOTRUN -> [SKIP][363] ([i915#7711]) +3 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged.html

  * igt@vc4/vc4_wait_bo@used-bo:
    - shard-tglu:         NOTRUN -> [SKIP][364] ([i915#2575])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@vc4/vc4_wait_bo@used-bo.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][365] ([i915#7711]) +8 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
    - shard-rkl:          NOTRUN -> [SKIP][366] ([i915#7711]) +5 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html

  
#### Possible fixes ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [SKIP][367] ([i915#8411]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-7/igt@api_intel_bb@blit-reloc-purge-cache.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][369] ([i915#7742]) -> [PASS][370] +1 other test pass
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * {igt@drm_mm@drm_mm@drm_test_mm_align64}:
    - shard-tglu:         [TIMEOUT][371] -> [PASS][372] +1 other test pass
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-7/igt@drm_mm@drm_mm@drm_test_mm_align64.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@drm_mm@drm_mm@drm_test_mm_align64.html

  * igt@drm_read@short-buffer-block:
    - shard-rkl:          [SKIP][373] ([i915#1845] / [i915#4098]) -> [PASS][374] +8 other tests pass
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@drm_read@short-buffer-block.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@drm_read@short-buffer-block.html

  * igt@fbdev@unaligned-read:
    - shard-rkl:          [SKIP][375] ([i915#2582]) -> [PASS][376] +1 other test pass
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@fbdev@unaligned-read.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@fbdev@unaligned-read.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [FAIL][377] ([i915#6268]) -> [PASS][378]
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [FAIL][379] ([i915#9561]) -> [PASS][380]
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-rkl:          [SKIP][381] ([i915#6252]) -> [PASS][382]
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [ABORT][383] ([i915#7975] / [i915#8213] / [i915#8398]) -> [PASS][384]
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-10/igt@gem_eio@hibernate.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@gem_eio@hibernate.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [TIMEOUT][385] ([i915#3778] / [i915#7016]) -> [PASS][386]
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg2-1/igt@gem_exec_endless@dispatch@bcs0.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-1/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][387] ([i915#2842]) -> [PASS][388]
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][389] ([i915#2842]) -> [PASS][390]
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][391] ([i915#2842]) -> [PASS][392] +2 other tests pass
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [SKIP][393] ([i915#3281]) -> [PASS][394] +12 other tests pass
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          [SKIP][395] ([i915#7276]) -> [PASS][396]
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][397] ([i915#3282]) -> [PASS][398] +8 other tests pass
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-rkl:          [SKIP][399] ([i915#2527]) -> [PASS][400] +3 other tests pass
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@gen9_exec_parse@allowed-single.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_color@legacy-gamma-reset@pipe-b:
    - shard-rkl:          [SKIP][401] ([i915#4098]) -> [PASS][402] +2 other tests pass
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_color@legacy-gamma-reset@pipe-b.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_color@legacy-gamma-reset@pipe-b.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1:
    - shard-snb:          [DMESG-WARN][403] -> [PASS][404]
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-snb6/igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-snb5/igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][405] ([i915#2346]) -> [PASS][406]
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          [FAIL][407] ([i915#2346]) -> [PASS][408]
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [SKIP][409] ([i915#1849] / [i915#4098]) -> [PASS][410] +4 other tests pass
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-dg2:          [FAIL][411] ([fdo#103375]) -> [PASS][412]
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * {igt@kms_pm_rpm@fences-dpms}:
    - shard-rkl:          [SKIP][413] ([i915#1849]) -> [PASS][414]
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_pm_rpm@fences-dpms.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_pm_rpm@fences-dpms.html

  * {igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode}:
    - shard-dg2:          [TIMEOUT][415] -> [PASS][416]
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg2-6/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
    - shard-mtlp:         [TIMEOUT][417] -> [PASS][418]
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-8/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-5/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html

  * {igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:
    - shard-glk:          [TIMEOUT][419] -> [PASS][420]
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk6/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk9/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-snb:          [TIMEOUT][421] -> [PASS][422]
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-snb4/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-snb1/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:
    - shard-snb:          [FAIL][423] ([i915#9196]) -> [PASS][424]
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - shard-mtlp:         [FAIL][425] ([i915#4349]) -> [PASS][426] +3 other tests pass
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-4/igt@perf_pmu@busy-double-start@vcs1.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-5/igt@perf_pmu@busy-double-start@vcs1.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          [INCOMPLETE][427] ([i915#9408]) -> [ABORT][428] ([i915#9618])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg1-19/igt@device_reset@unbind-reset-rebind.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][429] ([i915#3555]) -> [SKIP][430] ([i915#7957])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][431] ([i915#7957]) -> [SKIP][432] ([i915#3555])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][433] ([i915#2842]) -> [SKIP][434] ([i915#9591])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_pread@exhaustion:
    - shard-rkl:          [SKIP][435] ([i915#3282]) -> [WARN][436] ([i915#2658]) +1 other test warn
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-7/igt@gem_pread@exhaustion.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_pread@exhaustion.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglu:         [WARN][437] ([i915#2681]) -> [FAIL][438] ([i915#2681] / [i915#3591])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         [DMESG-FAIL][439] ([i915#8561]) -> [FAIL][440] ([i915#8247])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-5/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          [SKIP][441] ([i915#5286]) -> [SKIP][442] ([i915#1845] / [i915#4098]) +7 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][443] ([i915#1845] / [i915#4098]) -> [SKIP][444] ([i915#5286]) +3 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          [SKIP][445] ([fdo#111614] / [i915#3638]) -> [SKIP][446] ([i915#1845] / [i915#4098]) +3 other tests skip
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][447] ([i915#1845] / [i915#4098]) -> [SKIP][448] ([fdo#111614] / [i915#3638]) +2 other tests skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][449] ([fdo#110723]) -> [SKIP][450] ([i915#1845] / [i915#4098]) +4 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][451] ([fdo#111615]) -> [SKIP][452] ([i915#1845] / [i915#4098])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][453] ([i915#1845] / [i915#4098]) -> [SKIP][454] ([fdo#110723]) +2 other tests skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][455] ([i915#9608]) -> [SKIP][456] ([i915#3555])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_color@deep-color.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-1:
    - shard-apl:          [TIMEOUT][457] ([i915#7173]) -> [FAIL][458] ([i915#7181])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl4/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][459] ([i915#1845] / [i915#4098]) -> [SKIP][460] ([i915#3116])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][461] ([i915#7118]) -> [SKIP][462] ([i915#1845] / [i915#4098]) +1 other test skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_content_protection@legacy.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][463] ([i915#7118] / [i915#7162]) -> [SKIP][464] ([i915#7118])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg2-11/igt@kms_content_protection@type1.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-1/igt@kms_content_protection@type1.html
    - shard-rkl:          [SKIP][465] ([i915#1845] / [i915#4098]) -> [SKIP][466] ([i915#7118])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_content_protection@type1.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-rkl:          [SKIP][467] ([i915#1845] / [i915#4098]) -> [SKIP][468] ([i915#3555]) +2 other tests skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][469] ([i915#3555]) -> [SKIP][470] ([i915#1845] / [i915#4098]) +6 other tests skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          [SKIP][471] ([i915#3359]) -> [SKIP][472] ([i915#1845] / [i915#4098])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][473] ([i915#1845] / [i915#4098]) -> [SKIP][474] ([i915#4103]) +1 other test skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][475] ([i915#1845] / [i915#4098]) -> [SKIP][476] ([fdo#111825])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][477] ([fdo#111825]) -> [SKIP][478] ([i915#1845] / [i915#4098]) +1 other test skip
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          [SKIP][479] ([i915#4103]) -> [SKIP][480] ([i915#1845] / [i915#4098])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][481] ([i915#3555] / [i915#3840]) -> [SKIP][482] ([i915#4098])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_dsc@dsc-basic.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][483] ([i915#3955]) -> [SKIP][484] ([fdo#110189] / [i915#3955])
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_fbcon_fbt@psr.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][485] ([fdo#111825] / [i915#1825]) -> [SKIP][486] ([i915#1849] / [i915#4098]) +43 other tests skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][487] ([i915#1849] / [i915#4098]) -> [SKIP][488] ([i915#5439])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][489] ([i915#1849] / [i915#4098]) -> [SKIP][490] ([fdo#111825] / [i915#1825]) +15 other tests skip
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-rkl:          [SKIP][491] ([i915#3023]) -> [SKIP][492] ([i915#1849] / [i915#4098]) +30 other tests skip
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          [SKIP][493] ([i915#1849] / [i915#4098]) -> [SKIP][494] ([i915#3023]) +11 other tests skip
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          [SKIP][495] ([i915#3555] / [i915#8228]) -> [SKIP][496] ([i915#1845] / [i915#4098]) +1 other test skip
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-7/igt@kms_

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/index.html

--===============3694553494887679185==
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
<tr><td><b>Series:</b></td><td>drm/i915: Skip pxp init if gt is wedged (rev=
3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125658/">https://patchwork.freedesktop.org/series/125658/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125658v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13870_full -&gt; Patchwork_125658v=
3_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
125658v3_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological}:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@drm_buddy@drm_buddy@drm_te=
st_buddy_alloc_pathological.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@drm_buddy@drm_buddy@drm_te=
st_buddy_alloc_pathological.html">TIMEOUT</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-apl7/igt@kms_selftest@drm_framebuffer@drm_test_framebuff=
er_create.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125658v3/shard-apl7/igt@kms_selftest@drm_framebuffer@drm_=
test_framebuffer_create.html">TIMEOUT</a> +3 other tests timeout</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-rkl-4/igt@kms_selftest@drm_framebuffer@drm_test_framebuf=
fer_create.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_selftest@drm_framebuffer@dr=
m_test_framebuffer_create.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-dg1-12/igt@kms_selftest@drm_framebuffer@drm_test_framebu=
ffer_create.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125658v3/shard-dg1-15/igt@kms_selftest@drm_framebuffer@=
drm_test_framebuffer_create.html">TIMEOUT</a> +1 other test timeout</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:<=
/p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-mtlp-2/igt@kms_selftest@drm_plane_helper@drm_test_check=
_invalid_plane_state.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-2/igt@kms_selftest@drm_pla=
ne_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125658v3_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13870/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13870/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13870/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13870/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870=
/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13870/shard-apl2/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-ap=
l2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3870/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13870/shard-apl1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
658v3/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125658v3/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125658v3/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/sh=
ard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125658v3/shard-apl2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5658v3/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125658v3/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125658v3/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/sh=
ard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125658v3/shard-apl4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5658v3/shard-apl4/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125658v3/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125658v3/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/sh=
ard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125658v3/shard-apl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl1/boot.html"=
>PASS</a>) ([i915#8293])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13870/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13870/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13870/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13870/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13870/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13870/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870=
/shard-glk5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13870/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3870/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13870/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13870/shard-glk2/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125658v3/shard-glk8/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk8/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3=
/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125658v3/shard-glk9/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk9/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125658v3/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125658v3/shard-glk8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125658v3/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk6/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125658v3/shard-glk5/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125658v3/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125658v3/shard-glk4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125658v3/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk4/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/s=
hard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125658v3/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25658v3/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125658v3/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk2/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> ([i915#8411])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> ([i915#8411])</p>
</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@api_intel_bb@crc32.html">S=
KIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@drm_fdinfo@busy-check-all=
@ccs0.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@drm_fdinfo@busy@vcs1.html=
">SKIP</a> ([i915#8414]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@drm_fdinfo@idle@rcs0.html"=
>FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@drm_fdinfo@most-busy-check=
-all@bcs0.html">SKIP</a> ([i915#8414]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-mtlp-7/igt@fbdev@eof.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-2/igt@=
fbdev@eof.html">DMESG-WARN</a> ([i915#2017]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@fbdev@pan.html">SKIP</a> (=
[i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-1/igt@fbdev@unaligned-write.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-=
rkl-5/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_caching@writes.html">=
SKIP</a> ([i915#4873])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@gem_ccs@suspend-resume@lin=
ear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_ctx_persistence@heart=
beat-stop.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> ([i915#280]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-dg2-11/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-1/igt=
@gem_eio@kms.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_exec_balancer@bonded-=
semaphore.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_exec_balancer@bonded-=
true-hang.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_exec_balancer@fairslic=
e.html">SKIP</a> ([Intel XE#874])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_exec_balancer@hog.htm=
l">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_exec_balancer@noheart=
beat.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gem_exec_balancer@parallel=
.html">SKIP</a> ([i915#4525]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_exec_fair@basic-none-=
vip.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_exec_fair@basic-throt=
tle.html">SKIP</a> ([i915#3539]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gem_exec_fair@basic-thrott=
le@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@gem_exec_gttfill@multigpu-=
basic.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_exec_params@secure-no=
n-master.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-g=
tt.html">SKIP</a> ([i915#3281]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v=
3/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> ([i915#3281]=
) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gem_exec_reloc@basic-softp=
in.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_exec_reloc@basic-writ=
e-read.html">SKIP</a> ([i915#3281]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_fence_thrash@bo-copy.h=
tml">SKIP</a> ([i915#4860]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-dg1-13/igt@gem_lmem_evict@dontneed-evict-race.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25658v3/shard-dg1-14/igt@gem_lmem_evict@dontneed-evict-race.html">DMESG-WAR=
N</a> ([i915#4391] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_lmem_swapping@parallel=
-random.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_lmem_swapping@paralle=
l-random-verify.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@gem_media_fill@media-fill.=
html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-co=
py-odd.html">SKIP</a> ([i915#4077]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_mmap_wc@set-cache-lev=
el.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@gem_mmap_wc@write-cpu-read=
-wc.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@gem_partial_pwrite_pread@w=
rite.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_pread@exhaustion.html"=
>SKIP</a> ([i915#3282]) +5 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_pread@exhaustion.html"=
>SKIP</a> ([i915#3282])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_pwrite@basic-exhausti=
on.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@gem_pxp@reject-modify-con=
text-protection-on.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@gem_readwrite@write-bad-handle.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658=
v3/shard-rkl-7/igt@gem_readwrite@write-bad-handle.html">SKIP</a> ([i915#328=
2]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled-mc-ccs.html">SKIP</a> ([i915#768]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_render_copy@y-tiled-t=
o-vebox-x-tiled.html">SKIP</a> ([i915#8428]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@gem_set_tiling_vs_blt@tiled=
-to-untiled.html">SKIP</a> ([i915#4079]) +3 other tests skip</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125658v3/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP=
</a> ([i915#8411])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> ([i915#4885])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> ([i915#4885])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_tiled_partial_pwrite_=
pread@writes.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_tiled_pread_basic.htm=
l">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gem_userptr_blits@map-fixe=
d-invalidate.html">SKIP</a> ([i915#3297] / [i915#4880])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gem_userptr_blits@map-fixe=
d-invalidate.html">SKIP</a> ([i915#3297])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@gem_userptr_blits@readonly=
-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@gem_userptr_blits@vma-mer=
ge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gen7_exec_parse@basic-offs=
et.html">SKIP</a> ([fdo#109289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@gen9_exec_parse@basic-rej=
ected-ctx-param.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@gen9_exec_parse@bb-secure=
.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@gen9_exec_parse@bb-start-=
param.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> ([i915#2856]) +3 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@gen9_exec_parse@secure-batc=
hes.html">SKIP</a> ([i915#2527]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/=
shard-rkl-7/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2527]) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@i915_fb_tiling.html">SKIP<=
/a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-7/igt@i915_hangman@engine-engine-error@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125658v3/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">SKIP<=
/a> ([i915#9588])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> ([i915#7091])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> ([i915#8399]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125658v3/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a=
> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@i915_pm_rps@waitboost.htm=
l">FAIL</a> ([i915#8346])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> ([fdo#109303])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> ([fdo#109303])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_addfb_basic@invalid-sm=
em-bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-2.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-14/igt@kms_async_flips@crc@pipe-=
d-hdmi-a-4.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_async_flips@invalid-as=
ync-flip.html">SKIP</a> ([i915#6228])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i91=
5#3555])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_atomic_transition@plane=
-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915=
#3555])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-r=
otate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_big_fb@4-tiled-16bpp-=
rotate-270.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-r=
otate-90.html">SKIP</a> ([fdo#111614]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_big_fb@linear-64bpp-ro=
tate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
658v3/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP</a> ([i9=
15#1845] / [i915#4098]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_big_fb@x-tiled-32bpp-=
rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_big_fb@x-tiled-64bpp-=
rotate-90.html">SKIP</a> ([fdo#111614]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-180.html">SKIP</a> ([i915#5190]) +13 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-180.html">SKIP</a> ([fdo#111615]) +4 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125658v3/shard-tglu-2/igt@kms_big_fb@y-tiled=
-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3743=
])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-270.html">SKIP</a> ([fdo#110723]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> ([i915#2705])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> ([i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-1/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> ([i915#4087] / [i915#7213]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cdclk@plane-scaling.ht=
ml">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_chamelium_color@ctm-0=
-50.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_chamelium_color@ctm-g=
reen-to-red.html">SKIP</a> ([fdo#111827]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_chamelium_color@gamma=
.html">SKIP</a> ([fdo#111827]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_chamelium_edid@hdmi-ed=
id-stress-resolution-non-4k.html">SKIP</a> ([i915#7828]) +8 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_chamelium_frames@dp-c=
rc-fast.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_chamelium_frames@dp-fr=
ame-dump.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hp=
d-for-each-pipe.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_chamelium_hpd@vga-hpd=
-without-ddc.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@kms_color@ctm-green-to-red@pipe-b.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
658v3/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html">SKIP</a> ([i9=
15#4098]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_content_protection@at=
omic.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_content_protection@lic=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cursor_crc@cursor-onsc=
reen-256x256.html">SKIP</a> ([i915#1845] / [i915#4098]) +34 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_cursor_crc@cursor-ons=
creen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> ([i915#3555]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-legacy.html">SKIP</a> ([i915#3546]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213] / [i=
915#5608])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_cursor_legacy@cursora=
-vs-flipb-legacy.html">SKIP</a> ([fdo#111825]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_cursor_legacy@cursorb-=
vs-flipa-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [i9=
15#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#111767] / [=
i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125658v3/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915=
#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> ([i915#4098]) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_dsc@dsc-with-bpc-forma=
ts.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_fbcon_fbt@psr.html">S=
KIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_flip@2x-flip-vs-block=
ing-wf-vblank.html">SKIP</a> ([fdo#111767] / [i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-expire=
d-vblank-interruptible.html">SKIP</a> ([fdo#109274] / [fdo#111767])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_flip@2x-flip-vs-expired=
-vblank-interruptible.html">SKIP</a> ([fdo#111767] / [fdo#111825]) +1 other=
 test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_flip@2x-flip-vs-wf_vbl=
ank-interruptible.html">SKIP</a> ([fdo#109274]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> ([fdo#111825]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-snb5/igt@kms_flip@2x-plain-flip-fb-r=
ecreate-interruptible.html">SKIP</a> ([fdo#109271]) +16 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_flip@bo-too-big-interr=
uptible.html">SKIP</a> ([i915#3637] / [i915#4098]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html">SK=
IP</a> ([i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
[i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#3555]) +14 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +7 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +20 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +12 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +6 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-rgb101010-draw-pwrite.html">SKIP</a> ([i915#1849] / [i915#4098]) +16 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125658v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-dra=
w-render.html">SKIP</a> ([i915#1849] / [i915#4098]) +16 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-shrfb-scaledprimary.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb565-draw-render.html">SKIP</a> ([i915#3458]) +21 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#3023]) +8 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-glk8/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-spr-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +35 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#111825] / [i915#1825])=
 +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([i915#5354]) +34 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_frontbuffer_tracking@=
psr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +5 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_hdr@bpc-switch.html">S=
KIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-mtlp-2/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125658v3/shard-mtlp-7/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html"=
>ABORT</a> ([i915#9414])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_hdr@static-swap.html"=
>SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_hdr@static-toggle.html=
">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_panel_fitting@atomic-=
fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_pipe_b_c_ivb@from-pipe=
-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> ([i915#3555] / [i915#8821])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> ([i915#3555] / [i915#8821])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> ([i915#6953] / [i915#8152]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-dp-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-16/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_plane_scaling@invalid-=
parameters.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#40=
98] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-16/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html">SKIP</a> ([i915=
#5176] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25.html">SKIP</a> ([i915#4098] / [i915#6953] / [i915#8152=
]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#52=
35]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d-hdmi-a-2.html">SKIP</a> ([i915#5235]) +15 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_plane_scaling@planes-=
downscale-factor-0-75@pipe-d-edp-1.html">SKIP</a> ([i915#3555] / [i915#5235=
]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#3555] / [i915#4098]=
 / [i915#6953] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> ([i915#5235]=
) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> ([=
i915#5235]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_prime@d3hot.html">SKIP=
</a> ([i915#6524] / [i915#6805]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_prime@d3hot.html">SKIP=
</a> ([i915#6524])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-glk8/igt@kms_psr2_sf@cursor-plane-upd=
ate-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_psr2_sf@cursor-plane-u=
pdate-sf.html">SKIP</a> ([fdo#111068] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> ([fdo#111068] / [i915#658]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@kms_psr@cursor_mmap_gtt.h=
tml">SKIP</a> ([fdo#110189]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@no_drrs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_psr@no_drrs.html">SKIP=
</a> ([i915#1072]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_psr@primary_blt.html"=
>SKIP</a> ([i915#1072] / [i915#4078])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_psr@psr2_dpms.html">SK=
IP</a> ([i915#1072]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@kms_psr@sprite_mmap_gtt.h=
tml">SKIP</a> ([i915#4077]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_rotation_crc@exhaust-=
fences.html">SKIP</a> ([i915#4884])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> ([i915#4235] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-90.html">SKIP</a> ([fdo#111615] / [i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_rotation_crc@sprite-r=
otation-90.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@kms_setmode@basic-clone-si=
ngle-crtc.html">SKIP</a> ([i915#3555] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_setmode@invalid-clone-=
exclusive-crtc.html">SKIP</a> ([i915#3555] / [i915#4098]) +1 other test ski=
p</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@kms_setmode@invalid-clone-=
exclusive-crtc.html">SKIP</a> ([i915#3555] / [i915#8823])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125658v3/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak=
@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1256=
58v3/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> ([i915=
#4349])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@faulting-read@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-3/igt@perf_pmu@faulting-read@gt=
t.html">SKIP</a> ([i915#8440])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> ([i915#5608] / [i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> ([fdo#109295] / [i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@prime_vgem@basic-read.html=
">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@prime_vgem@coherency-gtt.ht=
ml">SKIP</a> ([i915#3708] / [i915#4077])</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shar=
d-rkl-4/igt@prime_vgem@coherency-gtt.html">SKIP</a> ([fdo#109295] / [fdo#11=
1656] / [i915#3708])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-6/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-snb1/igt@runner@aborted.html">FAIL</=
a> ([i915#7812])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signal=
ed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@syncobj_timeline@invalid-m=
ulti-wait-all-available-unsubmitted-signaled.html">FAIL</a> ([i915#9583])</=
li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@ccs2:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-dg2-6/igt@sysfs_timeslice_duration@timeout@ccs2.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125658v3/shard-dg2-7/igt@sysfs_timeslice_duration@timeout@ccs2.html">ABORT=
</a> ([i915#8521])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> ([fdo#109307] / [i915#4818])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_bo_offset@create-get-offsets:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@v3d/v3d_get_bo_offset@cre=
ate-get-offsets.html">SKIP</a> ([i915#2575]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pointer:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@v3d/v3d_perfmon@get-value=
s-invalid-pointer.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@v3d/v3d_perfmon@get-value=
s-valid-perfmon.html">SKIP</a> ([fdo#109315] / [i915#2575]) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@simple-flush-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg2-5/igt@v3d/v3d_submit_cl@simple-f=
lush-cache.html">SKIP</a> ([i915#2575]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@valid-multisync-submission:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-rkl-2/igt@v3d/v3d_submit_csd@valid-m=
ultisync-submission.html">SKIP</a> ([fdo#109315]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable-twice:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-dg1-17/igt@vc4/vc4_purgeable_bo@mark=
-purgeable-twice.html">SKIP</a> ([i915#7711])</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-mtlp-8/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-purged.html">SKIP</a> ([i915#7711]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@vc4/vc4_wait_bo@used-bo.h=
tml">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-dg2-11/igt@vc4/vc4_wait_seqno@bad-seq=
no-1ns.html">SKIP</a> ([i915#7711]) +8 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@vc4/vc4_wait_seqno@bad-seqn=
o-1ns.html">SKIP</a> ([i915#7711]) +5 other tests skip</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-7/igt@api_intel_bb@blit-reloc-purge-cache.html">SKI=
P</a> ([i915#8411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125658v3/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> ([i915#7742]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125658v3/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@drm_mm@drm_mm@drm_test_mm_align64}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-tglu-7/igt@drm_mm@drm_mm@drm_test_mm_align64.html">TIME=
OUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125658v3/shard-tglu-3/igt@drm_mm@drm_mm@drm_test_mm_align64.html">PASS</a>=
 +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@drm_read@short-buffer-block.html">SKIP</a> ([=
i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@drm_read@short-buffer-block.htm=
l">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#25=
82]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5658v3/shard-rkl-7/igt@fbdev@unaligned-read.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a=
> ([i915#6268]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125658v3/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> ([i915#=
9561]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125658v3/shard-dg2-2/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.h=
tml">SKIP</a> ([i915#6252]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@gem_ctx_persistence@legacy-en=
gines-hang@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-tglu-10/igt@gem_eio@hibernate.html">ABORT</a> ([i915#79=
75] / [i915#8213] / [i915#8398]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125658v3/shard-tglu-3/igt@gem_eio@hibernate.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-dg2-1/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT<=
/a> ([i915#3778] / [i915#7016]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125658v3/shard-dg2-1/igt@gem_exec_endless@dispatch=
@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125658v3/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125658v3/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.=
html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125658v3/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS<=
/a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKI=
P</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125658v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.h=
tml">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> ([i915#7276]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125658v3/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> ([i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@gem_partial_pwrite_p=
read@writes-after-reads-uncached.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-1/igt@gen9_exec_parse@allowed-single.html">SKIP</a>=
 ([i915#2527]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125658v3/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma-reset@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_color@legacy-gamma-reset@pipe-b.html">SKI=
P</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125658v3/shard-rkl-4/igt@kms_color@legacy-gamma-reset@pipe-b.h=
tml">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-snb6/igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1.htm=
l">DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125658v3/shard-snb5/igt@kms_cursor_crc@cursor-suspend@pipe-a-vga=
-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-apl2/igt@kms_cursor_=
legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-glk2/igt@kms_cursor_=
legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html">SKIP</a> ([i915#1849]=
 / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125658v3/shard-rkl-7/igt@kms_fbcon_fbt@fbc.html">PASS</a> +4 other=
 tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html">FA=
IL</a> ([fdo#103375]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125658v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-suspe=
nd.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@fences-dpms}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> ([i915#=
1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125658v3/shard-rkl-4/igt@kms_pm_rpm@fences-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_dec=
ode}:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-dg2-6/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst=
_sideband_msg_req_decode.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-dg2-2/igt@kms_selftest@d=
rm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html">PASS</a></p>
</li>
<li>
<p>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-mtlp-8/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_ms=
t_sideband_msg_req_decode.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-mtlp-5/igt@kms_selftest=
@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html">PASS</a></=
p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-glk6/igt@kms_selftest@drm_framebuffer@drm_test_framebuf=
fer_create.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125658v3/shard-glk9/igt@kms_selftest@drm_framebuffer@=
drm_test_framebuffer_create.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:<=
/p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-snb4/igt@kms_selftest@drm_plane_helper@drm_test_check_i=
nvalid_plane_state.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125658v3/shard-snb1/igt@kms_selftest@drm_plan=
e_helper@drm_test_check_invalid_plane_state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-=
1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125658v3/shard-snb5/igt@kms_universal_plane@cursor-=
fb-leak@pipe-a-vga-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-mtlp-4/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</=
a> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125658v3/shard-mtlp-5/igt@perf_pmu@busy-double-start@vcs1.html">P=
ASS</a> +3 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-dg1-19/igt@device_reset@unbind-reset-rebind.html">INCOM=
PLETE</a> ([i915#9408]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125658v3/shard-dg1-13/igt@device_reset@unbind-reset-rebind=
.html">ABORT</a> ([i915#9618])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125658v3/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a=
> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#=
7957]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125658v3/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125658v3/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a=
> ([i915#9591])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-7/igt@gem_pread@exhaustion.html">SKIP</a> ([i915#32=
82]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5658v3/shard-rkl-5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) +1=
 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">WA=
RN</a> ([i915#2681]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125658v3/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@rcs0=
.html">FAIL</a> ([i915#2681] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html">DMESG=
-FAIL</a> ([i915#8561]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125658v3/shard-mtlp-5/igt@kms_async_flips@crc@pipe-d-edp-1=
.html">FAIL</a> ([i915#8247])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKI=
P</a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125658v3/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-180.h=
tml">SKIP</a> ([i915#1845] / [i915#4098]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-hflip.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_b=
ig_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286=
]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-1/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP<=
/a> ([fdo#111614] / [i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_big_fb@linear-32bpp-=
rotate-90.html">SKIP</a> ([i915#1845] / [i915#4098]) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP=
</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp=
-rotate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKI=
P</a> ([fdo#110723]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125658v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.=
html">SKIP</a> ([i915#1845] / [i915#4098]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html"=
>SKIP</a> ([fdo#111615]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-o=
verflow.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_big_=
fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([fdo#110723]) +2=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_color@deep-color.html">SKIP</a> ([i915#96=
08]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5658v3/shard-rkl-7/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-apl1/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1=
.html">TIMEOUT</a> ([i915#7173]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125658v3/shard-apl4/igt@kms_content_protection@at=
omic-dpms@pipe-a-dp-1.html">FAIL</a> ([i915#7181])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_content_protection=
@dp-mst-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@kms_content_protection@legacy.html">SKIP</a> =
([i915#7118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125658v3/shard-rkl-5/igt@kms_content_protection@legacy.html">SKIP</a=
> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (=
[i915#7118] / [i915#7162]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125658v3/shard-dg2-1/igt@kms_content_protection@type1.h=
tml">SKIP</a> ([i915#7118])</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13870/shard-rkl-5/igt@kms_content_protection@type1.html">SKIP</a> ([=
i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_content_protection@type1.ht=
ml">SKIP</a> ([i915#7118])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html=
">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_cursor_crc@cur=
sor-offscreen-max-size.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x10.html">SKIP</a> ([i915#1845] / [i915#4098]) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-512x170.html">S=
KIP</a> ([i915#3359]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x1=
70.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/ig=
t@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</=
a> ([i915#4103]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-tra=
nsitions-varying-size.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rk=
l-4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.=
html">SKIP</a> ([fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-f=
lipa-legacy.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-toggle.html">SKIP</a> ([i915#4103]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_cursor_legacy@=
short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#1845] / [i915#40=
98])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555]=
 / [i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125658v3/shard-rkl-5/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#4=
098])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3955]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12565=
8v3/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([fdo#110189] / [i915#=
3955])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-rkl=
-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.htm=
l">SKIP</a> ([i915#1849] / [i915#4098]) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">S=
KIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-4/igt@kms_frontbuffer_track=
ing@fbc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-c=
ur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v3/shard-r=
kl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gt=
t.html">SKIP</a> ([fdo#111825] / [i915#1825]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprim=
ary.html">SKIP</a> ([i915#3023]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125658v3/shard-rkl-5/igt@kms_frontbuffer_tracking=
@psr-indfb-scaledprimary.html">SKIP</a> ([i915#1849] / [i915#4098]) +30 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html">SK=
IP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125658v3/shard-rkl-7/igt@kms_frontbuffer_tracki=
ng@psr-suspend.html">SKIP</a> ([i915#3023]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13870/shard-rkl-7/igt@kms_">SKIP</a> ([i915#3555] / [i915#8228]) -&=
gt; [SKIP][496] ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3694553494887679185==--
