Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 788AF646324
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 22:17:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBA410E13E;
	Wed,  7 Dec 2022 21:17:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B98E210E13E;
 Wed,  7 Dec 2022 21:17:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 493A5AADE0;
 Wed,  7 Dec 2022 21:17:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6844743539658071377=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Miaoqian Lin" <linmq006@gmail.com>
Date: Wed, 07 Dec 2022 21:17:04 -0000
Message-ID: <167044782425.14516.10354635214519524319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221207112909.2655251-1-linmq006@gmail.com>
In-Reply-To: <20221207112909.2655251-1-linmq006@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_documentation_for_intel=5Funcore=5Fforcewake=5Fput?=
 =?utf-8?q?=5F=5Flocked?=
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

--===============6844743539658071377==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix documentation for intel_uncore_forcewake_put__locked
URL   : https://patchwork.freedesktop.org/series/111735/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12477_full -> Patchwork_111735v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111735v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111735v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (14 -> 14)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111735v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_offset@oob-read:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-tglb1/igt@gem_mmap_offset@oob-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-tglb6/igt@gem_mmap_offset@oob-read.html

  
#### Warnings ####

  * igt@gem_exec_fence@syncobj-signal:
    - shard-skl:          [WARN][3] ([i915#7541]) -> [WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/igt@gem_exec_fence@syncobj-signal.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl7/igt@gem_exec_fence@syncobj-signal.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_isolation@nonpriv-switch@bcs0:
    - {shard-rkl}:        [PASS][5] -> [FAIL][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@gem_ctx_isolation@nonpriv-switch@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-3/igt@gem_ctx_isolation@nonpriv-switch@bcs0.html

  * igt@gem_ctx_isolation@preservation@vcs1:
    - {shard-dg1}:        NOTRUN -> [FAIL][7] +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-dg1-15/igt@gem_ctx_isolation@preservation@vcs1.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - {shard-dg1}:        NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-dg1-18/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
    - {shard-tglu-9}:     NOTRUN -> [SKIP][9] +15 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-tglu-9/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html

  
Known issues
------------

  Here are the changes found in Patchwork_111735v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32]) -> ([PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55]) ([i915#5032])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl1/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-apl:          ([FAIL][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80]) ([i915#4386]) -> ([PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl2/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl6/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl6/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl6/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl6/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl7/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl7/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl7/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl7/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl8/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl8/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl8/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl8/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl7/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl7/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl7/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl7/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl8/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl8/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl8/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl8/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl1/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl1/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl1/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl2/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl2/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl2/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl2/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl2/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl3/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl3/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl3/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl3/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl3/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][106] ([i915#4793])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@hang:
    - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271]) +44 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl1/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][108] -> [SKIP][109] ([i915#4525]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][110] -> [FAIL][111] ([i915#2842])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][112] -> [FAIL][113] ([i915#2842]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][114] ([i915#2842])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-iclb:         [PASS][115] -> [FAIL][116] ([i915#2842])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb8/igt@gem_exec_fair@basic-pace@rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#4613])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#4613])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@gem_lmem_swapping@verify-ccs.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][119] -> [FAIL][120] ([i915#3989] / [i915#454])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][121] -> [DMESG-WARN][122] ([i915#5591])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-tglb6/igt@i915_selftest@live@hangcheck.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-tglb3/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          NOTRUN -> [INCOMPLETE][123] ([i915#4817] / [i915#7233])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][124] ([fdo#109271]) +48 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#3886]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl2/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#3886]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_color_chamelium@ctm-red-to-blue:
    - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@kms_color_chamelium@ctm-red-to-blue.html

  * igt@kms_color_chamelium@degamma:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl1/igt@kms_color_chamelium@degamma.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          ([PASS][129], [PASS][130]) -> [FAIL][131] ([i915#2346])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_dp_aux_dev:
    - shard-iclb:         [PASS][132] -> [DMESG-WARN][133] ([i915#4391])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb7/igt@kms_dp_aux_dev.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb7/igt@kms_dp_aux_dev.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][134] ([i915#2122])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][135] -> [FAIL][136] ([i915#79])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][137] -> [FAIL][138] ([i915#2122]) +5 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][139] ([i915#2672]) +3 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][140] ([i915#3555]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][141] ([i915#2587] / [i915#2672]) +5 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([i915#2672] / [i915#3555])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][143] ([i915#4573]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][144] -> [SKIP][145] ([i915#5235]) +8 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#658])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][147] -> [SKIP][148] ([fdo#109441]) +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [PASS][149] -> [SKIP][150] ([i915#5519]) +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [PASS][151] -> [SKIP][152] ([i915#5519])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@perf@stress-open-close:
    - shard-glk:          ([PASS][153], [PASS][154]) -> [INCOMPLETE][155] ([i915#5213])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk8/igt@perf@stress-open-close.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk3/igt@perf@stress-open-close.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-glk9/igt@perf@stress-open-close.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][156] ([fdo#109271] / [i915#2994])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@sysfs_clients@create.html

  
#### Possible fixes ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-glk:          ([PASS][157], [DMESG-WARN][158]) ([i915#5507]) -> [PASS][159]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk9/igt@device_reset@unbind-reset-rebind.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk6/igt@device_reset@unbind-reset-rebind.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-glk7/igt@device_reset@unbind-reset-rebind.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][160] ([i915#658]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb5/igt@feature_discovery@psr2.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_blits@basic:
    - {shard-rkl}:        [FAIL][162] -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-2/igt@gem_blits@basic.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-5/igt@gem_blits@basic.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-skl:          [INCOMPLETE][164] ([i915#4793]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][166] ([i915#4525]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb7/igt@gem_exec_balancer@parallel.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-rkl}:        [FAIL][168] ([i915#2842]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - {shard-tglu}:       [FAIL][170] ([i915#2842]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][172] ([i915#2842]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - {shard-rkl}:        [SKIP][174] ([i915#3281]) -> [PASS][175] +6 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][176] ([i915#2190]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - {shard-rkl}:        [FAIL][178] ([i915#3692]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctx0.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-3/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@gem_readwrite@write-bad-handle:
    - {shard-rkl}:        [SKIP][180] ([i915#3282]) -> [PASS][181] +1 similar issue
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-2/igt@gem_readwrite@write-bad-handle.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-5/igt@gem_readwrite@write-bad-handle.html

  * igt@gen9_exec_parse@valid-registers:
    - {shard-rkl}:        [SKIP][182] ([i915#2527]) -> [PASS][183] +2 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][184] ([i915#3989] / [i915#454]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/igt@i915_pm_dc@dc6-psr.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - {shard-dg1}:        [FAIL][186] ([i915#3591]) -> [PASS][187] +1 similar issue
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [FAIL][188] ([i915#2521]) -> [PASS][189] +1 similar issue
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          ([PASS][190], [FAIL][191]) ([i915#72]) -> [PASS][192]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - {shard-rkl}:        [SKIP][193] ([i915#1845] / [i915#4098]) -> [PASS][194] +5 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][195], [PASS][196]) ([i915#2122]) -> [PASS][197] +1 similar issue
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          [FAIL][198] ([i915#79]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][200] ([i915#1849] / [i915#4098]) -> [PASS][201] +3 similar issues
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][202] ([fdo#109441]) -> [PASS][203] +2 similar issues
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb6/igt@kms_psr@psr2_primary_render.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@kms_psr@sprite_plane_onoff:
    - {shard-rkl}:        [SKIP][204] ([i915#1072]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-1/igt@kms_psr@sprite_plane_onoff.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][206] ([i915#5519]) -> [PASS][207]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - {shard-dg1}:        [DMESG-WARN][208] ([i915#1982]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-dg1-15/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-dg1-13/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - shard-skl:          [FAIL][210] ([i915#1731]) -> [PASS][211] +1 similar issue
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl5/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl5/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Warnings ####

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][212] ([i915#79]) -> [FAIL][213] ([i915#2122])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:
    - shard-skl:          [DMESG-FAIL][214] ([IGT#6]) -> [FAIL][215] ([i915#4573])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl3/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][216] ([i915#2920]) -> [SKIP][217] ([i915#658])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][218] ([i915#2920]) -> [SKIP][219] ([fdo#111068] / [i915#658])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][220] ([i915#658]) -> [SKIP][221] ([i915#2920]) +1 similar issue
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3692]: https://gitlab.freedesktop.org/drm/intel/issues/3692
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5507]: https://gitlab.freedesktop.org/drm/intel/issues/5507
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7233]: https://gitlab.freedesktop.org/drm/intel/issues/7233
  [i915#7541]: https://gitlab.freedesktop.org/drm/intel/issues/7541
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12477 -> Patchwork_111735v1

  CI-20190529: 20190529
  CI_DRM_12477: a9fe1490cceb47334a43a1b037e150300e6058f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7085: 11af20de3877b23a244b816453bfc41d83591a15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111735v1: a9fe1490cceb47334a43a1b037e150300e6058f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/index.html

--===============6844743539658071377==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix documentation for intel_uncore=
_forcewake_put__locked</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/111735/">https://patchwork.freedesktop.org/series/111735/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111735v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111735v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12477_full -&gt; Patchwork_111735v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111735v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_111735v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (14 -&gt; 14)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
111735v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_mmap_offset@oob-read:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-tglb1/igt@gem_mmap_offset@oob-read.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/sha=
rd-tglb6/igt@gem_mmap_offset@oob-read.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_fence@syncobj-signal:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-skl1/igt@gem_exec_fence@syncobj-signal.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7541">i915#7541<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1735v1/shard-skl7/igt@gem_exec_fence@syncobj-signal.html">WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_isolation@nonpriv-switch@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-rkl-5/igt@gem_ctx_isolation@nonpriv-switch@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111735v1/shard-rkl-3/igt@gem_ctx_isolation@nonpriv-switch@bcs0.html">FAIL<=
/a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation@vcs1:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-dg1-15/igt@gem_ctx_isolation@preserv=
ation@vcs1.html">FAIL</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-dg1-18/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs@lmem0.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>{shard-tglu-9}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-tglu-9/igt@kms_ccs@pipe-b-random-ccs=
-data-4_tiled_dg2_rc_ccs.html">SKIP</a> +15 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111735v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12477/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12477/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/sha=
rd-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12477/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12477/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477=
/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12477/shard-skl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-sk=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2477/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html">PASS=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111735v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111735v1/shard-skl7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl7=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111735v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl5/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/s=
hard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111735v1/shard-skl5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl5/boot.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11735v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111735v1/shard-skl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111735v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/sh=
ard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111735v1/shard-skl3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1735v1/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_111735v1/shard-skl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111735v1/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-skl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/sh=
ard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111735v1/shard-skl1/boot.html">PASS</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5032">i915#5032</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12477/shard-apl1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12477/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12477/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12477/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12477/shard-apl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12477/shard-apl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2477/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12477/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12477/shard-apl8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111735v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-a=
pl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111735v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v=
1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111735v1/shard-apl8/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111735v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111735v1/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-ap=
l2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111735v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl2/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1=
/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111735v1/shard-apl2/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111735v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111735v1/shard-apl3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl=
3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111735v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111735v1/shard-apl6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-apl6/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-skl2/igt@gem_ctx_isolation@preservat=
ion-s3@vecs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4793">i915#4793</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-skl1/igt@gem_ctx_persistence@hang.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11735v1/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
735v1/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1=
/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@gem_exec_fair@basic-none@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb8/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v=
1/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-skl1/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-icl=
b2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3989">i915#3989</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-tglb6/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1=
/shard-tglb3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-skl2/igt@i915_suspend@sysfs-reader.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4817">i915#4817</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7233">i915#7233</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-s=
tride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-skl2/igt@kms_ccs@pipe-c-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-red-to-blue:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@kms_color_chamelium@ctm-red=
-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-skl1/igt@kms_color_chamelium@degamma=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12477/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-trans=
itions-varying-size.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_12477/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@a=
tomic-transitions-varying-size.html">PASS</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-glk1/igt@kms_cursor_=
legacy@flip-vs-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb7/igt@kms_dp_aux_dev.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb7=
/igt@kms_dp_aux_dev.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4391">i915#4391</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-skl2/igt@kms_flip@flip-vs-absolute-w=
f_vblank@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111735v1/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111735v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#=
2122</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-c-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb1/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@kms_psr2_su@page_flip-xrgb8=
888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1=
/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111735v1/shard-iclb3/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111735v1/shard-tglb3/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12477/shard-glk8/igt@perf@stress-open-close.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk3/igt@p=
erf@stress-open-close.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111735v1/shard-glk9/igt@perf@stress-open-clo=
se.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5213">i915#5213</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-apl6/igt@sysfs_clients@create.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12477/shard-glk9/igt@device_reset@unbind-reset-rebind.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-=
glk6/igt@device_reset@unbind-reset-rebind.html">DMESG-WARN</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5507">i915#5507</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/sha=
rd-glk7/igt@device_reset@unbind-reset-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb5/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/s=
hard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_blits@basic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-rkl-2/igt@gem_blits@basic.html">FAIL</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-5=
/igt@gem_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-skl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
793">i915#4793</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111735v1/shard-skl2/igt@gem_ctx_isolation@preservation-s3@vcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb7/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1117=
35v1/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12477/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111735v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12477/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111735v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11735v1/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1735v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html">PASS</a> +6 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/=
shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctx0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3692">i915#3692<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1735v1/shard-rkl-3/igt@gem_ppgtt@blt-vs-render-ctx0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-rkl-2/igt@gem_readwrite@write-bad-handle.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#328=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111735v1/shard-rkl-5/igt@gem_readwrite@write-bad-handle.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#25=
27</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111735v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-skl7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/=
shard-skl3/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i9=
15#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111735v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111735v1/shard-skl1/igt@kms_async_flips@alternate-sy=
nc-async-flip@pipe-b-edp-1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12477/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-lega=
cy.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12477/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.htm=
l">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/72=
">i915#72</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111735v1/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-le=
gacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111735v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-curso=
r-crc-legacy.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12477/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1=
-hdmi-a2.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12477/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1=
-hdmi-a2.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111735v1/shard-glk8/igt@kms_flip@2x-plain-flip-fb-r=
ecreate@bc-hdmi-a1-hdmi-a2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915=
#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111735v1/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111735v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">PASS</a> +3 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb6/igt@kms_psr@psr2_primary_render.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11735v1/shard-iclb2/igt@kms_psr@psr2_primary_render.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-rkl-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1117=
35v1/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111735v1/shard-tglb2/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-dg1-15/igt@syncobj_timeline@wait-all-for-submit-delayed=
-submit.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111735v1/shard-dg1-13/igt@syncobj_timeline@wait=
-all-for-submit-delayed-submit.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-skl5/igt@sysfs_heartbeat_interval@mixed@bcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915=
#1731</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111735v1/shard-skl5/igt@sysfs_heartbeat_interval@mixed@bcs0.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111735v1/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-skl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1=
.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gp=
u-tools/issues/6">IGT#6</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_111735v1/shard-skl3/igt@kms_plane_alpha_blend@alpha-b=
asic@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4573">i915#4573</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111735v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111735v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12477/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111735v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12477 -&gt; Patchwork_111735v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12477: a9fe1490cceb47334a43a1b037e150300e6058f4 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7085: 11af20de3877b23a244b816453bfc41d83591a15 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111735v1: a9fe1490cceb47334a43a1b037e150300e6058f4 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6844743539658071377==--
