Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BC07D8F52
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 09:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E81810E938;
	Fri, 27 Oct 2023 07:12:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0186010E938;
 Fri, 27 Oct 2023 07:12:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDD96A00E6;
 Fri, 27 Oct 2023 07:12:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7662208525323487257=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Fri, 27 Oct 2023 07:12:23 -0000
Message-ID: <169839074392.19709.4172244239415843107@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231025143515.254468-1-andi.shyti@linux.intel.com>
In-Reply-To: <20231025143515.254468-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_gt=5Fto=5Fguc_and_guc=5Fto=5Fi915_helpers?=
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

--===============7662208525323487257==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add gt_to_guc and guc_to_i915 helpers
URL   : https://patchwork.freedesktop.org/series/125583/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13786_full -> Patchwork_125583v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125583v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125583v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125583v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-rkl:          [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][3] +2 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html

  
Known issues
------------

  Here are the changes found in Patchwork_125583v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51]) ([i915#8293])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl7/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [FAIL][61], [FAIL][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [FAIL][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76]) ([i915#8293]) -> ([PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk8/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk8/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk8/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk8/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk6/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk6/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk6/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk4/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk4/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk4/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk4/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk3/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk3/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk3/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk3/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk2/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk2/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk2/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk1/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk1/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk1/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk9/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk9/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk9/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#7701])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@isolation@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#8414]) +5 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@drm_fdinfo@isolation@rcs0.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#8414]) +10 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][105] -> [FAIL][106] ([i915#7742])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@fbdev@read:
    - shard-rkl:          [PASS][107] -> [SKIP][108] ([i915#2582])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@fbdev@read.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@fbdev@read.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#7697]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#9323])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][111] ([i915#9364])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#6335])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#8562])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#8555])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#280])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@in-flight-suspend:
    - shard-mtlp:         [PASS][116] -> [ABORT][117] ([i915#7892] / [i915#9262])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-8/igt@gem_eio@in-flight-suspend.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4771]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4036])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#4525])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#6344])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#4473] / [i915#4771])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][123] ([i915#2842])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-rkl:          [PASS][124] -> [FAIL][125] ([i915#2842]) +2 other tests fail
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][126] ([i915#2842])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3539]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#4812])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3539] / [i915#4852]) +3 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#7697]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([fdo#109283])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#3281]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#3281])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [PASS][134] -> [SKIP][135] ([i915#3281]) +9 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#3281]) +7 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#4537] / [i915#4812]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#4860])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#4860]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#4613])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-glk:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk8/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#4613])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@verify:
    - shard-apl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#4613]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/igt@gem_lmem_swapping@verify.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#4077]) +10 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4083]) +4 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_mmap_wc@close.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3282]) +5 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][147] ([i915#2658])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-snb4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pwrite@basic-random:
    - shard-rkl:          [PASS][148] -> [SKIP][149] ([i915#3282]) +2 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_pwrite@basic-random.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#4270])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#4270]) +3 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#4270]) +2 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#8428])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#4079]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          [PASS][155] -> [SKIP][156] ([i915#8411]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#3282]) +2 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#4885])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([fdo#110542])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#3297] / [i915#4880])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][161] ([i915#3318])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([fdo#109289]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([fdo#109289])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#2856]) +5 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gen9_exec_parse@allowed-single.html
    - shard-apl:          [PASS][165] -> [INCOMPLETE][166] ([i915#5566])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/igt@gen9_exec_parse@allowed-single.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#2527])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [PASS][168] -> [SKIP][169] ([i915#2527])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@load:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#6227])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@i915_module_load@load.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#6412])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([fdo#109293])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#6621])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#8925])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#7984])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@i915_power@sanity.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([fdo#109302])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@i915_query@query-topology-unsupported.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#4212]) +3 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@crc@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [FAIL][178] ([i915#8247]) +3 other tests fail
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg1-19/igt@kms_async_flips@crc@pipe-c-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#1769] / [i915#3555])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([fdo#111614]) +4 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([fdo#111615] / [i915#5286])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#5286]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][183] -> [FAIL][184] ([i915#5138])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([fdo#111614])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([fdo#111614] / [i915#3638]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][187] -> [FAIL][188] ([i915#3743])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([fdo#111614]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#5190]) +14 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([fdo#111615])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([fdo#110723]) +3 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#4538] / [i915#5190]) +5 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([fdo#111615])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#1845] / [i915#4098]) +18 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#4087] / [i915#7213]) +2 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#7213])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([fdo#111827]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([fdo#111827]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#7828]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#7828]) +9 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#7828])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#7828]) +3 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_color@deep-color@pipe-a-hdmi-a-2-gamma:
    - shard-rkl:          NOTRUN -> [FAIL][204] ([i915#6892]) +1 other test fail
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_color@deep-color@pipe-a-hdmi-a-2-gamma.html

  * igt@kms_color@degamma@pipe-a:
    - shard-rkl:          [PASS][205] -> [SKIP][206] ([i915#4098]) +3 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_color@degamma@pipe-a.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_color@degamma@pipe-a.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#7118]) +2 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#3555] / [i915#8814]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#3359]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#3555]) +4 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3359])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][212] ([i915#8841]) +4 other tests dmesg-warn
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-snb4/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#4103])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([fdo#109274] / [i915#5354]) +4 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([fdo#109274]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#3546])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#9226] / [i915#9261]) +1 other test skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#9227])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#4098]) +30 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][220] ([fdo#109274] / [i915#3637]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([fdo#109274]) +2 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([fdo#111825]) +6 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#3637] / [i915#4098]) +6 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#2672]) +6 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#3555]) +9 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#2672]) +5 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#2587] / [i915#2672])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#8708]) +16 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#1849] / [i915#4098]) +18 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][230] ([fdo#109280]) +7 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#8708]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-rkl:          [PASS][232] -> [SKIP][233] ([i915#1849] / [i915#4098]) +7 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-dg2:          [PASS][234] -> [FAIL][235] ([fdo#103375]) +2 other tests fail
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#5460])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#3458]) +23 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#3023]) +9 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][239] ([fdo#110189]) +6 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([fdo#111825] / [i915#1825]) +13 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#5354]) +30 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][242] ([fdo#109271]) +144 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#1825]) +4 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8228]) +3 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#3555] / [i915#8228]) +2 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#3555] / [i915#8228])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@bad-source:
    - shard-rkl:          [PASS][247] -> [SKIP][248] ([i915#1845] / [i915#4098]) +15 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_pipe_crc_basic@bad-source.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_pipe_crc_basic@bad-source.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][249] ([fdo#109271]) +61 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-snb1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][250] ([i915#4573]) +1 other test fail
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][251] ([i915#4573]) +1 other test fail
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#3555] / [i915#8821])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#8806])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#3555] / [i915#8806])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][255] ([i915#8292])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [FAIL][256] ([i915#8292])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#3555] / [i915#4098] / [i915#8152])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#5176] / [i915#9423]) +3 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#4098] / [i915#6953] / [i915#8152])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#5235]) +23 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][262] ([i915#5235]) +19 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#5235]) +3 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#6524] / [i915#6805])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#6524])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][266] ([fdo#109271] / [i915#658]) +2 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
    - shard-glk:          NOTRUN -> [SKIP][267] ([fdo#109271] / [i915#658]) +2 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
    - shard-rkl:          NOTRUN -> [SKIP][268] ([fdo#111068] / [i915#658]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#658]) +3 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu:         NOTRUN -> [SKIP][270] ([fdo#109642] / [fdo#111068] / [i915#658])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@cursor_render:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#1072]) +4 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_psr@cursor_render.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#1072]) +9 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rotation_crc@bad-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#4235]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_rotation_crc@bad-tiling.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#4235] / [i915#5190])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_setmode@basic@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][275] ([i915#5465]) +1 other test fail
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-snb5/igt@kms_setmode@basic@pipe-a-vga-1.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#3555] / [i915#4098]) +2 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#3555] / [i915#4098])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][278] ([i915#9196])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1:
    - shard-apl:          [PASS][279] -> [FAIL][280] ([i915#9196])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][281] ([fdo#109271] / [i915#2437])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][282] ([fdo#109271] / [i915#2437])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([fdo#109289]) +1 other test skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#2436])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#7387])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@perf@global-sseu-config.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][286] -> [FAIL][287] ([i915#4349]) +3 other tests fail
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][288] ([fdo#112283])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][289] ([i915#6806])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [PASS][290] -> [SKIP][291] ([fdo#109295] / [i915#3291] / [i915#3708])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#3708])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#3291] / [i915#3708])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [PASS][294] -> [SKIP][295] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@prime_vgem@coherency-gtt.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#4818])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#2575]) +14 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:
    - shard-mtlp:         NOTRUN -> [SKIP][298] ([i915#2575]) +2 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pointer:
    - shard-tglu:         NOTRUN -> [SKIP][299] ([fdo#109315] / [i915#2575]) +2 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html

  * igt@v3d/v3d_submit_csd@multi-and-single-sync:
    - shard-apl:          NOTRUN -> [SKIP][300] ([fdo#109271]) +123 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl2/igt@v3d/v3d_submit_csd@multi-and-single-sync.html

  * igt@v3d/v3d_submit_csd@valid-multisync-submission:
    - shard-rkl:          NOTRUN -> [SKIP][301] ([fdo#109315]) +7 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@v3d/v3d_submit_csd@valid-multisync-submission.html

  * igt@vc4/vc4_lookup_fail@bad-color-write:
    - shard-mtlp:         NOTRUN -> [SKIP][302] ([i915#7711])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@vc4/vc4_lookup_fail@bad-color-write.html

  * igt@vc4/vc4_mmap@mmap-bo:
    - shard-rkl:          NOTRUN -> [SKIP][303] ([i915#7711]) +5 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@vc4/vc4_mmap@mmap-bo.html

  * igt@vc4/vc4_perfmon@create-single-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][304] ([i915#2575]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@vc4/vc4_perfmon@create-single-perfmon.html

  * igt@vc4/vc4_tiling@set-get:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#7711]) +8 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@vc4/vc4_tiling@set-get.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][306] ([i915#6268]) -> [PASS][307]
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - shard-rkl:          [SKIP][308] -> [PASS][309]
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][310] ([i915#2842]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][312] ([i915#2842]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [FAIL][314] ([i915#2842]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-rkl:          [SKIP][316] ([i915#3281]) -> [PASS][317] +10 other tests pass
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [DMESG-WARN][318] ([i915#4936] / [i915#5493]) -> [PASS][319]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_pread@snoop:
    - shard-rkl:          [SKIP][320] ([i915#3282]) -> [PASS][321] +8 other tests pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gem_pread@snoop.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_pread@snoop.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          [SKIP][322] ([i915#8411]) -> [PASS][323] +1 other test pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_workarounds@suspend-resume:
    - shard-mtlp:         [ABORT][324] ([i915#9414]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-3/igt@gem_workarounds@suspend-resume.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-rkl:          [SKIP][326] ([i915#2527]) -> [PASS][327] +1 other test pass
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gen9_exec_parse@bb-secure.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gen9_exec_parse@bb-secure.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [FAIL][328] ([i915#3591]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][330] ([i915#7790]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-snb5/igt@i915_pm_rps@reset.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][332] ([i915#4387]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@i915_pm_sseu@full-enable.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][334] ([i915#5138]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-rkl:          [SKIP][336] ([i915#1845] / [i915#4098]) -> [PASS][337] +26 other tests pass
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [FAIL][338] ([i915#3743]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - shard-rkl:          [SKIP][340] ([i915#4098]) -> [PASS][341] +9 other tests pass
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@kms_color@ctm-green-to-red@pipe-b.html

  * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
    - shard-glk:          [DMESG-WARN][342] ([i915#118]) -> [PASS][343]
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk6/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][344] ([i915#2346]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][346] ([i915#1849] / [i915#4098]) -> [PASS][347] +8 other tests pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          [INCOMPLETE][348] ([i915#9392]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * {igt@kms_plane@pixel-format@pipe-a}:
    - shard-rkl:          [INCOMPLETE][350] -> [PASS][351]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-2/igt@kms_plane@pixel-format@pipe-a.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_plane@pixel-format@pipe-a.html

  * {igt@kms_pm_rpm@dpms-lpsp}:
    - shard-dg1:          [SKIP][352] ([i915#9519]) -> [PASS][353] +2 other tests pass
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-13/igt@kms_pm_rpm@dpms-lpsp.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html

  * {igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait}:
    - shard-dg2:          [SKIP][354] ([i915#9519]) -> [PASS][355] +1 other test pass
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-rkl:          [SKIP][356] ([i915#9519]) -> [PASS][357] +2 other tests pass
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * {igt@kms_pm_rpm@pm-tiling}:
    - shard-rkl:          [SKIP][358] ([fdo#109308]) -> [PASS][359] +1 other test pass
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_pm_rpm@pm-tiling.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_pm_rpm@pm-tiling.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-rkl:          [SKIP][360] ([i915#1849]) -> [PASS][361] +1 other test pass
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-rkl:          [INCOMPLETE][362] ([i915#8875] / [i915#9475]) -> [PASS][363]
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][364] ([i915#7957]) -> [SKIP][365] ([i915#3555])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [SKIP][366] -> [FAIL][367] ([i915#2842])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_pread@exhaustion:
    - shard-rkl:          [SKIP][368] ([i915#3282]) -> [WARN][369] ([i915#2658])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gem_pread@exhaustion.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_pread@exhaustion.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][370] ([i915#9559]) -> [WARN][371] ([i915#7356])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_async_flips@crc@pipe-a-edp-1:
    - shard-mtlp:         [DMESG-FAIL][372] ([i915#8561]) -> [FAIL][373] ([i915#8247])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-8/igt@kms_async_flips@crc@pipe-a-edp-1.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-mtlp-4/igt@kms_async_flips@crc@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][374] ([i915#5286]) -> [SKIP][375] ([i915#4098]) +4 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          [SKIP][376] ([i915#4098]) -> [SKIP][377] ([i915#5286]) +3 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-rkl:          [SKIP][378] ([fdo#111614] / [i915#3638]) -> [SKIP][379] ([i915#1845] / [i915#4098]) +1 other test skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-270.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][380] ([i915#1845] / [i915#4098]) -> [SKIP][381] ([fdo#111614] / [i915#3638]) +3 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][382] ([fdo#110723]) -> [SKIP][383] ([i915#1845] / [i915#4098]) +3 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          [SKIP][384] ([i915#1845] / [i915#4098]) -> [SKIP][385] ([fdo#111615])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][386] ([fdo#111615]) -> [SKIP][387] ([i915#1845] / [i915#4098])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-rkl:          [SKIP][388] ([i915#1845] / [i915#4098]) -> [SKIP][389] ([fdo#110723]) +3 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          [SKIP][390] ([i915#1845] / [i915#4098]) -> [SKIP][391] ([i915#3116])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          [SKIP][392] ([i915#7118]) -> [SKIP][393] ([i915#1845] / [i915#4098]) +1 other test skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_content_protection@type1.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          [SKIP][394] ([i915#4098]) -> [SKIP][395] ([i915#3555]) +2 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-rkl:          [SKIP][396] ([i915#3555]) -> [SKIP][397] ([i915#4098]) +1 other test skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_cursor_crc@cursor-random-32x10.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][398] ([i915#1845] / [i915#4098]) -> [SKIP][399] ([fdo#111767] / [fdo#111825])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][400] ([fdo#111825]) -> [SKIP][401] ([i915#1845] / [i915#4098]) +3 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][402] ([i915#1845] / [i915#4098]) -> [SKIP][403] ([i915#4103]) +1 other test skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][404] ([i915#1845] / [i915#4098]) -> [SKIP][405] ([fdo#111825]) +3 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][406] ([i915#3555] / [i915#3840]) -> [SKIP][407] ([i915#4098])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_dsc@dsc-with-bpc-formats.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][408] ([i915#1849] / [i915#4098]) -> [SKIP][409] ([fdo#111825])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][410] ([i915#1849] / [i915#4098]) -> [SKIP][411] ([fdo#111825] / [i915#1825]) +30 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          [SKIP][412] ([i915#1849] / [i915#4098]) -> [SKIP][413] ([i915#3023]) +19 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          [SKIP][414] ([fdo#111825] / [i915#1825]) -> [SKIP][415] ([i915#1849] / [i915#4098]) +22 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-rkl:          [SKIP][416] ([i915#3023]) -> [SKIP][417] ([i915#1849] / [i915#4098]) +19 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          [SKIP][418] ([i915#3555] / [i915#8228]) -> [SKIP][419] ([i915#1845] / [i915#4098])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_hdr@bpc-switch-suspend.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          [SKIP][420] ([i915#1845] / [i915#4098]) -> [SKIP][421] ([i915#3555] / [i915#8228]) +2 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_hdr@static-swap.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@kms_hdr@static-swap.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][422] ([i915#1845] / [i915#4098]) -> [SKIP][423] ([i915#6301])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][424] ([i915#4098]) -> [SKIP][425] ([i915#5289])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_vrr@flip-basic:
    - shard-rkl:          [SKIP][426] ([i915#1845] / [i915#4098]) -> [SKIP][427] ([i915#3555]) +1 other test skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_vrr@flip-basic.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@kms_vrr@flip-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6892]: https://gitlab.freedesktop.org/drm/intel/issues/6892
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7356]: https://gitlab.freedesktop.org/drm/intel/issues/7356
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7892]: https://gitlab.freedesktop.org/drm/intel/issues/7892
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9364]: https://gitlab.freedesktop.org/drm/intel/issues/9364
  [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9475]: https://gitlab.freedesktop.org/drm/intel/issues/9475
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9559]: https://gitlab.freedesktop.org/drm/intel/issues/9559


Build changes
-------------

  * Linux: CI_DRM_13786 -> Patchwork_125583v1

  CI-20190529: 20190529
  CI_DRM_13786: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7557: 18fc864d68d382847596594d7eb3488f2c8fb45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125583v1: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/index.html

--===============7662208525323487257==
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
<tr><td><b>Series:</b></td><td>Add gt_to_guc and guc_to_i915 helpers</td></=
tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125583/">https://patchwork.freedesktop.org/series/125583/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125583v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125583v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13786_full -&gt; Patchwork_125583v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125583v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_125583v1_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
125583v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gem_ctx_persistence@legacy-engines-hang@blt.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125583v1/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt=
.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_render_copy@y-tiled-cc=
s-to-yf-tiled-mc-ccs.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125583v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13786/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13786/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/sha=
rd-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13786/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13786/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13786/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-ap=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3786/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html">PASS=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125583v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125583v1/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl1=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125583v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl1/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/s=
hard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125583v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25583v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125583v1/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125583v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/sh=
ard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125583v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5583v1/shard-apl6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125583v1/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125583v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/sh=
ard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125583v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5583v1/shard-apl7/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13786/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13786/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/sha=
rd-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13786/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/b=
oot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13786/shard-glk1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786=
/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13786/shard-glk8/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-gl=
k9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3786/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shar=
d-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13786/shard-glk8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125583v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-g=
lk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125583v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v=
1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125583v1/shard-glk4/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125583v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125583v1/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125583v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1=
/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125583v1/shard-glk2/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125583v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125583v1/shard-glk1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk=
1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125583v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk9/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125583v1/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-glk9/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@drm_fdinfo@isolation@rcs0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8414">i915#8414</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@drm_fdinfo@most-busy-chec=
k-all@bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8414">i915#8414</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125583v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742"=
>i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@fbdev@read.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@f=
bdev@read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_ccs@block-multicopy-co=
mpressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_create@create-ext-cpu=
-access-big.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9364">i915#9364</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_ctx_persistence@hang.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@gem_ctx_sseu@engines.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280"=
>i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-8/igt@gem_eio@in-flight-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/s=
hard-mtlp-4/igt@gem_eio@in-flight-suspend.html">ABORT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/7892">i915#7892</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gem_exec_balancer@invalid=
-bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@gem_exec_balancer@parallel=
-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_exec_fair@basic-none.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@gem_exec_fair@basic-none-=
share@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v=
1/shard-rkl-6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 oth=
er tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-s=
hare@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@gem_exec_fair@basic-thrott=
le.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_exec_fence@submit3.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
12">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gem_exec_flush@basic-batc=
h-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4852">i915#4852</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_exec_gttfill@multigpu-=
basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7697">i915#7697</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25583v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gem_exec_reloc@basic-wc.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gem_exec_schedule@semapho=
re-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_lmem_swapping@basic.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-glk8/igt@gem_lmem_swapping@massive-r=
andom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-apl3/igt@gem_lmem_swapping@verify.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_mmap_gtt@cpuset-medium=
-copy-xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4077">i915#4077</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_mmap_wc@close.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i9=
15#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_partial_pwrite_pread@=
reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-snb4/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@gem_pwrite@basic-random.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shar=
d-rkl-1/igt@gem_pwrite@basic-random.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_pxp@create-regular-co=
ntext-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gem_pxp@dmabuf-shared-pro=
tected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-t=
o-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_render_tiled_blits@bas=
ic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125583v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">i91=
5#8411</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110542">fdo#110542</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@gen7_exec_parse@basic-rej=
ected.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@gen7_exec_parse@oacontrol=
-tracking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>) +5 other tests skip</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13786/shard-apl2/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1=
/shard-apl6/igt@gen9_exec_parse@allowed-single.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</=
p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@gen9_exec_parse@basic-reje=
cted-ctx-param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583=
v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@i915_module_load@load.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/622=
7">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109293">fdo#109293</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@i915_pm_rps@min-max-config=
-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@i915_pm_rps@thresholds-id=
le-park@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@i915_power@sanity.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7984">i9=
15#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@i915_query@query-topology=
-unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_addfb_basic@basic-x-t=
iled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4212">i915#4212</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg1-19/igt@kms_async_flips@crc@pipe-=
c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125583v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_big_fb@x-tiled-16bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125583v1/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_big_fb@y-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +14 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110723">fdo#110723</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5190">i915#5190</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +18 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_cdclk@mode-transition=
@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/7213">i915#7213</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_cdclk@mode-transition=
@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_chamelium_color@ctm-0-=
50.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@kms_chamelium_color@ctm-re=
d-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_chamelium_edid@dp-mod=
e-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@kms_chamelium_edid@hdmi-ed=
id-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7828">i915#7828</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_chamelium_frames@hdmi=
-crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-s=
torm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color@pipe-a-hdmi-a-2-gamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_color@deep-color@pipe-=
a-hdmi-a-2-gamma.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/6892">i915#6892</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_color@degamma@pipe-a.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/sha=
rd-rkl-5/igt@kms_color@degamma@pipe-a.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-snb4/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-b-vga-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/8841">i915#8841</a>) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_cursor_legacy@cursorb=
-vs-flipa-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb=
-vs-flipa-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@=
drrs-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@=
fbc-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_flip@2x-blocking-abso=
lute-wf_vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-pannin=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +6 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_flip@flip-vs-expired-v=
blank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +9 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +16 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +18 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +7 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-p=
write.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125583v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb1010=
10-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-suspend.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125583v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html">FAIL</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#1=
03375</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +23 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +9 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +6 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +1=
3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +30 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-glk8/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +144 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@kms_hdr@invalid-metadata-si=
zes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8228">i915#8228</a>) +3 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_hdr@invalid-metadata-si=
zes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8228">i915#8228</a>) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_hdr@static-swap.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@bad-source:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_pipe_crc_basic@bad-source.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v=
1/shard-rkl-5/igt@kms_pipe_crc_basic@bad-source.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) =
+15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-snb1/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-nv12@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +61 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-glk8/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-apl3/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-c-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_plane_lowres@tiling-y=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8821">i915#8821</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-dp-4.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg1-19/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg1-12/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +23 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg1-13/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125583v1/shard-apl7/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125583v1/shard-glk2/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_psr@cursor_render.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072=
">i915#1072</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@kms_psr@psr2_sprite_plane=
_move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1072">i915#1072</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_rotation_crc@bad-tili=
ng.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-2/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-snb5/igt@kms_setmode@basic@pipe-a-vg=
a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5465">i915#5465</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@kms_setmode@invalid-clone-=
exclusive-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@kms_setmode@invalid-clone=
-single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@kms_universal_plane@curso=
r-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-apl4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125583v1/shard-apl7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-=
dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-apl3/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-glk8/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@perf@gen12-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@perf@gen8-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@perf@global-sseu-config.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/73=
87">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1255=
83v1/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) =
+3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@perf_pmu@event-wait@rcs0.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
2283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@perf_pmu@frequency@gt0.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/68=
06">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13786/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/s=
hard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</=
a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@prime_vgem@basic-write.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/32=
91">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/sha=
rd-rkl-4/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4818">i915#4818</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-11/igt@v3d/v3d_get_param@base-pa=
rams.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@v3d/v3d_job_submission@mu=
ltiple-singlesync-to-multisync.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pointer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@v3d/v3d_perfmon@get-value=
s-invalid-pointer.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@multi-and-single-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-apl2/igt@v3d/v3d_submit_csd@multi-an=
d-single-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +123 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@valid-multisync-submission:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@v3d/v3d_submit_csd@valid-m=
ultisync-submission.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109315">fdo#109315</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_lookup_fail@bad-color-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-mtlp-7/igt@vc4/vc4_lookup_fail@bad-c=
olor-write.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bo:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-7/igt@vc4/vc4_mmap@mmap-bo.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7711"=
>i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-single-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-tglu-3/igt@vc4/vc4_perfmon@create-si=
ngle-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-get:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-dg2-10/igt@vc4/vc4_tiling@set-get.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/77=
11">i915#7711</a>) +8 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125583v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">S=
KIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125583v1/shard-rkl-6/igt@gem_ctx_persistence@engines-hang@bcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13786/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125583v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13786/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125583v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25583v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25583v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html">PASS</a> +10 ot=
her tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936"=
>i915#4936</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125583v1/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gem_pread@snoop.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-=
rkl-5/igt@gem_pread@snoop.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">=
i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125583v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-3/igt@gem_workarounds@suspend-resume.html">ABORT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9=
414</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125583v1/shard-mtlp-7/igt@gem_workarounds@suspend-resume.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12558=
3v1/shard-rkl-5/igt@gen9_exec_parse@bb-secure.html">PASS</a> +1 other test =
pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i=
915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125583v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-snb5/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1=
/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583=
v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i9=
15#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125583v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i91=
5#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125583v1/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.htm=
l">PASS</a> +26 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-tglu-2/igt@kms_big_fb@x=
-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#=
4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125583v1/shard-rkl-6/igt@kms_color@ctm-green-to-red@pipe-b.html">PASS</a=
> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-glk8/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hd=
mi-a-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125583v1/shard-glk6/igt@kms_cursor_crc@cursor-slid=
ing-256x85@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-apl3/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_frontb=
uffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +8 ot=
her tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-=
1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9392">i915#9392</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125583v1/shard-apl7/igt@kms_pipe_crc_basic@suspend-re=
ad-crc@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane@pixel-format@pipe-a}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-2/igt@kms_plane@pixel-format@pipe-a.html">INCOMPLET=
E</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25583v1/shard-rkl-7/igt@kms_plane@pixel-format@pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-lpsp}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg1-13/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/=
shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +2 other tests pass</l=
i>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait}:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13786/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125583v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-=
wait.html">PASS</a> +1 other test pass</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13786/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/951=
9">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125583v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-w=
ait.html">PASS</a> +2 other tests pass</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@pm-tiling}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v=
1/shard-rkl-1/igt@kms_pm_rpm@pm-tiling.html">PASS</a> +1 other test pass</l=
i>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125583v1/shard-rkl-1/igt@kms_properties@plane-properties-legacy.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-27=
0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8875">i915#8875</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9475">i915#9475</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_rotation_crc@prima=
ry-y-tiled-reflect-x-270.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957">i915#7957=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25583v1/shard-rkl-1/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v=
1/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gem_pread@exhaustion.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/=
shard-rkl-5/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9559">i915#9559</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125583v1/shard-dg2-1/igt@i915_module_load@reload-with-f=
ault-injection.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7356">i915#7356</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-8/igt@kms_async_flips@crc@pipe-a-edp-1.html">DMESG=
-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561"=
>i915#8561</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125583v1/shard-mtlp-4/igt@kms_async_flips@crc@pipe-a-edp-1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i=
915#8247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#=
5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125583v1/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#40=
98</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-6/igt@kms_big_fb@4-til=
ed-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +3 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo=
#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125583v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-270.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125583v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">=
fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">f=
do#110723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125583v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#40=
98</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125583v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111615=
">fdo#111615</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125583v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotat=
e-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D110723">fdo#110723</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125583v1/shard-rkl-1/igt@kms_content_protection@dp-mst-type-0.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5583v1/shard-rkl-5/igt@kms_content_protection@type1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i9=
15#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125583v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915=
#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125583v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#=
4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
45">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125583v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cur=
sor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125583v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-=
legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_cursor_legacy@ba=
sic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flip=
a-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111825">fdo#111825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3840">i915=
#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125583v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptra=
ck-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-1/igt@kms_frontbuffer_tr=
acking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
pr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_frontbuf=
fer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825=
</a>) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-4/igt@kms_frontbuffer_tracki=
ng@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3023">i915#3023</a>) +19 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-=
indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_frontb=
uffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098<=
/a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-rend=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3023">i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125583v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-rgb5=
65-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8=
228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125583v1/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_hdr@static-swap.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
583v1/shard-rkl-6/igt@kms_hdr@static-swap.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1=
845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">=
i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125583v1/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6301">i91=
5#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125583v1/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled-ref=
lect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125583=
v1/shard-rkl-6/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 other test sk=
ip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13786 -&gt; Patchwork_125583v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13786: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7557: 18fc864d68d382847596594d7eb3488f2c8fb45e @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125583v1: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7662208525323487257==--
