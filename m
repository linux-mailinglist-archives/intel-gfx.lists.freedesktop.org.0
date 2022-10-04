Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA81F5F48EB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 19:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2850310E06C;
	Tue,  4 Oct 2022 17:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D7DF710E06B;
 Tue,  4 Oct 2022 17:48:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C335AADD9;
 Tue,  4 Oct 2022 17:48:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8532861877671121432=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 04 Oct 2022 17:48:43 -0000
Message-ID: <166490572358.14069.8477375141985986918@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221004114915.221708-1-matthew.auld@intel.com>
In-Reply-To: <20221004114915.221708-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/2=5D_drm/i915=3A_enable_PS64_suppor?=
 =?utf-8?q?t_for_DG2?=
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

--===============8532861877671121432==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/2] drm/i915: enable PS64 support for DG2
URL   : https://patchwork.freedesktop.org/series/109384/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12210_full -> Patchwork_109384v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109384v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109384v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109384v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_query@query-regions-garbage-items:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb5/igt@i915_query@query-regions-garbage-items.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb1/igt@i915_query@query-regions-garbage-items.html
    - shard-snb:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-snb4/igt@i915_query@query-regions-garbage-items.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-snb5/igt@i915_query@query-regions-garbage-items.html
    - shard-tglb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-tglb3/igt@i915_query@query-regions-garbage-items.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb7/igt@i915_query@query-regions-garbage-items.html

  
Known issues
------------

  Here are the changes found in Patchwork_109384v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30]) -> ([PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [FAIL][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55]) ([i915#4386])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl8/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl8/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl8/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [FAIL][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80]) ([i915#4392]) -> ([PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk2/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk3/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk3/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk5/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk5/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk6/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk6/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk6/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk7/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk7/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk7/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk8/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk8/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk8/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk8/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk9/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk9/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk9/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk2/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk2/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk2/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk3/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk3/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk3/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk5/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk5/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk6/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk6/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk6/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk6/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk7/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk7/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk7/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk8/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk8/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk8/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk9/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk9/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][106] -> [FAIL][107] ([i915#6268])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][108] -> [FAIL][109] ([i915#4409])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-snb5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][110] -> [FAIL][111] ([i915#5784]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-tglb1/igt@gem_eio@reset-stress.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][112] ([i915#2842])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([fdo#109313])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-iclb:         [PASS][114] -> [INCOMPLETE][115] ([i915#6755])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority-all.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb3/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][116] -> [SKIP][117] ([i915#2190])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-tglb3/igt@gem_huc_copy@huc-copy.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([i915#4613])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-glk:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#4613])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#4613]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl3/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][121] ([i915#2658])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl3/igt@gem_pread@exhaustion.html

  * igt@gem_softpin@evict-single-offset:
    - shard-iclb:         [PASS][122] -> [FAIL][123] ([i915#4171])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb7/igt@gem_softpin@evict-single-offset.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb6/igt@gem_softpin@evict-single-offset.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-tglb:         NOTRUN -> [SKIP][124] ([fdo#109289])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][125] -> [DMESG-WARN][126] ([i915#5566] / [i915#716]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][127] -> [DMESG-WARN][128] ([i915#5566] / [i915#716])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][129] -> [DMESG-WARN][130] ([i915#5591])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-tglb1/igt@i915_selftest@live@hangcheck.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1:
    - shard-snb:          [PASS][131] -> [FAIL][132] ([i915#2521])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-snb4/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-snb5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-glk:          NOTRUN -> [SKIP][133] ([fdo#109271]) +31 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([fdo#111614])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([fdo#111615])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#3689])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([i915#6095]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#3886]) +2 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#3886]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][140] ([fdo#111615] / [i915#3689])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][141] ([i915#3689] / [i915#6095]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium@hdmi-crc-single:
    - shard-glk:          NOTRUN -> [SKIP][142] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@kms_chamelium@hdmi-crc-single.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-apl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl8/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [PASS][144] -> [FAIL][145] ([i915#2346])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
    - shard-iclb:         [PASS][146] -> [FAIL][147] ([i915#2346]) +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          [PASS][148] -> [FAIL][149] ([i915#79])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][150] ([i915#2672]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][151] ([i915#2672] / [i915#3555])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][152] ([i915#2587] / [i915#2672]) +2 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][153] ([i915#3555])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-tglb:         NOTRUN -> [SKIP][154] ([fdo#109280] / [fdo#111825]) +3 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-apl:          NOTRUN -> [SKIP][155] ([fdo#109271]) +109 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][156] ([i915#3555])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][157] -> [SKIP][158] ([i915#5176]) +2 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][159] -> [SKIP][160] ([i915#5235]) +2 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglb:         NOTRUN -> [SKIP][161] ([i915#6524])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][162] ([fdo#109271] / [i915#658]) +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][163] -> [SKIP][164] ([fdo#109642] / [fdo#111068] / [i915#658])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][165] -> [SKIP][166] ([fdo#109441])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb4/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][167] ([fdo#109271] / [i915#2437])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl3/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@stress-open-close:
    - shard-glk:          NOTRUN -> [INCOMPLETE][168] ([i915#5213])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@perf@stress-open-close.html

  * igt@sysfs_clients@fair-3:
    - shard-glk:          NOTRUN -> [SKIP][169] ([fdo#109271] / [i915#2994]) +1 similar issue
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@sysfs_clients@fair-3.html

  * igt@sysfs_heartbeat_interval@nopreempt@vcs0:
    - shard-tglb:         [PASS][170] -> [FAIL][171] ([i915#6015]) +4 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-tglb5/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb1/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][172] ([i915#4525]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb6/igt@gem_exec_balancer@parallel.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb4/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][174] ([i915#2842]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [FAIL][176] ([i915#6537]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl3/igt@i915_pm_rps@engine-order.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl6/igt@i915_pm_rps@engine-order.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [INCOMPLETE][178] ([i915#2411]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-tglb1/igt@i915_selftest@live@execlists.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][180] ([i915#5334]) -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][182] ([i915#2346]) -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][184] ([i915#2122]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [DMESG-WARN][186] ([i915#180]) -> [PASS][187] +1 similar issue
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][188] ([fdo#109441]) -> [PASS][189] +2 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb8/igt@kms_psr@psr2_basic.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [SKIP][190] ([i915#5519]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [FAIL][192] ([i915#5639]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-tglb1/igt@perf@polling-parameterized.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][194] ([i915#6117]) -> [SKIP][195] ([i915#4525])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [SKIP][196] ([i915#2848]) -> [FAIL][197] ([i915#2842]) +5 similar issues
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs1.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-glk:          [DMESG-FAIL][198] ([i915#118] / [i915#1888]) -> [FAIL][199] ([i915#1888])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][200] ([i915#658]) -> [SKIP][201] ([i915#2920]) +1 similar issue
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [FAIL][202] ([i915#5939]) -> [SKIP][203] ([fdo#109642] / [fdo#111068] / [i915#658])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb3/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][204], [FAIL][205], [FAIL][206], [FAIL][207]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][208], [FAIL][209]) ([fdo#109271] / [i915#3002] / [i915#4312])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/igt@runner@aborted.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/igt@runner@aborted.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl6/igt@runner@aborted.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl7/igt@runner@aborted.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl6/igt@runner@aborted.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl1/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4409]: https://gitlab.freedesktop.org/drm/intel/issues/4409
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6015]: https://gitlab.freedesktop.org/drm/intel/issues/6015
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12210 -> Patchwork_109384v1

  CI-20190529: 20190529
  CI_DRM_12210: 707950e821d9dbd362f71726ecbd03c9e42dad05 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6676: 4730ad6fa95e74b30a7c7acff7041b591e6ce276 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109384v1: 707950e821d9dbd362f71726ecbd03c9e42dad05 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/index.html

--===============8532861877671121432==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/2] drm/i915: enab=
le PS64 support for DG2</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109384/">https://patchwork.freedesktop.org/series/109384/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109384v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109384v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12210_full -&gt; Patchwork_109384v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109384v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109384v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109384v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_query@query-regions-garbage-items:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12210/shard-iclb5/igt@i915_query@query-regions-garbage-items.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109384v1/shard-iclb1/igt@i915_query@query-regions-garbage-items.html">FAIL=
</a></p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12210/shard-snb4/igt@i915_query@query-regions-garbage-items.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109384v1/shard-snb5/igt@i915_query@query-regions-garbage-items.html">FAIL</=
a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12210/shard-tglb3/igt@i915_query@query-regions-garbage-items.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109384v1/shard-tglb7/igt@i915_query@query-regions-garbage-items.html">FAIL=
</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109384v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12210/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12210/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12210/shard-apl6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/sha=
rd-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12210/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12210/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12210/shard-apl8/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210=
/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12210/shard-apl8/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-ap=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2210/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12210/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shar=
d-apl1/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_109384v1/shard-apl1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109384v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-a=
pl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109384v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v=
1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109384v1/shard-apl2/boot.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109384v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109384v1/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109384v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109384v1/shard-apl7/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109384v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109384v1/shard-apl7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109384v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-apl8/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_109384v1/shard-apl8/boot.html">PASS</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/4386">i915#4386</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12210/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12210/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12210/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12210/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12210/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12210/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12210/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk8/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2210/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12210/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12210/shard-glk9/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4392">i915#4392</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109384v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-g=
lk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109384v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v=
1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109384v1/shard-glk3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109384v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109384v1/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109384v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109384v1/shard-glk6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109384v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109384v1/shard-glk7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk=
8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109384v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk8/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_109384v1/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk9/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384=
v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v=
1/shard-snb5/igt@gem_eio@in-flight-contexts-1us.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4409">i915#4409</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-tglb1/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-t=
glb3/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5784">i915#5784</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109313">fdo#109313</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority-all.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109384v1/shard-iclb3/igt@gem_exec_whisper@basic-queues-priority-all.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6755">i915#6755</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@gem_lmem_swapping@heavy-ra=
ndom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-apl3/igt@gem_lmem_swapping@verify-ra=
ndom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-apl3/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb7/igt@gem_softpin@evict-single-offset.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10938=
4v1/shard-iclb6/igt@gem_softpin@evict-single-offset.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4171</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@gen7_exec_parse@oacontrol-=
tracking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-glk6/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/s=
hard-glk1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-apl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v=
1/shard-apl6/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-tglb1/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1=
/shard-tglb3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-snb4/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-vga-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109384v1/shard-snb5/igt@kms_async_flips@alternate-sync-asy=
nc-flip@pipe-a-vga-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@kms_big_fb@4-tiled-max-hw-s=
tride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +31 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_big_fb@x-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary=
-basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-apl8/igt@kms_ccs@pipe-b-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@kms_ccs@pipe-b-crc-sprite-p=
lanes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_ccs@pipe-b-crc-sprite-=
planes-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@kms_chamelium@hdmi-crc-sing=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-apl8/igt@kms_chamelium@hdmi-hpd-stor=
m.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_109384v1/shard-glk6/igt@kms_cursor_legacy@flip-v=
s-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109384v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i=
915#2346</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109384v1/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#=
2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672"=
>i915#2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_frontbuffer_tracking@f=
bc-2p-rte.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111825">fdo#111825</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-apl8/igt@kms_frontbuffer_tracking@fb=
c-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +109 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_plane_s=
caling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-tglb3/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-apl3/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1093=
84v1/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a>=
 / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#11=
1068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">=
i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/sha=
rd-iclb4/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-apl3/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@perf@stress-open-close.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5213">i915#5213</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109384v1/shard-glk1/igt@sysfs_clients@fair-3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-tglb5/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109384v1/shard-tglb1/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6015">i=
915#6015</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb6/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1093=
84v1/shard-iclb4/igt@gem_exec_balancer@parallel.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109384v1/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-apl3/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v=
1/shard-apl6/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-tglb1/igt@i915_selftest@live@execlists.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2411">i915=
#2411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109384v1/shard-tglb3/igt@i915_selftest@live@execlists.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109384v1/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109384v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-curso=
r@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard-glk8/igt@kms_flip@2x-pla=
in-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109384v1/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb8/igt@kms_psr@psr2_basic.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/s=
hard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109384v1/shard-iclb4/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-tglb1/igt@perf@polling-parameterized.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1093=
84v1/shard-tglb3/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109384v1/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2848">i915#2848=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09384v1/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) =
+5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling@pipe-a-valid-mode.html">DMESG-FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109384v1/shard=
-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@=
pipe-a-valid-mode.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_109384v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12210/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#5939</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1093=
84v1/shard-iclb3/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#6=
58</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12210/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12210/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12210/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109384v1/shard-apl6/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1093=
84v1/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</l=
i>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12210 -&gt; Patchwork_109384v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12210: 707950e821d9dbd362f71726ecbd03c9e42dad05 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6676: 4730ad6fa95e74b30a7c7acff7041b591e6ce276 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109384v1: 707950e821d9dbd362f71726ecbd03c9e42dad05 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8532861877671121432==--
