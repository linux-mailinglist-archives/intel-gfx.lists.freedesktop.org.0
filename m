Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0747DA4DA
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Oct 2023 04:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A38FE10E142;
	Sat, 28 Oct 2023 02:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65A9F10E142;
 Sat, 28 Oct 2023 02:37:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C3A6AADE0;
 Sat, 28 Oct 2023 02:37:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6244483474543357014=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Date: Sat, 28 Oct 2023 02:37:11 -0000
Message-ID: <169846063132.21162.14141669701231233203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231018113622.2761997-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20231018113622.2761997-1-chaitanya.kumar.borah@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Support_HBR3_rate_with_C10_phy_and_eDP_in_MTL_=28r?=
 =?utf-8?q?ev2=29?=
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

--===============6244483474543357014==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Support HBR3 rate with C10 phy and eDP in MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/125293/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13783_full -> Patchwork_125293v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125293v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125293v2_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 12)
------------------------------

  Additional (1): shard-mtlp0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125293v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_hangman@gt-engine-error@bcs0:
    - shard-rkl:          [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html

  * igt@kms_plane@plane-position-hole:
    - shard-rkl:          NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_plane@plane-position-hole.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          [INCOMPLETE][4] ([i915#9408]) -> [ABORT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg1-12/igt@device_reset@unbind-reset-rebind.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          [SKIP][6] ([i915#3936]) -> [SKIP][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg2-7/igt@gem_busy@semaphore.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-10/igt@gem_busy@semaphore.html
    - shard-dg1:          [SKIP][8] ([i915#3936]) -> [SKIP][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg1-17/igt@gem_busy@semaphore.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg1-19/igt@gem_busy@semaphore.html
    - shard-mtlp:         [SKIP][10] ([i915#3936]) -> [SKIP][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-6/igt@gem_busy@semaphore.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-mtlp-8/igt@gem_busy@semaphore.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][12] ([i915#2842]) -> [SKIP][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_125293v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38]) -> ([PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [FAIL][50], [PASS][51], [PASS][52], [FAIL][53], [PASS][54], [FAIL][55], [PASS][56], [FAIL][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63]) ([i915#8293])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl3/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl3/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl3/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl4/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl4/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl4/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl4/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [FAIL][72], [PASS][73], [PASS][74], [FAIL][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88]) ([i915#8293]) -> ([PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk9/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk9/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk9/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk9/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk8/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk8/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk8/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk8/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk7/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk5/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk5/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk5/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk4/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk4/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk4/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk4/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk3/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk3/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk3/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk2/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk2/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk2/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk2/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk2/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk1/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk4/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk4/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk3/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk3/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk3/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk2/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk2/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk2/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk1/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk1/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk9/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk9/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk9/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk8/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk8/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk8/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk6/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk6/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk6/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk6/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk5/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk5/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#8411])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#8411])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#7701])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#8414]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#7697])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - shard-rkl:          [PASS][119] -> [SKIP][120] ([i915#6252]) +1 other test skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#8555]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#5882]) +9 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#280])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@hog:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4812])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][125] -> [FAIL][126] ([i915#2842])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][127] ([i915#2842])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][128] -> [FAIL][129] ([i915#2842]) +1 other test fail
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-glk:          NOTRUN -> [FAIL][130] ([i915#2842])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3539] / [i915#4852]) +3 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3539]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#3281]) +18 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [PASS][134] -> [SKIP][135] ([i915#3281]) +7 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-scanout@bcs0:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3639]) +3 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_exec_reloc@basic-scanout@bcs0.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#3281]) +2 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@noreorder-priority@ccs0:
    - shard-mtlp:         [PASS][138] -> [ABORT][139] ([i915#8962] / [i915#9414])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-3/igt@gem_exec_schedule@noreorder-priority@ccs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-mtlp-4/igt@gem_exec_schedule@noreorder-priority@ccs0.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#4537] / [i915#4812])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-dg2:          [PASS][141] -> [FAIL][142] ([fdo#103375])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg2-11/igt@gem_exec_suspend@basic-s3@smem.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-5/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][143] ([i915#7975] / [i915#8213]) +1 other test abort
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [PASS][144] -> [ABORT][145] ([i915#7975] / [i915#8213])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4860]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#4613])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-snb:          NOTRUN -> [SKIP][148] ([fdo#109271]) +11 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-snb1/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#8289])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#4077]) +11 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#4083]) +5 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_mmap_wc@close.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-rkl:          [PASS][152] -> [SKIP][153] ([i915#3282])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@gem_partial_pwrite_pread@write-uncached.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pwrite@basic-random:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#3282]) +5 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#4270])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#4270]) +2 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#4270])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#768]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#4079]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#3282])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3297]) +3 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][162] ([i915#3318])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([fdo#109289]) +8 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][164] -> [INCOMPLETE][165] ([i915#5566])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk2/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#2527])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [PASS][167] -> [SKIP][168] ([i915#2527]) +3 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#2856]) +3 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#4881])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@i915_fb_tiling.html

  * igt@i915_module_load@load:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#6227])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@i915_module_load@load.html
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#6227])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@i915_module_load@load.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#7091])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-glk:          NOTRUN -> [SKIP][174] ([fdo#109271]) +77 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk5/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [PASS][175] -> [FAIL][176] ([i915#3591])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#6621])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][178] -> [INCOMPLETE][179] ([i915#7790])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-snb4/igt@i915_pm_rps@reset.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#8925])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [PASS][181] -> [SKIP][182] ([i915#4387])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#6245])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@mock@memory_region:
    - shard-glk:          NOTRUN -> [DMESG-WARN][184] ([i915#9311])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk5/igt@i915_selftest@mock@memory_region.html
    - shard-dg2:          NOTRUN -> [DMESG-WARN][185] ([i915#9311])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][186] -> [FAIL][187] ([fdo#103375])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#4212])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][189] ([i915#8247]) +3 other tests fail
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_async_flips@crc@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [FAIL][190] ([i915#8247]) +3 other tests fail
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg1-19/igt@kms_async_flips@crc@pipe-c-hdmi-a-1.html

  * igt@kms_atomic@crtc-invalid-params-fence:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#1845] / [i915#4098]) +11 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_atomic@crtc-invalid-params-fence.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][192] -> [FAIL][193] ([i915#5138])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#5286]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([fdo#111615] / [i915#5286])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([fdo#111614]) +5 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([fdo#111614])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][198] -> [FAIL][199] ([i915#3743])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#5190]) +16 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#4538] / [i915#5190]) +6 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([fdo#111615])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([fdo#110723])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#2705])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#2705])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#3742])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#4087] / [i915#7213]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([fdo#111827]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#7828]) +11 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#7828]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#7828])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_color@gamma@pipe-a:
    - shard-rkl:          [PASS][212] -> [SKIP][213] ([i915#4098]) +7 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-4/igt@kms_color@gamma@pipe-a.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_color@gamma@pipe-a.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#3116] / [i915#3299])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#3299]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#7118]) +1 other test skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#7118])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#3359]) +3 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#3555]) +4 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          NOTRUN -> [SKIP][220] ([fdo#109271]) +13 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-rkl:          [PASS][221] -> [SKIP][222] ([i915#1845] / [i915#4098]) +26 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([fdo#109274] / [i915#5354]) +4 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [PASS][225] -> [FAIL][226] ([i915#2346])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [PASS][227] -> [DMESG-WARN][228] ([i915#2017])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-8/igt@kms_cursor_legacy@single-move@all-pipes.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#4098]) +21 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#3555] / [i915#3840]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#3555] / [i915#3840])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([fdo#109274] / [fdo#111767]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#8381])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([fdo#109274]) +5 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
    - shard-tglu:         NOTRUN -> [SKIP][235] ([fdo#109274] / [i915#3637]) +2 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([fdo#111825])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@modeset-vs-vblank-race:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#3637] / [i915#4098]) +5 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_flip@modeset-vs-vblank-race.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#2672])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#3555]) +9 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#2672]) +4 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#5354]) +35 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#8708]) +26 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-rkl:          [PASS][243] -> [SKIP][244] ([i915#1849] / [i915#4098]) +18 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([fdo#110189]) +4 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([fdo#111825] / [i915#1825]) +6 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][247] ([fdo#109280]) +7 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#3023]) +4 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#3458]) +20 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8228]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#3555] / [i915#8228])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][252] ([fdo#109289]) +2 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#3555] / [i915#8806])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][254] ([i915#8292])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#8152]) +1 other test skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#5176] / [i915#9423]) +3 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#4098] / [i915#6953] / [i915#8152]) +2 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#5235]) +11 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#5235]) +9 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#5235]) +15 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#3555] / [i915#4098] / [i915#8152]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-rkl:          [PASS][263] -> [SKIP][264] ([i915#1849]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_properties@plane-properties-legacy.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([fdo#111068] / [i915#658])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][266] ([i915#658])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-glk:          NOTRUN -> [SKIP][267] ([fdo#109271] / [i915#658]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk9/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#658]) +3 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_dpms:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#1072]) +8 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@sprite_blt:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#1072])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_psr@sprite_blt.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#5289])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#4235] / [i915#5190])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#3555] / [i915#4098]) +2 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#3555] / [i915#4098])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:
    - shard-snb:          [PASS][275] -> [FAIL][276] ([i915#9196])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1:
    - shard-apl:          [PASS][277] -> [FAIL][278] ([i915#9196])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [PASS][279] -> [FAIL][280] ([i915#9196])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][281] ([i915#8724])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([fdo#109289])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#7387])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@perf@global-sseu-config-invalid.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][284] -> [FAIL][285] ([i915#4349]) +1 other test fail
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-1/igt@perf_pmu@busy-double-start@bcs0.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#8850])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][287] ([fdo#112283]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][288] ([i915#6806])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#3291] / [i915#3708])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          [PASS][290] -> [SKIP][291] ([fdo#109295] / [i915#3291] / [i915#3708])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@prime_vgem@basic-write.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#3708] / [i915#4077])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][293] ([fdo#109295] / [i915#3708])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@prime_vgem@fence-flip-hang.html

  * igt@runner@aborted:
    - shard-tglu:         NOTRUN -> [FAIL][294] ([i915#7812])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-9/igt@runner@aborted.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-rkl:          NOTRUN -> [SKIP][295] ([fdo#109315]) +2 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_perfmon@create-single-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][296] ([fdo#109315] / [i915#2575])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@v3d/v3d_perfmon@create-single-perfmon.html

  * igt@v3d/v3d_wait_bo@bad-pad:
    - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#2575]) +13 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@v3d/v3d_wait_bo@bad-pad.html

  * igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
    - shard-tglu:         NOTRUN -> [SKIP][298] ([i915#2575]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#7711]) +10 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@vc4/vc4_tiling@get-bad-handle.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
    - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#7711]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html

  
#### Possible fixes ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [SKIP][301] ([i915#8411]) -> [PASS][302] +2 other tests pass
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][303] ([i915#7742]) -> [PASS][304] +1 other test pass
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@fbdev@pan:
    - shard-rkl:          [SKIP][305] ([i915#2582]) -> [PASS][306] +2 other tests pass
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@fbdev@pan.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@fbdev@pan.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          [SKIP][307] ([i915#3281]) -> [PASS][308] +8 other tests pass
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@gem_bad_reloc@negative-reloc-lut.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-rkl:          [FAIL][309] ([i915#2842]) -> [PASS][310]
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@gem_exec_fair@basic-none@vcs0.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][311] ([i915#2842]) -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][313] ([i915#2842]) -> [PASS][314]
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-tglu:         [INCOMPLETE][315] ([i915#6755] / [i915#7392]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-tglu-3/igt@gem_exec_whisper@basic-fds-priority-all.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [DMESG-WARN][317] ([i915#4936] / [i915#5493]) -> [PASS][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][319] ([i915#3282]) -> [PASS][320] +6 other tests pass
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          [SKIP][321] ([i915#2527]) -> [PASS][322] +3 other tests pass
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@gen9_exec_parse@valid-registers.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-dg1:          [FAIL][323] ([i915#3591]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_power@sanity:
    - shard-rkl:          [SKIP][325] ([i915#7984]) -> [PASS][326]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@i915_power@sanity.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@i915_power@sanity.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][327] ([i915#5138]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][329] ([i915#3743]) -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * {igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs}:
    - shard-rkl:          [SKIP][331] ([i915#4098]) -> [PASS][332] +7 other tests pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][333] ([i915#1845] / [i915#4098]) -> [PASS][334] +15 other tests pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][335] ([i915#2346]) -> [PASS][336]
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          [FAIL][337] ([i915#2346]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-rkl:          [SKIP][339] ([i915#1849] / [i915#4098]) -> [PASS][340] +6 other tests pass
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * {igt@kms_pm_dc@dc5-dpms-negative}:
    - shard-rkl:          [SKIP][341] -> [PASS][342]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_pm_dc@dc5-dpms-negative.html

  * {igt@kms_pm_rpm@modeset-lpsp-stress}:
    - shard-rkl:          [SKIP][343] ([i915#9519]) -> [PASS][344] +2 other tests pass
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * {igt@kms_pm_rpm@modeset-non-lpsp-stress}:
    - shard-dg1:          [SKIP][345] ([i915#9519]) -> [PASS][346] +1 other test pass
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg1-18/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-dp-1:
    - shard-apl:          [FAIL][347] ([i915#9196]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-dp-1.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-dp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][349] ([i915#9196]) -> [PASS][350]
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:
    - shard-apl:          [INCOMPLETE][351] -> [PASS][352]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html

  * igt@perf@mi-rpc:
    - shard-rkl:          [SKIP][353] ([i915#2434]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-4/igt@perf@mi-rpc.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@perf@mi-rpc.html

  * igt@perf_pmu@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][355] ([i915#4349]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@perf_pmu@most-busy-check-all@rcs0.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@perf_pmu@most-busy-check-all@rcs0.html

  
#### Warnings ####

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][357] ([i915#9323]) -> [SKIP][358] ([i915#7957]) +1 other test skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@gem_ccs@suspend-resume.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][359] ([i915#3282]) -> [WARN][360] ([i915#2658])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][361] ([i915#2527]) -> [SKIP][362] ([i915#2532])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [WARN][363] ([i915#7356]) -> [DMESG-WARN][364] ([i915#9559])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          [SKIP][365] ([i915#1845] / [i915#4098]) -> [SKIP][366] ([i915#9531])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][367] ([i915#5286]) -> [SKIP][368] ([i915#4098]) +7 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][369] ([i915#4098]) -> [SKIP][370] ([i915#5286]) +4 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          [SKIP][371] ([fdo#111614] / [i915#3638]) -> [SKIP][372] ([i915#1845] / [i915#4098]) +1 other test skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          [SKIP][373] ([i915#1845] / [i915#4098]) -> [SKIP][374] ([fdo#111614] / [i915#3638]) +4 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][375] ([fdo#110723]) -> [SKIP][376] ([i915#1845] / [i915#4098]) +5 other tests skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][377] ([i915#1845] / [i915#4098]) -> [SKIP][378] ([fdo#110723]) +3 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][379] ([fdo#111615]) -> [SKIP][380] ([i915#1845] / [i915#4098]) +1 other test skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][381] ([i915#1845] / [i915#4098]) -> [SKIP][382] ([i915#3116])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          [SKIP][383] ([i915#7118]) -> [SKIP][384] ([i915#1845] / [i915#4098])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_content_protection@type1.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-rkl:          [SKIP][385] ([i915#4098]) -> [SKIP][386] ([i915#3555]) +1 other test skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          [SKIP][387] ([i915#3555]) -> [SKIP][388] ([i915#4098]) +7 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          [SKIP][389] ([i915#4098]) -> [SKIP][390] ([i915#3359])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          [SKIP][391] ([i915#3359]) -> [SKIP][392] ([i915#4098])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-rkl:          [SKIP][393] ([i915#1845] / [i915#4098]) -> [SKIP][394] ([fdo#111825])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][395] ([i915#1845] / [i915#4098]) -> [SKIP][396] ([i915#4103])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][397] ([i915#4103]) -> [SKIP][398] ([i915#1845] / [i915#4098]) +1 other test skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-rkl:          [SKIP][399] ([fdo#111825]) -> [SKIP][400] ([i915#1845] / [i915#4098]) +4 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-rkl:          [SKIP][401] ([i915#1845] / [i915#4098]) -> [SKIP][402] ([fdo#111767] / [fdo#111825])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-rkl:          [SKIP][403] ([fdo#111767] / [fdo#111825]) -> [SKIP][404] ([i915#1845] / [i915#4098])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][405] ([i915#3555] / [i915#3840]) -> [SKIP][406] ([i915#4098])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_dsc@dsc-basic.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][407] ([i915#3955]) -> [SKIP][408] ([fdo#110189] / [i915#3955])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_fbcon_fbt@psr.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][409] ([fdo#111825]) -> [SKIP][410] ([i915#1849] / [i915#4098])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][411] ([fdo#111825] / [i915#1825]) -> [SKIP][412] ([i915#1849] / [i915#4098]) +46 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][413] ([i915#1849] / [i915#4098]) -> [SKIP][414] ([fdo#111825])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          [SKIP][415] ([i915#3023]) -> [SKIP][416] ([i915#1849] / [i915#4098]) +26 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][417] ([i915#1849] / [i915#4098]) -> [SKIP][418] ([i915#5439])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          [SKIP][419] ([i915#1849] / [i915#4098]) -> [SKIP][420] ([i915#3023]) +17 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][421] ([i915#1849] / [i915#4098]) -> [SKIP][422] ([fdo#111825] / [i915#1825]) +26 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          [SKIP][423] ([i915#3555] / [i915#8228]) -> [SKIP][424] ([i915#1845] / [i915#4098])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_hdr@bpc-switch.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][425] ([i915#3555] / [i915#8228]) -> [SKIP][426] ([i915#4098])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_hdr@invalid-hdr.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_hdr@invalid-hdr.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][427] ([i915#5289]) -> [SKIP][428] ([i915#4098])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          [SKIP][429] ([i915#1845] / [i915#4098]) -> [SKIP][430] ([fdo#111615] / [i915#5289])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_vrr@flip-basic:
    - shard-rkl:          [SKIP][431] ([i915#3555]) -> [SKIP][432] ([i915#1845] / [i915#4098]) +2 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_vrr@flip-basic.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_vrr@flip-basic.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][433] ([i915#9351]) -> [INCOMPLETE][434] ([i915#5493])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
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
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
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
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7356]: https://gitlab.freedesktop.org/drm/intel/issues/7356
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
  [i915#9559]: https://gitlab.freedesktop.org/drm/intel/issues/9559


Build changes
-------------

  * Linux: CI_DRM_13783 -> Patchwork_125293v2

  CI-20190529: 20190529
  CI_DRM_13783: effc8753aee06b5bd8f6f93dcdee9bb759efc8e7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7552: 557856802dfee103802f1157f97c65bb476d5468 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125293v2: effc8753aee06b5bd8f6f93dcdee9bb759efc8e7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/index.html

--===============6244483474543357014==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Support HBR3 rate with C10 phy=
 and eDP in MTL (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125293/">https://patchwork.freedesktop.org/series/125293/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125293v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13783_full -&gt; Patchwork_125293v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125293v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_125293v2_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): shard-mtlp0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
125293v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
293v2/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_plane@plane-position-h=
ole.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg1-12/igt@device_reset@unbind-reset-rebind.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9408"=
>i915#9408</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125293v2/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html">A=
BORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-dg2-7/igt@gem_busy@semaphore.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3936">i915#3936</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shar=
d-dg2-10/igt@gem_busy@semaphore.html">SKIP</a></p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-dg1-17/igt@gem_busy@semaphore.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3936">i915#3936</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/sha=
rd-dg1-19/igt@gem_busy@semaphore.html">SKIP</a></p>
</li>
<li>
<p>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-mtlp-6/igt@gem_busy@semaphore.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3936">i915#3936</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/sha=
rd-mtlp-8/igt@gem_busy@semaphore.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25293v2/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125293v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13783/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13783/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13783/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13783/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13783/shard-apl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-ap=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3783/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shar=
d-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13783/shard-apl7/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
293v2/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125293v2/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125293v2/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/sh=
ard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125293v2/shard-apl2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5293v2/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125293v2/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl3/=
boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125293v2/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/sh=
ard-apl3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125293v2/shard-apl4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl4/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5293v2/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125293v2/shard-apl4/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125293v2/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/sh=
ard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125293v2/shard-apl7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl1/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13783/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13783/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13783/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13783/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk7/boot.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13783/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13783/shard-glk5/boot.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13783/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3783/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13783/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13783/shard-glk1/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk5/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125293v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk4/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-g=
lk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125293v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v=
2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125293v2/shard-glk2/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125293v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125293v2/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-gl=
k1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125293v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk9/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2=
/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125293v2/shard-glk9/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk8/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125293v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125293v2/shard-glk8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125293v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk6/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125293v2/shard-glk5/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk5/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@drm_fdinfo@virtual-busy-h=
ang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8414">i915#8414</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125293v2/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#=
6252</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@gem_ctx_persistence@satur=
ated-hostile-nopreempt@ccs0.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5882">i915#5882</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_exec_balancer@hog.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4812=
">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
293v2/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@gem_exec_fair@basic-none-v=
ip@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
293v2/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>) +1 other test fail</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/shard-glk9/igt@gem_exec_fair@basic-pace-sol=
o@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_exec_flush@basic-uc-ro=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4852">i915#4852</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_exec_flush@basic-uc-se=
t-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25293v2/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_exec_reloc@basic-scano=
ut@bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3639">i915#3639</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-priority@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-3/igt@gem_exec_schedule@noreorder-priority@ccs0.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125293v2/shard-mtlp-4/igt@gem_exec_schedule@noreorder-priority@ccs0.h=
tml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8962">i915#8962</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9414">i915#9414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg2-11/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12529=
3v2/shard-dg2-5/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@gem_exec_suspend@basic-s4-=
devices@lmem0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8213">i915#8213</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125293v2/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">=
ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975"=
>i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_fenced_exec_thrash@no-=
spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-glk5/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-snb1/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_media_fill@media-fill.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-co=
py-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4077">i915#4077</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_mmap_wc@close.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i9=
15#4083</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@gem_partial_pwrite_pread@write-uncached.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125293v2/shard-rkl-1/igt@gem_partial_pwrite_pread@write-uncached.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i=
915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@gem_pwrite@basic-random.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@gem_pxp@create-protected-b=
uffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_pxp@dmabuf-shared-prote=
cted-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4270">i915#4270</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_render_copy@y-tiled-to=
-vebox-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/768">i915#768</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@gem_set_tiling_vs_blt@unti=
led-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-glk2/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v=
2/shard-glk2/igt@gen9_exec_parse@allowed-single.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293=
v2/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@i915_fb_tiling.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#=
4881</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@i915_module_load@load.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6227=
">i915#6227</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6227"=
>i915#6227</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-glk5/igt@i915_pm_freq_api@freq-reset=
-multiple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a>) +77 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125293v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#=
3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@i915_pm_rps@basic-api.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6621=
">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-snb4/=
igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7790">i915#7790</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@i915_pm_rps@thresholds-par=
k@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/sha=
rd-rkl-4/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@i915_query@hwconfig_table.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/shard-glk5/igt@i915_selftest@mock@memory_re=
gion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9311">i915#9311</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9311">i915#9311</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5293v2/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@kms_addfb_basic@bo-too-sma=
ll-due-to-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg1-19/igt@kms_async_flips@crc@pipe-=
c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_atomic@crtc-invalid-pa=
rams-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125293v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#51=
38</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111614">fdo#111614</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_big_fb@y-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-9/igt@kms_big_fb@y-tiled-m=
ax-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +16 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5190">i915#5190</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_big_joiner@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705"=
>i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_big_joiner@invalid-mod=
eset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_cdclk@mode-transition=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_chamelium_frames@dp-cr=
c-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7828">i915#7828</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_chamelium_frames@hdmi-=
frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_chamelium_hpd@hdmi-hp=
d-for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-4/igt@kms_color@gamma@pipe-a.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard=
-rkl-5/igt@kms_color@gamma@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +7 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-5/igt@kms_content_protection@leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_content_protection@uev=
ent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-apl7/igt@kms_cursor_legacy@2x-long-n=
onblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +13 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-after-cursor-var=
ying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-aft=
er-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4098">i915#4098</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125293v2/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-8/igt@kms_cursor_legacy@single-move@all-pipes.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125293v2/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/38=
40">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-blocki=
ng-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111767">fdo#111767</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-fence=
s-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning=
-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +5 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_flip@2x-flip-vs-pannin=
g-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3637">i915#3637</a>) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_flip@2x-nonexisting-fb=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_flip@modeset-vs-vblank=
-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +9 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) =
+4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>) +35 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8708">i915#8708</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125293v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-dra=
w-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +4 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +6=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +7 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3023">i915#3023</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3458">i915#3458</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_pipe_b_c_ivb@pipe-b-d=
pms-off-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109289">fdo#109289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-dp-4.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_plane_scaling@invalid-=
parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg1-13/igt@kms_plane_scaling@plane-s=
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
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/8152">i915#8152</a>) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-=
hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg1-19/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +9=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +15 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_plane_scaling@planes-s=
caler-unity-scaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_properties@plane-properties-legacy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125293v2/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i91=
5#1849</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-u=
pdate-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@kms_psr2_sf@overlay-plane=
-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-glk9/igt@kms_psr2_su@frontbuffer-xrg=
b8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/658">i915#658</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/658">i915#658</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@kms_psr@psr2_dpms.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i9=
15#1072</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_psr@sprite_blt.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i=
915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@kms_setmode@basic-clone-si=
ngle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_setmode@invalid-clone-=
single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125293v2/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a=
-vga-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-apl6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125293v2/shard-apl7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-=
dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125293v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@perf@enable-disable@0-rcs=
0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8724">i915#8724</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@perf@gen12-oa-tlb-invalida=
te.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@perf@global-sseu-config-i=
nvalid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-1/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1252=
93v2/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) =
+1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8850=
">i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
2283">fdo#112283</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/680=
6">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-2/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard=
-rkl-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@prime_vgem@coherency-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-9/igt@runner@aborted.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7812">i915=
#7812</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@v3d/v3d_get_param@base-par=
ams.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-single-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@v3d/v3d_perfmon@create-si=
ngle-perfmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@bad-pad:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-3/igt@v3d/v3d_wait_bo@bad-pad.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/25=
75">i915#2575</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@vc4/vc4_purgeable_bo@acce=
ss-purgeable-bo-mem.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-dg2-11/igt@vc4/vc4_tiling@get-bad-ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-0ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@vc4/vc4_wait_seqno@bad-seq=
no-0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">i91=
5#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125293v2/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html">PAS=
S</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i91=
5#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125293v2/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@fbdev@pan.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7=
/igt@fbdev@pan.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3=
281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125293v2/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html">PASS</a> =
+8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25293v2/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125293v2/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125293v2/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-tglu-3/igt@gem_exec_whisper@basic-fds-priority-all.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6755">i915#6755</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7392">i915#7392</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125293v2/shard-tglu-7/igt@gem_exec_whisper@basic-fds-=
priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936"=
>i915#4936</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125293v2/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@gem_partial_pwrite_pread@wri=
tes-after-reads-uncached.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@gen9_exec_parse@valid-registers.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#25=
27</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125293v2/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html">PASS</a> +3=
 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i9=
15#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125293v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@i915_power@sanity.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/7984">i915#7984</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shar=
d-rkl-5/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125293v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125293v2/shard-tglu-8/igt@kms_big_fb@x-tiled=
-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12=
-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-for=
mat-y-tiled-gen12-rc-ccs.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-at=
omic.html">PASS</a> +15 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125293v2/shard-apl3/igt@kms_cursor_legacy@f=
lip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125293v2/shard-glk8/igt@kms_cursor_legacy@f=
lip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_frontbuffer_tracki=
ng@fbc-rgb101010-draw-mmap-gtt.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc5-dpms-negative}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/=
shard-rkl-1/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-lpsp-stress}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#951=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125293v2/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> +2 o=
ther tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp-stress}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i91=
5#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125293v2/shard-dg1-18/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-apl6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-dp-1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125293v2/shard-apl7/igt@kms_universal_plane@cursor-fb-leak@p=
ipe-b-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-ed=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125293v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-l=
eak@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a=
-dp-1.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125293v2/shard-apl7/igt@kms_vblank@ts-continuation-dpms=
-suspend@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-4/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2434">i915#2434</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-=
5/igt@perf@mi-rpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@perf_pmu@most-busy-check-all@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#=
4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125293v2/shard-rkl-4/igt@perf_pmu@most-busy-check-all@rcs0.html">PASS</a=
></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9323">i915#9323</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2=
/shard-rkl-5/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7957">i915#7957</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
293v2/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
293v2/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2532">i915#2532</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.=
html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7356">i915#7356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125293v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-=
injection.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9559">i915#9559</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_atomic@plane-primary-over=
lay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#=
5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125293v2/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#40=
98</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo#=
111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/363=
8">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125293v2/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125293v2/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">=
fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3638">i915#3638</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">f=
do#110723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125293v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i91=
5#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125293v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1107=
23">fdo#110723</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111615=
">fdo#111615</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125293v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845=
">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-=
type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5293v2/shard-rkl-5/igt@kms_content_protection@type1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098=
">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125293v2/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-max-size=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125293v2/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125293v2/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement=
-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3359">i=
915#3359</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125293v2/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x512.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
45">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_cursor_legacy@2x-cursor-vs-f=
lip-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_cursor_legacy@ba=
sic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4103">i915#4103</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_cursor_legacy@ba=
sic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-si=
ze.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-f=
lipb-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-tra=
nsitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_cursor_legacy@cur=
sorb-vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1117=
67">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-=
flipb-toggle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v=
2/shard-rkl-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shar=
d-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptra=
ck-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_frontbuffer_tracki=
ng@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
pr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_frontb=
uffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098<=
/a>) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-flip=
track-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_frontbuffer=
_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3023">i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc=
psr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4098">i915#4098</a>) +26 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849=
">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-ti=
ling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-1/igt@kms_frontbuffer_t=
racking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +17 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/shard-rkl-7/igt@kms_frontbu=
ffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#182=
5</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293=
v2/shard-rkl-5/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
293v2/shard-rkl-5/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-18=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125293v2/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-r=
eflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-2=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125293v2/shard-rkl-4/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125293v2/sha=
rd-rkl-5/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +2 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">CRASH</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9351">i915#9351</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125293v2/shard-dg2-1/igt@prime_mmap@test_aperture=
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
<li>Linux: CI_DRM_13783 -&gt; Patchwork_125293v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13783: effc8753aee06b5bd8f6f93dcdee9bb759efc8e7 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7552: 557856802dfee103802f1157f97c65bb476d5468 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125293v2: effc8753aee06b5bd8f6f93dcdee9bb759efc8e7 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6244483474543357014==--
