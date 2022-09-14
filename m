Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E5A5B8DD6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 19:07:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C5210E00E;
	Wed, 14 Sep 2022 17:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C6D110E00E;
 Wed, 14 Sep 2022 17:07:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34008A66C9;
 Wed, 14 Sep 2022 17:07:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0785293134603994413=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Wed, 14 Sep 2022 17:07:23 -0000
Message-ID: <166317524318.30165.14177391157439982500@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220914005821.3702446-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220914005821.3702446-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_bug_in_version_reduced_firmware_update_=28rev2=29?=
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

--===============0785293134603994413==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix bug in version reduced firmware update (rev2)
URL   : https://patchwork.freedesktop.org/series/108461/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12132_full -> Patchwork_108461v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108461v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108461v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108461v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_sseu@full-enable:
    - shard-apl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@i915_pm_sseu@full-enable.html

  
Known issues
------------

  Here are the changes found in Patchwork_108461v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([FAIL][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#4386]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl3/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html
    - shard-glk:          ([PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [FAIL][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76]) ([i915#4392]) -> ([PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk8/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk8/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk8/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk7/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk7/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk6/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk6/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk5/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk5/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk5/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk2/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk1/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk2/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk2/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk2/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk2/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk3/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk3/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk3/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk6/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk6/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk6/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk7/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk7/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk7/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk8/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk8/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk8/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][102] ([i915#4991])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@gem_create@create-massive.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][103] -> [SKIP][104] ([i915#4525])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][105] -> [FAIL][106] ([i915#2846])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][107] -> [FAIL][108] ([i915#2842])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][109] ([i915#2842]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#2842])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][112] ([i915#2842])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109313])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][114] -> [SKIP][115] ([i915#2190])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#4613]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#4613]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][118] ([i915#2658])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_softpin@evict-single-offset:
    - shard-apl:          NOTRUN -> [FAIL][119] ([i915#4171])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@gem_softpin@evict-single-offset.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][120] -> [DMESG-WARN][121] ([i915#180]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][122] -> [DMESG-WARN][123] ([i915#5566] / [i915#716])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/igt@gen9_exec_parse@allowed-single.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][124] -> [FAIL][125] ([i915#1888] / [i915#5138])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk3/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][126] ([fdo#109278]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#3886]) +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#3886]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-glk:          NOTRUN -> [SKIP][130] ([fdo#109271] / [fdo#111827])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][131] ([i915#2587] / [i915#2672])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][132] ([fdo#109271]) +69 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109280])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][134] ([fdo#108145] / [i915#265]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][135] ([fdo#108145] / [i915#265]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([fdo#111068] / [i915#658])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-glk:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#658]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-apl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#658]) +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271]) +114 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-glk:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#2437])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][141] ([fdo#109291])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#2994])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@sysfs_clients@fair-7.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-immediate:
    - shard-tglb:         [TIMEOUT][143] ([i915#3063]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-tglb2/igt@gem_eio@in-flight-immediate.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb6/igt@gem_eio@in-flight-immediate.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [FAIL][145] ([i915#5784]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-tglb1/igt@gem_eio@reset-stress.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb5/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][147] ([i915#2842]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][149] ([i915#2842]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][151] ([i915#2842]) -> [PASS][152] +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-iclb:         [INCOMPLETE][153] ([i915#6695]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-iclb7/igt@gem_exec_whisper@basic-fds-forked.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][155] ([i915#4281]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-apl:          [DMESG-WARN][157] ([i915#180]) -> [PASS][158] +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@perf@stress-open-close:
    - shard-glk:          [INCOMPLETE][159] ([i915#5213]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk8/igt@perf@stress-open-close.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@perf@stress-open-close.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6695]: https://gitlab.freedesktop.org/drm/intel/issues/6695
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716


Build changes
-------------

  * Linux: CI_DRM_12132 -> Patchwork_108461v2

  CI-20190529: 20190529
  CI_DRM_12132: 6c93e979e5426070b3de3df81c468548328d1162 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6653: 4f927248ebbf11f03f4c1ea2254f011e7575322f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108461v2: 6c93e979e5426070b3de3df81c468548328d1162 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/index.html

--===============0785293134603994413==
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
<tr><td><b>Series:</b></td><td>Fix bug in version reduced firmware update (=
rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/108461/">https://patchwork.freedesktop.org/series/108461/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108461v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108461v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12132_full -&gt; Patchwork_108461v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108461v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_108461v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
108461v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_sseu@full-enable:<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@i915_pm_sseu@full-enable.ht=
ml">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108461v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-apl1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2132/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12132/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl3/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12132/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12132/shard-apl3/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12132/shard-apl4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12132/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12132/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2132/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12132/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-apl8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108461v2/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-a=
pl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_108461v2/shard-apl2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v=
2/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_108461v2/shard-apl3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_108461v2/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-ap=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108461v2/shard-apl4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108461v2/shard-apl6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_108461v2/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_108461v2/shard-apl7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108461v2/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108461v2/shard-apl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/boot.htm=
l">PASS</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2132/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12132/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shar=
d-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12132/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12132/shard-glk6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk6/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12132/shard-glk5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk=
5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12132/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2132/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12132/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12132/shard-glk2/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4392">i915#4392</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108461v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-g=
lk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_108461v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v=
2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_108461v2/shard-glk3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_108461v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_108461v2/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108461v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108461v2/shard-glk6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_108461v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_108461v2/shard-glk7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk=
8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108461v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk8/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108461v2/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-glk9/boot.htm=
l">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@gem_create@create-massive.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08461v2/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/=
shard-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v=
2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@gem_exec_fair@basic-none-rr=
ul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8461v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-iclb1/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109313">fdo#109313</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-=
tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@gem_lmem_swapping@verify-ra=
ndom-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@gem_softpin@evict-single-of=
fset.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4171">i915#4171</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_108461v2/shard-apl3/igt@gem_workarounds@suspend-resume-context.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-apl2/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v=
2/shard-apl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8461v2/shard-glk3/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#=
5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_ccs@pipe-a-bad-pixel-f=
ormat-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_ccs@pipe-a-crc-primary-=
basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@kms_chamelium@hdmi-audio.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_chamelium@hdmi-edid-cha=
nge-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +69 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-apl4/igt@kms_plane_alpha_blend@pipe-=
b-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-glk5/igt@kms_plane_alpha_blend@pipe-=
c-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@kms_psr2_sf@cursor-plane-u=
pdate-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@kms_psr2_su@page_flip-p010.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-apl2/igt@kms_psr@psr2_sprite_plane_o=
noff.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +114 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-glk9/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-iclb6/igt@prime_nv_api@i915_nv_reimp=
ort_twice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@sysfs_clients@fair-7.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-immediate:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-tglb2/igt@gem_eio@in-flight-immediate.html">TIMEOUT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#306=
3</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
108461v2/shard-tglb6/igt@gem_eio@in-flight-immediate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-tglb1/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/=
shard-tglb5/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108461v2/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_108461v2/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108461v2/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-iclb7/igt@gem_exec_whisper@basic-fds-forked.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6695"=
>i915#6695</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_108461v2/shard-iclb6/igt@gem_exec_whisper@basic-fds-forked.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/=
shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl6/igt@kms_plane@plane-pann=
ing-bottom-right-suspend@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12132/shard-glk8/igt@perf@stress-open-close.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
461v2/shard-glk5/igt@perf@stress-open-close.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12132/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12132/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6599">i915#6599</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108461v2/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl8/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_108461v2/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108461v2/shard-apl3/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108461v2/shard-apl3/igt@runner@aborted.html">FAIL</a>=
) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/6599">i915#6599</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12132 -&gt; Patchwork_108461v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12132: 6c93e979e5426070b3de3df81c468548328d1162 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6653: 4f927248ebbf11f03f4c1ea2254f011e7575322f @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108461v2: 6c93e979e5426070b3de3df81c468548328d1162 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0785293134603994413==--
