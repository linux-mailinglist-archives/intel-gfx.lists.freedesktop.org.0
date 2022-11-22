Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9D9633141
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 01:21:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECA9510E358;
	Tue, 22 Nov 2022 00:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 55A8F10E357;
 Tue, 22 Nov 2022 00:21:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B65AA0169;
 Tue, 22 Nov 2022 00:21:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1538943575339199323=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <error27@gmail.com>
Date: Tue, 22 Nov 2022 00:21:29 -0000
Message-ID: <166907648919.2186.13489252823195326714@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <Y3OQ5tgZIVxyQ/WV@kili>
In-Reply-To: <Y3OQ5tgZIVxyQ/WV@kili>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_unpin_on_error_in_intel=5Fvgpu=5Fshadow=5Fmm=5Fpin=28?=
 =?utf-8?q?=29?=
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

--===============1538943575339199323==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: unpin on error in intel_vgpu_shadow_mm_pin()
URL   : https://patchwork.freedesktop.org/series/111147/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12409_full -> Patchwork_111147v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_111147v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [FAIL][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#4392]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk5/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk3/boot.html
    - shard-skl:          ([PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [FAIL][59], [PASS][60], [FAIL][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73]) ([i915#5032]) -> ([PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl10/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl10/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl10/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl10/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl1/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl4/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl5/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl5/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl5/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl6/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl6/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl6/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl7/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl7/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl7/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl7/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl9/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl9/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl9/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl6/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl6/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl6/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl6/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl5/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl5/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl5/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl5/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl4/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl4/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl4/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl1/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl1/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl1/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl10/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl10/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl10/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl9/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl9/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl9/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl9/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-2x:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#1839])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@feature_discovery@display-2x.html

  * igt@gem_ctx_persistence@hang:
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271]) +219 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl5/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][101] -> [SKIP][102] ([i915#4525]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglb:         NOTRUN -> [FAIL][103] ([i915#6117])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          [PASS][104] -> [INCOMPLETE][105] ([i915#3371])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl9/igt@gem_exec_capture@pi@bcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl4/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][106] ([i915#2842])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-tglb:         [PASS][107] -> [SKIP][108] ([i915#2848])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-tglb6/igt@gem_exec_fair@basic-none@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb6/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [PASS][109] -> [FAIL][110] ([i915#2842])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-glk:          [PASS][111] -> [FAIL][112] ([i915#2842])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][113] -> [FAIL][114] ([i915#2842])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#4613]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#4613]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-glk:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#4613])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk2/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_softpin@evict-single-offset:
    - shard-tglb:         [PASS][118] -> [FAIL][119] ([i915#4171])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-tglb8/igt@gem_softpin@evict-single-offset.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb8/igt@gem_softpin@evict-single-offset.html

  * igt@gem_userptr_blits@input-checking:
    - shard-glk:          NOTRUN -> [DMESG-WARN][120] ([i915#4991])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk2/igt@gem_userptr_blits@input-checking.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][121] ([i915#4991])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][122] ([i915#3318])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([fdo#109289]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][124] ([i915#2527] / [i915#2856])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@resize-bar:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([i915#6412])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][126] -> [FAIL][127] ([i915#3989] / [i915#454])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][128] -> [INCOMPLETE][129] ([i915#7475])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][130] ([fdo#111644] / [i915#1397] / [i915#2411])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-1:
    - shard-glk:          [PASS][131] -> [INCOMPLETE][132] ([i915#5584])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-tglb:         NOTRUN -> [SKIP][133] ([i915#5286]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([fdo#111614])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][135] ([i915#3763])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([fdo#111615]) +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([i915#6095]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([i915#3689] / [i915#6095]) +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#3886])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-apl8/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#3886]) +2 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk2/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html
    - shard-skl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#3886]) +9 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][142] ([i915#3689]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][143] ([fdo#111615] / [i915#3689]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-tglb:         NOTRUN -> [SKIP][144] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-skl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl9/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][146] ([i915#3116] / [i915#3299])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@srm:
    - shard-tglb:         NOTRUN -> [SKIP][147] ([i915#7118])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][148] ([fdo#109274] / [fdo#111825])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [PASS][149] -> [FAIL][150] ([i915#2346])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-skl:          NOTRUN -> [INCOMPLETE][151] ([i915#7152])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-tglb:         [PASS][152] -> [FAIL][153] ([i915#2346]) +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][154] -> [FAIL][155] ([i915#79])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][156] ([fdo#109274] / [fdo#111825] / [i915#3637]) +3 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-apl:          NOTRUN -> [SKIP][157] ([fdo#109271]) +2 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-apl8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][158] ([i915#2122]) +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][159] ([i915#2587] / [i915#2672]) +2 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][160] ([i915#2587] / [i915#2672])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][161] -> [SKIP][162] ([i915#3555])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][163] ([i915#2672]) +2 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][164] ([fdo#109280] / [fdo#111825]) +11 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][165] ([i915#6497]) +4 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@static-swap:
    - shard-tglb:         NOTRUN -> [SKIP][166] ([i915#3555]) +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_hdr@static-swap.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][167] ([i915#4573]) +2 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl5/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-edp-1.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][168] ([fdo#112054] / [i915#5288])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][169] -> [SKIP][170] ([i915#5176]) +2 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-d-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][171] ([i915#5176]) +3 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][172] -> [SKIP][173] ([i915#5235]) +2 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-tglb:         NOTRUN -> [SKIP][174] ([i915#2920])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-skl:          NOTRUN -> [SKIP][175] ([fdo#109271] / [i915#658]) +1 similar issue
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][176] -> [SKIP][177] ([fdo#109441]) +1 similar issue
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-tglb:         NOTRUN -> [FAIL][178] ([i915#132] / [i915#3467])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-glk:          NOTRUN -> [SKIP][179] ([fdo#109271]) +25 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][180] ([fdo#109271] / [i915#2437])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl9/igt@kms_writeback@writeback-check-output.html

  * igt@perf_pmu@interrupts:
    - shard-skl:          [PASS][181] -> [FAIL][182] ([i915#7318])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl9/igt@perf_pmu@interrupts.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl4/igt@perf_pmu@interrupts.html

  * igt@sysfs_clients@split-25:
    - shard-tglb:         NOTRUN -> [SKIP][183] ([i915#2994])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@sysfs_clients@split-25.html

  * igt@sysfs_clients@split-50:
    - shard-skl:          NOTRUN -> [SKIP][184] ([fdo#109271] / [i915#2994]) +1 similar issue
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl10/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][185] ([i915#2582]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-5/igt@fbdev@unaligned-read.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][187] ([i915#6252]) -> [PASS][188] +1 similar issue
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-1/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_balancer@full-late-pulse:
    - {shard-dg1}:        [FAIL][189] ([i915#6032]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-dg1-15/igt@gem_exec_balancer@full-late-pulse.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-dg1-18/igt@gem_exec_balancer@full-late-pulse.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - {shard-rkl}:        [FAIL][191] ([i915#2842]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-4/igt@gem_exec_fair@basic-flow@rcs0.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-tglb:         [FAIL][193] ([i915#2842]) -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-tglb6/igt@gem_exec_fair@basic-none@vcs0.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb6/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-glk:          [FAIL][195] ([i915#2842]) -> [PASS][196] +1 similar issue
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - {shard-rkl}:        [SKIP][197] ([i915#3281]) -> [PASS][198] +10 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_partial_pwrite_pread@write:
    - {shard-rkl}:        [SKIP][199] ([i915#3282]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-4/igt@gem_partial_pwrite_pread@write.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-5/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][201] -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [DMESG-WARN][203] ([i915#5566] / [i915#716]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-apl8/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-far:
    - {shard-rkl}:        [SKIP][205] ([i915#2527]) -> [PASS][206] +1 similar issue
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-4/igt@gen9_exec_parse@bb-start-far.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [DMESG-WARN][207] ([i915#1982]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - {shard-rkl}:        [SKIP][209] ([i915#4098]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-5/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - {shard-dg1}:        [FAIL][211] ([i915#3591]) -> [PASS][212]
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [WARN][213] ([i915#1804]) -> [PASS][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-rkl}:        [SKIP][215] ([i915#1397]) -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - {shard-rkl}:        [SKIP][217] ([fdo#109308]) -> [PASS][218]
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-5/igt@i915_pm_rpm@system-suspend-modeset.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [FAIL][219] ([i915#2521]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_atomic@plane-overlay-legacy:
    - {shard-rkl}:        [SKIP][221] ([i915#1845] / [i915#4098]) -> [PASS][222] +15 similar issues
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-5/igt@kms_atomic@plane-overlay-legacy.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-6/igt@kms_atomic@plane-overlay-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][223] ([i915#79]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [INCOMPLETE][225] ([i915#4839]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@d-edp1:
    - shard-tglb:         [INCOMPLETE][227] -> [PASS][228] +1 similar issue
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-tglb8/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@d-edp1.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@d-edp1.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - {shard-rkl}:        [SKIP][229] ([i915#1849] / [i915#4098]) -> [PASS][230] +11 similar issues
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][231] ([i915#7255]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl7/igt@kms_frontbuffer_tracking@psr-suspend.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - {shard-rkl}:        [SKIP][233] ([i915#1849] / [i915#3558]) -> [PASS][234] +1 similar issue
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  * igt@kms_psr@cursor_render:
    - {shard-rkl}:        [SKIP][235] ([i915#1072]) -> [PASS][236] +2 similar issues
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-rkl-5/igt@kms_psr@cursor_render.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-6/igt@kms_psr@cursor_render.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][237] ([fdo#109441]) -> [PASS][238] +2 similar issues
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][239] ([i915#5519]) -> [PASS][240] +1 similar issue
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-tglb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@sysfs_timeslice_duration@timeout@vcs1:
    - {shard-dg1}:        [FAIL][241] ([i915#1755]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-dg1-18/igt@sysfs_timeslice_duration@timeout@vcs1.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-dg1-15/igt@sysfs_timeslice_duration@timeout@vcs1.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][243] ([i915#4525]) -> [FAIL][244] ([i915#6117])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          [INCOMPLETE][245] ([i915#7248]) -> [WARN][246] ([i915#2658])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-apl2/igt@gem_pread@exhaustion.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-apl2/igt@gem_pread@exhaustion.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][247] ([i915#2920]) -> [SKIP][248] ([i915#658])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][249] ([i915#2920]) -> [SKIP][250] ([fdo#111068] / [i915#658])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][251] ([i915#658]) -> [SKIP][252] ([i915#2920])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][253], [FAIL][254], [FAIL][255]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][256], [FAIL][257]) ([i915#3002] / [i915#4312])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-apl6/igt@runner@aborted.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-apl7/igt@runner@aborted.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-apl7/igt@runner@aborted.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-apl8/igt@runner@aborted.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
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
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5584]: https://gitlab.freedesktop.org/drm/intel/issues/5584
  [i915#6032]: https://gitlab.freedesktop.org/drm/intel/issues/6032
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6403]: https://gitlab.freedesktop.org/drm/intel/issues/6403
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7152]: https://gitlab.freedesktop.org/drm/intel/issues/7152
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7255]: https://gitlab.freedesktop.org/drm/intel/issues/7255
  [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
  [i915#7475]: https://gitlab.freedesktop.org/drm/intel/issues/7475
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12409 -> Patchwork_111147v1

  CI-20190529: 20190529
  CI_DRM_12409: ab70218208c05b2a68a1143438a56c3d494eb529 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7069: 40a2de5cc6a6b43af7da7905bfe1ede9d9a3200c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111147v1: ab70218208c05b2a68a1143438a56c3d494eb529 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/index.html

--===============1538943575339199323==
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
<tr><td><b>Series:</b></td><td>drm/i915: unpin on error in intel_vgpu_shado=
w_mm_pin()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/111147/">https://patchwork.freedesktop.org/series/111147/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111147v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111147v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12409_full -&gt; Patchwork_111147v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111147v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2409/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12409/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shar=
d-glk8/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12409/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12409/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12409/shard-glk6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk6/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12409/shard-glk5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk=
3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12409/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12409/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2409/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12409/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12409/shard-glk1/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4392">i915#4392</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111147v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-g=
lk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111147v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v=
1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111147v1/shard-glk7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111147v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111147v1/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-gl=
k1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111147v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1=
/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111147v1/shard-glk2/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111147v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111147v1/shard-glk6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk=
5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111147v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-glk5/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111147v1/shard-glk3/boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl10/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl10/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_12409/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12409/shard-skl1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/=
shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12409/shard-skl1/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl=
5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12409/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12409/shard-skl5/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl5/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2409/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12409/shard-skl6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shar=
d-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12409/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12409/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12409/shard-skl9/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-skl9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/=
shard-skl9/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5032">i915#5032</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-=
skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111147v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147=
v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_111147v1/shard-skl6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111147v1/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl5/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-s=
kl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111147v1/shard-skl5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v=
1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111147v1/shard-skl4/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111147v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111147v1/shard-skl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-sk=
l10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111147v1/shard-skl10/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl10/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11114=
7v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111147v1/shard-skl9/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl9/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111147v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl7/boot.html">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-2x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@feature_discovery@display-=
2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl5/igt@gem_ctx_persistence@hang.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +219 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11147v1/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@gem_exec_balancer@parallel=
-ordering.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/6117">i915#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-skl9/igt@gem_exec_capture@pi@bcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shar=
d-skl4/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3371">i915#3371</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@gem_exec_fair@basic-none-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-tglb6/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v=
1/shard-tglb6/igt@gem_exec_fair@basic-none@rcs0.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2848">i915#2848</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12409/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1111=
47v1/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)=
</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12409/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1111=
47v1/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)=
</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v=
1/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl5/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-glk2/igt@gem_lmem_swapping@verify-ra=
ndom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-tglb8/igt@gem_softpin@evict-single-offset.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11114=
7v1/shard-tglb8/igt@gem_softpin@evict-single-offset.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4171</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111147v1/shard-glk2/igt@gem_userptr_blits@input-chec=
king.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@gem_userptr_blits@input-chec=
king.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4991">i915#4991</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@gen7_exec_parse@load-regis=
ter-reg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@gen9_exec_parse@cmd-crossi=
ng-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3989">i915#3989</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-ic=
lb7/igt@i915_pm_dc@dc9-dpms.html">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/7475">i915#7475</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unse=
t-non-lpsp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111644">fdo#111644</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1397">i915#1397</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-1:<=
/p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transi=
tion@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111147v1/shard-glk3/igt@kms_atomic_transition@=
plane-all-modeset-transition@pipe-b-hdmi-a-1.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5584">i915#5584</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_big_fb@4-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_big_fb@linear-32bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_ccs@pipe-a-bad-pixel-f=
ormat-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_ccs@pipe-a-bad-rotatio=
n-90-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-apl8/igt@kms_ccs@pipe-c-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111147v1/shard-glk2/igt@kms_ccs@pipe-c-random-ccs-da=
ta-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@kms_ccs@pipe-c-random-ccs-da=
ta-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +9 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_ccs@pipe-d-bad-aux-str=
ide-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_ccs@pipe-d-crc-sprite-=
planes-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_chamelium@dp-crc-multi=
ple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl9/igt@kms_chamelium@dp-edid-chang=
e-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_cursor_legacy@2x-nonbl=
ocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atom=
ic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111147v1/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-cr=
c-atomic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@kms_cursor_legacy@flip-vs-c=
ursor@atomic-transitions.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/7152">i915#7152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-trans=
itions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111147v1/shard-tglb6/igt@kms_cursor_legacy@flip=
-vs-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111147v1/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@=
ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_flip@2x-nonexisting-fb=
-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-apl8/igt@kms_flip@2x-single-buffer-f=
lip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl5/igt@kms_flip@flip-vs-absolute-w=
f_vblank@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#25=
87</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bp=
p-linear-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb2/igt@k=
ms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-def=
ault-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +11 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6497">i915#6497</a>) +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_hdr@static-swap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl5/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_plane_lowres@tiling-4.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12054">fdo#112054</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5288">i915#5288</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb2/igt@kms_plane_s=
caling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-d-e=
dp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-75@pipe-d-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb3/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-iclb2/igt@kms_plan=
e_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235=
">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl7/igt@kms_psr2_su@page_flip-nv12.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shar=
d-iclb3/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_psr@psr2_cursor_plane_=
onoff.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3467">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-glk2/igt@kms_psr@psr2_sprite_mmap_gt=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl9/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-skl9/igt@perf_pmu@interrupts.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-skl=
4/igt@perf_pmu@interrupts.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7318">i915#7318</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-tglb5/igt@sysfs_clients@split-25.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/299=
4">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111147v1/shard-skl10/igt@sysfs_clients@split-50.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-5/igt@fbdev@unaligned-read.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/=
shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147=
v1/shard-rkl-1/igt@gem_ctx_persistence@hang.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late-pulse:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-dg1-15/igt@gem_exec_balancer@full-late-pulse.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6032">i915=
#6032</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111147v1/shard-dg1-18/igt@gem_exec_balancer@full-late-pulse.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-4/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11147v1/shard-rkl-5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12409/shard-tglb6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1147v1/shard-tglb6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12409/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
147v1/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 simila=
r issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i91=
5#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111147v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-4/igt@gem_partial_pwrite_pread@write.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#328=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111147v1/shard-rkl-5/igt@gem_partial_pwrite_pread@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
147v1/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-apl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111147v1/shard-apl8/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-4/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1147v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-skl9/igt@i915_module_load@reload-with-fault-injection.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111147v1/shard-skl1/igt@i915_module_load@reload-with-fau=
lt-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-5/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111147v1/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i9=
15#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111147v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915=
#1804</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111147v1/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1=
397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111147v1/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-5/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo=
#109308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111147v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111147v1/shard-skl1/igt@kms_async_flips@alternate-sy=
nc-async-flip@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-overlay-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-5/igt@kms_atomic@plane-overlay-legacy.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#18=
45</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111147v1/shard-rkl-6/igt@kms_atomic@plane-overlay-legacy.html">PASS<=
/a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111147v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank=
-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4839">i915#4839</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111147v1/shard-skl1/igt@kms_flip@flip-vs-suspend-interr=
uptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@d-e=
dp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-tglb8/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-mo=
deset-interruptible@d-edp1.html">INCOMPLETE</a> -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-tglb2/igt@kms_flip@=
single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@d-edp1.html">PASS</=
a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111147v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-m=
odesetfrombusy.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-skl7/igt@kms_frontbuffer_tracking@psr-suspend.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/725=
5">i915#7255</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111147v1/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-5/igt@kms_plane@pixel-format-source-clamping@pipe-b=
-planes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111147v1/shard-rkl-6/igt@kms_plane@pixel-format=
-source-clamping@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-rkl-5/igt@kms_psr@cursor_render.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/=
shard-rkl-6/igt@kms_psr@cursor_render.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111147v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-tglb8/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111147v1/shard-tglb8/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vcs1:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-dg1-18/igt@sysfs_timeslice_duration@timeout@vcs1.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1755">=
i915#1755</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111147v1/shard-dg1-15/igt@sysfs_timeslice_duration@timeout@vcs1.htm=
l">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111147v1/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-apl2/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11114=
7v1/shard-apl2/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111147v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111147v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12409/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111147v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12409/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/shard-apl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12409/shard-apl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1147v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111147v1/shard-apl3/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12409 -&gt; Patchwork_111147v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12409: ab70218208c05b2a68a1143438a56c3d494eb529 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7069: 40a2de5cc6a6b43af7da7905bfe1ede9d9a3200c @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111147v1: ab70218208c05b2a68a1143438a56c3d494eb529 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1538943575339199323==--
