Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 901B39A2FB1
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 23:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DFB310E227;
	Thu, 17 Oct 2024 21:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB35710E223;
 Thu, 17 Oct 2024 21:20:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3497044080680215386=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_series_starting_with_=5Bv5?=
 =?utf-8?q?=2C1/1=5D_drm/i915/pxp=3A_Add_missing_tag_for_Wa=5F14019159160_?=
 =?utf-8?q?=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2024 21:20:30 -0000
Message-ID: <172920003094.1280355.17509557673126351444@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241016001658.2671225-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20241016001658.2671225-1-alan.previn.teres.alexis@intel.com>
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

--===============3497044080680215386==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/1] drm/i915/pxp: Add missing tag for Wa_14019159160 (rev2)
URL   : https://patchwork.freedesktop.org/series/140030/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15549_full -> Patchwork_140030v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140030v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140030v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (7 -> 7)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140030v2_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-mtlp:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [FAIL][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-1/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_140030v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-dg1:          ([PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [FAIL][72], [PASS][73], [PASS][74], [PASS][75]) -> ([PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-12/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-12/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-12/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-13/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-13/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-13/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-15/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-15/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-15/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-16/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-16/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-17/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-17/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-17/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-18/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-18/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-18/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-19/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-19/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-19/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-19/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-12/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-16/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-16/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-19/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-16/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-19/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-18/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-18/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-18/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-18/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-16/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@all-busy-idle-check-all:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#8414])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@drm_fdinfo@all-busy-idle-check-all.html

  * igt@drm_fdinfo@virtual-busy:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#8414])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@drm_fdinfo@virtual-busy.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#7697]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][104] ([i915#12392] / [i915#7297])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#7697])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [PASS][106] -> [FAIL][107] ([i915#9561]) +1 other test fail
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@gem_ctx_freq@sysfs@gt0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_persistence@engines-cleanup:
    - shard-snb:          NOTRUN -> [SKIP][108] ([i915#1099])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-snb5/igt@gem_ctx_persistence@engines-cleanup.html

  * igt@gem_ctx_persistence@hostile:
    - shard-dg2:          NOTRUN -> [FAIL][109] ([i915#11980])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_ctx_persistence@hostile.html
    - shard-dg1:          NOTRUN -> [FAIL][110] ([i915#11980])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_ctx_persistence@hostile.html
    - shard-tglu:         [PASS][111] -> [FAIL][112] ([i915#11980])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-tglu-3/igt@gem_ctx_persistence@hostile.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-8/igt@gem_ctx_persistence@hostile.html
    - shard-mtlp:         NOTRUN -> [FAIL][113] ([i915#11980])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         [PASS][114] -> [DMESG-WARN][115] ([i915#12412])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-8/igt@gem_exec_balancer@nop.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-6/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4812])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_exec_balancer@sliced.html
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#4812])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#6334]) +2 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [PASS][119] -> [FAIL][120] ([i915#2842])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#3539])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_exec_fair@basic-sync.html
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#4473] / [i915#4771])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#3539] / [i915#4852]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3281]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-wc-read-active:
    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#3281]) +4 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_exec_reloc@basic-wc-read-active.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#3281])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#4860]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#4860])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#4860])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][130] ([i915#4613]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk9/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_mmap@basic-small-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#4083])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#4077]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4077]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#4077]) +4 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_wc@write-read:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#4083]) +2 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/igt@gem_mmap_wc@write-read.html
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#4083])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_mmap_wc@write-read.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#3282])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pread@uncached:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3282]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_pread@uncached.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#4270])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_pxp@reject-modify-context-protection-off-1.html
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#4270])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#5190] / [i915#8428])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#8428]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#4079])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_tiled_pread_pwrite.html

  * igt@gem_unfence_active_buffers:
    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#4879])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#3297])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#3281] / [i915#3297])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_userptr_blits@relocations.html
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#3281] / [i915#3297])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#3297])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#2856])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#2527])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_module_load@load:
    - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#6227])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@i915_module_load@load.html
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#6227])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][153] -> [ABORT][154] ([i915#9820])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][155] -> [ABORT][156] ([i915#10131] / [i915#9820])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [PASS][157] -> [FAIL][158] ([i915#3591])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#11681] / [i915#6621])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@i915_pm_rps@basic-api.html
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#11681] / [i915#6621])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#11681])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][162] -> [SKIP][163] ([i915#7984])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-6/igt@i915_power@sanity.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-6/igt@i915_power@sanity.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][164] ([i915#9311]) +1 other test dmesg-warn
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg1:          [PASS][165] -> [DMESG-WARN][166] ([i915#4391] / [i915#4423])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-16/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#4212])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#4212])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#8709]) +3 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8709]) +11 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-tglu:         [PASS][171] -> [FAIL][172] ([i915#11808]) +1 other test fail
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          [PASS][173] -> [FAIL][174] ([i915#5956]) +1 other test fail
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#4538] / [i915#5286]) +2 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#3638]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][177] +4 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#5190] / [i915#9197]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#4538])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#4538] / [i915#5190]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#5190])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#10307] / [i915#10434] / [i915#6095]) +7 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][183] +62 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk2/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#6095]) +47 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#6095]) +111 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#6095]) +14 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#10307] / [i915#6095]) +176 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#12313])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs:
    - shard-snb:          NOTRUN -> [SKIP][189] +68 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-snb5/igt@kms_ccs@random-ccs-data-y-tiled-ccs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#7213]) +3 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#4087]) +3 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][192] +4 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#7828]) +2 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#7828]) +2 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#7828]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@deep-color:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#3555]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_color@deep-color.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#9424])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@legacy:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#7116] / [i915#9424])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_content_protection@legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#6944] / [i915#9424])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#9809])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#9723])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#8812])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_fb_coherency@memset-crc:
    - shard-dg2:          [PASS][203] -> [SKIP][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_fb_coherency@memset-crc.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-dg2:          [PASS][205] -> [SKIP][206] ([i915#1849])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_fbcon_fbt@fbc.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_feature_discovery@display-1x:
    - shard-dg2:          [PASS][207] -> [SKIP][208] ([i915#9738])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_feature_discovery@display-1x.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_feature_discovery@display-1x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#9337])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#9934]) +2 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_flip@2x-plain-flip-fb-recreate.html
    - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#3637]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-glk:          [PASS][212] -> [FAIL][213] ([i915#2122]) +1 other test fail
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-glk1/igt@kms_flip@blocking-wf_vblank.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk7/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_flip@blocking-wf_vblank@b-vga1:
    - shard-snb:          [PASS][214] -> [FAIL][215] ([i915#2122]) +2 other tests fail
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-snb2/igt@kms_flip@blocking-wf_vblank@b-vga1.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-snb2/igt@kms_flip@blocking-wf_vblank@b-vga1.html

  * igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:
    - shard-tglu:         [PASS][216] -> [FAIL][217] ([i915#2122])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-tglu-4/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-8/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#5354]) +16 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#8381])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_flip@flip-vs-fences.html
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#8381])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg1:          [PASS][221] -> [INCOMPLETE][222] ([i915#4839] / [i915#6113])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-12/igt@kms_flip@flip-vs-suspend.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][223] ([i915#9878])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][224] ([i915#6113])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a2:
    - shard-glk:          [PASS][225] -> [INCOMPLETE][226] ([i915#4839])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-glk3/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk4/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@d-hdmi-a4:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][227] ([i915#4839] / [i915#6113])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/igt@kms_flip@flip-vs-suspend@d-hdmi-a4.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-dg2:          [PASS][228] -> [FAIL][229] ([i915#2122])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-11/igt@kms_flip@plain-flip-ts-check.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][230] ([i915#2122]) +1 other test fail
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a3.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a4:
    - shard-dg1:          [PASS][231] -> [FAIL][232] ([i915#12431])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-16/igt@kms_flip@plain-flip-ts-check@a-hdmi-a4.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@a-hdmi-a4.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a4:
    - shard-dg1:          [PASS][233] -> [FAIL][234] ([i915#2122]) +2 other tests fail
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-16/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#3555] / [i915#8813]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
    - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#2672] / [i915#3555])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][237] ([i915#8810])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#2587] / [i915#2672])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-dg2:          [PASS][239] -> [SKIP][240] ([i915#3555]) +4 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#2672] / [i915#3555])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#2672]) +4 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#3555]) +2 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8810])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#2672] / [i915#3555] / [i915#5190])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][246] +17 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-dg2:          [PASS][247] -> [FAIL][248] ([i915#6880]) +1 other test fail
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [PASS][249] -> [SKIP][250] ([i915#5354]) +8 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#3458]) +7 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#8708]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#8708]) +2 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#8708]) +9 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#1825]) +6 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#3555] / [i915#8228])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_invalid_mode@clock-too-high:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#3555] / [i915#6403] / [i915#8826])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_invalid_mode@clock-too-high.html

  * igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#9457]) +3 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1.html

  * igt@kms_lease@lease-revoke:
    - shard-dg2:          [PASS][259] -> [SKIP][260] ([i915#9197]) +32 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_lease@lease-revoke.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_lease@lease-revoke.html

  * igt@kms_plane@pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#8825])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane@pixel-format.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-dg2:          [PASS][262] -> [SKIP][263] ([i915#8825])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_plane@plane-panning-top-left.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-dg2:          [PASS][264] -> [SKIP][265] ([i915#7294])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [PASS][266] -> [FAIL][267] ([i915#8292])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][268] ([i915#8292])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][269] ([i915#8292])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:
    - shard-dg2:          [PASS][270] -> [SKIP][271] ([i915#12247] / [i915#8152] / [i915#9423])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:
    - shard-dg2:          [PASS][272] -> [SKIP][273] ([i915#12247] / [i915#8152])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html
    - shard-dg1:          NOTRUN -> [SKIP][274] ([i915#12247]) +4 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-dg2:          [PASS][275] -> [SKIP][276] ([i915#8152] / [i915#9423])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#6953] / [i915#8152] / [i915#9423])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#12247]) +5 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#12247] / [i915#8152]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
    - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#12247] / [i915#6953])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:
    - shard-mtlp:         NOTRUN -> [SKIP][282] ([i915#12247]) +8 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-dg2:          [PASS][283] -> [SKIP][284] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b:
    - shard-dg2:          [PASS][285] -> [SKIP][286] ([i915#12247]) +8 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [PASS][287] -> [SKIP][288] ([i915#8152]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#12343])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_pm_backlight@brightness-with-dpms.html
    - shard-dg1:          NOTRUN -> [SKIP][290] ([i915#12343])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#9685]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_pm_dc@dc6-psr.html
    - shard-dg1:          NOTRUN -> [SKIP][292] ([i915#9685])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_pm_dc@dc6-psr.html
    - shard-mtlp:         NOTRUN -> [SKIP][293] ([i915#10139])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][294] -> [SKIP][295] ([i915#4281])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][296] -> [SKIP][297] ([i915#9519]) +1 other test skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [PASS][298] -> [SKIP][299] ([i915#9519]) +2 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-snb:          NOTRUN -> [SKIP][300] ([i915#11520]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-snb5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#11520]) +1 other test skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][302] ([i915#9808])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#11520]) +2 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
    - shard-mtlp:         NOTRUN -> [SKIP][304] ([i915#12316]) +2 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][305] ([i915#11520])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr@fbc-pr-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#1072] / [i915#9732]) +8 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_psr@fbc-pr-cursor-render.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-dg1:          NOTRUN -> [SKIP][307] ([i915#1072] / [i915#9732]) +7 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@pr-primary-page-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][308] ([i915#9688]) +5 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_psr@pr-primary-page-flip.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-mtlp:         NOTRUN -> [SKIP][309] ([i915#11131])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_setmode@basic:
    - shard-dg1:          [PASS][310] -> [FAIL][311] ([i915#12317])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-12/igt@kms_setmode@basic.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [PASS][312] -> [FAIL][313] ([i915#5465]) +2 other tests fail
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-6/igt@kms_setmode@basic@pipe-b-edp-1.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-6/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@kms_setmode@basic@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][314] ([i915#12317])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/igt@kms_setmode@basic@pipe-b-hdmi-a-4.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [PASS][315] -> [FAIL][316] ([i915#9196]) +1 other test fail
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#9197]) +14 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@kms_vrr@flip-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][318] ([i915#3555] / [i915#8808])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_vrr@flip-basic.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg1:          NOTRUN -> [SKIP][319] ([i915#2437] / [i915#9412])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@busy-accuracy-98@rcs0:
    - shard-tglu:         [PASS][320] -> [FAIL][321] ([i915#4349])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-tglu-9/igt@perf_pmu@busy-accuracy-98@rcs0.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-6/igt@perf_pmu@busy-accuracy-98@rcs0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg1:          NOTRUN -> [SKIP][322] ([i915#8516])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#3291] / [i915#3708])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#3708])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@prime_vgem@fence-flip-hang.html
    - shard-dg1:          NOTRUN -> [SKIP][325] ([i915#3708]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@prime_vgem@fence-flip-hang.html
    - shard-mtlp:         NOTRUN -> [SKIP][326] ([i915#3708])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@prime_vgem@fence-flip-hang.html

  
#### Possible fixes ####

  * igt@fbdev@pan:
    - shard-dg2:          [SKIP][327] ([i915#2582]) -> [PASS][328] +1 other test pass
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@fbdev@pan.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@fbdev@pan.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][329] ([i915#7297]) -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         [FAIL][331] ([i915#12027] / [i915#12031]) -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-tglu-3/igt@gem_ctx_engines@invalid-engines.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-8/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][333] ([i915#5784]) -> [PASS][334]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-12/igt@gem_eio@reset-stress.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [FAIL][335] ([i915#2842]) -> [PASS][336] +1 other test pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [INCOMPLETE][337] ([i915#11441]) -> [PASS][338] +1 other test pass
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@gem_exec_suspend@basic-s0.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [ABORT][339] ([i915#7975] / [i915#8213]) -> [PASS][340] +1 other test pass
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [ABORT][341] ([i915#12375] / [i915#5566]) -> [PASS][342]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-glk7/igt@gen9_exec_parse@allowed-single.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk9/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [ABORT][343] ([i915#9820]) -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][345] ([i915#3591]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@kms_atomic_interruptible@atomic-setmode:
    - shard-dg2:          [SKIP][347] ([i915#9197]) -> [PASS][348] +26 other tests pass
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_atomic_interruptible@atomic-setmode.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_atomic_interruptible@atomic-setmode.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4:
    - shard-dg1:          [FAIL][349] ([i915#5956]) -> [PASS][350] +1 other test pass
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][351] ([i915#11808]) -> [PASS][352] +1 other test pass
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-tglu-2/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-9/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-dg1:          [DMESG-WARN][353] ([i915#4423]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][355] ([i915#2346]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][357] ([i915#2122]) -> [PASS][358]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg1:          [INCOMPLETE][359] ([i915#4839] / [i915#6113]) -> [PASS][360]
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-16/igt@kms_flip@flip-vs-suspend-interruptible.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:
    - shard-glk:          [INCOMPLETE][361] ([i915#4839]) -> [PASS][362]
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:
    - shard-dg1:          [INCOMPLETE][363] ([i915#6113]) -> [PASS][364]
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-16/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          [INCOMPLETE][365] ([i915#4839]) -> [PASS][366] +1 other test pass
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-snb7/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-rkl:          [FAIL][367] ([i915#2122]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-rkl-3/igt@kms_flip@plain-flip-ts-check.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-rkl-4/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:
    - shard-tglu:         [FAIL][369] ([i915#2122]) -> [PASS][370]
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-tglu-3/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-8/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [FAIL][371] ([i915#6880]) -> [PASS][372]
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][373] ([i915#5354]) -> [PASS][374] +17 other tests pass
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_invalid_mode@uint-max-clock:
    - shard-dg2:          [SKIP][375] ([i915#3555]) -> [PASS][376]
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_invalid_mode@uint-max-clock.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_plane@plane-position-covered:
    - shard-dg2:          [SKIP][377] ([i915#8825]) -> [PASS][378]
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane@plane-position-covered.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          [SKIP][379] ([i915#7294]) -> [PASS][380]
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
    - shard-dg2:          [SKIP][381] ([i915#8152] / [i915#9423]) -> [PASS][382]
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:
    - shard-dg2:          [SKIP][383] ([i915#8152]) -> [PASS][384]
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-dg2:          [SKIP][385] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][386]
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg2:          [SKIP][387] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][388]
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
    - shard-dg2:          [SKIP][389] ([i915#12247]) -> [PASS][390] +8 other tests pass
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:
    - shard-dg2:          [SKIP][391] ([i915#12247] / [i915#8152]) -> [PASS][392] +1 other test pass
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][393] ([i915#9519]) -> [PASS][394]
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][395] ([i915#9519]) -> [PASS][396]
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_setmode@basic@pipe-b-dp-3:
    - shard-dg2:          [FAIL][397] ([i915#5465]) -> [PASS][398] +1 other test pass
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-10/igt@kms_setmode@basic@pipe-b-dp-3.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_setmode@basic@pipe-b-dp-3.html

  * igt@perf_pmu@busy-accuracy-98@bcs0:
    - shard-tglu:         [FAIL][399] ([i915#4349]) -> [PASS][400]
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-tglu-9/igt@perf_pmu@busy-accuracy-98@bcs0.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-6/igt@perf_pmu@busy-accuracy-98@bcs0.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          [FAIL][401] -> [FAIL][402] ([i915#12027] / [i915#12031])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-glk6/igt@gem_ctx_engines@invalid-engines.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk2/igt@gem_ctx_engines@invalid-engines.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][403] ([i915#9697]) -> [ABORT][404] ([i915#9820])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg2:          [SKIP][405] ([i915#9197]) -> [SKIP][406] +1 other test skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-dg2:          [SKIP][407] -> [SKIP][408] ([i915#9197]) +2 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          [SKIP][409] ([i915#5190] / [i915#9197]) -> [SKIP][410] ([i915#4538] / [i915#5190]) +5 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-dg2:          [SKIP][411] ([i915#4538] / [i915#5190]) -> [SKIP][412] ([i915#5190] / [i915#9197]) +4 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-dg1:          [SKIP][413] ([i915#4423] / [i915#6095]) -> [SKIP][414] ([i915#6095]) +1 other test skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][415] ([i915#9197]) -> [SKIP][416] ([i915#10307] / [i915#6095]) +6 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][417] ([i915#10307] / [i915#6095]) -> [SKIP][418] ([i915#9197]) +1 other test skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][419] ([i915#9197]) -> [SKIP][420] ([i915#12313])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-dg1:          [SKIP][421] ([i915#4423] / [i915#7828]) -> [SKIP][422] ([i915#7828])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/igt@kms_chamelium_frames@vga-frame-dump.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][423] ([i915#3555]) -> [SKIP][424] ([i915#5354])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_color@deep-color.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          [SKIP][425] ([i915#9197]) -> [SKIP][426] ([i915#3299])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          [SKIP][427] ([i915#3299]) -> [SKIP][428] ([i915#9197])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_content_protection@dp-mst-type-0.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][429] ([i915#7118] / [i915#9424]) -> [SKIP][430] ([i915#9197])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_content_protection@legacy.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [TIMEOUT][431] ([i915#7173]) -> [SKIP][432] ([i915#9424])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-10/igt@kms_content_protection@lic-type-0.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_content_protection@lic-type-0.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg2:          [SKIP][433] ([i915#11453]) -> [SKIP][434] ([i915#9197]) +1 other test skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          [SKIP][435] ([i915#3555]) -> [SKIP][436] ([i915#9197]) +2 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-dg2:          [SKIP][437] ([i915#9197]) -> [SKIP][438] ([i915#5354]) +1 other test skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          [SKIP][439] ([i915#5354]) -> [SKIP][440] ([i915#9197]) +1 other test skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][441] ([i915#9197]) -> [SKIP][442] ([i915#4103] / [i915#4213])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][443] ([i915#9833]) -> [SKIP][444] ([i915#9197])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [SKIP][445] ([i915#12402]) -> [SKIP][446] ([i915#9197])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][447] ([i915#9197]) -> [SKIP][448] ([i915#8812])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          [SKIP][449] ([i915#9197]) -> [SKIP][450] ([i915#3555] / [i915#3840])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_dsc@dsc-basic.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][451] ([i915#2672] / [i915#3555]) -> [SKIP][452] ([i915#3555])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-dg2:          [SKIP][453] ([i915#3555] / [i915#5190]) -> [SKIP][454] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][455] ([i915#3555]) -> [SKIP][456] ([i915#2672] / [i915#3555])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][457] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][458] ([i915#3555] / [i915#5190])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][459] ([i915#5354]) -> [FAIL][460] ([i915#6880])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg1:          [SKIP][461] ([i915#4423]) -> [SKIP][462]
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][463] ([i915#10433] / [i915#3458]) -> [SKIP][464] ([i915#5354]) +1 other test skip
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
    - shard-dg2:          [SKIP][465] ([i915#3458]) -> [SKIP][466] ([i915#5354]) +5 other tests skip
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          [SKIP][467] ([i915#3458]) -> [SKIP][468] ([i915#10433] / [i915#3458]) +4 other tests skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][469] ([i915#8708]) -> [SKIP][470] ([i915#5354]) +12 other tests skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg2:          [SKIP][471] ([i915#4342] / [i915#5354]) -> [SKIP][472] ([i915#9766])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][473] ([i915#5354]) -> [SKIP][474] ([i915#3458]) +8 other tests skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg1:          [SKIP][475] ([i915#3458] / [i915#4423]) -> [SKIP][476] ([i915#3458])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][477] ([i915#10433] / [i915#3458]) -> [SKIP][478] ([i915#3458]) +2 other tests skip
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          [SKIP][479] ([i915#5354]) -> [SKIP][480] ([i915#8708]) +12 other tests skip
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [SKIP][481] ([i915#9197]) -> [SKIP][482] ([i915#3555] / [i915#8228])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_hdr@static-toggle.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_hdr@static-toggle.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          [SKIP][483] ([i915#6301]) -> [SKIP][484] ([i915#9197])
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_panel_fitting@legacy.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          [SKIP][485] ([i915#9197]) -> [SKIP][486] ([i915#3555] / [i915#8806])
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          [SKIP][487] ([i915#5354] / [i915#8152] / [i915#9423]) -> [SKIP][488] ([i915#5354] / [i915#9423])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][489] ([i915#6953] / [i915#9423]) -> [SKIP][490] ([i915#6953] / [i915#8152] / [i915#9423])
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:
    - shard-dg2:          [SKIP][491] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][492] ([i915#12247] / [i915#9423])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][493] ([i915#12247] / [i915#8152]) -> [SKIP][494] ([i915#12247])
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-dg2:          [SKIP][495] ([i915#12247] / [i915#9423]) -> [SKIP][496] ([i915#12247] / [i915#8152] / [i915#9423])
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg2:          [SKIP][497] ([i915#12247]) -> [SKIP][498] ([i915#12247] / [i915#8152])
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_psr@psr-primary-mmap-cpu:
    - shard-dg1:          [SKIP][499] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][500] ([i915#1072] / [i915#9732])
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/igt@kms_psr@psr-primary-mmap-cpu.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_psr@psr-primary-mmap-cpu.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          [SKIP][501] ([i915#11131]) -> [SKIP][502] ([i915#9197])
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-4/igt@kms_rotation_crc@primary-rotation-90.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-dg2:          [SKIP][503] ([i915#5190] / [i915#9197]) -> [SKIP][504] ([i915#5190]) +1 other test skip
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          [SKIP][505] ([i915#9197]) -> [SKIP][506] ([i915#11131])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html
   [506]: https://intel-gfx-ci.01

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/index.html

--===============3497044080680215386==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,1/1] drm/i915/pxp: =
Add missing tag for Wa_14019159160 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/140030/">https://patchwork.freedesktop.org/series/140030/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140030v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15549_full -&gt; Patchwork_140030v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140030v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_140030v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (7 -&gt; 7)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
140030v2_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15549/shard-mtlp-8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-8=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15549/shard-mtlp-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15549/shard-mtlp-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-6/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15549/shard-mtlp-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-5/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
549/shard-mtlp-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15549/shard-mtlp-4/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549=
/shard-mtlp-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15549/shard-mtlp-3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-3/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/sh=
ard-mtlp-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15549/shard-mtlp-2/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-2/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard=
-mtlp-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15549/shard-mtlp-1/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mtlp-1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-mt=
lp-1/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-mtlp-8/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-8/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140030v2/shard-mtlp-8/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-7/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-mtlp-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-mtlp-7/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-6/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140030v2/shard-mtlp-6/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-6/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-mtlp-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-mtlp-5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140030v2/shard-mtlp-5/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-4/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-mtlp-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-mtlp-4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140030v2/shard-mtlp-3/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-mtlp-2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-mtlp-2/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-2/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140030v2/shard-mtlp-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtlp-1/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-mtlp-1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140030v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15549/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-12/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-12=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15549/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-13/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-13/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15549/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-14/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15549/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15549/shard-dg1-15/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-15/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
549/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15549/shard-dg1-16/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-17/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549=
/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15549/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-18/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/sh=
ard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15549/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-19/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard=
-dg1-19/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15549/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg1-19/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15549/shard-dg=
1-12/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-dg1-17/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140030v2/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-16/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-dg1-16/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-19/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140030v2/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-dg1-18/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-18/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140030v2/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-dg1-12/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140030v2/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-dg1-14/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140030v2/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-dg1-16/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@drm_fdinfo@all-busy-idle-=
check-all.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@drm_fdinfo@virtual-busy.h=
tml">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> ([i915#7697]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-1/igt@gem_ccs@suspend-resume@lin=
ear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i=
915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard=
-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> ([i915#9561]) +1 other tes=
t fail</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-snb5/igt@gem_ctx_persistence@engines=
-cleanup.html">SKIP</a> ([i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_ctx_persistence@hostil=
e.html">FAIL</a> ([i915#11980])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_ctx_persistence@hosti=
le.html">FAIL</a> ([i915#11980])</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-tglu-3/igt@gem_ctx_persistence@hostile.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2=
/shard-tglu-8/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980])=
</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_ctx_persistence@hosti=
le.html">FAIL</a> ([i915#11980])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-mtlp-8/igt@gem_exec_balancer@nop.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard=
-mtlp-6/igt@gem_exec_balancer@nop.html">DMESG-WARN</a> ([i915#12412])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_exec_balancer@sliced.=
html">SKIP</a> ([i915#4812])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/igt@gem_exec_balancer@sliced.=
html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_exec_capture@capture-i=
nvisible@lmem0.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030=
v2/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#284=
2])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_exec_fair@basic-sync.=
html">SKIP</a> ([i915#3539])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_exec_fair@basic-sync.=
html">SKIP</a> ([i915#4473] / [i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_exec_flush@basic-uc-p=
ro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_exec_reloc@basic-wc-c=
pu.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_exec_reloc@basic-wc-r=
ead-active.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_exec_reloc@basic-wc-re=
ad-noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_fence_thrash@bo-write=
-verify-threaded-none.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_fence_thrash@bo-write=
-verify-threaded-none.html">SKIP</a> ([i915#4860])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_fence_thrash@bo-write-=
verify-threaded-none.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-glk9/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_mmap@basic-small-bo.h=
tml">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-big-c=
opy-xy.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_mmap_gtt@cpuset-medium=
-copy-odd.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_mmap_gtt@fault-concur=
rent.html">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/igt@gem_mmap_wc@write-read.ht=
ml">SKIP</a> ([i915#4083]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_mmap_wc@write-read.ht=
ml">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_partial_pwrite_pread@=
writes-after-reads-display.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gem_pread@uncached.html">S=
KIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_pxp@reject-modify-con=
text-protection-off-1.html">SKIP</a> ([i915#4270])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_pxp@reject-modify-con=
text-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_render_copy@y-tiled-c=
cs-to-x-tiled.html">SKIP</a> ([i915#5190] / [i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_render_copy@yf-tiled-=
mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_unfence_active_buffer=
s.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_userptr_blits@invalid=
-mmap-offset-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@gem_userptr_blits@relocat=
ions.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@gem_userptr_blits@relocat=
ions.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@gem_userptr_blits@unsync-=
unmap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@gen9_exec_parse@allowed-al=
l.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@i915_module_load@load.htm=
l">SKIP</a> ([i915#6227])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@i915_module_load@load.htm=
l">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-glk1/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140030v2/shard-glk5/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820])</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140030v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140030v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html"=
>FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> ([i915#11681] / [i915#6621])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@i915_pm_rps@thresholds-id=
le.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-mtlp-6/igt@i915_power@sanity.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-mtl=
p-6/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_140030v2/shard-dg1-16/igt@i915_suspend@basic-s2idle-without-i915.html">D=
MESG-WARN</a> ([i915#4391] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_addfb_basic@framebuff=
er-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_addfb_basic@framebuff=
er-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-rkl-4/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-tra=
nsition-fencing.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-tglu-3/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">FAIL</a> ([i915#11808]) +1 other te=
st fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:<=
/p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-tran=
sition@pipe-a-hdmi-a-4.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_atomic_transit=
ion@plane-all-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956=
]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([i915#4538] / [i915#5286]) +=
2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_big_fb@linear-16bpp-r=
otate-90.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-=
rotate-90.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#5190] / [i915#9197]) +1 o=
ther test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-180.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-addfb=
-size-offset-overflow.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-t=
iled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#1043=
4] / [i915#6095]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-glk2/igt@kms_ccs@bad-pixel-format-y-=
tiled-gen12-mc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> +62 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +47 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/igt@kms_ccs@crc-primary-basic=
-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +111 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-edp-1:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-dg2-rc-ccs-cc@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +14=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-7/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i=
915#6095]) +176 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-snb5/igt@kms_ccs@random-ccs-data-y-t=
iled-ccs.html">SKIP</a> +68 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-1/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-4/igt@kms_cdclk@plane-scaling@pi=
pe-d-hdmi-a-1.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_chamelium_hpd@hdmi-hp=
d-for-each-pipe.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_chamelium_hpd@vga-hpd=
-fast.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd=
-fast.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_color@deep-color.html=
">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#7116] / [i915#9424])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_cursor_legacy@cursora=
-vs-flipb-toggle.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_fb_coherency@memset-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_fb_coherency@memset-crc.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/=
shard-dg2-2/igt@kms_fb_coherency@memset-crc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_fbcon_fbt@fbc.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-=
2/igt@kms_fbcon_fbt@fbc.html">SKIP</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_feature_discovery@display-1x.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1400=
30v2/shard-dg2-2/igt@kms_feature_discovery@display-1x.html">SKIP</a> ([i915=
#9738])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_feature_discovery@dp-=
mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_flip@2x-plain-flip-fb=
-recreate.html">SKIP</a> ([i915#9934]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_flip@2x-plain-flip-fb=
-recreate.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-glk1/igt@kms_flip@blocking-wf_vblank.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/s=
hard-glk7/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> ([i915#2122]) +1 o=
ther test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-snb2/igt@kms_flip@blocking-wf_vblank@b-vga1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
030v2/shard-snb2/igt@kms_flip@blocking-wf_vblank@b-vga1.html">FAIL</a> ([i9=
15#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-tglu-4/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140030v2/shard-tglu-8/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html">FAI=
L</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_flip@dpms-off-confusio=
n-interruptible.html">SKIP</a> ([i915#5354]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> ([i915#8381])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-12/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/sh=
ard-dg1-17/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> ([i915#4839] /=
 [i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-glk2/igt@kms_flip@flip-vs-suspend-in=
terruptible@c-hdmi-a2.html">INCOMPLETE</a> ([i915#9878])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_flip@flip-vs-suspend-i=
nterruptible@d-hdmi-a3.html">INCOMPLETE</a> ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-glk3/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
030v2/shard-glk4/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html">INCOMPLETE</a=
> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@d-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/igt@kms_flip@flip-vs-suspend@=
d-hdmi-a4.html">INCOMPLETE</a> ([i915#4839] / [i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-11/igt@kms_flip@plain-flip-ts-check.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v=
2/shard-dg2-6/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> ([i915#2122])=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_flip@plain-flip-ts-che=
ck@a-hdmi-a3.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-16/igt@kms_flip@plain-flip-ts-check@a-hdmi-a4.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_140030v2/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@a-hdmi-a4.html">F=
AIL</a> ([i915#12431])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-16/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_140030v2/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html">F=
AIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> ([i915#3555] / [i915#=
8813]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp=
-4tile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#3555]) +4 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i91=
5#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-6=
4bpp-xtile-to-16bpp-xtile-upscaling.html">SKIP</a> ([i915#3555]) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap=
-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140030v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-d=
raw-mmap-cpu.html">FAIL</a> ([i915#6880]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140030v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-dra=
w-render.html">SKIP</a> ([i915#5354]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> ([i915#3458]) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +9 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([i915#1825]) +6 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_invalid_mode@clock-to=
o-high.html">SKIP</a> ([i915#3555] / [i915#6403] / [i915#8826])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_invalid_mode@clock-to=
o-high@pipe-c-edp-1.html">SKIP</a> ([i915#9457]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-revoke:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_lease@lease-revoke.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard=
-dg2-2/igt@kms_lease@lease-revoke.html">SKIP</a> ([i915#9197]) +32 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane@pixel-format.htm=
l">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_plane@plane-panning-top-left.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1400=
30v2/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html">SKIP</a> ([i915=
#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_140030v2/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP<=
/a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140030v2/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html">FAIL</a=
> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-rkl-5/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-=
with-rotation.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@plane-down=
scale-factor-0-5-with-rotation.html">SKIP</a> ([i915#12247] / [i915#8152] /=
 [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-=
with-rotation@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@pla=
ne-downscale-factor-0-5-with-rotation@pipe-d.html">SKIP</a> ([i915#12247] /=
 [i915#8152])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-20x20-with-pi=
xel-format.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale=
-20x20-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915=
#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pi=
pe-a:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-5-upscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247]=
) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pi=
pe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-5-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]=
 / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#695=
3] / [i915#8152] / [i915#9423])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#69=
53])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247]) +8=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-=
25.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25@=
pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-fa=
ctor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25@=
pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-fa=
ctor-0-25@pipe-d.html">SKIP</a> ([i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> ([i915#12343])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-12/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_pm_dc@dc6-psr.html">SK=
IP</a> ([i915#9685]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_pm_dc@dc6-psr.html">S=
KIP</a> ([i915#9685])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_pm_dc@dc6-psr.html">S=
KIP</a> ([i915#10139])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tg=
lu-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/sha=
rd-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#9519]) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/=
shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519]) +2=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-snb5/igt@kms_psr2_sf@fbc-pr-cursor-p=
lane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_psr2_sf@fbc-pr-plane-=
move-sf-dmg-area.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> ([i915#9808])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_psr2_sf@pr-overlay-pl=
ane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +2 other tests skip</l=
i>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_psr2_sf@pr-overlay-pl=
ane-update-sf-dmg-area.html">SKIP</a> ([i915#12316]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-glk9/igt@kms_psr2_sf@psr2-cursor-pla=
ne-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_psr@fbc-pr-cursor-rend=
er.html">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@kms_psr@fbc-psr2-sprite-r=
ender.html">SKIP</a> ([i915#1072] / [i915#9732]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-page-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_psr@pr-primary-page-f=
lip.html">SKIP</a> ([i915#9688]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_rotation_crc@primary-=
rotation-90.html">SKIP</a> ([i915#11131])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-12/igt@kms_setmode@basic.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1=
-17/igt@kms_setmode@basic.html">FAIL</a> ([i915#12317])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-mtlp-6/igt@kms_setmode@basic@pipe-b-edp-1.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14003=
0v2/shard-mtlp-6/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a> ([i915#5=
465]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-17/igt@kms_setmode@basic@pipe-b-=
hdmi-a-4.html">FAIL</a> ([i915#12317])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140030v2/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-d-edp-1.html">FAIL</a> ([i915#9196]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_vblank@ts-continuation=
-dpms-suspend.html">SKIP</a> ([i915#9197]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@kms_vrr@flip-basic.html">=
SKIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-tglu-9/igt@perf_pmu@busy-accuracy-98@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14003=
0v2/shard-tglu-6/igt@perf_pmu@busy-accuracy-98@rcs0.html">FAIL</a> ([i915#4=
349])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@prime_vgem@basic-write.htm=
l">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> ([i915#3708])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-dg1-15/igt@prime_vgem@fence-flip-han=
g.html">SKIP</a> ([i915#3708]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140030v2/shard-mtlp-3/igt@prime_vgem@fence-flip-han=
g.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@fbdev@pan.html">SKIP</a> ([i915#2582]) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shar=
d-dg2-5/igt@fbdev@pan.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-1/igt@gem_cc=
s@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-tglu-3/igt@gem_ctx_engines@invalid-engines.html">FAIL</=
a> ([i915#12027] / [i915#12031]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140030v2/shard-tglu-8/igt@gem_ctx_engines@invalid=
-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-12/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5=
784]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40030v2/shard-dg1-15/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140030v2/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a=
> ([i915#11441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140030v2/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABOR=
T</a> ([i915#7975] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140030v2/shard-dg1-13/igt@gem_exec_suspend@basic=
-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-glk7/igt@gen9_exec_parse@allowed-single.html">ABORT</a>=
 ([i915#12375] / [i915#5566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140030v2/shard-glk9/igt@gen9_exec_parse@allowed-sing=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-snb2/igt@i915_module_load@reload-with-fault-injection.h=
tml">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140030v2/shard-snb5/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140030v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle=
@gt0-vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_atomic_interruptible@atomic-setmode.html"=
>SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_atomic_interruptible@atomic-s=
etmode.html">PASS</a> +26 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-1=
8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdm=
i-a-4.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-=
1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-tglu-2/igt@kms_atomic_transition@plane-toggle-modeset-t=
ransition@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#11808]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-tglu-9/igt@=
kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html"=
>PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DM=
ESG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rota=
te-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk6/igt@kms_cursor=
_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-=
hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140030v2/shard-glk6/igt@kms_flip@2x-plain-fli=
p-fb-recreate@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-16/igt@kms_flip@flip-vs-suspend-interruptible.html"=
>INCOMPLETE</a> ([i915#4839] / [i915#6113]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_flip@fli=
p-vs-suspend-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-=
a2.html">INCOMPLETE</a> ([i915#4839]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140030v2/shard-glk2/igt@kms_flip@flip-vs-sus=
pend-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-16/igt@kms_flip@flip-vs-suspend-interruptible@c-hdm=
i-a4.html">INCOMPLETE</a> ([i915#6113]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_flip@flip-vs=
-suspend-interruptible@c-hdmi-a4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOM=
PLETE</a> ([i915#4839]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140030v2/shard-snb7/igt@kms_flip@flip-vs-suspend@b-hdmi-a1=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-rkl-3/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> (=
[i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_140030v2/shard-rkl-4/igt@kms_flip@plain-flip-ts-check.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-tglu-3/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html"=
>FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140030v2/shard-tglu-8/igt@kms_flip@plain-flip-ts-check@d-h=
dmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri=
-shrfb-draw-pwrite.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_front=
buffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_frontb=
uffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +17 oth=
er tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a=
> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140030v2/shard-dg2-5/igt@kms_invalid_mode@uint-max-clock.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane@plane-position-covered.html">SKIP</=
a> ([i915#8825]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140030v2/shard-dg2-3/igt@kms_plane@plane-position-covered.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.ht=
ml">SKIP</a> ([i915#7294]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_plane_alpha_blend@alpha-t=
ransparent-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5=
/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-=
d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms=
_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#942=
3]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
030v2/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscal=
e-factor-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling=
.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt=
@kms_plane_scaling@planes-scaler-unity-scaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling=
@pipe-a.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_plane_scaling@p=
lanes-scaler-unity-scaling@pipe-a.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling=
@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_p=
lane_scaling@planes-scaler-unity-scaling@pipe-d.html">PASS</a> +1 other tes=
t pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
SKIP</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140030v2/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-=
wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-st=
ress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-10/igt@kms_setmode@basic@pipe-b-dp-3.html">FAIL</a>=
 ([i915#5465]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140030v2/shard-dg2-10/igt@kms_setmode@basic@pipe-b-dp-3.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98@bcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-tglu-9/igt@perf_pmu@busy-accuracy-98@bcs0.html">FAIL</a=
> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140030v2/shard-tglu-6/igt@perf_pmu@busy-accuracy-98@bcs0.html">PAS=
S</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-glk6/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030=
v2/shard-glk2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#120=
27] / [i915#12031])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-tglu-10/igt@i915_module_load@reload-with-fault-injectio=
n.html">ABORT</a> ([i915#9697]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140030v2/shard-tglu-3/igt@i915_module_load@reload-=
with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP<=
/a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140030v2/shard-dg2-10/igt@kms_big_fb@linear-8bpp-rotate-270.html=
">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKI=
P</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40030v2/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> =
([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP=
</a> ([i915#5190] / [i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_big_fb@y-tiled-8bpp-=
rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +5 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html">SKIP<=
/a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-14/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.=
html">SKIP</a> ([i915#4423] / [i915#6095]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_ccs@bad-p=
ixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#6095]) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.ht=
ml">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_ccs@bad-rotation-90-4-tile=
d-mtl-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +6 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-=
rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_cc=
s@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#9197]) =
+1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-c=
cs.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-14/igt@kms_chamelium_frames@vga-frame-dump.html">SK=
IP</a> ([i915#4423] / [i915#7828]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_chamelium_frames@=
vga-frame-dump.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_color@deep-color.html">SKIP</a> ([i915#35=
55]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0030v2/shard-dg2-2/igt@kms_color@deep-color.html">SKIP</a> ([i915#5354])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html=
">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_content_protection@dp-mst-li=
c-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_content_protection@dp-mst-type-0.html">SK=
IP</a> ([i915#3299]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140030v2/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0=
.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_content_protection@legacy.html">SKIP</a> =
([i915#7118] / [i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_content_protection@legacy=
.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIME=
OUT</a> ([i915#7173]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_140030v2/shard-dg2-6/igt@kms_content_protection@lic-type-0.h=
tml">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> ([i915#11453]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-=
512x512.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.ht=
ml">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x32.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-lega=
cy.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_cursor_legacy@2x-long=
-cursor-vs-flip-legacy.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.htm=
l">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-fl=
ipb-toggle.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2=
-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> =
([i915#9833]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140030v2/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a=
> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html">S=
KIP</a> ([i915#12402]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_dp_linktrain_fallback@dp-fallb=
ack.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP<=
/a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140030v2/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html"=
>SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#9197]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14003=
0v2/shard-dg2-5/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3=
840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bp=
p-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2=
/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">=
SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-=
3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html=
">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_flip_=
scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i91=
5#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2=
/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscal=
ing.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
shrfb-draw-blt.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_frontbuf=
fer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">FAIL</a> ([i915#6880]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri=
-shrfb-draw-pwrite.html">SKIP</a> ([i915#4423]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_fron=
tbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-p=
ri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-=
dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-c=
pu.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-p=
ri-indfb-draw-render.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_fro=
ntbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> (=
[i915#5354]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-indfb-draw-blt.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-4/igt@kms_frontb=
uffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([i915#=
10433] / [i915#3458]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_f=
rontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</=
a> ([i915#5354]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">S=
KIP</a> ([i915#4342] / [i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_frontbuffer_track=
ing@pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_frontbuffer_=
tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#3458]) +8 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri=
-indfb-draw-blt.html">SKIP</a> ([i915#3458] / [i915#4423]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/i=
gt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</=
a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-blt.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-7/ig=
t@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a=
> ([i915#3458]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-m=
map-gtt.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-10/igt@kms_frontbuffer_tra=
cking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +12 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#9=
197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40030v2/shard-dg2-3/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] /=
 [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i91=
5#6301]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140030v2/shard-dg2-2/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#9=
197])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (=
[i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_140030v2/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> =
([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">=
SKIP</a> ([i915#5354] / [i915#8152] / [i915#9423]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-5/igt@kms_pl=
ane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([i915#5354] / [i915#9423])=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html">SK=
IP</a> ([i915#6953] / [i915#9423]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_plane_scaling@inte=
l-max-src-size.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-modifiers.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2=
/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifie=
rs.html">SKIP</a> ([i915#12247] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-modifiers@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-=
dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe=
-d.html">SKIP</a> ([i915#12247])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-rotation.html">SKIP</a> ([i915#12247] / [i915#9423]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/ig=
t@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html">SKIP</a=
> ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_p=
lane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a=
> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg1-14/igt@kms_psr@psr-primary-mmap-cpu.html">SKIP</a> =
([i915#1072] / [i915#4423] / [i915#9732]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg1-14/igt@kms_psr@psr-pr=
imary-mmap-cpu.html">SKIP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-4/igt@kms_rotation_crc@primary-rotation-90.html">SK=
IP</a> ([i915#11131]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_140030v2/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-9=
0.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0=
.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140030v2/shard-dg2-3/igt@kms_rotation_=
crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5190]) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15549/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html">SK=
IP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01">SKIP</a> ([i=
915#11131])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3497044080680215386==--
