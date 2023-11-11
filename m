Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E767E88F7
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Nov 2023 04:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD29A10E10E;
	Sat, 11 Nov 2023 03:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 119A810E10E;
 Sat, 11 Nov 2023 03:40:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C90EAADF0;
 Sat, 11 Nov 2023 03:40:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7619551931834775915=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Sat, 11 Nov 2023 03:40:33 -0000
Message-ID: <169967403359.383.15796305981780077621@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231110101020.4067342-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231110101020.4067342-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_DSC_fractional_bpp_support_=28rev10=29?=
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

--===============7619551931834775915==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add DSC fractional bpp support (rev10)
URL   : https://patchwork.freedesktop.org/series/111391/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13863_full -> Patchwork_111391v10_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/index.html

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111391v10_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_pm_rpm@fences}:
    - shard-rkl:          [SKIP][1] ([i915#1849]) -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_pm_rpm@fences.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_pm_rpm@fences.html

  
Known issues
------------

  Here are the changes found in Patchwork_111391v10_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [FAIL][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#8293]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl1/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl1/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl1/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl1/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl1/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl1/boot.html
    - shard-glk:          ([PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [FAIL][74], [PASS][75], [PASS][76], [PASS][77]) ([i915#8293]) -> ([PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk8/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk8/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk8/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk2/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk3/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk3/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk3/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk2/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk2/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk5/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk5/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk5/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk6/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk6/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk6/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk8/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk9/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk9/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk9/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk9/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk8/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk8/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk8/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk8/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk6/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk5/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk5/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk4/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk4/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk3/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk3/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk3/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk3/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk2/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#8411]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          [PASS][104] -> [SKIP][105] ([i915#8411])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#7701])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#7701])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-rkl:          [PASS][108] -> [FAIL][109] ([i915#4778])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#8414]) +20 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][111] -> [FAIL][112] ([i915#7742])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-hang-all:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#8414])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@drm_fdinfo@virtual-busy-hang-all.html

  * igt@fbdev@unaligned-read:
    - shard-rkl:          [PASS][114] -> [SKIP][115] ([i915#2582]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@fbdev@unaligned-read.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@fbdev@unaligned-read.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3936])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_busy@semaphore.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#4098] / [i915#9323])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#9323])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-mtlp:         [PASS][119] -> [ABORT][120] ([i915#9414]) +2 other tests abort
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-5/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#8555])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][122] -> [ABORT][123] ([i915#7975] / [i915#8213] / [i915#8398])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-tglu-7/igt@gem_eio@hibernate.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-tglu-10/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4812])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-apl:          NOTRUN -> [FAIL][125] ([i915#9606])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl7/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][126] ([i915#2846])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][127] ([i915#2842])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][128] ([i915#2842])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk8/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3539]) +2 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3539] / [i915#4852]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3281])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3281]) +12 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-rkl:          [PASS][133] -> [SKIP][134] ([i915#3281]) +4 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read.html
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#3281]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#4537] / [i915#4812])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg1:          [PASS][137] -> [DMESG-WARN][138] ([i915#4423])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-dg1-16/igt@gem_exec_suspend@basic-s0@lmem0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg1-13/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#4860])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-apl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#4613]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][141] -> [TIMEOUT][142] ([i915#5493])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_vme:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#284])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@flink-race:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#4077]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@gem_mmap_gtt@flink-race.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4077]) +8 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4083]) +4 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#4083])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#3282]) +4 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pread@exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#3282])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite_snooped:
    - shard-rkl:          [PASS][150] -> [SKIP][151] ([i915#3282])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@gem_pwrite_snooped.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_pwrite_snooped.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#4270]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#4270]) +3 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#4270])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][155] ([fdo#109271]) +43 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk8/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#768]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#8428])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#4885])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#4079]) +4 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#3297])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3297]) +2 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#3297] / [i915#4880]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#2527])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#2856]) +4 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [PASS][165] -> [SKIP][166] ([i915#2527]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#2856])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-dg1:          [PASS][168] -> [FAIL][169] ([i915#3591])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8925])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#4387])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#6188])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-rkl:          [PASS][173] -> [SKIP][174] ([fdo#109315]) +9 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@i915_suspend@fence-restore-untiled.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#4212])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#4212]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#4212] / [i915#5608])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][178] ([i915#8247]) +3 other tests fail
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][179] ([i915#8247]) +3 other tests fail
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg1-15/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#9531])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-transition-fencing:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#1845] / [i915#4098]) +15 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_atomic_transition@plane-all-transition-fencing.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#5286])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][183] -> [FAIL][184] ([i915#5138])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([fdo#111614]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_big_fb@linear-32bpp-rotate-270.html
    - shard-rkl:          NOTRUN -> [SKIP][186] ([fdo#111614] / [i915#3638])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-rkl:          [PASS][187] -> [SKIP][188] ([i915#1845] / [i915#4098]) +23 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([fdo#111614])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#5190]) +13 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([fdo#111615]) +2 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#4538] / [i915#5190]) +7 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([fdo#110723]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#2705])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_big_joiner@basic.html
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#2705])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_joiner@basic.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#4087] / [i915#7213]) +3 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([fdo#111827])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([fdo#111827]) +2 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@dp-edid-resolution-list:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#7828]) +2 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_chamelium_edid@dp-edid-resolution-list.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#7828]) +13 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - shard-rkl:          [PASS][201] -> [SKIP][202] ([i915#4098]) +5 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_color@ctm-green-to-red@pipe-b.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#7118]) +2 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#7118])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][205] ([i915#7173])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#3299])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#3359]) +2 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3359])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([fdo#109274] / [i915#5354]) +3 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#3546])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#4103] / [i915#4213])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#8588])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#3804])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#3555]) +5 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#8812])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#3555] / [i915#3840])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#4881])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([fdo#111825]) +3 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-snb:          NOTRUN -> [SKIP][220] ([fdo#109271]) +12 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-snb2/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-apl:          NOTRUN -> [SKIP][221] ([fdo#109271] / [fdo#111767])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#8381])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-snb:          NOTRUN -> [SKIP][223] ([fdo#109271] / [fdo#111767])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-snb2/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([fdo#109274]) +6 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#3637] / [i915#4098]) +8 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#2672])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#2672]) +4 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#2672])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#3555]) +6 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][230] ([i915#2672] / [i915#3555])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_tiling@flip-change-tiling:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#3555] / [i915#4098]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_flip_tiling@flip-change-tiling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([fdo#109285])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#5274])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          [PASS][234] -> [FAIL][235] ([i915#6880])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [PASS][236] -> [SKIP][237] ([i915#1849] / [i915#4098]) +13 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([fdo#111825] / [i915#1825]) +10 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#8708])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [SKIP][240] ([fdo#109271]) +80 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#3023]) +5 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#5354]) +41 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#5460])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#3458]) +18 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#1825]) +4 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#8708]) +17 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#3555] / [i915#8228])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-swap:
    - shard-mtlp:         NOTRUN -> [SKIP][248] ([i915#3555] / [i915#8228])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#3555] / [i915#8228]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_hdr@static-toggle.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([fdo#109289]) +3 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane@plane-panning-bottom-right:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#4098] / [i915#8825])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][252] ([i915#5176] / [i915#9423]) +3 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#6953] / [i915#8152])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#5235]) +7 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][257] ([i915#5235]) +11 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-apl:          NOTRUN -> [SKIP][258] ([fdo#109271] / [i915#658]) +2 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#658]) +1 other test skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-mtlp:         NOTRUN -> [SKIP][260] ([i915#4348])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@cursor_mmap_cpu:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#1072]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_psr@cursor_mmap_cpu.html

  * igt@kms_psr@psr2_dpms:
    - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#1072]) +8 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#5461] / [i915#658])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#5461] / [i915#658])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#4235])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#4235] / [i915#5190])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#3555] / [i915#4098]) +3 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          NOTRUN -> [FAIL][268] ([IGT#2])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][269] -> [FAIL][270] ([i915#9196])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#4098]) +15 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#2436])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@invalid-oa-metric-set-id:
    - shard-rkl:          [PASS][273] -> [SKIP][274] ([i915#5608])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@perf@invalid-oa-metric-set-id.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@perf@invalid-oa-metric-set-id.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][275] -> [FAIL][276] ([i915#7484])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-hang@rcs0:
    - shard-mtlp:         [PASS][277] -> [FAIL][278] ([i915#4349])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-mtlp-5/igt@perf_pmu@busy-hang@rcs0.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-7/igt@perf_pmu@busy-hang@rcs0.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          NOTRUN -> [CRASH][279] ([i915#9351])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#3708] / [i915#4077])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#3708])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@prime_vgem@fence-write-hang.html
    - shard-rkl:          NOTRUN -> [SKIP][282] ([fdo#109295] / [i915#3708])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:
    - shard-glk:          NOTRUN -> [FAIL][283] ([i915#9583])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk8/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled.html

  * igt@syncobj_timeline@single-wait-available-signaled:
    - shard-rkl:          [PASS][284] -> [SKIP][285] ([i915#2575])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@syncobj_timeline@single-wait-available-signaled.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@syncobj_timeline@single-wait-available-signaled.html

  * igt@v3d/v3d_submit_cl@valid-multisync-submission:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#2575]) +15 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@v3d/v3d_submit_cl@valid-multisync-submission.html

  * igt@v3d/v3d_submit_cl@valid-submission:
    - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#2575]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@v3d/v3d_submit_cl@valid-submission.html

  * igt@v3d/v3d_submit_csd@bad-multisync-out-sync:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([fdo#109315]) +4 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@v3d/v3d_submit_csd@bad-multisync-out-sync.html

  * igt@vc4/vc4_create_bo@create-bo-zeroed:
    - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#7711])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@vc4/vc4_create_bo@create-bo-zeroed.html

  * igt@vc4/vc4_perfmon@get-values-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#7711]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@vc4/vc4_perfmon@get-values-valid-perfmon.html

  * igt@vc4/vc4_wait_bo@unused-bo-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#7711]) +7 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@vc4/vc4_wait_bo@unused-bo-1ns.html

  
#### Possible fixes ####

  * igt@fbdev@info:
    - shard-rkl:          [SKIP][292] ([i915#1849] / [i915#2582]) -> [PASS][293]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@fbdev@info.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@fbdev@info.html

  * igt@gem_busy@close-race:
    - shard-mtlp:         [INCOMPLETE][294] -> [PASS][295]
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-mtlp-4/igt@gem_busy@close-race.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_busy@close-race.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][296] ([i915#7297]) -> [PASS][297]
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-rkl:          [SKIP][298] ([i915#6252]) -> [PASS][299]
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@hibernate:
    - shard-mtlp:         [ABORT][300] ([i915#7975] / [i915#8213] / [i915#9414]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-mtlp-2/igt@gem_eio@hibernate.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][302] ([i915#2842]) -> [PASS][303]
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][304] ([i915#2842]) -> [PASS][305] +2 other tests pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          [SKIP][306] ([fdo#109313]) -> [PASS][307]
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [SKIP][308] ([i915#3282]) -> [PASS][309]
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@gem_partial_pwrite_pread@reads.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          [SKIP][310] ([i915#3281]) -> [PASS][311] +6 other tests pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-1/igt@gem_userptr_blits@relocations.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          [SKIP][312] ([i915#2527]) -> [PASS][313] +3 other tests pass
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-1/igt@gen9_exec_parse@allowed-all.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-dg1:          [FAIL][314] ([i915#3591]) -> [PASS][315] +1 other test pass
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-rkl:          [WARN][316] ([i915#2681]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][318] ([i915#3743]) -> [PASS][319] +3 other tests pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_color@legacy-gamma-reset@pipe-b:
    - shard-rkl:          [SKIP][320] ([i915#4098]) -> [PASS][321] +3 other tests pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_color@legacy-gamma-reset@pipe-b.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_color@legacy-gamma-reset@pipe-b.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][322] ([i915#1845] / [i915#4098]) -> [PASS][323] +8 other tests pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][324] ([i915#2346]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [SKIP][326] ([i915#1849] / [i915#4098]) -> [PASS][327] +4 other tests pass
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [FAIL][328] ([i915#6880]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * {igt@kms_pm_dc@dc6-dpms}:
    - shard-tglu:         [FAIL][330] ([i915#9295]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html

  * {igt@kms_pm_rpm@fences-dpms}:
    - shard-rkl:          [SKIP][332] ([i915#1849]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_pm_rpm@fences-dpms.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_pm_rpm@fences-dpms.html

  * {igt@kms_pm_rpm@modeset-lpsp-stress}:
    - shard-rkl:          [SKIP][334] ([i915#9519]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [FAIL][336] ([i915#9196]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [FAIL][338] ([i915#9196]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  * {igt@kms_vblank@ts-continuation-dpms-suspend@pipe-c-dp-1}:
    - shard-apl:          [INCOMPLETE][340] ([i915#180] / [i915#9159]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-c-dp-1.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-c-dp-1.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [FAIL][342] ([i915#4349]) -> [PASS][343] +1 other test pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-2/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][344] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][345] +2 other tests pass
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-1/igt@prime_vgem@basic-fence-read.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  
#### Warnings ####

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][346] ([i915#3555]) -> [SKIP][347] ([i915#7957])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@gem_ccs@block-multicopy-inplace.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][348] ([i915#7957]) -> [SKIP][349] ([i915#9323])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@gem_ccs@suspend-resume.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_ccs@suspend-resume.html

  * igt@gem_eio@kms:
    - shard-dg1:          [FAIL][350] ([i915#5784]) -> [DMESG-FAIL][351] ([i915#4423])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-dg1-16/igt@gem_eio@kms.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg1-13/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-rkl:          [FAIL][352] ([i915#2842]) -> [SKIP][353] ([i915#9591])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][354] ([i915#3282]) -> [WARN][355] ([i915#2658])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@gem_pwrite@basic-exhaustion.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [INCOMPLETE][356] -> [INCOMPLETE][357] ([i915#4528])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@forcewake:
    - shard-mtlp:         [ABORT][358] ([i915#9414]) -> [ABORT][359] ([fdo#103375] / [i915#9414])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-mtlp-8/igt@i915_suspend@forcewake.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-5/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@crc@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][360] ([i915#8247]) -> [DMESG-FAIL][361] ([i915#8561])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-mtlp-2/igt@kms_async_flips@crc@pipe-b-edp-1.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_async_flips@crc@pipe-b-edp-1.html

  * igt@kms_atomic_interruptible@atomic-setmode:
    - shard-rkl:          [SKIP][362] ([i915#1845] / [i915#4098]) -> [SKIP][363] ([i915#2575]) +4 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_atomic_interruptible@atomic-setmode.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_atomic_interruptible@atomic-setmode.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          [SKIP][364] ([i915#1769] / [i915#3555]) -> [SKIP][365] ([i915#1845] / [i915#4098])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][366] ([i915#1845] / [i915#4098]) -> [SKIP][367] ([i915#5286]) +1 other test skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-rkl:          [SKIP][368] ([i915#5286]) -> [SKIP][369] ([i915#1845] / [i915#4098]) +5 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-rkl:          [SKIP][370] ([i915#1845] / [i915#4098]) -> [SKIP][371] ([fdo#111614] / [i915#3638]) +1 other test skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][372] ([fdo#111614] / [i915#3638]) -> [SKIP][373] ([i915#1845] / [i915#4098])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][374] ([fdo#110723]) -> [SKIP][375] ([i915#1845] / [i915#4098]) +4 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][376] ([i915#1845] / [i915#4098]) -> [SKIP][377] ([fdo#110723]) +1 other test skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          [SKIP][378] ([i915#1845] / [i915#4098]) -> [SKIP][379] ([fdo#109315]) +4 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_chamelium_color@gamma:
    - shard-rkl:          [SKIP][380] ([fdo#111827]) -> [SKIP][381] ([i915#2575]) +1 other test skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_chamelium_color@gamma.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-rkl:          [SKIP][382] ([i915#7828]) -> [SKIP][383] ([i915#2575])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-multiple.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          [SKIP][384] ([i915#1845] / [i915#4098]) -> [SKIP][385] ([i915#7118])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_content_protection@atomic.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          [SKIP][386] ([i915#7118]) -> [SKIP][387] ([i915#1845] / [i915#4098])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-1/igt@kms_content_protection@type1.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][388] ([i915#1845] / [i915#4098]) -> [SKIP][389] ([i915#3359])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          [SKIP][390] ([fdo#109279] / [i915#3359]) -> [SKIP][391] ([i915#1845] / [i915#4098])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][392] ([i915#3359]) -> [SKIP][393] ([i915#1845] / [i915#4098])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x170.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-rkl:          [SKIP][394] ([i915#1845] / [i915#4098]) -> [SKIP][395] ([i915#3555])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_crc@cursor-random-max-size.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][396] ([i915#3555]) -> [SKIP][397] ([i915#1845] / [i915#4098]) +3 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg1:          [SKIP][398] ([i915#3555]) -> [SKIP][399] ([i915#3555] / [i915#4423])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-dg1-16/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg1-13/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_edge_walk@128x128-top-edge:
    - shard-rkl:          [SKIP][400] ([i915#4098]) -> [SKIP][401] ([i915#2575]) +1 other test skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_edge_walk@128x128-top-edge.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_edge_walk@128x128-top-edge.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][402] ([fdo#111767] / [fdo#111825]) -> [SKIP][403] ([i915#1845] / [i915#4098])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][404] ([i915#4103]) -> [SKIP][405] ([i915#1845] / [i915#4098]) +1 other test skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][406] ([i915#1845] / [i915#4098]) -> [SKIP][407] ([i915#4103])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          [SKIP][408] ([fdo#111825]) -> [SKIP][409] ([i915#1845] / [i915#4098]) +2 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-rkl:          [SKIP][410] ([i915#1845] / [i915#4098]) -> [SKIP][411] ([fdo#111767] / [fdo#111825])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][412] ([fdo#110189] / [i915#3955]) -> [SKIP][413] ([i915#3955])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-fences:
    - shard-rkl:          [SKIP][414] ([i915#3637] / [i915#4098]) -> [SKIP][415] ([i915#2575])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_flip@flip-vs-fences.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][416] ([i915#3555]) -> [SKIP][417] ([fdo#109315])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][418] ([fdo#111825] / [i915#1825]) -> [SKIP][419] ([i915#1849] / [i915#4098]) +33 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][420] ([i915#1849] / [i915#4098]) -> [SKIP][421] ([fdo#111825] / [i915#1825]) +12 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][422] ([i915#1849] / [i915#4098]) -> [SKIP][423] ([fdo#109315]) +8 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-rkl:          [SKIP][424] ([i915#1849] / [i915#4098]) -> [SKIP][425] ([i915#3023]) +11 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          [SKIP][426] ([i915#3023]) -> [SKIP][427] ([i915#1849] / [i915#4098]) +17 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_invalid_mode@zero-hdisplay:
    - shard-rkl:          [SKIP][428] ([i915#3555]) -> [SKIP][429] ([i915#2575])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_invalid_mode@zero-hdisplay.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_invalid_mode@zero-hdisplay.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][430] ([i915#6301]) -> [SKIP][431] ([i915#1845] / [i915#4098])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_panel_fitting@legacy.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_panel_fitting@legacy.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-rkl:          [SKIP][432] ([fdo#111068] / [i915#658]) -> [SKIP][433] ([fdo#109315])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr@sprite_blt:
    - shard-rkl:          [SKIP][434] ([i915#1072]) -> [SKIP][435] ([fdo#109315])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-5/igt@kms_psr@sprite_blt.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_psr@sprite_blt.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][436] ([i915#5289]) -> [SKIP][437] ([i915#1845] / [i915#4098])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][438] ([fdo#111615] / [i915#5289]) -> [SKIP][439] ([i915#1845] / [i915#4098])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
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
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
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
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4778]: https://gitlab.freedesktop.org/drm/intel/issues/4778
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8825]: https://gitlab.freedesktop.org/drm/intel/issues/8825
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9159]: https://gitlab.freedesktop.org/drm/intel/issues/9159
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9292]: https://gitlab.freedesktop.org/drm/intel/issues/9292
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
  [i915#9581]: https://gitlab.freedesktop.org/drm/intel/issues/9581
  [i915#9583]: https://gitlab.freedesktop.org/drm/intel/issues/9583
  [i915#9591]: https://gitlab.freedesktop.org/drm/intel/issues/9591
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606


Build changes
-------------

  * Linux: CI_DRM_13863 -> Patchwork_111391v10

  CI-20190529: 20190529
  CI_DRM_13863: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7582: 453b9df12fbc9fff561bdb4eb97992983e74c3d4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111391v10: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/index.html

--===============7619551931834775915==
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
<tr><td><b>Series:</b></td><td>Add DSC fractional bpp support (rev10)</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/111391/">https://patchwork.freedesktop.org/series/111391/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/index.html">https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111391v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13863_full -&gt; Patchwork_111391v=
10_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v=
10/index.html</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
111391v10_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_pm_rpm@fences}:<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/sha=
rd-rkl-5/igt@kms_pm_rpm@fences.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111391v10_full that come from kn=
own issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3863/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13863/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shar=
d-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13863/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13863/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13863/shard-apl1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13863/shard-apl2/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl2/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13863/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13863/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3863/shard-apl3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-apl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shar=
d-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13863/shard-apl6/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl7/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111391v10/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl7/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111391v10/shard-apl7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11391v10/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111391v10/shard-apl6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111391v10/shard-apl6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391=
v10/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-apl3/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl3/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111391v10/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/s=
hard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111391v10/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl1/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111391v10/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111391v10/shard-apl1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-=
apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111391v10/shard-apl1/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1113=
91v10/shard-apl1/boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3863/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13863/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13863/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk3/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13863/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13863/shard-glk2/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk3/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13863/shard-glk4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13863/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13863/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk5/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3863/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13863/shard-glk6/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shard-glk6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/shar=
d-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13863/shard-glk8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk9/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111391v10/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk9/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/sha=
rd-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111391v10/shard-glk8/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk8/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11391v10/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111391v10/shard-glk8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111391v10/shard-glk6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391=
v10/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-glk5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111391v10/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/s=
hard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111391v10/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111391v10/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111391v10/shard-glk3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-=
glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111391v10/shard-glk2/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-glk2/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1113=
91v10/shard-glk2/boot.html">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@api_intel_bb@blit-reloc-k=
eep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111391v10/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8=
411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7701">i915#7701</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7701">i915#7701</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1113=
91v10/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4778">i915#4778</a>)=
</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@drm_fdinfo@most-busy-chec=
k-all@bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8414">i915#8414</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111391v10/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742=
">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@drm_fdinfo@virtual-busy-=
hang-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@fbdev@unaligned-read.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-=
rkl-5/igt@fbdev@unaligned-read.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2582">i915#2582</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_busy@semaphore.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3936">=
i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_ccs@suspend-resume.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@rcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111391v10/shard-mtlp-5/igt@gem_ctx_isolation@preservation-s3@rcs0.html">=
ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9414"=
>i915#9414</a>) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@gem_ctx_persistence@hang.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-tglu-7/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-tg=
lu-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/8398">i915#8398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@gem_exec_balancer@sliced=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-apl7/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-apl2/igt@gem_exec_fair@basic-deadli=
ne.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_exec_fair@basic-none-=
share@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-glk8/igt@gem_exec_fair@basic-none-v=
ip@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_exec_fair@basic-sync.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3539">i915#3539</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@gem_exec_flush@basic-wb-r=
w-before-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_exec_reloc@basic-conc=
urrent16.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-=
gtt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3281">i915#3281</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13863/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v1=
0/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +4 oth=
er tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-=
read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3281">i915#3281</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_exec_schedule@preempt=
-queue.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-dg1-16/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1113=
91v10/shard-dg1-13/igt@gem_exec_suspend@basic-s0@lmem0.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#442=
3</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-apl2/igt@gem_lmem_swapping@heavy-ve=
rify-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1113=
91v10/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#2=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@gem_mmap_gtt@flink-race.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_mmap_gtt@medium-copy-=
xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4077">i915#4077</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_mmap_wc@close.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i=
915#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_mmap_wc@write-gtt-re=
ad-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@gem_partial_pwrite_pread@=
writes-after-reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_pread@exhaustion.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282=
">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite_snooped:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@gem_pwrite_snooped.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rk=
l-7/igt@gem_pwrite_snooped.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@gem_pxp@create-regular-c=
ontext-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_pxp@protected-raw-src=
-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gem_pxp@reject-modify-con=
text-protection-off-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-glk8/igt@gem_render_copy@y-tiled-cc=
s-to-yf-tiled-mc-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@gem_render_copy@y-tiled-m=
c-ccs-to-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/768">i915#768</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_render_copy@yf-tiled=
-ccs-to-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
79">i915#4079</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gem_userptr_blits@cohere=
ncy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gem_userptr_blits@map-fix=
ed-invalidate-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4880">i915#4880</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@gen9_exec_parse@bb-start-=
far.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2856">i915#2856</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391=
v10/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@gen9_exec_parse@cmd-cros=
sing-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111391v10/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3=
591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@i915_pm_rps@thresholds-id=
le-park@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@i915_query@query-topology=
-coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@i915_suspend@fence-restore-untiled.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1391v10/shard-rkl-5/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#10931=
5</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@kms_addfb_basic@addfb25-=
x-tiled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_addfb_basic@basic-x-t=
iled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4212">i915#4212</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_async_flips@crc@pipe-=
a-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg1-15/igt@kms_async_flips@crc@pipe=
-d-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_atomic_transition@pla=
ne-all-transition-fencing.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4098">i915#4098</a>) +15 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111391v10/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64b=
pp-rotate-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_big_fb@linear-32bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +3 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_fb@linear-32bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3638">i915#3638</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
391v10/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4=
098</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_big_fb@x-tiled-64bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5190">i915#5190</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@kms_big_fb@yf-tiled-max-=
hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +2 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +7 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_big_joiner@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705"=
>i915#2705</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_big_joiner@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705"=
>i915#2705</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_cdclk@mode-transition=
@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_chamelium_color@ctm-=
blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_chamelium_color@ctm-n=
egative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-resolution-list:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_chamelium_edid@dp-edi=
d-resolution-list.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_chamelium_frames@hdmi=
-crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_color@ctm-green-to-red@pipe-b.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
391v10/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a=
>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7118">i915#7118</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7118">i915#7118</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@kms_content_protection@a=
tomic@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@kms_cursor_legacy@cursor=
b-vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_cursor_legacy@cursorb=
-vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-pan=
el-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_fence_pin_leak.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">=
i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_flip@2x-dpms-vs-vblan=
k-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111825">fdo#111825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-snb2/igt@kms_flip@2x-flip-vs-dpms.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-apl2/igt@kms_flip@2x-flip-vs-expire=
d-vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_flip@2x-flip-vs-fence=
s-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-snb2/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_flip@2x-wf_vblank-ts-=
check.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109274">fdo#109274</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_flip@flip-vs-expired-=
vblank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4098">i915#4098</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_flip_scaled_crc@flip=
-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>) +4 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_flip_scaled_crc@flip-=
64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +6 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_flip_scaled_crc@flip=
-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_flip_tiling@flip-chan=
ge-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_force_connector_basic=
@force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_force_connector_basic=
@prune-stale-modes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@kms_frontbuffer_tracki=
ng@fbc-1p-offscren-pri-indfb-draw-pwrite.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_frontbuffer_track=
ing@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1=
3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +10 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-apl2/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +80 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +41 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_frontbuffer_tracking@=
psr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3458">i915#3458</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_frontbuffer_tracking=
@psr-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8708">i915#8708</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-8/igt@kms_hdr@static-swap.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_pipe_b_c_ivb@from-pip=
e-c-to-b-with-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109289">fdo#109289</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_plane@plane-panning-b=
ottom-right.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg1-18/igt@kms_plane_scaling@plane-=
scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#942=
3</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-75.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>) =
+1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg1-13/igt@kms_plane_scaling@planes=
-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-apl7/igt@kms_psr2_sf@primary-plane-=
update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@kms_psr2_su@page_flip-xr=
gb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_psr@cursor_mmap_cpu.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
072">i915#1072</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_psr@psr2_dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i=
915#1072</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5461">i915#5461</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5461">i915#5461</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_rotation_crc@exhaust-=
fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_setmode@basic-clone-s=
ingle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@kms_sysfs_edid_timing.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/is=
sues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111391v10/shard-tglu-2/igt@kms_universal_plane@cursor-fb-lea=
k@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_vblank@ts-continuatio=
n-dpms-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@perf@gen8-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@invalid-oa-metric-set-id:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@perf@invalid-oa-metric-set-id.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v=
10/shard-rkl-5/igt@perf@invalid-oa-metric-set-id.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10=
/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-mtlp-5/igt@perf_pmu@busy-hang@rcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/sh=
ard-mtlp-7/igt@perf_pmu@busy-hang@rcs0.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@prime_mmap@test_aperture_=
limit@test_aperture_limit-smem.html">CRASH</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/9351">i915#9351</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@prime_vgem@coherency-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-dg2-1/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submit=
ted-signaled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-glk8/igt@syncobj_timeline@invalid-m=
ulti-wait-all-available-unsubmitted-submitted-signaled.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9583">i915#9583</a>)=
</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-available-signaled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@syncobj_timeline@single-wait-available-signal=
ed.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111391v10/shard-rkl-5/igt@syncobj_timeline@single-wait-available=
-signaled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@valid-multisync-submission:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@v3d/v3d_submit_cl@valid-m=
ultisync-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2575">i915#2575</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@valid-submission:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@v3d/v3d_submit_cl@valid-=
submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-out-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@v3d/v3d_submit_csd@bad-mu=
ltisync-out-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109315">fdo#109315</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-zeroed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-mtlp-4/igt@vc4/vc4_create_bo@create=
-bo-zeroed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@vc4/vc4_perfmon@get-value=
s-valid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-dg2-6/igt@vc4/vc4_wait_bo@unused-bo=
-1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>) +7 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@fbdev@info.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shar=
d-rkl-4/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-mtlp-4/igt@gem_busy@close-race.html">INCOMPLETE</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/=
shard-mtlp-4/igt@gem_busy@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/7297">i915#7297</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@gem_ccs@sus=
pend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
252">i915#6252</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111391v10/shard-rkl-7/igt@gem_ctx_persistence@legacy-engines-h=
ang@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-mtlp-2/igt@gem_eio@hibernate.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#=
9414</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111391v10/shard-mtlp-8/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111391v10/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111391v10/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +2 =
other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109313">fdo#109313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111391v10/shard-rkl-5/igt@gem_exec_flush@basic-batch-kerne=
l-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#328=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111391v10/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-1/igt@gem_userptr_blits@relocations.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11391v10/shard-rkl-5/igt@gem_userptr_blits@relocations.html">PASS</a> +6 ot=
her tests pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-1/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
391v10/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html">PASS</a> +3 other =
tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i9=
15#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111391v10/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">=
PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i91=
5#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111391v10/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-tglu-4/igt@kms_big_fb@x-=
tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +3 other=
 tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma-reset@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_color@legacy-gamma-reset@pipe-b.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111391v10/shard-rkl-7/igt@kms_color@legacy-gamma-reset@pipe-b.html">PA=
SS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-at=
omic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_111391v10/shard-rkl-7/igt@kms_cursor_legacy@basic-=
flip-before-cursor-atomic.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111391v10/shard-glk8/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v=
10/shard-rkl-7/igt@kms_fbcon_fbt@fbc.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg2-11/igt@kms_frontbuffe=
r_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc6-dpms}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9295">i915#9295</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10=
/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@fences-dpms}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v1=
0/shard-rkl-7/igt@kms_pm_rpm@fences-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-lpsp-stress}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#951=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111391v10/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-ed=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111391v10/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-=
leak@pipe-c-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111391v10/shard-tglu-2/igt@kms_universal_plane@cursor-=
fb-leak@pipe-d-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_vblank@ts-continuation-dpms-suspend@pipe-c-dp-1}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-apl6/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-c=
-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9159">i915#9159</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111391v10/shard-apl2/igt@kms_vblank@ts-contin=
uation-dpms-suspend@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111391v10/shard-mtlp-2/igt@perf_pmu@busy-double-start@bcs0.html">PASS</a>=
 +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-1/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i91=
5#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/370=
8">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111391v10/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS=
</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#35=
55</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111391v10/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957">i915#7957<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957">i915#7957</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v1=
0/shard-rkl-7/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-dg1-16/igt@gem_eio@kms.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-dg=
1-13/igt@gem_eio@kms.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11391v10/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9591">i915#9591</a>)=
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
391v10/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-snb6/igt@i915_module_load@reload-with-fault-injection.h=
tml">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111391v10/shard-snb2/igt@i915_module_load@reload-with-fault-in=
jection.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-mtlp-8/igt@i915_suspend@forcewake.html">ABORT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391=
v10/shard-mtlp-5/igt@i915_suspend@forcewake.html">ABORT</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-mtlp-2/igt@kms_async_flips@crc@pipe-b-edp-1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#=
8247</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111391v10/shard-mtlp-4/igt@kms_async_flips@crc@pipe-b-edp-1.html">DMESG-=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561">=
i915#8561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_atomic_interruptible@atomic-setmode.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_atomic_interruptible@atomic-se=
tmode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_ato=
mic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111391v10/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286">=
i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286">i91=
5#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111391v10/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1=
845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">=
i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111391v10/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-90.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">f=
do#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo=
#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111391v10/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
45">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">fd=
o#110723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111391v10/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">=
i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915=
#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098=
">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111391v10/shard-rkl-7/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11072=
3">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_big_fb@y=
f-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>) =
+4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_chamelium_color@gamma.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827">fdo#111827</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
391v10/shard-rkl-5/igt@kms_chamelium_color@gamma.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-multiple.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7828">=
i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111391v10/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-multiple.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/25=
75">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_content_protection@atomic.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111391v10/shard-rkl-7/igt@kms_content_protection@atomic.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#711=
8</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-1/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1391v10/shard-rkl-5/igt@kms_content_protection@type1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-51=
2x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109279"=
>fdo#109279</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3359">i915#3359</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-51=
2x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3359">i9=
15#3359</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111391v10/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">=
i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_crc@cursor-random-max-size.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i=
915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111391v10/shard-rkl-7/igt@kms_cursor_crc@cursor-random-max-siz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-=
32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-dg1-16/igt@kms_cursor_crc@cursor-rapid-movement-max-siz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111391v10/shard-dg1-13/igt@kms_cursor_crc@cursor-rapid-move=
ment-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-edge:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_edge_walk@128x128-top-edge.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111391v10/shard-rkl-5/igt@kms_cursor_edge_walk@128x128-top-edge.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575=
">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-v=
s-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4103">i915#4103</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_cursor_le=
gacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
25">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111391v10/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-l=
egacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-tra=
nsitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_cursor_legacy@cu=
rsorb-vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111391v10/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_flip@flip-vs-fences.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11391v10/shard-rkl-5/igt@kms_flip@flip-vs-fences.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp=
-4tile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_flip_scaled_cr=
c@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_frontbuffe=
r_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +3=
3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_front=
buffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#=
1825</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-p=
ri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#10=
9315</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-=
mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111391v10/shard-rkl-4/igt@kms_frontbuffer_trac=
king@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +11 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3023">i9=
15#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111391v10/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_invalid_mode@zero-hdisplay.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#355=
5</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111391v10/shard-rkl-5/igt@kms_invalid_mode@zero-hdisplay.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391=
v10/shard-rkl-5/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111391v10/shard-rkl-5/igt@kms_psr2_sf@cursor-plane-update-sf.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10931=
5">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-5/igt@kms_psr@sprite_blt.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/sh=
ard-rkl-5/igt@kms_psr@sprite_blt.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-18=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-=
reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13863/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-9=
0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_111391v10/shard-rkl-5/igt@kms_rotation_crc@primar=
y-yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13863 -&gt; Patchwork_111391v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13863: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7582: 453b9df12fbc9fff561bdb4eb97992983e74c3d4 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111391v10: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://ano=
ngit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7619551931834775915==--
