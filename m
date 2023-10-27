Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC29E7D8FC5
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 09:26:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36C1C10E948;
	Fri, 27 Oct 2023 07:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DE8910E943;
 Fri, 27 Oct 2023 07:26:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2487AAADDD;
 Fri, 27 Oct 2023 07:26:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7615882011980425080=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Fri, 27 Oct 2023 07:26:26 -0000
Message-ID: <169839158609.19712.11411256559464888490@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231025-debugobjects_fix-v3-1-2bc3bf7084c2@intel.com>
In-Reply-To: <20231025-debugobjects_fix-v3-1-2bc3bf7084c2@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZGVi?=
 =?utf-8?q?ugobjects=3A_stop_accessing_objects_after_releasing_spinlock_?=
 =?utf-8?b?KHJldjMp?=
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

--===============7615882011980425080==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: debugobjects: stop accessing objects after releasing spinlock (rev3)
URL   : https://patchwork.freedesktop.org/series/124185/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13786_full -> Patchwork_124185v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124185v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124185v3_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 13)
------------------------------

  Additional (1): shard-mtlp0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124185v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][1] +5 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-dg2:          [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg2-6/igt@i915_pm_rc6_residency@rc6-fence.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-10/igt@i915_pm_rc6_residency@rc6-fence.html

  
#### Warnings ####

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][4] ([i915#3555]) -> [SKIP][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_color@deep-color.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_color@deep-color.html

  
Known issues
------------

  Here are the changes found in Patchwork_124185v3_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [FAIL][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53]) ([i915#8293])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl4/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl4/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [FAIL][65], [FAIL][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [FAIL][78]) ([i915#8293]) -> ([PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk9/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk9/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk9/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk9/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk8/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk8/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk8/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk8/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk6/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk6/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk4/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk4/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk3/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk3/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk3/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk3/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk2/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk2/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk1/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk1/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk1/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [PASS][104] -> [SKIP][105] ([i915#8411]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#7701])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@isolation@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#8414]) +5 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@drm_fdinfo@isolation@rcs0.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#8414]) +10 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][109] -> [FAIL][110] ([i915#7742])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@fbdev@pan:
    - shard-rkl:          [PASS][111] -> [SKIP][112] ([i915#2582])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-1/igt@fbdev@pan.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@fbdev@pan.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#7697]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#7957])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][115] ([i915#9364])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#6335])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#8562])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][118] -> [FAIL][119] ([i915#6268])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#8555])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#280])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@gem_ctx_sseu@engines.html
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#280])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#4771]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4036])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#4525])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#6344])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#4473] / [i915#4771])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][128] ([i915#2842])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3539]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4812])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3539] / [i915#4852]) +5 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-mtlp:         [PASS][132] -> [DMESG-FAIL][133] ([i915#8962])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-2/igt@gem_exec_flush@basic-uc-rw-default.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-4/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#7697]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([fdo#109283])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3281]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#3281])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [PASS][138] -> [SKIP][139] ([i915#3281]) +5 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3281]) +10 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#4537] / [i915#4812]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#4860])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#4860]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#4613])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-glk:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk9/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#4613])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@verify:
    - shard-apl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#4613]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl6/igt@gem_lmem_swapping@verify.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#4077]) +14 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#4083]) +4 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@gem_mmap_wc@close.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#3282]) +7 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pread@bench:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3282])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@gem_pread@bench.html

  * igt@gem_pread@self:
    - shard-rkl:          [PASS][152] -> [SKIP][153] ([i915#3282])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_pread@self.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@gem_pread@self.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][154] ([i915#2658])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-snb4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#4270])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#4270]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#4270]) +2 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#8428])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#4079]) +3 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#4885])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([fdo#110542])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#3297] / [i915#4880])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][163] ([i915#3318])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-mtlp:         NOTRUN -> [SKIP][164] ([fdo#109289]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([fdo#109289])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#2856]) +5 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [PASS][167] -> [SKIP][168] ([i915#2527])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@load:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#6227])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@i915_module_load@load.html
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#6227])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][171] -> [ABORT][172] ([i915#8489] / [i915#8668])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#6412])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-dg1:          [PASS][174] -> [FAIL][175] ([i915#3591])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([fdo#109293])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#6621])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#8925])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#7984])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@i915_power@sanity.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([fdo#109302])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@i915_query@query-topology-unsupported.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#4212]) +3 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@crc@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [FAIL][182] ([i915#8247]) +3 other tests fail
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg1-19/igt@kms_async_flips@crc@pipe-c-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#1769] / [i915#3555])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#1845] / [i915#4098]) +33 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([fdo#111614]) +6 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([fdo#111615] / [i915#5286])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#5286])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([fdo#111614])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-rkl:          [PASS][189] -> [SKIP][190] ([i915#1845] / [i915#4098]) +21 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([fdo#111614] / [i915#3638])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [FAIL][192] ([i915#3743])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][193] ([fdo#111614]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][194] -> [FAIL][195] ([i915#3743]) +1 other test fail
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#5190]) +18 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([fdo#111615])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([fdo#110723]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#4538] / [i915#5190]) +6 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([fdo#111615])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([fdo#111827]) +1 other test skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([fdo#111827]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#7828]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#7828]) +11 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#7828])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#7828]) +3 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_color@legacy-gamma-reset@pipe-b:
    - shard-rkl:          [PASS][207] -> [SKIP][208] ([i915#4098]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_color@legacy-gamma-reset@pipe-b.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_color@legacy-gamma-reset@pipe-b.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#7118]) +2 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#3555] / [i915#8814]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#3359]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#3555]) +5 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][213] ([i915#8841]) +2 other tests dmesg-warn
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-snb4/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#4103])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#4103] / [i915#4213] / [i915#5608])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([fdo#109274] / [i915#5354]) +6 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][217] ([fdo#109274]) +1 other test skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#3546])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#9226] / [i915#9261]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#9227])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#4098]) +54 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][222] ([fdo#109274] / [i915#3637]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-snb:          NOTRUN -> [SKIP][223] ([fdo#109271]) +60 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-snb2/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([fdo#109274]) +4 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([fdo#111825]) +6 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#3637] / [i915#4098]) +7 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1:
    - shard-mtlp:         [PASS][227] -> [DMESG-WARN][228] ([i915#9157])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#2672]) +3 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#3555]) +12 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#2672]) +6 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#2587] / [i915#2672])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [FAIL][233] ([i915#6880])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#8708]) +19 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([fdo#111825] / [i915#1825]) +7 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#1849] / [i915#4098]) +35 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][237] ([fdo#109280]) +7 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#8708]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-rkl:          [PASS][239] -> [SKIP][240] ([i915#1849] / [i915#4098]) +12 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#5460])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#3458]) +27 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#3023]) +2 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([fdo#110189]) +6 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#5354]) +38 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][246] ([fdo#109271]) +144 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#1825]) +4 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#3555] / [i915#8228])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#3555] / [i915#8228])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8228]) +3 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_hdr@static-toggle.html

  * igt@kms_invalid_mode@int-max-clock:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#3555] / [i915#4098]) +3 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][252] ([i915#4573]) +1 other test fail
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk9/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][253] ([i915#4573]) +1 other test fail
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl6/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#3555] / [i915#8821])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#8806])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#3555] / [i915#8806])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#6953])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][258] ([i915#8292])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
    - shard-dg1:          NOTRUN -> [FAIL][259] ([i915#8292])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#3555] / [i915#4098] / [i915#8152])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][261] ([i915#5176] / [i915#9423]) +3 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#6953] / [i915#8152])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#5235]) +19 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#5235]) +19 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#8152])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#5235]) +7 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#6524] / [i915#6805])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#6524])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][271] ([i915#6524])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#1849])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-apl:          NOTRUN -> [SKIP][273] ([fdo#109271] / [i915#658]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][274] ([fdo#109271] / [i915#658]) +2 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
    - shard-rkl:          NOTRUN -> [SKIP][275] ([fdo#111068] / [i915#658]) +1 other test skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#658]) +4 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu:         NOTRUN -> [SKIP][277] ([fdo#109642] / [fdo#111068] / [i915#658])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@cursor_render:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#1072]) +4 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_psr@cursor_render.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#1072]) +11 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rotation_crc@bad-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#4235]) +1 other test skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_rotation_crc@bad-tiling.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#4235] / [i915#5190])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#3555] / [i915#4098])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          NOTRUN -> [FAIL][283] ([IGT#2])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][284] ([i915#9196])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
    - shard-mtlp:         [PASS][285] -> [FAIL][286] ([i915#9196]) +1 other test fail
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][287] ([fdo#109271] / [i915#2437])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl6/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][288] ([fdo#109271] / [i915#2437])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk9/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen12-group-exclusive-stream-sample-oa:
    - shard-rkl:          [PASS][289] -> [SKIP][290] ([fdo#109289])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-1/igt@perf@gen12-group-exclusive-stream-sample-oa.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-sample-oa.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][291] ([fdo#109289]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#2436])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#7387])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@perf@global-sseu-config.html

  * igt@perf_pmu@busy-hang@rcs0:
    - shard-mtlp:         [PASS][294] -> [ABORT][295] ([i915#9414]) +1 other test abort
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-7/igt@perf_pmu@busy-hang@rcs0.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-1/igt@perf_pmu@busy-hang@rcs0.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([fdo#112283])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][297] ([i915#6806])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@render-node-busy@vcs0:
    - shard-mtlp:         [PASS][298] -> [FAIL][299] ([i915#4349]) +1 other test fail
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-8/igt@perf_pmu@render-node-busy@vcs0.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-7/igt@perf_pmu@render-node-busy@vcs0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-mtlp:         NOTRUN -> [SKIP][300] ([i915#3708])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#3291] / [i915#3708])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [PASS][302] -> [SKIP][303] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@prime_vgem@coherency-gtt.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#4818])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#2575]) +17 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:
    - shard-mtlp:         NOTRUN -> [SKIP][306] ([i915#2575]) +2 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pointer:
    - shard-tglu:         NOTRUN -> [SKIP][307] ([fdo#109315] / [i915#2575]) +2 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html

  * igt@v3d/v3d_submit_csd@multi-and-single-sync:
    - shard-apl:          NOTRUN -> [SKIP][308] ([fdo#109271]) +82 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl3/igt@v3d/v3d_submit_csd@multi-and-single-sync.html

  * igt@v3d/v3d_submit_csd@valid-multisync-submission:
    - shard-rkl:          NOTRUN -> [SKIP][309] ([fdo#109315]) +7 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@v3d/v3d_submit_csd@valid-multisync-submission.html

  * igt@vc4/vc4_lookup_fail@bad-color-write:
    - shard-mtlp:         NOTRUN -> [SKIP][310] ([i915#7711])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@vc4/vc4_lookup_fail@bad-color-write.html

  * igt@vc4/vc4_mmap@mmap-bo:
    - shard-rkl:          NOTRUN -> [SKIP][311] ([i915#7711]) +5 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@vc4/vc4_mmap@mmap-bo.html

  * igt@vc4/vc4_perfmon@create-single-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][312] ([i915#2575]) +1 other test skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@vc4/vc4_perfmon@create-single-perfmon.html

  * igt@vc4/vc4_tiling@set-get:
    - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#7711]) +10 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@vc4/vc4_tiling@set-get.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [FAIL][314] ([i915#7742]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][316] ([i915#6268]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][318] ([i915#2842]) -> [PASS][319]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-rkl:          [SKIP][320] ([i915#3281]) -> [PASS][321] +13 other tests pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_pread@snoop:
    - shard-rkl:          [SKIP][322] ([i915#3282]) -> [PASS][323] +9 other tests pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gem_pread@snoop.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_pread@snoop.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          [SKIP][324] ([i915#8411]) -> [PASS][325] +2 other tests pass
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_workarounds@suspend-resume:
    - shard-mtlp:         [ABORT][326] ([i915#9414]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-3/igt@gem_workarounds@suspend-resume.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-rkl:          [SKIP][328] ([i915#2527]) -> [PASS][329] +4 other tests pass
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gen9_exec_parse@bb-secure.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gen9_exec_parse@bb-secure.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][330] ([i915#9559]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][332] ([i915#7790]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-snb5/igt@i915_pm_rps@reset.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][334] ([i915#4387]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@i915_pm_sseu@full-enable.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][336] ([i915#5138]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-rkl:          [SKIP][338] ([i915#1845] / [i915#4098]) -> [PASS][339] +11 other tests pass
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][340] ([i915#3743]) -> [PASS][341] +1 other test pass
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_color@gamma@pipe-a:
    - shard-rkl:          [SKIP][342] ([i915#4098]) -> [PASS][343] +2 other tests pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_color@gamma@pipe-a.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_color@gamma@pipe-a.html

  * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
    - shard-glk:          [DMESG-WARN][344] ([i915#118]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk2/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][346] ([i915#2346]) -> [PASS][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-rkl:          [SKIP][348] ([i915#1849] / [i915#4098]) -> [PASS][349] +4 other tests pass
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * {igt@kms_plane@pixel-format@pipe-a}:
    - shard-rkl:          [INCOMPLETE][350] -> [PASS][351]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-2/igt@kms_plane@pixel-format@pipe-a.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_plane@pixel-format@pipe-a.html

  * {igt@kms_pm_dc@dc9-dpms}:
    - shard-tglu:         [SKIP][352] ([i915#4281]) -> [PASS][353]
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html

  * {igt@kms_pm_rpm@dpms-lpsp}:
    - shard-dg1:          [SKIP][354] ([i915#9519]) -> [PASS][355]
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-13/igt@kms_pm_rpm@dpms-lpsp.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html

  * {igt@kms_pm_rpm@modeset-lpsp-stress}:
    - shard-dg2:          [SKIP][356] ([i915#9519]) -> [PASS][357] +2 other tests pass
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * {igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait}:
    - shard-rkl:          [SKIP][358] ([i915#9519]) -> [PASS][359] +3 other tests pass
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * {igt@kms_pm_rpm@system-suspend-modeset}:
    - shard-rkl:          [SKIP][360] ([fdo#109308]) -> [PASS][361]
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_pm_rpm@system-suspend-modeset.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-rkl:          [SKIP][362] ([i915#1849]) -> [PASS][363] +1 other test pass
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_properties@plane-properties-legacy.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][364] ([i915#4349]) -> [PASS][365] +3 other tests pass
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg2-3/igt@perf_pmu@busy-double-start@vecs1.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@busy@vecs0:
    - shard-dg1:          [FAIL][366] ([i915#4349]) -> [PASS][367] +1 other test pass
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-14/igt@perf_pmu@busy@vecs0.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-dg1-12/igt@perf_pmu@busy@vecs0.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][368] ([i915#7957]) -> [SKIP][369] ([i915#3555])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][370] ([i915#3555]) -> [SKIP][371] ([i915#7957])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-1/igt@gem_ccs@block-multicopy-inplace.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][372] ([i915#4098] / [i915#9323]) -> [SKIP][373] ([i915#7957])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_pread@exhaustion:
    - shard-rkl:          [SKIP][374] ([i915#3282]) -> [WARN][375] ([i915#2658]) +1 other test warn
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@gem_pread@exhaustion.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_pread@exhaustion.html

  * igt@kms_async_flips@crc@pipe-a-edp-1:
    - shard-mtlp:         [DMESG-FAIL][376] ([i915#8561]) -> [FAIL][377] ([i915#8247])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-8/igt@kms_async_flips@crc@pipe-a-edp-1.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-7/igt@kms_async_flips@crc@pipe-a-edp-1.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][378] ([i915#8247]) -> [DMESG-FAIL][379] ([i915#8561])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][380] ([i915#4098]) -> [SKIP][381] ([i915#5286]) +1 other test skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][382] ([i915#5286]) -> [SKIP][383] ([i915#4098]) +6 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-rkl:          [SKIP][384] ([fdo#111614] / [i915#3638]) -> [SKIP][385] ([i915#1845] / [i915#4098]) +6 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][386] ([fdo#110723]) -> [SKIP][387] ([i915#1845] / [i915#4098]) +7 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          [SKIP][388] ([i915#1845] / [i915#4098]) -> [SKIP][389] ([fdo#111615])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][390] ([fdo#111615]) -> [SKIP][391] ([i915#1845] / [i915#4098])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-rkl:          [SKIP][392] ([i915#1845] / [i915#4098]) -> [SKIP][393] ([fdo#110723]) +1 other test skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][394] ([i915#3116]) -> [SKIP][395] ([i915#1845] / [i915#4098])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-0.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          [SKIP][396] ([i915#1845] / [i915#4098]) -> [SKIP][397] ([i915#3116])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic:
    - shard-rkl:          [SKIP][398] ([i915#7118]) -> [SKIP][399] ([i915#1845] / [i915#4098])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_content_protection@lic.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-rkl:          [SKIP][400] ([i915#3555]) -> [SKIP][401] ([i915#4098]) +5 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-size.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          [SKIP][402] ([i915#3359]) -> [SKIP][403] ([i915#4098])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][404] ([fdo#111825]) -> [SKIP][405] ([i915#1845] / [i915#4098]) +5 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][406] ([i915#4103]) -> [SKIP][407] ([i915#1845] / [i915#4098]) +1 other test skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-rkl:          [SKIP][408] ([i915#1845] / [i915#4098]) -> [SKIP][409] ([fdo#111825])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][410] ([i915#1845] / [i915#4098]) -> [SKIP][411] ([i915#4103])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][412] ([i915#3555] / [i915#3840]) -> [SKIP][413] ([i915#4098]) +1 other test skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_dsc@dsc-with-bpc-formats.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][414] ([i915#1849] / [i915#4098]) -> [SKIP][415] ([fdo#111825])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          [SKIP][416] ([i915#3023]) -> [SKIP][417] ([i915#1849] / [i915#4098]) +29 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][418] ([i915#1849] / [i915#4098]) -> [SKIP][419] ([fdo#111825] / [i915#1825]) +14 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          [SKIP][420] ([i915#1849] / [i915#4098]) -> [SKIP][421] ([i915#3023]) +8 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          [SKIP][422] ([fdo#111825] / [i915#1825]) -> [SKIP][423] ([i915#1849] / [i915#4098]) +41 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          [SKIP][424] ([i915#1845] / [i915#4098]) -> [SKIP][425] ([i915#3555] / [i915#8228])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          [SKIP][426] ([i915#3555] / [i915#8228]) -> [SKIP][427] ([i915#1845] / [i915#4098]) +1 other test skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][428] ([i915#4098]) -> [SKIP][429] ([i915#5289])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-rkl:          [INCOMPLETE][430] ([i915#8875] / [i915#9475]) -> [SKIP][431] ([i915#1845] / [i915#4098])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-rkl:          [SKIP][432] ([i915#4098]) -> [SKIP][433] ([i915#3555])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_scaling_modes@scaling-mode-none.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_vrr@flip-dpms:
    - shard-rkl:          [SKIP][434] ([i915#3555]) -> [SKIP][435] ([i915#1845] / [i915#4098])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_vrr@flip-dpms.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_vrr@flip-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
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
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
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
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
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
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9157]: https://gitlab.freedesktop.org/drm/intel/issues/9157
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9364]: https://gitlab.freedesktop.org/drm/intel/issues/9364
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9475]: https://gitlab.freedesktop.org/drm/intel/issues/9475
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9559]: https://gitlab.freedesktop.org/drm/intel/issues/9559


Build changes
-------------

  * Linux: CI_DRM_13786 -> Patchwork_124185v3

  CI-20190529: 20190529
  CI_DRM_13786: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7557: 18fc864d68d382847596594d7eb3488f2c8fb45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124185v3: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/index.html

--===============7615882011980425080==
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
<tr><td><b>Series:</b></td><td>debugobjects: stop accessing objects after r=
eleasing spinlock (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/124185/">https://patchwork.freedesktop.org/series/124185/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124185v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13786_full -&gt; Patchwork_124185v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124185v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_124185v3_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 13)</h2>
<p>Additional (1): shard-mtlp0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
124185v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_render_copy@y-tiled-mc=
-ccs-to-y-tiled-ccs.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg2-6/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12418=
5v3/shard-dg2-10/igt@i915_pm_rc6_residency@rc6-fence.html">INCOMPLETE</a></=
li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_color@deep-color:<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@kms_color@deep-color.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/=
shard-rkl-5/igt@kms_color@deep-color.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124185v3_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13786/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13786/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13786/shard-apl6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13786/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13786/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786=
/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13786/shard-apl1/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-ap=
l2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3786/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13786/shard-apl3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl4/boot.html">PASS=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124185v3/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124185v3/shard-apl7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl7=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_124185v3/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl7/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/s=
hard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_124185v3/shard-apl6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl6/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
24185v3/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124185v3/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124185v3/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/sh=
ard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_124185v3/shard-apl3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl3/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4185v3/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_124185v3/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124185v3/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/sh=
ard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_124185v3/shard-apl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-apl1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4185v3/shard-apl1/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedeskt=
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
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13786/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13786/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13786/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786=
/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13786/shard-glk9/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-gl=
k9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3786/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shar=
d-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13786/shard-glk6/boot.html">FAIL</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124185v3/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-g=
lk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_124185v3/shard-glk8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v=
3/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_124185v3/shard-glk8/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124185v3/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_124185v3/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_124185v3/shard-glk4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3=
/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124185v3/shard-glk3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_124185v3/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_124185v3/shard-glk2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124185v3/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_124185v3/shard-glk1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk1/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
24185v3/shard-rkl-4/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@drm_fdinfo@isolation@rcs0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8414">i915#8414</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@drm_fdinfo@most-busy-check=
-all@bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8414">i915#8414</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124185v3/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742"=
>i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-1/igt@fbdev@pan.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@fb=
dev@pan.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_ccs@block-multicopy-co=
mpressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7957">i915#7957</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_create@create-ext-cpu-=
access-big.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9364">i915#9364</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12418=
5v3/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_ctx_persistence@hang.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280">=
i915#280</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280">=
i915#280</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@gem_exec_balancer@parallel=
-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_exec_fair@basic-none.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@gem_exec_fair@basic-none-=
share@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_exec_fair@basic-thrott=
le.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_exec_fence@submit3.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/481=
2">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4852">i915#4852</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-2/igt@gem_exec_flush@basic-uc-rw-default.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
24185v3/shard-mtlp-4/igt@gem_exec_flush@basic-uc-rw-default.html">DMESG-FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8962">i91=
5#8962</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@gem_exec_gttfill@multigpu-=
basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7697">i915#7697</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_exec_reloc@basic-gtt-=
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
24185v3/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_exec_reloc@basic-wc.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/32=
81">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_fenced_exec_thrash@no-=
spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_lmem_swapping@basic.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-glk9/igt@gem_lmem_swapping@massive-r=
andom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-apl6/igt@gem_lmem_swapping@verify.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@gem_mmap_gtt@cpuset-medium=
-copy-xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4077">i915#4077</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@gem_mmap_wc@close.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i9=
15#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_partial_pwrite_pread@r=
eads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@gem_pread@bench.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915=
#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@gem_pread@self.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4=
/igt@gem_pread@self.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-snb4/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_pxp@create-regular-co=
ntext-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gem_render_copy@y-tiled-t=
o-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4079">i915#4079</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110542">fdo#110542</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@gen7_exec_parse@basic-rej=
ected.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@gen7_exec_parse@oacontrol-=
tracking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185=
v3/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@i915_module_load@load.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6227=
">i915#6227</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@i915_module_load@load.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6227=
">i915#6227</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_124185v3/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8489">i915#8489</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124185v3/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#35=
91</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109293">fdo#109293</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@i915_pm_rps@min-max-config=
-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@i915_pm_rps@thresholds-idl=
e-park@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@i915_power@sanity.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7984">i9=
15#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_addfb_basic@basic-x-ti=
led-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4212">i915#4212</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg1-19/igt@kms_async_flips@crc@pipe-=
c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_atomic_transition@plan=
e-use-after-nonblocking-unbind.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +33 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_big_fb@4-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_big_fb@4-tiled-8bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_big_fb@x-tiled-16bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
185v3/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#40=
98</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_big_fb@y-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other test fail</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +18 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110723">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5190">i915#5190</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_chamelium_color@ctm-0-=
50.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@kms_chamelium_color@ctm-re=
d-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_chamelium_edid@dp-mod=
e-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@kms_chamelium_edid@hdmi-ed=
id-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7828">i915#7828</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_chamelium_frames@hdmi=
-crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-s=
torm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma-reset@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@kms_color@legacy-gamma-reset@pipe-b.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
24185v3/shard-rkl-5/igt@kms_color@legacy-gamma-reset@pipe-b.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-snb4/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-b-vga-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/8841">i915#8841</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_cursor_legacy@cursorb-=
vs-flipa-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +6 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_cursor_legacy@cursorb=
-vs-flipa-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_cursor_legacy@cursorb=
-vs-flipa-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@=
drrs-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@=
fbc-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_flip@2x-blocking-abso=
lute-wf_vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-snb2/igt@kms_flip@2x-flip-vs-dpms.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_flip@2x-flip-vs-pannin=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +6 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_flip@bo-too-big-interr=
uptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124185v3/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9157">i915#9157</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +12 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-1p-offscren-pri-shrfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +19 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +7 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +35 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +7 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
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
tip/Patchwork_124185v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb1010=
10-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bc-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +27 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +6 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +38 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-glk9/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +144 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_hdr@invalid-hdr.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_hdr@static-swap.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_hdr@static-toggle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8228">i915#8228</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_invalid_mode@int-max-c=
lock.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-glk9/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-apl6/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-c-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8821">i915#8821</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_plane_scaling@intel-max=
-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8292">i915#8292</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-dg1-19/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8292">i915#8292</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg1-17/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) =
+19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg1-13/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-5-upscale-20x20.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-=
hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-75.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-20x20.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_prime@basic-crc-vgem.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_properties@crtc-proper=
ties-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-apl6/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-glk4/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_psr2_sf@overlay-primary=
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
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_psr2_su@page_flip-nv1=
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
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@kms_psr@cursor_render.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072=
">i915#1072</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_psr@psr2_sprite_plane_=
move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1072">i915#1072</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_rotation_crc@bad-tilin=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-5/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@kms_setmode@invalid-clone-=
single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@kms_sysfs_edid_timing.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/iss=
ues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@kms_universal_plane@curso=
r-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_124185v3/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-apl6/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-glk9/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-sample-oa:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-1/igt@perf@gen12-group-exclusive-stream-sample-oa.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124185v3/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-sample-oa=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@perf@gen12-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@perf@global-sseu-config.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/73=
87">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-7/igt@perf_pmu@busy-hang@rcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/sha=
rd-mtlp-1/igt@perf_pmu@busy-hang@rcs0.html">ABORT</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>) +1 other test a=
bort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@perf_pmu@event-wait@rcs0.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
2283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/680=
6">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@render-node-busy@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-8/igt@perf_pmu@render-node-busy@vcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12418=
5v3/shard-mtlp-7/igt@perf_pmu@render-node-busy@vcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) +1=
 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@prime_vgem@basic-fence-re=
ad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@prime_vgem@basic-write.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/329=
1">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/sha=
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
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4818">i915#4818</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-2/igt@v3d/v3d_get_param@base-par=
ams.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@v3d/v3d_job_submission@mu=
ltiple-singlesync-to-multisync.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pointer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@v3d/v3d_perfmon@get-value=
s-invalid-pointer.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@multi-and-single-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-apl3/igt@v3d/v3d_submit_csd@multi-an=
d-single-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +82 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@valid-multisync-submission:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@v3d/v3d_submit_csd@valid-m=
ultisync-submission.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109315">fdo#109315</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_lookup_fail@bad-color-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-mtlp-2/igt@vc4/vc4_lookup_fail@bad-c=
olor-write.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bo:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-7/igt@vc4/vc4_mmap@mmap-bo.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7711"=
>i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-single-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-tglu-8/igt@vc4/vc4_perfmon@create-si=
ngle-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-get:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-dg2-1/igt@vc4/vc4_tiling@set-get.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/771=
1">i915#7711</a>) +10 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v=
3/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124185v3/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124185v3/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
24185v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html">PASS</a> +13 ot=
her tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gem_pread@snoop.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-=
rkl-5/igt@gem_pread@snoop.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">=
i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124185v3/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.htm=
l">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-3/igt@gem_workarounds@suspend-resume.html">ABORT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9=
414</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124185v3/shard-mtlp-2/igt@gem_workarounds@suspend-resume.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12418=
5v3/shard-rkl-5/igt@gen9_exec_parse@bb-secure.html">PASS</a> +4 other tests=
 pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9559">i915#9559</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124185v3/shard-dg2-11/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-snb5/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3=
/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185=
v3/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i9=
15#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124185v3/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">P=
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
/Patchwork_124185v3/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.htm=
l">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_124185v3/shard-tglu-10/igt@kms_big_fb@y-tile=
d-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_color@gamma@pipe-a.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3=
/shard-rkl-4/igt@kms_color@gamma@pipe-a.html">PASS</a> +2 other tests pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-glk8/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hd=
mi-a-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_124185v3/shard-glk2/igt@kms_cursor_crc@cursor-slid=
ing-256x85@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-glk6/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fb=
c-rgb565-draw-render.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_plane@pixel-format@pipe-a}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-2/igt@kms_plane@pixel-format@pipe-a.html">INCOMPLET=
E</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
24185v3/shard-rkl-7/igt@kms_plane@pixel-format@pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc9-dpms}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/=
shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-lpsp}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg1-13/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/=
shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-lpsp-stress}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#951=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124185v3/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> +2 =
other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_124185v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-=
wait.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@system-suspend-modeset}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#=
109308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_124185v3/shard-rkl-4/igt@kms_pm_rpm@system-suspend-modeset.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124185v3/shard-rkl-4/igt@kms_properties@plane-properties-legacy.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg2-3/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124185v3/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> =
+3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-dg1-14/igt@perf_pmu@busy@vecs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/=
shard-dg1-12/igt@perf_pmu@busy@vecs0.html">PASS</a> +1 other test pass</li>
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
24185v3/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-1/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#35=
55</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_124185v3/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957">i915#7957</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#409=
8</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9323">i9=
15#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124185v3/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957">i915#79=
57</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@gem_pread@exhaustion.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/=
shard-rkl-5/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>) +1 other test war=
n</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-8/igt@kms_async_flips@crc@pipe-a-edp-1.html">DMESG=
-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561"=
>i915#8561</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_124185v3/shard-mtlp-7/igt@kms_async_flips@crc@pipe-a-edp-1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i=
915#8247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#=
8247</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124185v3/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561">i=
915#8561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">=
i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124185v3/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb-size-overflow.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/528=
6">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4098">i915#4098</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fd=
o#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_124185v3/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4098">i915#4098</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">f=
do#110723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124185v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) +7 other tests skip</li>
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
_124185v3/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href=
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
/Patchwork_124185v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow=
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
/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-0.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3116=
">i915#3116</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124185v3/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>)</li>
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
p/Patchwork_124185v3/shard-rkl-4/igt@kms_content_protection@dp-mst-type-0.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_content_protection@lic.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1241=
85v3/shard-rkl-5/igt@kms_content_protection@lic.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-size.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124185v3/shard-rkl-5/igt@kms_cursor_crc@cursor-random-max-size.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3359">i915#3359</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_124185v3/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement=
-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_124185v3/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-=
legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4103">i915#4103</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flip=
b-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4=
/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-var=
ying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4103">i915#4103</a>)</li>
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
ork_124185v3/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>) +1 other test skip</li>
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
i.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_frontbuffer_tr=
acking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-=
multidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3023">i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +29 other tests ski=
p</li>
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
-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_frontbuf=
fer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825=
</a>) +14 other tests skip</li>
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
.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-4/igt@kms_frontbuffer_tracki=
ng@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3023">i915#3023</a>) +8 other tests skip</li>
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
el-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_frontb=
uffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098<=
/a>) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4=
098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124185v3/shard-rkl-4/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i91=
5#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_124185v3/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_124185v3/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-ref=
lect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5289">i915#5289</a>)</li>
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
.org/tree/drm-tip/Patchwork_124185v3/shard-rkl-5/igt@kms_rotation_crc@prima=
ry-y-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-5/igt@kms_scaling_modes@scaling-mode-none.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_124185v3/shard-rkl-4/igt@kms_scaling_modes@scaling-mode-none.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13786/shard-rkl-6/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124185v3/shar=
d-rkl-5/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13786 -&gt; Patchwork_124185v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13786: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7557: 18fc864d68d382847596594d7eb3488f2c8fb45e @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124185v3: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7615882011980425080==--
