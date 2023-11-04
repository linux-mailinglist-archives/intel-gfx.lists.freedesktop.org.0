Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0D57E10BF
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Nov 2023 20:37:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ADD510E02B;
	Sat,  4 Nov 2023 19:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CB5510E02B;
 Sat,  4 Nov 2023 19:37:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44400AADED;
 Sat,  4 Nov 2023 19:37:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1177116459716561955=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 04 Nov 2023 19:37:31 -0000
Message-ID: <169912665122.30096.16088763461303401543@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Some_register_cleanups_=28rev3=29?=
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

--===============1177116459716561955==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Some register cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/125853/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13836_full -> Patchwork_125853v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125853v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125853v3_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/index.html

Participating hosts (12 -> 11)
------------------------------

  Missing    (1): shard-tglu0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125853v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-4.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:
    - shard-apl:          [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_125853v3_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) ([i915#8293]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl4/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl4/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl2/boot.html
    - shard-glk:          ([PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [FAIL][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78]) ([i915#8293]) -> ([PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk9/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk9/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk8/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk8/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk8/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk8/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk6/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk6/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk5/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk5/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk3/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk3/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk3/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk3/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk2/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk2/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk2/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk9/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk9/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk9/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk8/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk8/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk8/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk6/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk6/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk5/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk4/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk4/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk3/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk3/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk3/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk3/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk2/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          [PASS][101] -> [SKIP][102] ([i915#8411])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#8411]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][104] ([i915#9408])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#8414]) +11 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@drm_fdinfo@busy-check-all@ccs0.html

  * igt@drm_fdinfo@busy@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#8414]) +4 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@drm_fdinfo@busy@vcs1.html

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][107] ([i915#7742])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][108] -> [FAIL][109] ([i915#7742])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#8414]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@drm_read@short-buffer-block:
    - shard-rkl:          [PASS][111] -> [SKIP][112] ([i915#4098]) +7 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@drm_read@short-buffer-block.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@drm_read@short-buffer-block.html

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-tglu:         [PASS][113] -> [ABORT][114] ([i915#8190])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-tglu-10/igt@gem_barrier_race@remote-request@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-5/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#8562])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][116] -> [FAIL][117] ([i915#6268])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-tglu:         NOTRUN -> [SKIP][118] ([fdo#109314])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gem_ctx_param@set-priority-not-supported.html
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([fdo#109314])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#8555])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#280])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@execbuf:
    - shard-mtlp:         [PASS][122] -> [ABORT][123] ([i915#9262])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-mtlp-5/igt@gem_eio@execbuf.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_eio@execbuf.html

  * igt@gem_eio@hibernate:
    - shard-rkl:          NOTRUN -> [ABORT][124] ([i915#7975] / [i915#8213])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@fairslice:
    - shard-rkl:          [PASS][125] -> [SKIP][126] ([Intel XE#874])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@gem_exec_balancer@fairslice.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4812])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#6334])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk5/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-mtlp:         NOTRUN -> [FAIL][129] ([i915#9606])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#4473])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][131] ([i915#2842])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [PASS][132] -> [FAIL][133] ([i915#2842])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][134] -> [FAIL][135] ([i915#2842]) +1 other test fail
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][136] ([i915#2842])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#4812]) +2 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          [PASS][138] -> [SKIP][139] ([fdo#109313])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3539])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3539] / [i915#4852]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#3539] / [i915#4852])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#5107])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#3281]) +7 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_exec_reloc@basic-cpu-wc-active.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [PASS][145] -> [SKIP][146] ([i915#3281]) +11 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#3281]) +4 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#3281]) +4 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@gem_exec_reloc@basic-write-wc-active.html
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#3281]) +4 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#4537] / [i915#4812])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#4860])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#4860]) +2 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#4860]) +3 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][154] ([fdo#109271] / [i915#4613])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl4/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-glk:          NOTRUN -> [SKIP][155] ([fdo#109271] / [i915#4613])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk5/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#4613]) +4 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#4613]) +2 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#4613]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_media_vme:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#284])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_media_vme.html

  * igt@gem_mmap@bad-object:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#4083]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_mmap@bad-object.html

  * igt@gem_mmap@bad-size:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#4083]) +5 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_mmap@bad-size.html

  * igt@gem_mmap@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#4083]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@basic-write-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#4077])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_mmap_gtt@basic-write-gtt.html

  * igt@gem_mmap_gtt@big-bo-tiledy:
    - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#4077]) +7 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_mmap_gtt@big-bo-tiledy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#4077]) +4 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [PASS][166] -> [SKIP][167] ([i915#3282]) +10 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#3282]) +3 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pwrite@basic-random:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#3282]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@display-protected-crc:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#4270]) +3 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#4270])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#4270]) +1 other test skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_readwrite@new-obj:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#3282]) +4 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#8428]) +4 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#768]) +3 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#4079])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#4079])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#8411])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([fdo#109312])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#4879])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#3297]) +2 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3297]) +3 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@mmap-offset-banned@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#3297]) +4 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_userptr_blits@mmap-offset-banned@gtt.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-mtlp:         NOTRUN -> [SKIP][184] ([fdo#109289]) +2 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([fdo#109289])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gen7_exec_parse@basic-offset.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([fdo#109289]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#2856]) +4 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#2856])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#2527])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-rkl:          [PASS][190] -> [SKIP][191] ([i915#2527]) +5 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#2527] / [i915#2856])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_fb_tiling:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#4881])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@i915_fb_tiling.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [PASS][194] -> [SKIP][195] ([i915#9588])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@i915_hangman@engine-engine-error@bcs0.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_hangman@hangcheck-unterminated:
    - shard-mtlp:         [PASS][196] -> [ABORT][197] ([i915#9414])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-mtlp-5/igt@i915_hangman@hangcheck-unterminated.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-2/igt@i915_hangman@hangcheck-unterminated.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][198] -> [DMESG-WARN][199] ([i915#9559])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#6412])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         NOTRUN -> [WARN][201] ([i915#2681])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [PASS][202] -> [FAIL][203] ([i915#3591])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@gem-mmap-type@gtt-smem0:
    - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#8431])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@i915_pm_rpm@gem-mmap-type@gtt-smem0.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#6621])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#8925])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#8925])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_pm_rps@thresholds-park@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#3555] / [i915#8925])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@i915_pm_rps@thresholds-park@gt1.html

  * igt@i915_power@sanity:
    - shard-rkl:          [PASS][209] -> [SKIP][210] ([i915#7984])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@i915_power@sanity.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@i915_power@sanity.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#6188])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][212] -> [FAIL][213] ([fdo#103375])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][214] ([i915#5190])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#3826])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-vga-1-linear:
    - shard-snb:          NOTRUN -> [SKIP][216] ([fdo#109271]) +12 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-snb4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-vga-1-linear.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][217] ([i915#8247]) +3 other tests fail
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#6229])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_async_flips@test-cursor.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#1845] / [i915#4098]) +11 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#4538] / [i915#5286]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][221] ([fdo#111615] / [i915#5286])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#5286]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][223] ([fdo#111614])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_big_fb@linear-16bpp-rotate-270.html
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([fdo#111614]) +3 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([fdo#111614])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#5190]) +5 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#6187])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][228] -> [FAIL][229] ([i915#3743])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([fdo#110723]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#4538]) +2 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([fdo#111615]) +9 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#4538] / [i915#5190]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([fdo#111615])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][235] ([fdo#111615])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#2705])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#3742])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#4087] / [i915#7213]) +3 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#4087]) +3 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_color@ctm-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][240] ([fdo#111827])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_chamelium_color@ctm-0-75.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([fdo#111827])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([fdo#111827])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#7828]) +1 other test skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#7828]) +4 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_chamelium_frames@dp-crc-fast.html
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#7828]) +2 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#7828]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#7828]) +8 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic:
    - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#7116])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#7118]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#6944])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#3116])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#7118]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#3555] / [i915#6944])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][254] ([i915#3359])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][255] ([i915#3359])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#3359])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#3555] / [i915#8814])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#3359])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_edge_walk@128x128-top-edge:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#4098]) +23 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_cursor_edge_walk@128x128-top-edge.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([fdo#111825]) +7 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#3546]) +2 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#4103])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#4213]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-rkl:          [PASS][264] -> [SKIP][265] ([i915#1845] / [i915#4098]) +24 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#4103] / [i915#4213])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#9226] / [i915#9261]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#9227])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#3555]) +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#3804])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][271] ([i915#3555] / [i915#3840]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#3555] / [i915#3840])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [PASS][273] -> [SKIP][274] ([i915#1849] / [i915#4098]) +15 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-apl:          NOTRUN -> [SKIP][275] ([fdo#109271] / [fdo#111767])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
    - shard-dg2:          NOTRUN -> [SKIP][276] ([fdo#109274] / [fdo#111767])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#8381])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([fdo#109274]) +3 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#3637]) +8 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu:         NOTRUN -> [SKIP][280] ([fdo#109274] / [i915#3637]) +1 other test skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][281] ([fdo#111825]) +9 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#3637] / [i915#4098]) +10 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][283] ([i915#8841]) +1 other test dmesg-warn
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#2672]) +7 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][285] ([i915#2587] / [i915#2672])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][286] ([i915#2587] / [i915#2672])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#2672] / [i915#3555]) +2 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#2672]) +1 other test skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#3555] / [i915#8810])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][290] ([i915#2672])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#3555]) +11 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([fdo#109285])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          NOTRUN -> [SKIP][293] ([i915#3023]) +12 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][294] ([i915#8708]) +3 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#8708]) +4 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#5354]) +11 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html
    - shard-rkl:          NOTRUN -> [SKIP][297] ([fdo#111825] / [i915#1825]) +12 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][298] ([i915#1825]) +31 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][299] ([fdo#109280]) +10 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][300] ([i915#8708]) +5 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#3458]) +12 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][302] ([i915#3458]) +3 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][303] ([fdo#109271]) +40 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][304] ([i915#3555] / [i915#8228]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg1:          NOTRUN -> [SKIP][305] ([i915#1839])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([fdo#109289]) +1 other test skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane@plane-position-covered:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#4098] / [i915#8825]) +2 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][308] ([fdo#109274] / [i915#5354]) +2 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][309] ([i915#8292])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][310] ([i915#8292])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][311] ([i915#5176] / [i915#9423]) +3 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#8152])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][313] ([i915#5235]) +3 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][314] ([i915#5235]) +10 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][315] ([i915#3555] / [i915#5235])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#5235]) +7 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-rkl:          NOTRUN -> [SKIP][317] ([i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][318] ([i915#5235]) +19 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> [SKIP][319] ([i915#658])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][320] ([fdo#109271] / [i915#658])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][321] ([fdo#111068] / [i915#658])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#658]) +1 other test skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
    - shard-rkl:          NOTRUN -> [SKIP][323] ([fdo#111068] / [i915#658]) +1 other test skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-mtlp:         NOTRUN -> [SKIP][324] ([i915#4348])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@basic:
    - shard-tglu:         NOTRUN -> [SKIP][325] ([fdo#110189]) +7 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_psr@basic.html

  * igt@kms_psr@primary_render:
    - shard-rkl:          NOTRUN -> [SKIP][326] ([i915#1072]) +1 other test skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_psr@primary_render.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-dg1:          NOTRUN -> [SKIP][327] ([i915#1072] / [i915#4078]) +1 other test skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-dg2:          NOTRUN -> [SKIP][328] ([i915#1072]) +1 other test skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-mtlp:         NOTRUN -> [SKIP][329] ([i915#4235]) +1 other test skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][330] ([i915#4235] / [i915#5190]) +1 other test skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
    - shard-rkl:          NOTRUN -> [SKIP][331] ([fdo#111615] / [i915#5289])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg1:          NOTRUN -> [SKIP][332] ([fdo#111615] / [i915#5289])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg1:          NOTRUN -> [SKIP][333] ([i915#8623])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-mtlp:         NOTRUN -> [SKIP][334] ([fdo#109309])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [PASS][335] -> [FAIL][336] ([i915#9196])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@kms_vrr@flip-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][337] ([i915#3555] / [i915#8808])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@kms_vrr@flip-dpms.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg1:          NOTRUN -> [SKIP][338] ([i915#2437])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-rkl:          [PASS][339] -> [SKIP][340] ([fdo#109289])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-1/igt@perf@gen12-group-exclusive-stream-ctx-handle.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][341] ([i915#2436])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-rkl:          NOTRUN -> [SKIP][342] ([i915#2436])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-mtlp:         NOTRUN -> [SKIP][343] ([i915#7387])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@perf@global-sseu-config.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][344] ([i915#3555] / [i915#8807])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@perf_pmu@event-wait@rcs0.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          [PASS][345] -> [SKIP][346] ([fdo#109295] / [i915#3291] / [i915#3708])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@prime_vgem@basic-write.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@prime_vgem@basic-write.html
    - shard-mtlp:         NOTRUN -> [SKIP][347] ([i915#3708])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          NOTRUN -> [SKIP][348] ([fdo#109295] / [i915#3708])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:
    - shard-dg1:          NOTRUN -> [FAIL][349] ([i915#9583])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
    - shard-glk:          NOTRUN -> [FAIL][350] ([i915#9583])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk5/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
    - shard-dg2:          NOTRUN -> [FAIL][351] ([i915#9583])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html
    - shard-rkl:          NOTRUN -> [FAIL][352] ([i915#9583])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html

  * igt@v3d/v3d_mmap@mmap-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][353] ([i915#2575]) +10 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@v3d/v3d_mmap@mmap-bo.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pad:
    - shard-tglu:         NOTRUN -> [SKIP][354] ([fdo#109315] / [i915#2575]) +2 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@v3d/v3d_perfmon@get-values-invalid-pad.html

  * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][355] ([fdo#109315]) +5 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  * igt@v3d/v3d_submit_cl@job-perfmon:
    - shard-dg1:          NOTRUN -> [SKIP][356] ([i915#2575]) +3 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@v3d/v3d_submit_cl@job-perfmon.html

  * igt@v3d/v3d_submit_csd@bad-flag:
    - shard-dg2:          NOTRUN -> [SKIP][357] ([i915#2575]) +8 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@v3d/v3d_submit_csd@bad-flag.html

  * igt@vc4/vc4_lookup_fail@bad-color-write:
    - shard-glk:          NOTRUN -> [SKIP][358] ([fdo#109271]) +40 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk5/igt@vc4/vc4_lookup_fail@bad-color-write.html

  * igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
    - shard-tglu:         NOTRUN -> [SKIP][359] ([i915#2575])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html

  * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
    - shard-mtlp:         NOTRUN -> [SKIP][360] ([i915#7711]) +6 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:
    - shard-dg1:          NOTRUN -> [SKIP][361] ([i915#7711])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged.html

  * igt@vc4/vc4_wait_bo@unused-bo-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][362] ([i915#7711]) +4 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@vc4/vc4_wait_bo@unused-bo-1ns.html

  * igt@vc4/vc4_wait_bo@used-bo-1ns:
    - shard-rkl:          NOTRUN -> [SKIP][363] ([i915#7711]) +3 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@vc4/vc4_wait_bo@used-bo-1ns.html

  
#### Possible fixes ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [SKIP][364] ([i915#8411]) -> [PASS][365]
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-1/igt@api_intel_bb@blit-reloc-purge-cache.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][366] ([i915#7742]) -> [PASS][367]
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@fbdev@eof:
    - shard-rkl:          [SKIP][368] ([i915#2582]) -> [PASS][369] +1 other test pass
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@fbdev@eof.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@fbdev@eof.html

  * igt@fbdev@info:
    - shard-rkl:          [SKIP][370] ([i915#1849] / [i915#2582]) -> [PASS][371]
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@fbdev@info.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@fbdev@info.html

  * igt@gem_ctx_persistence@hang:
    - shard-rkl:          [SKIP][372] ([i915#6252]) -> [PASS][373]
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [ABORT][374] ([i915#7975] / [i915#8213]) -> [PASS][375]
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-dg1-14/igt@gem_eio@hibernate.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][376] ([i915#2842]) -> [PASS][377] +4 other tests pass
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          [SKIP][378] ([i915#3281]) -> [PASS][379] +12 other tests pass
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][380] ([i915#5493]) -> [PASS][381]
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [SKIP][382] ([i915#3282]) -> [PASS][383] +7 other tests pass
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          [SKIP][384] ([i915#2527]) -> [PASS][385] +2 other tests pass
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-1/igt@gen9_exec_parse@bb-start-out.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-rkl:          [WARN][386] ([i915#2681]) -> [PASS][387]
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-glk:          [DMESG-FAIL][388] ([i915#5334]) -> [PASS][389]
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk4/igt@i915_selftest@live@gt_heartbeat.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk3/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@forcewake:
    - shard-mtlp:         [ABORT][390] ([i915#9414]) -> [PASS][391]
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-mtlp-8/igt@i915_suspend@forcewake.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [FAIL][392] ([i915#3743]) -> [PASS][393]
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][394] ([i915#1845] / [i915#4098]) -> [PASS][395] +28 other tests pass
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * {igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs}:
    - shard-rkl:          [SKIP][396] ([i915#4098]) -> [PASS][397] +15 other tests pass
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][398] ([i915#1849] / [i915#4098]) -> [PASS][399] +11 other tests pass
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * {igt@kms_pm_rpm@dpms-lpsp}:
    - shard-rkl:          [SKIP][400] ([i915#9519]) -> [PASS][401] +2 other tests pass
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-rkl:          [SKIP][402] ([i915#1849]) -> [PASS][403] +1 other test pass
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_properties@plane-properties-atomic.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [FAIL][404] ([i915#4349]) -> [PASS][405] +1 other test pass
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-rkl:          [SKIP][406] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][407]
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][408] ([i915#3555]) -> [SKIP][409] ([i915#7957])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][410] ([i915#7957]) -> [SKIP][411] ([i915#3555]) +1 other test skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][412] ([i915#2842]) -> [SKIP][413] ([i915#9591]) +1 other test skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg1:          [SKIP][414] ([i915#4565]) -> [SKIP][415] ([i915#4423] / [i915#4565])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-dg1-18/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-13/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][416] ([i915#5493]) -> [DMESG-WARN][417] ([i915#4936] / [i915#5493])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [WARN][418] ([i915#2658]) -> [SKIP][419] ([i915#3282])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][420] ([i915#2532]) -> [SKIP][421] ([i915#2527])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][422] ([i915#4098]) -> [SKIP][423] ([i915#5286]) +8 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][424] ([i915#5286]) -> [SKIP][425] ([i915#4098]) +8 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          [SKIP][426] ([i915#1845] / [i915#4098]) -> [SKIP][427] ([fdo#111614] / [i915#3638]) +2 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][428] ([fdo#111614] / [i915#3638]) -> [SKIP][429] ([i915#1845] / [i915#4098]) +2 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][430] ([fdo#110723]) -> [SKIP][431] ([i915#1845] / [i915#4098]) +7 other tests skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          [SKIP][432] ([i915#1845] / [i915#4098]) -> [SKIP][433] ([fdo#111615])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][434] ([i915#1845] / [i915#4098]) -> [SKIP][435] ([fdo#110723]) +5 other tests skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][436] ([i915#3555]) -> [SKIP][437] ([i915#9608])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_color@deep-color.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][438] ([i915#1845] / [i915#4098]) -> [SKIP][439] ([i915#3116]) +1 other test skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][440] ([i915#7118]) -> [SKIP][441] ([i915#1845] / [i915#4098]) +1 other test skip
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_content_protection@legacy.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          [SKIP][442] ([i915#1845] / [i915#4098]) -> [SKIP][443] ([i915#7118])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_content_protection@type1.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][444] ([i915#3555]) -> [SKIP][445] ([i915#4098]) +2 other tests skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][446] ([i915#4098]) -> [SKIP][447] ([i915#3359]) +1 other test skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          [SKIP][448] ([i915#4098]) -> [SKIP][449] ([fdo#109279] / [i915#3359])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          [SKIP][450] ([i915#3359]) -> [SKIP][451] ([i915#4098]) +2 other tests skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-rkl:          [SKIP][452] ([i915#1845] / [i915#4098]) -> [SKIP][453] ([fdo#111825]) +1 other test skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][454] ([i915#1845] / [i915#4098]) -> [SKIP][455] ([fdo#111767] / [fdo#111825])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][456] ([i915#1845] / [i915#4098]) -> [SKIP][457] ([i915#4103])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][458] ([fdo#111825]) -> [SKIP][459] ([i915#1845] / [i915#4098]) +6 other tests skip
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          [SKIP][460] ([i915#4098]) -> [SKIP][461] ([i915#8588])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][462] ([i915#4098]) -> [SKIP][463] ([i915#3555] / [i915#3840])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][464] ([fdo#110189] / [i915#3955]) -> [SKIP][465] ([i915#3955])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][466] ([i915#1849] / [i915#4098]) -> [SKIP][467] ([fdo#111825])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          [SKIP][468] ([i915#1849] / [i915#4098]) -> [SKIP][469] ([fdo#111825] / [i915#1825]) +39 other tests skip
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][470] ([fdo#111825]) -> [SKIP][471] ([i915#1849] / [i915#4098])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][472] ([fdo#111825] / [i915#1825]) -> [SKIP][473] ([i915#1849] / [i915#4098]) +44 other tests skip
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          [SKIP][474] ([i915#3023]) -> [SKIP][475] ([i915#1849] / [i915#4098]) +27 other tests skip
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][476] ([i915#1849] / [i915#4098]) -> [SKIP][477] ([i915#5439])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][478] ([i915#1849] / [i915#4098]) -> [SKIP][479] ([i915#3023]) +25 other tests skip
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][480] ([i915#4098]) -> [SKIP][481] ([i915#3555] / [i915#8228])
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_hdr@invalid-hdr.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          [SKIP][482] ([i915#3555] / [i915#8228]) -> [SKIP][483] ([i915#1845] / [i915#4098])
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-1/igt@kms_hdr@static-swap.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_hdr@static-swap.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][484] ([i915#4070] / [i915#4816]) -> [SKIP][485] ([i915#1839] / [i915#4070] / [i915#4816])
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][486] ([i915#6301]) -> [SKIP][487] ([i915#1845] / [i915#4098])
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][488] ([i915#1845] / [i915#4098]) -> [SKIP][489] ([i915#6301])
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-rkl-5/igt@kms_panel_fitting@legacy.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
    - shard-apl:          [INCOMPLETE][490] ([i915#9392]) -> [INCOMPLETE][491] ([i915#180] / [i915#9392])
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html

  * igt@kms_plane_multiple@tiling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/index.html

--===============1177116459716561955==
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
<tr><td><b>Series:</b></td><td>drm/i915: Some register cleanups (rev3)</td>=
</tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125853/">https://patchwork.freedesktop.org/series/125853/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125853v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13836_full -&gt; Patchwork_125853v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125853v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_125853v3_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v=
3/index.html</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): shard-tglu0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
125853v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_hdr@bpc-switch-suspen=
d@pipe-a-dp-4.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a=
-dp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125853v3/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspe=
nd@pipe-a-dp-1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125853v3_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3836/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13836/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shar=
d-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13836/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13836/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13836/shard-apl4/boot.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl2/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13836/shard-apl2/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl2/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13836/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3836/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13836/shard-apl1/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-ap=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125853v3/shard-apl1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl7/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3=
/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125853v3/shard-apl1/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl1/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125853v3/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125853v3/shard-apl1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125853v3/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl7/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125853v3/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl6/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125853v3/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125853v3/shard-apl6/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125853v3/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl6/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/s=
hard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125853v3/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25853v3/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125853v3/shard-apl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-apl2/=
boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3836/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13836/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shar=
d-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13836/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13836/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13836/shard-glk5/boot.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13836/shard-glk4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13836/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13836/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3836/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13836/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13836/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13836/shard-glk2/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-gl=
k9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125853v3/shard-glk9/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk9/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3=
/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125853v3/shard-glk8/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk8/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125853v3/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125853v3/shard-glk6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125853v3/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk5/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125853v3/shard-glk4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk4/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125853v3/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125853v3/shard-glk3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk3=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125853v3/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk3/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/s=
hard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125853v3/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-glk2/boot.html=
">PASS</a>)</p>
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
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5853v3/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> ([=
i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@api_intel_bb@object-reloc=
-purge-cache.html">SKIP</a> ([i915#8411]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@device_reset@unbind-reset=
-rebind.html">INCOMPLETE</a> ([i915#9408])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@drm_fdinfo@busy-check-all=
@ccs0.html">SKIP</a> ([i915#8414]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@drm_fdinfo@busy@vcs1.html=
">SKIP</a> ([i915#8414]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html"=
>FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125853v3/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@drm_fdinfo@virtual-busy-h=
ang.html">SKIP</a> ([i915#8414]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@drm_read@short-buffer-block.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/=
shard-rkl-5/igt@drm_read@short-buffer-block.html">SKIP</a> ([i915#4098]) +7=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-tglu-10/igt@gem_barrier_race@remote-request@rcs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125853v3/shard-tglu-5/igt@gem_barrier_race@remote-request@rcs0.html">ABOR=
T</a> ([i915#8190])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853=
v3/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> ([i915#626=
8])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> ([fdo#109314])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> ([fdo#109314])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_ctx_persistence@heart=
beat-hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@execbuf:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-mtlp-5/igt@gem_eio@execbuf.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-mtlp-=
4/igt@gem_eio@execbuf.html">ABORT</a> ([i915#9262])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_eio@hibernate.html">AB=
ORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@gem_exec_balancer@fairslice.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/=
shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> ([Intel XE#874])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-glk5/igt@gem_exec_capture@capture-in=
visible@smem0.html">SKIP</a> ([fdo#109271] / [i915#6334])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_exec_capture@many-4k-=
zero.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_exec_fair@basic-none-=
solo.html">SKIP</a> ([i915#4473])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gem_exec_fair@basic-none-=
solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125853v3/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</=
a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5853v3/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([=
i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-glk5/igt@gem_exec_fair@basic-throttl=
e@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_exec_fence@concurrent=
.html">SKIP</a> ([i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125853v3/shard-rkl-7/igt@gem_exec_flush@basic-batch-kernel-default=
-cmd.html">SKIP</a> ([fdo#109313])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@gem_exec_flush@basic-uc-pr=
w-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-r=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_exec_flush@basic-uc-r=
w-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_exec_reloc@basic-cpu-=
wc-active.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25853v3/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> =
([i915#3281]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_exec_reloc@basic-writ=
e-read-noreloc.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@gem_exec_reloc@basic-write-=
wc-active.html">SKIP</a> ([i915#3281]) +4 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@gem_exec_reloc@basic-write-=
wc-active.html">SKIP</a> ([i915#3281]) +4 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_exec_schedule@preempt=
-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_fence_thrash@bo-write=
-verify-none.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_fence_thrash@bo-write=
-verify-x.html">SKIP</a> ([i915#4860]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_fenced_exec_thrash@to=
o-many-fences.html">SKIP</a> ([i915#4860]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-apl4/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-glk5/igt@gem_lmem_swapping@massive-r=
andom.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_lmem_swapping@smem-oo=
m.html">SKIP</a> ([i915#4613]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_lmem_swapping@verify-r=
andom.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-object:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_mmap@bad-object.html"=
>SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_mmap@bad-size.html">S=
KIP</a> ([i915#4083]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_mmap@basic-small-bo.h=
tml">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_mmap_gtt@basic-write-=
gtt.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_mmap_gtt@big-bo-tiled=
y.html">SKIP</a> ([i915#4077]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_mmap_gtt@cpuset-mediu=
m-copy-xy.html">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853=
v3/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> ([i915#328=
2]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_partial_pwrite_pread@w=
rites-after-reads-display.html">SKIP</a> ([i915#3282]) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gem_pwrite@basic-random.h=
tml">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_pxp@protected-encrypt=
ed-src-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gem_pxp@regular-baseline-=
src-copy-readible.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@gem_readwrite@new-obj.htm=
l">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_render_copy@x-tiled-t=
o-vebox-yf-tiled.html">SKIP</a> ([i915#8428]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_render_copy@yf-tiled-t=
o-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_render_tiled_blits@ba=
sic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gem_set_tiling_vs_blt@unti=
led-to-tiled.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a> ([fdo#109312])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gem_unfence_active_buffer=
s.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@gem_userptr_blits@create-de=
stroy-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@gem_userptr_blits@create-de=
stroy-unsync.html">SKIP</a> ([i915#3297]) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-banned@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gem_userptr_blits@mmap-of=
fset-banned@gtt.html">SKIP</a> ([i915#3297]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@gen7_exec_parse@basic-all=
owed.html">SKIP</a> ([fdo#109289]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@gen7_exec_parse@basic-off=
set.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> ([fdo#109289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@gen9_exec_parse@basic-rej=
ected.html">SKIP</a> ([i915#2856]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@gen9_exec_parse@basic-rej=
ected-ctx-param.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@gen9_exec_parse@bb-chained=
.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853=
v3/shard-rkl-1/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#252=
7]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@gen9_exec_parse@valid-reg=
isters.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@i915_fb_tiling.html">SKIP=
</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@i915_hangman@engine-engine-error@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125853v3/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">SKIP<=
/a> ([i915#9588])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@hangcheck-unterminated:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-mtlp-5/igt@i915_hangman@hangcheck-unterminated.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125853v3/shard-mtlp-2/igt@i915_hangman@hangcheck-unterminated.html">ABORT</=
a> ([i915#9414])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125853v3/shard-dg2-7/igt@i915_module_load@reload-with-fault-injecti=
on.html">DMESG-WARN</a> ([i915#9559])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@i915_module_load@resize-ba=
r.html">SKIP</a> ([i915#6412])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@i915_pm_rc6_residency@rc6=
-fence.html">WARN</a> ([i915#2681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125853v3/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL<=
/a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@gtt-smem0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@i915_pm_rpm@gem-mmap-type=
@gtt-smem0.html">SKIP</a> ([i915#8431])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@i915_pm_rps@min-max-confi=
g-idle.html">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@i915_pm_rps@thresholds-id=
le@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@i915_pm_rps@thresholds-pa=
rk@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@i915_pm_rps@thresholds-pa=
rk@gt1.html">SKIP</a> ([i915#3555] / [i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@i915_power@sanity.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-=
1/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@i915_query@query-topology=
-coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5853v3/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> ([=
fdo#103375])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-vga-1-linear=
:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-snb4/igt@kms_async_flips@async-flip-=
with-page-flip-events@pipe-a-vga-1-linear.html">SKIP</a> ([fdo#109271]) +12=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_async_flips@crc@pipe-=
d-hdmi-a-4.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_async_flips@test-curs=
or.html">SKIP</a> ([i915#6229])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_atomic_transition@plan=
e-use-after-nonblocking-unbind.html">SKIP</a> ([i915#1845] / [i915#4098]) +=
11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_big_fb@4-tiled-16bpp-=
rotate-90.html">SKIP</a> ([i915#4538] / [i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-r=
otate-90.html">SKIP</a> ([fdo#111615] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_big_fb@linear-16bpp-ro=
tate-270.html">SKIP</a> ([fdo#111614])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_big_fb@linear-16bpp-ro=
tate-270.html">SKIP</a> ([fdo#111614]) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-=
rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-=
rotate-90.html">SKIP</a> ([i915#5190]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_big_fb@y-tiled-addfb.=
html">SKIP</a> ([i915#6187])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_big_fb@y-tiled-m=
ax-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> ([i915#3743])</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-180.html">SKIP</a> ([fdo#110723]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-90.html">SKIP</a> ([i915#4538]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-0.html">SKIP</a> ([fdo#111615]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-=
size-overflow.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_big_joiner@2x-modeset=
.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_cdclk@mode-transition.=
html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> ([i915#4087] / [i915#7213]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-2/igt@kms_cdclk@plane-scaling@pi=
pe-a-hdmi-a-2.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-75:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_chamelium_color@ctm-0=
-75.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_chamelium_color@ctm-m=
ax.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_chamelium_color@ctm-n=
egative.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_chamelium_edid@dp-mod=
e-timings.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_chamelium_frames@dp-crc=
-fast.html">SKIP</a> ([i915#7828]) +4 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_chamelium_frames@dp-crc=
-fast.html">SKIP</a> ([i915#7828]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_chamelium_frames@dp-f=
rame-dump.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd=
-enable-disable-mode.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_content_protection@at=
omic.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_content_protection@atom=
ic-dpms.html">SKIP</a> ([i915#7118]) +2 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> ([i915#6944])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@kms_content_protection@ty=
pe1.html">SKIP</a> ([i915#3555] / [i915#6944])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_cursor_crc@cursor-sli=
ding-32x32.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_cursor_crc@cursor-slid=
ing-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-edge:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_cursor_edge_walk@128x1=
28-top-edge.html">SKIP</a> ([i915#4098]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> ([fdo#111825]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_cursor_legacy@2x-long=
-flip-vs-cursor-atomic.html">SKIP</a> ([i915#3546]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4213]) +1 other test ski=
p</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125853v3/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">S=
KIP</a> ([i915#1845] / [i915#4098]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103] / [i915#4213])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_dirtyfb@dirtyfb-ioctl@=
drrs-hdmi-a-2.html">SKIP</a> ([i915#9226] / [i915#9261]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_dirtyfb@dirtyfb-ioctl@=
fbc-hdmi-a-2.html">SKIP</a> ([i915#9227])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-=
5/igt@kms_fbcon_fbt@fbc.html">SKIP</a> ([i915#1849] / [i915#4098]) +15 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-apl4/igt@kms_flip@2x-flip-vs-blocking=
-wf-vblank.html">SKIP</a> ([fdo#109271] / [fdo#111767])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocki=
ng-wf-vblank.html">SKIP</a> ([fdo#109274] / [fdo#111767])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_flip@2x-flip-vs-fence=
s.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-panni=
ng.html">SKIP</a> ([fdo#109274]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_flip@2x-flip-vs-rmfb.=
html">SKIP</a> ([i915#3637]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_flip@2x-plain-flip.ht=
ml">SKIP</a> ([fdo#109274] / [i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> ([fdo#111825]) +9 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_flip@bo-too-big-interr=
uptible.html">SKIP</a> ([i915#3637] / [i915#4098]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-snb1/igt@kms_flip@flip-vs-suspend@b-=
hdmi-a1.html">DMESG-WARN</a> ([i915#8841]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">=
SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915=
#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#3555]) +11 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_force_connector_basic=
@force-load-detect.html">SKIP</a> ([fdo#109285])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-rte.html">SKIP</a> ([i915#3023]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([i915#5354]) +11 other test=
s skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#111825] / [i915#1825])=
 +12 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +31 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> ([fdo#109280]) +10 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +5 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +12 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-render.html">SKIP</a> ([i915#3458]) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-apl4/igt@kms_frontbuffer_tracking@ps=
r-rgb565-draw-pwrite.html">SKIP</a> ([fdo#109271]) +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_hdr@bpc-switch.html">S=
KIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pip=
e-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_plane@plane-position-c=
overed.html">SKIP</a> ([i915#4098] / [i915#8825]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_plane_scaling@2x-scal=
er-multi-pipe.html">SKIP</a> ([fdo#109274] / [i915#5354]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-14/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-13/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html">SKIP</a> ([i915=
#5176] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> ([i=
915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-5-unity-scaling@pipe-a-edp-1.html">SKIP</a> ([i915#5235]=
) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@kms_plane_scaling@planes-=
downscale-factor-0-75@pipe-d-edp-1.html">SKIP</a> ([i915#3555] / [i915#5235=
])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-=
dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html">SKIP</a> ([i915#5235]=
) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-75.html">SKIP</a> ([i915#4098] / [i915#6953=
] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> ([=
i915#5235]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-sf.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-apl4/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_psr2_sf@overlay-plane=
-update-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_psr2_sf@plane-move-sf-d=
mg-area.html">SKIP</a> ([i915#658]) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_psr2_sf@plane-move-sf-d=
mg-area.html">SKIP</a> ([fdo#111068] / [i915#658]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> ([i915#4348])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@kms_psr@basic.html">SKIP<=
/a> ([fdo#110189]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_psr@primary_render.htm=
l">SKIP</a> ([i915#1072]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_psr@psr2_cursor_mmap_=
cpu.html">SKIP</a> ([i915#1072] / [i915#4078]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@kms_psr@psr2_no_drrs.html=
">SKIP</a> ([i915#1072]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_rotation_crc@primary-=
rotation-90.html">SKIP</a> ([i915#4235]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-270.html">SKIP</a> ([i915#4235] / [i915#5190]) +1 other te=
st skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-270.html">SKIP</a> ([fdo#111615] / [i915#5289])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-90.html">SKIP</a> ([fdo#111615] / [i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@kms_tv_load_detect@load-d=
etect.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125853v3/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak=
@pipe-c-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@kms_vrr@flip-dpms.html">S=
KIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-1/igt@perf@gen12-group-exclusive-stream-ctx-handle.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125853v3/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-hand=
le.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@perf@gen8-unprivileged-sing=
le-ctx-counters.html">SKIP</a> ([i915#2436])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@perf@gen8-unprivileged-sing=
le-ctx-counters.html">SKIP</a> ([i915#2436])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@perf@global-sseu-config.h=
tml">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-4/igt@perf_pmu@event-wait@rcs0.=
html">SKIP</a> ([i915#3555] / [i915#8807])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13836/shard-rkl-5/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-=
rkl-4/igt@prime_vgem@basic-write.html">SKIP</a> ([fdo#109295] / [i915#3291]=
 / [i915#3708])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@prime_vgem@basic-write.htm=
l">SKIP</a> ([i915#3708])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> ([fdo#109295] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@syncobj_timeline@invalid-=
multi-wait-all-available-unsubmitted.html">FAIL</a> ([i915#9583])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-glk5/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted.html">FAIL</a> ([i915#9583])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-=
signaled:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-dg2-7/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i915#958=
3])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i915#958=
3])</p>
</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_mmap@mmap-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-7/igt@v3d/v3d_mmap@mmap-bo.html=
">SKIP</a> ([i915#2575]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@v3d/v3d_perfmon@get-value=
s-invalid-pad.html">SKIP</a> ([fdo#109315] / [i915#2575]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@v3d/v3d_perfmon@get-values=
-valid-perfmon.html">SKIP</a> ([fdo#109315]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@job-perfmon:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@v3d/v3d_submit_cl@job-per=
fmon.html">SKIP</a> ([i915#2575]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-flag:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@v3d/v3d_submit_csd@bad-fl=
ag.html">SKIP</a> ([i915#2575]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_lookup_fail@bad-color-write:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-glk5/igt@vc4/vc4_lookup_fail@bad-col=
or-write.html">SKIP</a> ([fdo#109271]) +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-tglu-3/igt@vc4/vc4_purgeable_bo@acce=
ss-purgeable-bo-mem.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-mtlp-3/igt@vc4/vc4_purgeable_bo@acce=
ss-purged-bo-mem.html">SKIP</a> ([i915#7711]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg1-16/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-purged.html">SKIP</a> ([i915#7711])</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-dg2-11/igt@vc4/vc4_wait_bo@unused-bo=
-1ns.html">SKIP</a> ([i915#7711]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-1ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@vc4/vc4_wait_bo@used-bo-1n=
s.html">SKIP</a> ([i915#7711]) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-1/igt@api_intel_bb@blit-reloc-purge-cache.html">SKI=
P</a> ([i915#8411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125853v3/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> ([i915#7742]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125853v3/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@fbdev@eof.html">SKIP</a> ([i915#2582]) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shar=
d-rkl-1/igt@fbdev@eof.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@fbdev@info.html">SKIP</a> ([i915#1849] / [i91=
5#2582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125853v3/shard-rkl-7/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> ([i91=
5#6252]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125853v3/shard-rkl-7/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> ([i915#797=
5] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125853v3/shard-dg1-16/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125853v3/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html">PASS<=
/a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-n=
oreloc.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> ([i915#5493]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125853v3/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.h=
tml">SKIP</a> ([i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writ=
es-after-reads.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-1/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> (=
[i915#2527]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125853v3/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html">PASS</a> =
+2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> ([i915#2681]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125853v3/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-glk4/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> ([i915#5334]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125853v3/shard-glk3/igt@i915_selftest@live@gt_heartbeat.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-mtlp-8/igt@i915_suspend@forcewake.html">ABORT</a> ([i91=
5#9414]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125853v3/shard-mtlp-8/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-tglu-8/igt@kms_=
big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180-hflip.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms=
_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> +28 oth=
er tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12=
-rc-ccs.html">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_ccs@pipe-b-bad-p=
ixel-format-y-tiled-gen12-rc-ccs.html">PASS</a> +15 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-=
1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html=
">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#95=
19]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5853v3/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +2 other tests p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html">=
SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_properties@plane-properties-at=
omic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</=
a> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125853v3/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html">P=
ASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> ([=
fdo#109295] / [i915#3708] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@prime_vgem@basic=
-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125853v3/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a=
> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#=
7957]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125853v3/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555]=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125853v3/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a=
> ([i915#9591]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-dg1-18/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lme=
m0.html">SKIP</a> ([i915#4565]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125853v3/shard-dg1-13/igt@gem_lmem_swapping@heavy-=
verify-multi-ccs@lmem0.html">SKIP</a> ([i915#4423] / [i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> ([i915#5493]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125853v3/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.ht=
ml">DMESG-WARN</a> ([i915#4936] / [i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([=
i915#2658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125853v3/shard-rkl-1/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> ([=
i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([=
i915#2532]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125853v3/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([=
i915#2527])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP<=
/a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125853v3/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html"=
>SKIP</a> ([i915#5286]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP=
</a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125853v3/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-90.htm=
l">SKIP</a> ([i915#4098]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP<=
/a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_big_fb@linear-32bpp-r=
otate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP=
</a> ([fdo#111614] / [i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp=
-rotate-270.html">SKIP</a> ([i915#1845] / [i915#4098]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKI=
P</a> ([fdo#110723]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125853v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.=
html">SKIP</a> ([i915#1845] / [i915#4098]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i9=
15#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html">S=
KIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_big_=
fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([fdo#110723]) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_color@deep-color.html">SKIP</a> ([i915#35=
55]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5853v3/shard-rkl-5/igt@kms_color@deep-color.html">SKIP</a> ([i915#9608])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html=
">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_content_protec=
tion@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_content_protection@legacy.html">SKIP</a> =
([i915#7118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125853v3/shard-rkl-5/igt@kms_content_protection@legacy.html">SKIP</a=
> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_content_protection@type1.html">SKIP</a> (=
[i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_content_protection@type1.h=
tml">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">S=
KIP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x=
10.html">SKIP</a> ([i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-5=
12x512.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html">=
SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512=
x170.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html">SK=
IP</a> ([i915#3359]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125853v3/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512=
.html">SKIP</a> ([i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.ht=
ml">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_cursor_legac=
y@2x-cursor-vs-flip-atomic.html">SKIP</a> ([fdo#111825]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_cursor_legac=
y@2x-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#111767] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/ig=
t@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</=
a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-f=
lipa-legacy.html">SKIP</a> ([i915#1845] / [i915#4098]) +6 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.=
html">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_display_modes@mst-extend=
ed-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (=
[i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125853v3/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> =
([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([fd=
o#110189] / [i915#3955]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125853v3/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">=
SKIP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptra=
ck-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7/igt@km=
s_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo=
#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-=
indfb-draw-render.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-7=
/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html">S=
KIP</a> ([fdo#111825] / [i915#1825]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptra=
ck-mmap-gtt.html">SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_frontbuffer=
_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#1849] / [i9=
15#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-s=
pr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-=
rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-g=
tt.html">SKIP</a> ([i915#1849] / [i915#4098]) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-mmap-wc.html">SKIP</a> ([i915#3023]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_frontbuffer_tr=
acking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#1849] / [i915#40=
98]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html=
">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-4/igt@kms_frontbuffer_tr=
acking@fbcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-=
indfb-draw-blt.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-1/igt=
@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a>=
 ([i915#3023]) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#409=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
853v3/shard-rkl-7/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i9=
15#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-1/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#355=
5] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125853v3/shard-rkl-5/igt@kms_hdr@static-swap.html">SKIP</a> ([i9=
15#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> ([i915#4070] / [i915#4816]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125853v3/shard-rkl-5/igt@kms_multipip=
e_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#1839] / [i915#4070=
] / [i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">SKIP</=
a> ([i915#6301]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125853v3/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html">S=
KIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-rkl-5/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i91=
5#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125853v3/shard-rkl-1/igt@kms_panel_fitting@legacy.html">SKI=
P</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13836/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-=
1.html">INCOMPLETE</a> ([i915#9392]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125853v3/shard-apl2/igt@kms_pipe_crc_basic@su=
spend-read-crc@pipe-b-dp-1.html">INCOMPLETE</a> ([i915#180] / [i915#9392])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling</p>
</li>
</ul>

</body>
</html>

--===============1177116459716561955==--
