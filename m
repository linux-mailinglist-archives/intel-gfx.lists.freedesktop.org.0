Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B9746629D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 12:43:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88AEB6EE61;
	Thu,  2 Dec 2021 11:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85A496EAA0;
 Thu,  2 Dec 2021 11:43:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7EEBEA00CC;
 Thu,  2 Dec 2021 11:43:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3916404541067409554=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Thu, 02 Dec 2021 11:43:14 -0000
Message-ID: <163844539449.9458.14482591904706442332@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211202092424.4000107-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20211202092424.4000107-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUmVw?=
 =?utf-8?q?lace_VT-d_workaround_with_guard_pages_=28rev2=29?=
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

--===============3916404541067409554==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Replace VT-d workaround with guard pages (rev2)
URL   : https://patchwork.freedesktop.org/series/97492/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10953_full -> Patchwork_21727_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_21727_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [FAIL][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#4386])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl4/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl4/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl4/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl4/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl3/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl1/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl1/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl8/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl8/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [FAIL][72], [PASS][73], [PASS][74], [PASS][75]) ([i915#4392]) -> ([PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk9/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk9/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk8/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk8/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk7/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk7/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk7/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk6/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk5/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk4/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk3/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk3/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk2/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk2/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk2/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk1/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk1/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk1/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk2/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk2/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk3/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk3/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk4/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk4/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk4/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk5/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk2/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk1/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk1/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk5/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk5/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk6/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk6/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk7/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk7/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk7/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk8/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk8/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk8/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk9/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk9/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([i915#4525])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][102] ([i915#2846])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][103] -> [FAIL][104] ([i915#2842]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][105] -> [FAIL][106] ([i915#2842])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][107] -> [FAIL][108] ([i915#2842])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][109] -> [FAIL][110] ([i915#2842]) +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][111] -> [FAIL][112] ([i915#2842])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109283])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-glk:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#4613]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk3/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#4613]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@random:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#4613])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-tglb6/igt@gem_lmem_swapping@random.html
    - shard-kbl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#4613]) +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl2/igt@gem_lmem_swapping@random.html
    - shard-skl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#4613])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-skl5/igt@gem_lmem_swapping@random.html
    - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#4613])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb6/igt@gem_lmem_swapping@random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][120] ([i915#2658])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([i915#4270])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][122] ([fdo#109271]) +108 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl2/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][123] ([i915#3318])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109289]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb6/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          [PASS][125] -> [TIMEOUT][126] ([i915#4639])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl3/igt@gen9_exec_parse@bb-large.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl7/igt@gen9_exec_parse@bb-large.html

  * igt@i915_module_load@reload-no-display:
    - shard-tglb:         [PASS][127] -> [DMESG-WARN][128] ([i915#2867])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-tglb1/igt@i915_module_load@reload-no-display.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-tglb3/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][129] -> [FAIL][130] ([i915#454])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][131] ([fdo#110892])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_selftest@live@gt_pm:
    - shard-glk:          NOTRUN -> [DMESG-FAIL][132] ([i915#3987])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk4/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#3777]) +2 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#3886]) +3 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk3/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
    - shard-apl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#3886])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([fdo#109278] / [i915#3886])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#3886]) +7 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl3/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-crc-single:
    - shard-glk:          NOTRUN -> [SKIP][138] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk3/igt@kms_chamelium@hdmi-crc-single.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-skl5/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl2/igt@kms_chamelium@hdmi-hpd-storm.html
    - shard-tglb:         NOTRUN -> [SKIP][141] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-tglb6/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb6/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][144] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@lic:
    - shard-iclb:         NOTRUN -> [SKIP][145] ([fdo#109300] / [fdo#111066])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb6/igt@kms_content_protection@lic.html
    - shard-tglb:         NOTRUN -> [SKIP][146] ([fdo#111828])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-tglb6/igt@kms_content_protection@lic.html
    - shard-kbl:          NOTRUN -> [TIMEOUT][147] ([i915#1319])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl2/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][148] ([i915#1319])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-apl:          NOTRUN -> [SKIP][149] ([fdo#109271]) +70 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][150] ([i915#180])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][151] ([fdo#109274] / [fdo#109278])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-tglb:         [PASS][152] -> [FAIL][153] ([i915#2346])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][154] -> [FAIL][155] ([i915#2346]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-glk:          NOTRUN -> [SKIP][156] ([fdo#109271] / [i915#533]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk4/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          NOTRUN -> [INCOMPLETE][157] ([i915#180] / [i915#1982])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][158] ([fdo#109274])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][159] -> [FAIL][160] ([i915#2122])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][161] -> [DMESG-WARN][162] ([i915#180]) +5 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][163] ([fdo#109271] / [i915#2672]) +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][164] ([fdo#109271]) +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-glk:          NOTRUN -> [SKIP][165] ([fdo#109271]) +54 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][166] ([fdo#109280]) +4 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][167] -> [FAIL][168] ([i915#1188])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][169] -> [DMESG-WARN][170] ([i915#180]) +1 similar issue
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-glk:          NOTRUN -> [FAIL][171] ([fdo#108145] / [i915#265])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][172] ([i915#265])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][173] ([fdo#108145] / [i915#265])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][174] ([fdo#108145] / [i915#265])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - shard-iclb:         NOTRUN -> [SKIP][175] ([fdo#109278]) +6 similar issues
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][176] ([fdo#109271] / [i915#658]) +1 similar issue
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][177] ([fdo#109271] / [i915#658])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         NOTRUN -> [SKIP][178] ([fdo#109441])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][179] -> [SKIP][180] ([fdo#109441]) +1 similar issue
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb1/igt@kms_psr@psr2_suspend.html

  * igt@kms_selftest@all@check_plane_state:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][181] ([i915#4663])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl7/igt@kms_selftest@all@check_plane_state.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][182] -> [FAIL][183] ([i915#31])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk1/igt@kms_setmode@basic.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][184] -> [DMESG-WARN][185] ([i915#180] / [i915#295])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][186] ([fdo#109271] / [i915#533])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-iclb:         NOTRUN -> [SKIP][187] ([i915#2437])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [PASS][188] -> [FAIL][189] ([i915#1542])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-tglb5/igt@perf@polling-parameterized.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-tglb6/igt@perf@polling-parameterized.html

  * igt@perf@short-reads:
    - shard-skl:          [PASS][190] -> [FAIL][191] ([i915#51])
   [190]: https://intel-gfx-ci

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/index.html

--===============3916404541067409554==
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
<tr><td><b>Series:</b></td><td>Replace VT-d workaround with guard pages (re=
v2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97492/">https://patchwork.freedesktop.org/series/97492/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21727/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10953_full -&gt; Patchwork_21727_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21727_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10953/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl4/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10953/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10953/shard-apl3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/sha=
rd-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10953/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl2/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10953/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10953/shard-apl1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953=
/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10953/shard-apl2/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-ap=
l8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0953/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10953/shard-apl6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-apl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shar=
d-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10953/shard-apl4/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21727/shard-apl8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21727/shard-apl7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21727/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21727/shard-apl4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21727/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21727/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl2/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21727/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21727/shard-apl1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-apl1/boot.html">PAS=
S</a>) ([i915#4386])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10953/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10953/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10953/shard-glk7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10953/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10953/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10953/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10953/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0953/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10953/shard-glk2/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10953/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10953/shard-glk1/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21727/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21727/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21727/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21727/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21727/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21727/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21727/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21727/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk9/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@gem_exec_balancer@parallel-ke=
ep-in-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl4/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1727/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/sh=
ard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/s=
hard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/=
shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])=
 +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2172=
7/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@gem_exec_params@rsvd2-dirt.ht=
ml">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-glk3/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl4/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-tglb6/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-kbl2/igt@gem_lmem_swapping@random.html">=
SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-skl5/igt@gem_lmem_swapping@random.html">=
SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-iclb6/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-glk4/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@gem_pxp@create-regular-contex=
t-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-kbl2/igt@gem_render_copy@x-tiled-to-veb=
ox-yf-tiled.html">SKIP</a> ([fdo#109271]) +108 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl8/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb6/igt@gen7_exec_parse@oacontrol-tra=
cking.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-apl3/igt@gen9_exec_parse@bb-large.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-a=
pl7/igt@gen9_exec_parse@bb-large.html">TIMEOUT</a> ([i915#4639])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-tglb1/igt@i915_module_load@reload-no-display.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
727/shard-tglb3/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a>=
 ([i915#2867])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb3/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@i915_pm_rpm@dpms-mode-unset-n=
on-lpsp.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-glk4/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#3987])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-glk3/igt@kms_ccs@pipe-b-bad-aux-stride-y=
_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 simil=
ar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-apl8/igt@kms_ccs@pipe-b-bad-aux-stride-y=
_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb6/igt@kms_ccs@pipe-b-crc-primary-ba=
sic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-kbl3/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-glk3/igt@kms_chamelium@hdmi-crc-single.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-skl5/igt@kms_chamelium@hdmi-hpd-fast.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-kbl2/igt@kms_chamelium@hdmi-hpd-storm.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-tglb6/igt@kms_chamelium@hdmi-hpd-storm.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb6/igt@kms_chamelium@hdmi-mode-timin=
gs.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl4/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_color_chamelium@pipe-d-ct=
m-0-25.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-iclb6/igt@kms_content_protection@lic.htm=
l">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-tglb6/igt@kms_content_protection@lic.htm=
l">SKIP</a> ([fdo#111828])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21727/shard-kbl2/igt@kms_content_protection@lic.html=
">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl8/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-3=
2x10-offscreen.html">SKIP</a> ([fdo#109271]) +70 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-s=
uspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_cursor_legacy@2x-long-fli=
p-vs-cursor-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21727/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21727/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</=
a> ([i915#2346]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-glk4/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html=
">INCOMPLETE</a> ([i915#180] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_flip@2x-flip-vs-modeset.h=
tml">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21727/shard-glk1/igt@kms_flip@2x-plain-flip-f=
b-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21727/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl4/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-glk4/igt@kms_frontbuffer_tracking@fbcps=
r-1p-offscren-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +54 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +4 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard=
-skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21727/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">=
DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-glk3/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-glk4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_plane_alpha_blend@pipe-d-=
constant-alpha-max.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-kbl2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl4/igt@kms_psr2_su@frontbuffer-xrgb88=
88.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_psr@psr2_sprite_plane_mov=
e.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-iclb=
1/igt@kms_psr@psr2_suspend.html">SKIP</a> ([fdo#109441]) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all@check_plane_state:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-kbl7/igt@kms_selftest@all@check_plane_s=
tate.html">INCOMPLETE</a> ([i915#4663])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-glk1/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shard-glk2/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21727/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21727/shard-iclb4/igt@kms_writeback@writeback-inval=
id-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10953/shard-tglb5/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21727/shar=
d-tglb6/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci">PASS</a> -&gt; [FA=
IL][191] ([i915#51])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3916404541067409554==--
