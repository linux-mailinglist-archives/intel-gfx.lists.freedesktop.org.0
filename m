Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F695282CF
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 13:06:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C7310F4B8;
	Mon, 16 May 2022 11:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C8BB10F348;
 Mon, 16 May 2022 11:06:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72EEAAADD3;
 Mon, 16 May 2022 11:06:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1329144667647210683=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Mon, 16 May 2022 11:06:46 -0000
Message-ID: <165269920642.21524.17070878082873484917@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220516082015.32020-1-nirmoy.das@intel.com>
In-Reply-To: <20220516082015.32020-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_tiled_blits_selftest?=
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

--===============1329144667647210683==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Update tiled blits selftest
URL   : https://patchwork.freedesktop.org/series/104016/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11656_full -> Patchwork_104016v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 13)
------------------------------

  Additional (3): shard-rkl shard-dg1 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104016v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_shared@q-smoketest-all:
    - {shard-tglu}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-tglu-8/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_softpin@evict-single-offset:
    - {shard-rkl}:        NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-rkl-2/igt@gem_softpin@evict-single-offset.html

  * igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-b-hdmi-a-1-downscale-with-modifier:
    - {shard-dg1}:        NOTRUN -> [SKIP][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-dg1-19/igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-b-hdmi-a-1-downscale-with-modifier.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11656_full and Patchwork_104016v1_full:

### New IGT tests (2) ###

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset@d-hdmi-a3:
    - Statuses : 1 pass(s)
    - Exec time: [0.63] s

  * igt@kms_hdr@static-toggle-suspend@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [6.31] s

  

Known issues
------------

  Here are the changes found in Patchwork_104016v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [FAIL][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53]) ([i915#4392])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk3/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk1/boot.html
    - shard-skl:          ([PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77]) -> ([PASS][78], [PASS][79], [PASS][80], [PASS][81], [FAIL][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99]) ([i915#5032])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl9/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl8/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl8/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl7/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl7/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl6/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl6/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl4/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl3/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl2/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl1/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl1/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl10/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl10/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl10/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl10/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl6/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl6/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl4/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl4/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl3/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl2/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl2/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl1/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl1/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl1/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl10/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl10/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl9/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl9/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl9/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl8/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl8/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl8/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl7/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl7/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl7/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl6/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([i915#5327])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#1099])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-iclb:         [PASS][102] -> [INCOMPLETE][103] ([i915#3371])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb1/igt@gem_exec_capture@pi@vecs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb5/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][104] -> [FAIL][105] ([i915#2846])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_flush@basic-wb-set-default:
    - shard-snb:          [PASS][106] -> [SKIP][107] ([fdo#109271]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-snb4/igt@gem_exec_flush@basic-wb-set-default.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-snb6/igt@gem_exec_flush@basic-wb-set-default.html

  * igt@gem_exec_params@no-blt:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109283])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_params@secure-non-root:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#112283])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][110] -> [DMESG-WARN][111] ([i915#118])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][112] -> [SKIP][113] ([i915#2190])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-tglb3/igt@gem_huc_copy@huc-copy.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#4613])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_mmap_gtt@coherency:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109292])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@gem_mmap_gtt@coherency.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][116] ([i915#2658])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([i915#4270])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#3297])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][119] ([i915#2724])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-snb7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271]) +17 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl9/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][121] -> [DMESG-WARN][122] ([i915#5566] / [i915#716])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([i915#2856]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][124] -> [FAIL][125] ([i915#454])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][126] ([i915#2684])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_query@query-topology-unsupported:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109302])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@i915_query@query-topology-unsupported.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          NOTRUN -> [DMESG-WARN][128] ([i915#180])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-snb:          NOTRUN -> [SKIP][129] ([fdo#109271]) +73 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-snb7/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([i915#5286]) +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][131] ([fdo#110725] / [fdo#111614])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#110723]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][133] ([i915#3743])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#3886]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([fdo#109278] / [i915#3886]) +3 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-hpd-storm:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([fdo#109284] / [fdo#111827]) +6 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@kms_chamelium@dp-hpd-storm.html

  * igt@kms_chamelium@hdmi-frame-dump:
    - shard-snb:          NOTRUN -> [SKIP][137] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-snb7/igt@kms_chamelium@hdmi-frame-dump.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][138] ([fdo#109278] / [i915#1149])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_color@pipe-d-ctm-negative.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl9/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [fdo#111827])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][141] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_content_protection@atomic:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([fdo#109300] / [fdo#111066])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][143] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - shard-apl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#5691])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][145] ([fdo#109278]) +18 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109274] / [fdo#109278]) +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [PASS][147] -> [FAIL][148] ([i915#2346])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][149] ([i915#5287])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_draw_crc@draw-method-rgb565-blt-4tiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][150] -> [FAIL][151] ([i915#4767])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][152] ([fdo#109274]) +3 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][153] -> [FAIL][154] ([i915#79]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [PASS][155] -> [DMESG-WARN][156] ([i915#180]) +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][157] -> [FAIL][158] ([i915#4911])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][159] ([fdo#109280]) +13 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][160] ([fdo#109271]) +39 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][161] ([fdo#109271] / [i915#533])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][162] -> [FAIL][163] ([fdo#108145] / [i915#265]) +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-c-tiling-4:
    - shard-iclb:         NOTRUN -> [SKIP][164] ([i915#5288])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-4.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         NOTRUN -> [SKIP][165] ([fdo#109441])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][166] -> [SKIP][167] ([fdo#109441]) +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-skl:          [PASS][168] -> [DMESG-WARN][169] ([i915#1982])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl4/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl7/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-iclb:         NOTRUN -> [SKIP][170] ([i915#2437])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-d-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][171] ([fdo#109278] / [i915#2530])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@nouveau_crc@pipe-d-source-outp-complete.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-iclb:         NOTRUN -> [SKIP][172] ([fdo#109289]) +1 similar issue
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][173] -> [FAIL][174] ([i915#5639])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl1/igt@perf@polling-parameterized.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl2/igt@perf@polling-parameterized.html

  * igt@prime_nv_test@i915_import_pread_pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][175] ([fdo#109291]) +1 similar issue
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@prime_nv_test@i915_import_pread_pwrite.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][176] ([fdo#109295])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@prime_vgem@fence-write-hang.html

  * igt@sysfs_clients@recycle:
    - shard-apl:          NOTRUN -> [SKIP][177] ([fdo#109271] / [i915#2994])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-50:
    - shard-skl:          NOTRUN -> [SKIP][178] ([fdo#109271] / [i915#2994])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl9/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-50:
    - shard-iclb:         NOTRUN -> [SKIP][179] ([i915#2994])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][180] ([i915#2842]) -> [PASS][181] +1 similar issue
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-snb:          [SKIP][182] ([fdo#109271]) -> [PASS][183] +2 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-snb6/igt@gem_exec_flush@basic-wb-ro-before-default.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-snb4/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][184] ([i915#644]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][186] ([i915#454]) -> [PASS][187]
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][188] ([i915#3921]) -> [PASS][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][190] ([i915#2346]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [FAIL][192] ([i915#2346]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][194] ([i915#79]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [INCOMPLETE][196] ([i915#5864]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [DMESG-WARN][198] ([i915#180]) -> [PASS][199] +4 similar issues
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-apl8/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][200] ([i915#2122]) -> [PASS][201] +3 similar issues
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][202] ([i915#3701]) -> [PASS][203] +1 similar issue
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [DMESG-WARN][204] ([i915#2411] / [i915#2867]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-tglb2/igt@kms_frontbuffer_tracking@psr-suspend.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-tglb8/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][206] ([fdo#108145] / [i915#265]) -> [PASS][207] +1 similar issue
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][208] ([fdo#109441]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb4/igt@kms_psr@psr2_primary_render.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [SKIP][210] ([i915#5519]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][212] ([i915#1722]) -> [PASS][213]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl10/igt@perf@polling-small-buf.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl4/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][214] ([i915#3063]) -> [FAIL][215] ([i915#5784])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [DMESG-WARN][216] ([i915#5614]) -> [SKIP][217] ([i915#4525]) +2 similar issues
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][218] ([i915#4525]) -> [DMESG-FAIL][219] ([i915#5614])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][220] ([i915#2851]) -> [FAIL][221] ([i915#2842])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][222] ([i915#2920]) -> [SKIP][223] ([fdo#111068] / [i915#658])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109292]: https://bugs.freedesktop.org/show_bug.cgi?id=109292
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
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4886]: https://gitlab.freedesktop.org/drm/intel/issues/4886
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
  [i915#5266]: https://gitlab.freedesktop.org/drm/intel/issues/5266
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5864]: https://gitlab.freedesktop.org/drm/intel/issues/5864
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11656 -> Patchwork_104016v1

  CI-20190529: 20190529
  CI_DRM_11656: 416780e079b848ddd4da752cb90b619b97eb773e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6472: c815c94f0ceb33ae852622538f0136cf44c5725d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104016v1: 416780e079b848ddd4da752cb90b619b97eb773e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/index.html

--===============1329144667647210683==
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
<tr><td><b>Series:</b></td><td>drm/i915: Update tiled blits selftest</td></=
tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104016/">https://patchwork.freedesktop.org/series/104016/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104016v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104016v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11656_full -&gt; Patchwork_104016v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 13)</h2>
<p>Additional (3): shard-rkl shard-dg1 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
104016v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_shared@q-smoketest-all:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-tglu-8/igt@gem_ctx_shared@q-smoketes=
t-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-rkl-2/igt@gem_softpin@evict-single-o=
ffset.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-b-hdmi-a-=
1-downscale-with-modifier:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-dg1-19/igt@kms_plane_scaling@downsca=
le-with-modifier-factor-0-25@pipe-b-hdmi-a-1-downscale-with-modifier.html">=
SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11656_full and Patchwork_1=
04016v1_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset@d-hdmi-a3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.31] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104016v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1656/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11656/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shar=
d-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11656/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk4/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11656/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11656/shard-glk5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11656/shard-glk6/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk6/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11656/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11656/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1656/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11656/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11656/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
016v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_104016v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104016v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/sh=
ard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104016v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4016v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_104016v1/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104016v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/sh=
ard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104016v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk4/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4016v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_104016v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104016v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104016v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-glk1/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1656/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11656/shard-skl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shar=
d-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11656/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11656/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11656/shard-skl4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/=
shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11656/shard-skl4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl3/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11656/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11656/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1656/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11656/shard-skl10/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/shard-skl10/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/s=
hard-skl10/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_104016v1/shard-skl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104016v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/sh=
ard-skl3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104016v1/shard-skl2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4016v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_104016v1/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104016v1/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl10/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/=
shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_104016v1/shard-skl9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl9/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104016v1/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_104016v1/shard-skl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl8=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104016v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-skl7/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/s=
hard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104016v1/shard-skl6/boot.html">PASS</a>) (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5032">i915#5032</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/5327">i915#5327</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-snb7/igt@gem_ctx_persistence@legacy-=
engines-mixed-process.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb1/igt@gem_exec_capture@pi@vecs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/sh=
ard-iclb5/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3371">i915#3371</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/=
shard-glk4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-set-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-snb4/igt@gem_exec_flush@basic-wb-set-default.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4016v1/shard-snb6/igt@gem_exec_flush@basic-wb-set-default.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@gem_exec_params@no-blt.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
83">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked-all.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104016v1/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@gem_lmem_swapping@verify-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@gem_mmap_gtt@coherency.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
92">fdo#109292</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@gem_pxp@verify-pxp-stale-c=
tx-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-snb7/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2724">i915#2724</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-skl9/igt@gen7_exec_parse@basic-offse=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl10/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016=
v1/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@gen9_exec_parse@batch-zero=
-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@i915_pm_rc6_residency@rc6-=
idle.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2684">i915#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-apl3/igt@i915_suspend@fence-restore-=
untiled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-snb7/igt@kms_big_fb@4-tiled-addfb-si=
ze-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +73 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_big_fb@x-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110723">fdo#110723</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-skl2/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@kms_ccs@pipe-a-random-ccs-d=
ata-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_ccs@pipe-b-bad-pixel-f=
ormat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@kms_chamelium@dp-hpd-storm=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-frame-dump:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-snb7/igt@kms_chamelium@hdmi-frame-du=
mp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_color@pipe-d-ctm-negat=
ive.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1149">i915#1149</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-skl9/igt@kms_color_chamelium@pipe-a-=
ctm-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@kms_color_chamelium@pipe-b-=
ctm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_color_chamelium@pipe-d=
-gamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_content_protection@ato=
mic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109300">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111066">fdo#111066</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@kms_cursor_crc@pipe-b-curs=
or-512x512-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109279">fdo#109279</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@kms_cursor_crc@pipe-c-curso=
r-512x170-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5691">i915#5691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_cursor_crc@pipe-d-curs=
or-32x10-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109278">fdo#109278</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_cursor_legacy@2x-long-=
nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atom=
ic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104016v1/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-cr=
c-atomic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_draw_crc@draw-method-r=
gb565-blt-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/sha=
rd-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104016v1/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/79">i915#79</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v=
1/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-=
ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4911">i915#4911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +13 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@kms_frontbuffer_tracking@ps=
r-rgb565-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-apl1/igt@kms_pipe_crc_basic@read-crc=
-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104016v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_plane_lowres@pipe-c-ti=
ling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5288">i915#5288</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_psr@psr2_cursor_plane_=
onoff.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/s=
hard-iclb6/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl4/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104016v1/shard-skl7/igt@kms_rotation_crc@sprite-rotation-90-pos-100=
-0.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@nouveau_crc@pipe-d-source-=
outp-complete.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@perf@gen12-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl1/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/sh=
ard-skl2/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_pread_pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb7/igt@prime_nv_test@i915_import_=
pread_pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109291">fdo#109291</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb6/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-apl6/igt@sysfs_clients@recycle.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-skl9/igt@sysfs_clients@sema-50.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-iclb3/igt@sysfs_clients@split-50.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/299=
4">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04016v1/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-snb6/igt@gem_exec_flush@basic-wb-ro-before-default.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_104016v1/shard-snb4/igt@gem_exec_flush@basic-wb-ro-before-defau=
lt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/644">i915#6=
44</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104016v1/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1/sh=
ard-iclb8/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-snb2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#=
3921</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104016v1/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104016v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346"=
>i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104016v1/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104016v1/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5864">i915#5864</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104016v1/shard-skl9/igt@kms_flip@flip-vs-suspend-interr=
uptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-apl8/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104016v1/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> +4=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104016v1/shard-skl2/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@b-edp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_104016v1/shard-iclb1/igt@kms_flip_scaled_c=
rc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-tglb2/igt@kms_frontbuffer_tracking@psr-suspend.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/24=
11">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2867">i915#2867</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104016v1/shard-tglb8/igt@kms_frontbuffer_tracking@psr-sus=
pend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104016v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-=
c-constant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb4/igt@kms_psr@psr2_primary_render.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04016v1/shard-iclb2/igt@kms_psr@psr2_primary_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104016v1/shard-iclb6/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-skl10/igt@perf@polling-small-buf.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104016v1=
/shard-skl4/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10401=
6v1/shard-tglb1/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/561=
4">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104016v1/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/452=
5">i915#4525</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104016v1/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html">DME=
SG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/561=
4">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2851">i915#=
2851</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104016v1/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11656/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_104016v1/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11656 -&gt; Patchwork_104016v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11656: 416780e079b848ddd4da752cb90b619b97eb773e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6472: c815c94f0ceb33ae852622538f0136cf44c5725d @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104016v1: 416780e079b848ddd4da752cb90b619b97eb773e @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1329144667647210683==--
