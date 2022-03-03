Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BCA4CBED6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 14:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DFE910EAE9;
	Thu,  3 Mar 2022 13:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D505210EAAE;
 Thu,  3 Mar 2022 13:27:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CEC15AADD3;
 Thu,  3 Mar 2022 13:27:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6069570044108664472=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Thu, 03 Mar 2022 13:27:10 -0000
Message-ID: <164631403080.19817.10742884612081933720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220301050141.12203-1-shawn.c.lee@intel.com>
In-Reply-To: <20220301050141.12203-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_more_TMDS_clock_rate_supported_by_HDMI_driver_=28r?=
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

--===============6069570044108664472==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: add more TMDS clock rate supported by HDMI driver (rev2)
URL   : https://patchwork.freedesktop.org/series/100866/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11317_full -> Patchwork_22469_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22469_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-a-edp-1-downscale-with-pixel-format}:
    - {shard-rkl}:        NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-rkl-6/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-a-edp-1-downscale-with-pixel-format.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11317_full and Patchwork_22469_full:

### New IGT tests (1) ###

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-edp-1-planes-upscale-downscale:
    - Statuses : 1 pass(s)
    - Exec time: [1.28] s

  

Known issues
------------

  Here are the changes found in Patchwork_22469_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [FAIL][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48]) ([i915#4392])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk3/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk9/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk9/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [FAIL][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73]) ([i915#4386]) -> ([PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl3/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl3/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl4/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl4/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl4/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl6/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl7/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl7/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl7/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl8/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl8/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl8/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl8/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl1/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl1/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl1/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl1/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl2/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl4/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl6/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl6/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl6/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl6/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl4/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl4/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl3/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl3/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl3/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl8/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl8/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl8/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl6/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl2/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl2/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl2/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl2/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl1/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl1/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][99] -> [CRASH][100] ([i915#5165])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-snb2/igt@gem_eio@reset-stress.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-snb7/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][101] -> [FAIL][102] ([i915#2842])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][103] ([i915#2842])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#4613])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl3/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#4270]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([i915#768])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][107] -> [FAIL][108] ([i915#4171])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#3297])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109289]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([i915#2856])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([i915#2527] / [i915#2856])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-tglb1/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#1937])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][114] ([i915#1804] / [i915#2684])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][115] -> [INCOMPLETE][116] ([i915#3921])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-snb6/igt@i915_selftest@live@hangcheck.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][117] -> [DMESG-WARN][118] ([i915#118]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk9/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#3777]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109278] / [i915#3886])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#3886]) +6 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-skl1/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-glk:          NOTRUN -> [SKIP][126] ([fdo#109271] / [fdo#111827])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk5/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][128] -> [DMESG-WARN][129] ([i915#180]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109278]) +7 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#533])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#109274]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][133] -> [FAIL][134] ([i915#79])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][135] -> [DMESG-WARN][136] ([i915#180]) +7 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][137] -> [SKIP][138] ([i915#3701])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#109280]) +9 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:
    - shard-glk:          NOTRUN -> [SKIP][140] ([fdo#109271]) +10 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][141] -> [FAIL][142] ([i915#1188]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][143] ([i915#265])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-d-alpha-basic:
    - shard-skl:          NOTRUN -> [SKIP][144] ([fdo#109271]) +7 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-skl8/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-iclb:         NOTRUN -> [SKIP][145] ([i915#3536])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#111068] / [i915#658])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#658])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         NOTRUN -> [SKIP][148] ([fdo#109441]) +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][149] -> [SKIP][150] ([fdo#109441]) +3 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][151] ([fdo#109271]) +98 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-iclb:         NOTRUN -> [SKIP][152] ([i915#2437])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][153] ([i915#2530])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb6/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@nouveau_crc@pipe-d-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][154] ([fdo#109278] / [i915#2530])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@nouveau_crc@pipe-d-source-outp-complete.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][155] -> [FAIL][156] ([i915#1722])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-skl7/igt@perf@polling-small-buf.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-skl1/igt@perf@polling-small-buf.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-iclb:         NOTRUN -> [SKIP][157] ([fdo#109291]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@prime_nv_pcopy@test3_5.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][158] ([fdo#109295])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb6/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-glk:          NOTRUN -> [DMESG-FAIL][159] ([i915#5098])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk5/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@sema-10:
    - shard-apl:          NOTRUN -> [SKIP][160] ([fdo#109271] / [i915#2994])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl3/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@drm_import_export@prime:
    - {shard-rkl}:        [INCOMPLETE][161] ([i915#5080]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-rkl-5/igt@drm_import_export@prime.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-rkl-4/igt@drm_import_export@prime.html

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][163] ([i915#2582]) -> [PASS][164] +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-rkl-5/igt@fbdev@unaligned-read.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][165] ([i915#232]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_endless@dispatch@vecs0:
    - shard-tglb:         [INCOMPLETE][167] ([i915#3778]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-tglb1/igt@gem_exec_endless@dispatch@vecs0.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-tglb8/igt@gem_exec_endless@dispatch@vecs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][169] ([i915#2846]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [FAIL][171] ([i915#2842]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][173] ([i915#2842]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][175] ([i915#2842]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [SKIP][177] ([fdo#109271]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [DMESG-WARN][179] ([i915#118]) -> [PASS][180] +1 similar issue
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk2/igt@gem_exec_gttfill@all.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk4/igt@gem_exec_gttfill@all.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-snb:          [SKIP][181] ([fdo#109271]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-snb5/igt@gem_exec_suspend@basic-s0@smem.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-snb6/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_pm_backlight@bad-brightness:
    - {shard-rkl}:        [SKIP][183] ([i915#3012]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-rkl-1/igt@i915_pm_backlight@bad-brightness.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_rpm@basic-rte:
    - {shard-rkl}:        [SKIP][185] ([fdo#109308]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-rkl-1/igt@i915_pm_rpm@basic-rte.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-rkl-6/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-dg1}:        [SKIP][187] ([i915#1397]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-dg1-13/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_pm_rps@waitboost:
    - {shard-rkl}:        [FAIL][189] ([i915#4016]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-rkl-2/igt@i915_pm_rps@waitboost.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shar

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/index.html

--===============6069570044108664472==
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
<tr><td><b>Series:</b></td><td>drm/i915: add more TMDS clock rate supported=
 by HDMI driver (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100866/">https://patchwork.freedesktop.org/series/100866/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22469/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22469/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11317_full -&gt; Patchwork_22469_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22469_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-a-ed=
p-1-downscale-with-pixel-format}:<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-rkl-6/igt@kms_plane_scaling@downscale-w=
ith-pixel-format-factor-0-5@pipe-a-edp-1-downscale-with-pixel-format.html">=
SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11317_full and Patchwork_2=
2469_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d=
-edp-1-planes-upscale-downscale:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.28] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22469_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11317/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11317/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11317/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11317/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11317/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11317/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11317/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1317/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11317/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shar=
d-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22469/shard-glk1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk2/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
69/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22469/shard-glk2/boot.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk3/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
69/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22469/shard-glk4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
69/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22469/shard-glk5/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
69/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22469/shard-glk6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk6/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
69/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22469/shard-glk7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
69/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22469/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
69/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22469/shard-glk1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-glk1/boot.html">=
PASS</a>) ([i915#4392])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11317/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11317/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11317/shard-apl4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/sha=
rd-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11317/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11317/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11317/shard-apl7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317=
/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11317/shard-apl8/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-ap=
l8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl1/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1317/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11317/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11317/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11317/shard-apl2/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22469/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22469/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22469/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22469/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22469/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22469/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22469/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22469/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-apl1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-snb2/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-snb7/=
igt@gem_eio@reset-stress.html">CRASH</a> ([i915#5165])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/sh=
ard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb6/igt@gem_exec_fair@basic-throttle@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-apl3/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@gem_pxp@create-regular-contex=
t-1.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@gem_render_copy@y-tiled-mc-cc=
s-to-y-tiled-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22469/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</=
a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@gem_userptr_blits@create-dest=
roy-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@gen7_exec_parse@batch-without=
-end.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@gen9_exec_parse@batch-zero-le=
ngth.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-tglb1/igt@gen9_exec_parse@shadow-peek.h=
tml">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idl=
e.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-snb6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/sha=
rd-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-glk9/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469=
/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> ([i91=
5#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate=
-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#=
3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb6/igt@kms_ccs@pipe-a-ccs-on-another=
-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-apl3/igt@kms_ccs@pipe-c-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-apl7/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_color_chamelium@pipe-a-ct=
m-blue-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-skl1/igt@kms_color_chamelium@pipe-b-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-glk5/igt@kms_color_chamelium@pipe-d-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2469/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-=
256x85-rapid-movement.html">SKIP</a> ([fdo#109278]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-apl7/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_flip@2x-flip-vs-absolute-=
wf_vblank.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22469/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/s=
hard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22469/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-=
2p-pri-indfb-multidraw.html">SKIP</a> ([fdo#109280]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-glk5/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +10 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-sk=
l7/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-skl8/igt@kms_plane_alpha_blend@pipe-d-a=
lpha-basic.html">SKIP</a> ([fdo#109271]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_plane_lowres@pipe-c-tilin=
g-yf.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg=
-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-apl3/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html"=
>SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/sh=
ard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441]) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-apl7/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> ([fdo#109271]) +98 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@kms_writeback@writeback-fb-id=
.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb6/igt@nouveau_crc@pipe-a-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@nouveau_crc@pipe-d-source-out=
p-complete.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-skl7/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22469/shard-skl=
1/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb5/igt@prime_nv_pcopy@test3_5.html">=
SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-iclb6/igt@prime_vgem@fence-write-hang.h=
tml">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-glk5/igt@syncobj_timeline@transfer-time=
line-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22469/shard-apl3/igt@sysfs_clients@sema-10.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-rkl-5/igt@drm_import_export@prime.html">INCOMPLETE</a> =
([i915#5080]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22469/shard-rkl-4/igt@drm_import_export@prime.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-rkl-5/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#25=
82]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
469/shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a> +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-tglb8/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#=
232]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2469/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-tglb1/igt@gem_exec_endless@dispatch@vecs0.html">INCOMPL=
ETE</a> ([i915#3778]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22469/shard-tglb8/igt@gem_exec_endless@dispatch@vecs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22469/shard-glk8/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22469/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22469/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22469/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (=
[fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22469/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-glk2/igt@gem_exec_gttfill@all.html">DMESG-WARN</a> ([i9=
15#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22469/shard-glk4/igt@gem_exec_gttfill@all.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-snb5/igt@gem_exec_suspend@basic-s0@smem.html">SKIP</a> =
([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22469/shard-snb6/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-rkl-1/igt@i915_pm_backlight@bad-brightness.html">SKIP</=
a> ([i915#3012]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22469/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-rkl-1/igt@i915_pm_rpm@basic-rte.html">SKIP</a> ([fdo#10=
9308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22469/shard-rkl-6/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html=
">SKIP</a> ([i915#1397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22469/shard-dg1-13/igt@i915_pm_rpm@modeset-lpsp-stress-no=
-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11317/shard-rkl-2/igt@i915_pm_rps@waitboost.html">FAIL</a> ([i915#4=
016]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2469/shar">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============6069570044108664472==--
