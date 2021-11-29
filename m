Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC244619F1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 15:39:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2BB6E419;
	Mon, 29 Nov 2021 14:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 47FAF6E419;
 Mon, 29 Nov 2021 14:39:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F49DA363C;
 Mon, 29 Nov 2021 14:39:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6239782843939634099=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhi Wang" <zhi.wang.linux@gmail.com>
Date: Mon, 29 Nov 2021 14:39:49 -0000
Message-ID: <163819678923.16120.1680520404427582572@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211129123832.105196-1-zhi.a.wang@intel.com>
In-Reply-To: <20211129123832.105196-1-zhi.a.wang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/2=5D_i915/gvt=3A_Introduce_the_mmio?=
 =?utf-8?q?=5Finfo=5Ftable=2Ec_to_support_VFIO_new_mdev_API?=
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

--===============6239782843939634099==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v4,1/2] i915/gvt: Introduce the mmio_info_table.c to support VFIO new mdev API
URL   : https://patchwork.freedesktop.org/series/97369/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10936_full -> Patchwork_21693_full
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

  Here are the changes found in Patchwork_21693_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [FAIL][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#4392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk7/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk9/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk9/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-snb:          ([FAIL][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75]) ([i915#4338]) -> ([PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb5/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb7/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb7/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb6/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb6/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb5/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb2/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb2/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb2/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb7/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb7/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb7/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb7/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb7/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb5/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb5/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb5/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb4/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb4/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb4/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb4/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb2/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb2/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb2/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb2/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#1099])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [PASS][102] -> [TIMEOUT][103] ([i915#3063])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#4525]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb6/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][105] ([i915#2846])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][106] ([i915#2842]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][107] -> [FAIL][108] ([i915#2842]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][109] -> [FAIL][110] ([i915#2842])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][111] ([fdo#109271]) +67 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#2190])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl2/igt@gem_huc_copy@huc-copy.html
    - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#2190])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-kbl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#4613])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl6/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#4613])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@random:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#4613]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl3/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#4613])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-apl4/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][118] ([i915#2658])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([i915#4270]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_softpin@noreloc-s3:
    - shard-tglb:         [PASS][120] -> [INCOMPLETE][121] ([i915#1373] / [i915#456])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-tglb8/igt@gem_softpin@noreloc-s3.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][122] ([i915#3297])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#3323])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][124] ([i915#3002])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl1/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([fdo#109289]) +4 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#2856])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb6/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#1902])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb6/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglb:         NOTRUN -> [SKIP][128] ([fdo#109506] / [i915#2411])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [PASS][129] -> [DMESG-WARN][130] ([i915#118])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][131] ([fdo#111614])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#3777]) +3 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#3777])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#3777])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([fdo#111615]) +2 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_joiner@basic:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#2705])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb6/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#3886]) +2 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#111615] / [i915#3689]) +4 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#3886]) +4 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][140] ([i915#3689]) +3 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#3886])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-apl4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-snb:          NOTRUN -> [SKIP][142] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd:
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl7/igt@kms_chamelium@hdmi-hpd.html

  * igt@kms_chamelium@vga-hpd-fast:
    - shard-tglb:         NOTRUN -> [SKIP][144] ([fdo#109284] / [fdo#111827]) +9 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][145] ([fdo#109271]) +143 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl1/igt@kms_color@pipe-d-ctm-negative.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-apl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-apl4/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_content_protection@content_type_change:
    - shard-tglb:         NOTRUN -> [SKIP][148] ([fdo#111828])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_content_protection@content_type_change.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-apl:          NOTRUN -> [SKIP][149] ([fdo#109271]) +58 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][150] ([fdo#109279] / [i915#3359]) +3 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][151] ([i915#3359]) +2 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [PASS][152] -> [INCOMPLETE][153] ([i915#2828] / [i915#456])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][154] ([i915#3319]) +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][155] ([fdo#109271]) +106 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][156] ([i915#4103]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][157] ([i915#2346])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [PASS][158] -> [FAIL][159] ([i915#2346])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][160] ([fdo#109271] / [i915#533]) +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-tglb:         NOTRUN -> [SKIP][161] ([fdo#111825]) +29 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][162] -> [FAIL][163] ([i915#2122])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][164] -> [FAIL][165] ([i915#79]) +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][166] -> [DMESG-WARN][167] ([i915#180]) +9 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][168] -> [DMESG-WARN][169] ([i915#180]) +2 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][170] ([i915#1187])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][171] ([fdo#109271] / [i915#533])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][172] ([fdo#109271] / [i915#533])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-apl4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][173] ([fdo#108145] / [i915#265]) +1 similar issue
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][174] ([fdo#108145] / [i915#265])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][175] -> [FAIL][176] ([fdo#108145] / [i915#265])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][177] ([fdo#111615] / [fdo#112054])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][178] ([fdo#109271] / [i915#658])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-tglb:         NOTRUN -> [SKIP][179] ([i915#2920])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tglb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][180] ([fdo#109271] / [i915#658]) +2 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-skl3/igt@kms_psr2_su@frontbuffer.html
    - shard-iclb:         [PASS][181] -> [SKIP][182] ([fdo#109642] / [fdo#111068] / [i915#658])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr2_su@page_flip:
    - shard-kbl:          NOTRUN -> [SKIP][183] ([fdo#109271] / [i915#658]) +3 similar issues
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-kbl1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][184] -> [SKIP][185] ([fdo#109441]) +1 similar issue
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-tglb:         NOTRUN -> [FAIL][186] ([i915#132] / [i915#3467]) +4

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/index.html

--===============6239782843939634099==
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
<tr><td><b>Series:</b></td><td>series starting with [v4,1/2] i915/gvt: Intr=
oduce the mmio_info_table.c to support VFIO new mdev API</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97369/">https://patchwork.freedesktop.org/series/97369/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21693/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21693/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10936_full -&gt; Patchwork_21693_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21693_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10936/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10936/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10936/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10936/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10936/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10936/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10936/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0936/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10936/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shar=
d-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10936/shard-glk8/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21693/shard-glk8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk8/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/=
shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21693/shard-glk7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21693/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21693/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21693/shard-glk4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21693/shard-glk3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21693/shard-glk2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21693/shard-glk1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-glk1/boot.html">PAS=
S</a>) ([i915#4392])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10936/shard-snb5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10936/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10936/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10936/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10936/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10936/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10936/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0936/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10936/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10936/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10936/shard-snb2/boot.html">PASS</a>) ([i915#4338]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21693/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21693/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21693/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21693/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21693/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21693/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21693/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21693/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-snb2/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-snb6/igt@gem_ctx_persistence@engines-mi=
xed.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/=
shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> ([i915#306=
3])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb6/igt@gem_exec_balancer@parallel-ou=
t-fence.html">SKIP</a> ([i915#4525]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-skl1/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@gem_exec_fair@basic-none-vip@=
rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/s=
hard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/s=
hard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-snb6/igt@gem_exec_flush@basic-batch-ker=
nel-default-cmd.html">SKIP</a> ([fdo#109271]) +67 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21693/shard-kbl2/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21693/shard-skl7/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-kbl6/igt@gem_lmem_swapping@basic.html">=
SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@gem_lmem_swapping@heavy-verif=
y-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-skl3/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-apl4/igt@gem_lmem_swapping@random-engin=
es.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-kbl6/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@gem_pxp@reject-modify-context=
-protection-off-2.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-tglb8/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-tg=
lb7/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> ([i915#1373] / [i915#45=
6])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@gem_userptr_blits@coherency-u=
nsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-kbl6/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-skl1/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@gen7_exec_parse@cmd-crossing-=
page.html">SKIP</a> ([fdo#109289]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb6/igt@gen9_exec_parse@bb-start-far.=
html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb6/igt@i915_pm_lpsp@screens-disabled=
.html">SKIP</a> ([i915#1902])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@i915_pm_rpm@modeset-pc8-resid=
ency-stress.html">SKIP</a> ([fdo#109506] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_216=
93/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> (=
[i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_big_fb@x-tiled-8bpp-rotat=
e-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb6/igt@kms_big_joiner@basic.html">SK=
IP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-skl7/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_ccs@pipe-b-crc-sprite-pla=
nes-basic-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +4 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-kbl1/igt@kms_ccs@pipe-b-random-ccs-data=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-apl4/igt@kms_ccs@pipe-c-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-snb6/igt@kms_chamelium@dp-crc-fast.html=
">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-skl7/igt@kms_chamelium@hdmi-hpd.html">S=
KIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@kms_chamelium@vga-hpd-fast.ht=
ml">SKIP</a> ([fdo#109284] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-skl1/igt@kms_color@pipe-d-ctm-negative.=
html">SKIP</a> ([fdo#109271]) +143 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-kbl6/igt@kms_color_chamelium@pipe-a-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-apl4/igt@kms_color_chamelium@pipe-c-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_content_protection@conten=
t_type_change.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-3=
2x10-offscreen.html">SKIP</a> ([fdo#109271]) +58 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-=
512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-=
max-size-offscreen.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21693/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE=
</a> ([i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-rapid-movement.html">SKIP</a> ([i915#3319]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> ([fdo#109271]) +106 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_cursor_legacy@basic-busy-=
flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-skl7/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21693/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL=
</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-kbl3/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_flip@2x-flip-vs-rmfb.html=
">SKIP</a> ([fdo#111825]) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21693/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21693/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@b-edp1.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21693/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21693/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb5/igt@kms_hdr@static-toggle-dpms.ht=
ml">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-skl7/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-apl4/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21693/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb8/igt@kms_plane_lowres@pipe-c-tilin=
g-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-apl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-tglb6/igt@kms_psr2_sf@plane-move-sf-dmg=
-area-0.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21693/shard-skl3/igt@kms_psr2_su@frontbuffer.html">S=
KIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10936/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-ic=
lb6/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068]=
 / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21693/shard-kbl1/igt@kms_psr2_su@page_flip.html">SK=
IP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10936/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21693/shard-i=
clb6/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; [FAIL][186] ([i915#132] / [i915#3467])=
 +4</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6239782843939634099==--
