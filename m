Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5024D581D0C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 03:23:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72676B9844;
	Wed, 27 Jul 2022 01:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3B7EB984D;
 Wed, 27 Jul 2022 01:23:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB705AADD2;
 Wed, 27 Jul 2022 01:23:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0879040797732403877=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin Paneer Selvam" <arunpravin.paneerselvam@amd.com>
Date: Wed, 27 Jul 2022 01:23:02 -0000
Message-ID: <165888498292.21596.5265836053620284666@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220726162205.2778-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220726162205.2778-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/ttm=3A_Fix_dummy_res_NULL_ptr_deref_bug?=
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

--===============0879040797732403877==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/ttm: Fix dummy res NULL ptr deref bug
URL   : https://patchwork.freedesktop.org/series/106727/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11945_full -> Patchwork_106727v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106727v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106727v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 13)
------------------------------

  Additional (3): shard-rkl shard-dg1 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106727v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11945_full and Patchwork_106727v1_full:

### New IGT tests (8) ###

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@hdmi-a-4-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@hdmi-a-4-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip@flip-vs-panning-vs-hang@a-hdmi-a4:
    - Statuses : 1 pass(s)
    - Exec time: [29.87] s

  * igt@kms_flip@flip-vs-panning-vs-hang@d-hdmi-a4:
    - Statuses : 1 pass(s)
    - Exec time: [30.00] s

  * igt@kms_sequence@get-forked@hdmi-a-4-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [2.35] s

  * igt@kms_sequence@get-forked@hdmi-a-4-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [2.24] s

  * igt@kms_sequence@get-forked@hdmi-a-4-pipe-c:
    - Statuses : 1 pass(s)
    - Exec time: [2.24] s

  * igt@kms_sequence@get-forked@hdmi-a-4-pipe-d:
    - Statuses : 1 pass(s)
    - Exec time: [2.22] s

  

Known issues
------------

  Here are the changes found in Patchwork_106727v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [FAIL][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51]) ([i915#4392])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [FAIL][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76]) ([i915#4338]) -> ([PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb7/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb7/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb6/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb6/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb6/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb5/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb5/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb5/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb2/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb2/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb2/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb2/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb6/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb6/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb6/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb6/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb5/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb5/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb5/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb4/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb4/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb4/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb4/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb4/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb2/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb2/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_mm@all:
    - shard-kbl:          NOTRUN -> [SKIP][102] ([fdo#109271]) +81 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@drm_mm@all.html

  * igt@gem_ctx_persistence@hostile:
    - shard-snb:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#1099])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][104] -> [SKIP][105] ([i915#4525]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][106] -> [FAIL][107] ([i915#2842])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-kbl:          [PASS][108] -> [SKIP][109] ([fdo#109271])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][110] -> [FAIL][111] ([i915#2849])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][112] -> [SKIP][113] ([i915#2190])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#4613])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-kbl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#4613]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([i915#4613])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglb:         NOTRUN -> [SKIP][117] ([fdo#111656])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gem_mmap_gtt@coherency.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][118] ([i915#2658])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#4270])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([i915#4270])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([i915#768]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([i915#3297]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][123] ([i915#180])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109289]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [PASS][125] -> [DMESG-WARN][126] ([i915#5566] / [i915#716])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#2527] / [i915#2856])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_module_load@resize-bar:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([i915#6412])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][129] -> [FAIL][130] ([i915#454])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [PASS][131] -> [WARN][132] ([i915#6405])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109293] / [fdo#109506])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#4387])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][135] -> [DMESG-WARN][136] ([i915#180]) +3 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl1/igt@i915_suspend@debugfs-reader.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@i915_suspend@debugfs-reader.html
    - shard-apl:          [PASS][137] -> [DMESG-WARN][138] ([i915#180]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl3/igt@i915_suspend@debugfs-reader.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl3/igt@i915_suspend@debugfs-reader.html

  * igt@kms_async_flips@crc@pipe-a-dp-1:
    - shard-kbl:          [PASS][139] -> [FAIL][140] ([i915#5852])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl7/igt@kms_async_flips@crc@pipe-a-dp-1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl7/igt@kms_async_flips@crc@pipe-a-dp-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-iclb:         NOTRUN -> [SKIP][141] ([i915#5286]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][142] ([fdo#111615])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][143] ([fdo#110723]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][144] ([fdo#111615] / [i915#3689])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][145] ([i915#3689] / [i915#3886])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109278] / [i915#3886]) +4 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#3886]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][148] ([i915#3689] / [i915#6095]) +2 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][149] ([i915#3689])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][150] ([fdo#109278]) +18 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][151] ([i915#6095])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglb:         NOTRUN -> [SKIP][152] ([i915#3742])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-iclb:         NOTRUN -> [SKIP][153] ([i915#3742])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium@hdmi-edid-read:
    - shard-tglb:         NOTRUN -> [SKIP][154] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-apl:          NOTRUN -> [SKIP][155] ([fdo#109271] / [fdo#111827])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl6/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_color@deep-color:
    - shard-iclb:         NOTRUN -> [SKIP][156] ([i915#3555]) +6 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_color@deep-color.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][157] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl7/igt@kms_color_chamelium@pipe-a-gamma.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-snb:          NOTRUN -> [SKIP][159] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][160] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][161] ([fdo#109271] / [fdo#111827])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][162] ([i915#3116])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][163] ([i915#1319])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-sliding@pipe-b-dp-1-512x170:
    - shard-apl:          NOTRUN -> [SKIP][164] ([fdo#109271]) +15 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl6/igt@kms_cursor_crc@cursor-sliding@pipe-b-dp-1-512x170.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa@atomic-transitions-varying-size:
    - shard-tglb:         NOTRUN -> [SKIP][165] ([fdo#109274] / [fdo#111825]) +6 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_cursor_legacy@cursorb-vs-flipa@atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][166] ([i915#5287])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][167] ([fdo#109274]) +2 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
    - shard-apl:          [PASS][168] -> [FAIL][169] ([i915#79])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][170] -> [FAIL][171] ([i915#2122])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][172] ([i915#2672])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][173] ([i915#2672]) +10 similar issues
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][174] ([i915#2672] / [i915#3555])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][175] ([fdo#109285])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-skl:          NOTRUN -> [SKIP][176] ([fdo#109271]) +4 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][177] ([fdo#109280] / [fdo#111825]) +5 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-tglb:         NOTRUN -> [FAIL][178] ([i915#160]) +2 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-snb:          NOTRUN -> [SKIP][179] ([fdo#109271]) +77 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][180] ([fdo#109280]) +20 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][181] ([i915#3555])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-tglb:         NOTRUN -> [SKIP][182] ([fdo#109289])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][183] ([fdo#108145] / [i915#265])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][184] -> [FAIL][185] ([fdo#108145] / [i915#265])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@tiling-x@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][186] ([i915#3536]) +2 similar issues
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_plane_lowres@tiling-x@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-a-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][187] ([i915#5176]) +2 similar issues
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][188] ([i915#5235]) +2 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][189] -> [SKIP][190] ([i915#5235]) +2 similar issues
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-tglb:         NOTRUN -> [SKIP][191] ([i915#2920])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-kbl:          NOTRUN -> [SKIP][192] ([fdo#109271] / [i915#658])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][193] ([fdo#111068] / [i915#658]) +1 similar issue
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@psr2_dpms:
    - shard-tglb:         NOTRUN -> [FAIL][194] ([i915#132] / [i915#3467])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][195] ([fdo#109441]) +1 similar issue
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][196] -> [SKIP][197] ([fdo#109441]) +1 similar issue
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-tglb:         NOTRUN -> [SKIP][198] ([i915#5289])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_setmode@basic@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][199] ([i915#5465]) +1 similar issue
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/igt@kms_setmode@basic@pipe-a-vga-1.html

  * igt@nouveau_crc@pipe-b-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][200] ([i915#2530])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@nouveau_crc@pipe-b-source-outp-inactive.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][201] ([i915#2530])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [PASS][202] -> [DMESG-WARN][203] ([i915#1982])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-skl9/igt@perf_pmu@module-unload.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl6/igt@perf_pmu@module-unload.html

  * igt@prime_nv_pcopy@test_semaphore:
    - shard-tglb:         NOTRUN -> [SKIP][204] ([fdo#109291])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@prime_nv_pcopy@test_semaphore.html

  * igt@prime_nv_test@i915_import_pread_pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][205] ([fdo#109291]) +1 similar issue
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@prime_nv_test@i915_import_pread_pwrite.html

  * igt@sysfs_clients@sema-10:
    - shard-iclb:         NOTRUN -> [SKIP][206] ([i915#2994])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [TIMEOUT][207] ([i915#5748]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-tglb2/igt@gem_busy@close-race.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gem_busy@close-race.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [FAIL][209] ([i915#6268]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][211] ([i915#4525]) -> [PASS][212] +1 similar issue
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][213] ([i915#2846]) -> [PASS][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][215] ([i915#2842]) -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][217] ([i915#2842]) -> [PASS][218] +1 similar issue
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [FAIL][219] ([i915#2842]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][221] ([i915#180]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl2/igt@gem_workarounds@suspend-resume.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl6/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-apl:          [WARN][223] ([i915#6405]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][225] ([i915#62]) -> [PASS][226] +47 similar issues
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@cursor-vs-flip@toggle:
    - shard-skl:          [FAIL][227] ([i915#5072]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-skl1/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][229] ([i915#2346]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@legacy:
    - shard-skl:          [FAIL][231] ([i915#2346]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-apl:          [FAIL][233] ([i915#79]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][235] ([i915#180]) -> [PASS][236] +4 similar issues
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][237] ([i915#2122]) -> [PASS][238] +1 similar issue
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][239] ([i915#6375]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][241] ([i915#5235]) -> [PASS][242] +2 similar issues
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [SKIP][243] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb7/igt@kms_psr2_su@page_flip-xrgb8888.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][245] ([fdo#109441]) -> [PASS][246] +1 similar issue
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb5/igt@kms_psr@psr2_primary_blt.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][247] ([i915#1542]) -> [PASS][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-skl4/igt@perf@blocking.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl4/igt@perf@blocking.html

  * igt@testdisplay:
    - shard-glk:          [DMESG-WARN][249] ([i915#118]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk2/igt@testdisplay.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk5/igt@testdisplay.html

  
#### Warnings ####

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][251] ([i915#4767]) -> [INCOMPLETE][252] ([i915#4939])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          [DMESG-FAIL][253] ([fdo#108145] / [i915#62]) -> [FAIL][254] ([fdo#108145] / [i915#265])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][255] ([i915#658]) -> [SKIP][256] ([i915#2920]) +1 similar issue
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][257], [FAIL][258], [FAIL][259]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][260], [FAIL][261], [FAIL][262]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl2/igt@runner@aborted.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl3/igt@runner@aborted.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl1/igt@runner@aborted.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl3/igt@runner@aborted.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl3/igt@runner@aborted.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl4/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][263], [FAIL][264], [FAIL][265], [FAIL][266], [FAIL][267], [FAIL][268], [FAIL][269]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][270], [FAIL][271], [FAIL][272], [FAIL][273], [FAIL][274], [FAIL][275]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl4/igt@runner@aborted.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl4/igt@runner@aborted.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl4/igt@runner@aborted.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl6/igt@runner@aborted.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl6/igt@runner@aborted.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl4/igt@runner@aborted.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl6/igt@runner@aborted.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl6/igt@runner@aborted.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl7/igt@runner@aborted.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl6/igt@runner@aborted.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl7/igt@runner@aborted.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@runner@aborted.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5748]: https://gitlab.freedesktop.org/drm/intel/issues/5748
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5852]: https://gitlab.freedesktop.org/drm/intel/issues/5852
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6331]: https://gitlab.freedesktop.org/drm/intel/issues/6331
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6375]: https://gitlab.freedesktop.org/drm/intel/issues/6375
  [i915#6405]: https://gitlab.freedesktop.org/drm/intel/issues/6405
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6458]: https://gitlab.freedesktop.org/drm/intel/issues/6458
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11945 -> Patchwork_106727v1

  CI-20190529: 20190529
  CI_DRM_11945: 15fbed4f822211fbb7653c2b8591594d92de9551 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106727v1: 15fbed4f822211fbb7653c2b8591594d92de9551 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/index.html

--===============0879040797732403877==
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
<tr><td><b>Series:</b></td><td>drm/ttm: Fix dummy res NULL ptr deref bug</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/106727/">https://patchwork.freedesktop.org/series/106727/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_106727v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106727v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11945_full -&gt; Patchwork_106727v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106727v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_106727v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 13)</h2>
<p>Additional (3): shard-rkl shard-dg1 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
106727v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_legacy@cursor-vs-flip@atomic:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-skl7/igt@kms_cursor_legacy@cursor-vs=
-flip@atomic.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11945_full and Patchwork_1=
06727v1_full:</p>
<h3>New IGT tests (8)</h3>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@hdmi-a-4-pi=
pe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@hdmi-a-4-pi=
pe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-vs-hang@a-hdmi-a4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [29.87] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-vs-hang@d-hdmi-a4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [30.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@hdmi-a-4-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@hdmi-a-4-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@hdmi-a-4-pipe-c:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@hdmi-a-4-pipe-d:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.22] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106727v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11945/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11945/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11945/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11945/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11945/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11945/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11945/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1945/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11945/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11945/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
727v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_106727v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106727v1/shard-glk8/boot.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106727v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6727v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106727v1/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106727v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/sh=
ard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106727v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6727v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106727v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106727v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106727v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk1/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11945/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11945/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11945/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11945/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11945/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11945/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11945/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb5/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1945/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11945/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11945/shard-snb2/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4338">i915#4338</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106727v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-s=
nb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_106727v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v=
1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_106727v1/shard-snb6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_106727v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_106727v1/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-sn=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_106727v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1=
/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106727v1/shard-snb4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106727v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_106727v1/shard-snb4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_106727v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/=
shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_106727v1/shard-snb2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-snb2/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_mm@all:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@drm_mm@all.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) +81 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-snb7/igt@gem_ctx_persistence@hostile=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106727v1/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#45=
25</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11945/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
727v1/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11945/shard-kbl1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
727v1/shard-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271<=
/a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
727v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@gem_lmem_swapping@parallel-=
multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gem_mmap_gtt@coherency.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1116=
56">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gem_pwrite@basic-exhaustio=
n.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@gem_pxp@fail-invalid-prote=
cted-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@gem_render_copy@x-tiled-to=
-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/768">i915#768</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@gem_userptr_blits@readonly=
-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3297">i915#3297</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@gem_workarounds@suspend-res=
ume-context.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@gen7_exec_parse@basic-offs=
et.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-kbl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v=
1/shard-kbl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@gen9_exec_parse@batch-inva=
lid-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-icl=
b4/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6727v1/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6405">i915#6405</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@i915_pm_rpm@modeset-pc8-re=
sidency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11945/shard-kbl1/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/sh=
ard-kbl1/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3 simila=
r issues</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11945/shard-apl3/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/sh=
ard-apl3/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 simila=
r issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-kbl7/igt@kms_async_flips@crc@pipe-a-dp-1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727=
v1/shard-kbl7/igt@kms_async_flips@crc@pipe-a-dp-1.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5852">i915#5852</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_ccs@pipe-a-bad-aux-str=
ide-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@kms_ccs@pipe-c-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-f=
ormat-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_ccs@pipe-d-bad-pixel-f=
ormat-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_ccs@pipe-d-crc-primary=
-basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109278">fdo#109278</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_ccs@pipe-d-crc-sprite-=
planes-basic-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_cdclk@mode-transition.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_chamelium@hdmi-edid-re=
ad.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-apl6/igt@kms_chamelium@hdmi-hpd-enab=
le-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_color@deep-color.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_color_chamelium@pipe-a=
-ctm-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-kbl7/igt@kms_color_chamelium@pipe-a-=
gamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-snb7/igt@kms_color_chamelium@pipe-c-=
degamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_color_chamelium@pipe-d=
-ctm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-skl9/igt@kms_color_chamelium@pipe-d-=
ctm-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@kms_content_protection@lega=
cy.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding@pipe-b-dp-1-512x170:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-apl6/igt@kms_cursor_crc@cursor-slidi=
ng@pipe-b-dp-1-512x170.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa@atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_cursor_legacy@cursorb-=
vs-flipa@atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +6 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_draw_crc@draw-method-x=
rgb8888-mmap-cpu-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_flip@2x-modeset-vs-vbl=
ank-race-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106727v1/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106727v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#=
2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-skl9/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +5 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_frontbuffer_tracking@f=
bcpsr-indfb-scaledprimary.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/160">i915#160</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-snb7/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +77 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +20 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_pipe_b_c_ivb@from-pipe=
-c-to-b-with-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-=
a-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_106727v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alp=
ha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_plane_lowres@tiling-x@=
pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3536">i915#3536</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-a-ed=
p-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@kms_plane_scaling@plane-sc=
aler-with-rotation-unity-scaling@pipe-a-edp-1.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-=
edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb2/igt@kms_plan=
e_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235=
">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-kbl1/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_psr@psr2_dpms.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/132">i91=
5#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3467=
">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@kms_psr@psr2_primary_mmap_=
cpu.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727=
v1/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-snb7/igt@kms_setmode@basic@pipe-a-vg=
a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5465">i915#5465</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@nouveau_crc@pipe-b-source-=
outp-inactive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@nouveau_crc@pipe-c-source-=
outp-inactive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-skl9/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-=
skl6/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test_semaphore:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-tglb1/igt@prime_nv_pcopy@test_semaph=
ore.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_pread_pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb1/igt@prime_nv_test@i915_import_=
pread_pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109291">fdo#109291</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106727v1/shard-iclb5/igt@sysfs_clients@sema-10.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-tglb2/igt@gem_busy@close-race.html">TIMEOUT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5748">i915#5748</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1=
/shard-tglb1/igt@gem_busy@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106727v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_106727v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
727v1/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106727v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106727v1/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6727v1/shard-glk3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-apl2/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106727v1/shard-apl6/igt@gem_workarounds@suspend-resume.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-apl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6405">i915=
#6405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106727v1/shard-apl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-=
0.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/62">i915#62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_106727v1/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-=
32bpp-rotate-0.html">PASS</a> +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-skl1/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5072">=
i915#5072</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106727v1/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-glk2/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346"=
>i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_106727v1/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor@legacy.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_106727v1/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-int=
erruptible@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106727v1/shard-kbl6/igt@kms_flip@flip-vs-suspend-interrupt=
ible@c-dp1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_106727v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bp=
p-yftileccs-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/6375">i915#6375</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-ic=
lb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscalin=
g@pipe-a-default-mode.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-iclb3/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb7/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109=
642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068"=
>fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_106727v1/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb5/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1067=
27v1/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-skl4/igt@perf@blocking.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-skl=
4/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-glk2/igt@testdisplay.html">DMESG-WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-g=
lk5/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727=
v1/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-ma=
x.html">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/62">i915#62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106727v1/shard-apl2/igt@kms_plane_alpha_blend@pip=
e-b-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_106727v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11945/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#43=
12</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i=
915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106727v1/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-apl3/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106727v1/shard-apl4/igt@runner@aborted.html">FAIL</a>) (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#300=
2</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i9=
15#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/52=
57">i915#5257</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11945/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11945/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11945/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/shard-kbl4/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1945/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106727v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_106727v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-kbl7/igt@=
runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_106727v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/shard-=
kbl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</=
p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11945 -&gt; Patchwork_106727v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11945: 15fbed4f822211fbb7653c2b8591594d92de9551 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106727v1: 15fbed4f822211fbb7653c2b8591594d92de9551 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0879040797732403877==--
