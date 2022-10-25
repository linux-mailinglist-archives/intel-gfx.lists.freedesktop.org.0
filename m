Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD1A60CB9F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 14:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4102C10E34B;
	Tue, 25 Oct 2022 12:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 55D3B10E1DA;
 Tue, 25 Oct 2022 12:17:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4CC8EAAA91;
 Tue, 25 Oct 2022 12:17:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7840480387183085501=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karolina Drobnik" <karolina.drobnik@intel.com>
Date: Tue, 25 Oct 2022 12:17:08 -0000
Message-ID: <166670022828.15482.17656366207750942233@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221025091903.986819-1-karolina.drobnik@intel.com>
In-Reply-To: <20221025091903.986819-1-karolina.drobnik@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5/i915=5Fgem=5Fcontext=3A_Remove_debug_message_in_i915=5Fgem=5F?=
 =?utf-8?q?context=5Fcreate=5Fioctl?=
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

--===============7840480387183085501==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/i915_gem_context: Remove debug message in i915_gem_context_create_ioctl
URL   : https://patchwork.freedesktop.org/series/110116/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12290_full -> Patchwork_110116v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110116v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110116v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 11)
------------------------------

  Additional (2): shard-rkl shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110116v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_gttfill@basic:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk5/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk8/igt@gem_exec_gttfill@basic.html

  * igt@gem_softpin@allocator-evict@bcs0:
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk6/igt@gem_softpin@allocator-evict@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk2/igt@gem_softpin@allocator-evict@bcs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@sysfs_timeslice_duration@idempotent@vcs0:
    - {shard-dg1}:        NOTRUN -> [FAIL][6] +9 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-dg1-19/igt@sysfs_timeslice_duration@idempotent@vcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_110116v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31]) -> ([PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [FAIL][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56]) ([i915#4386])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl8/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl3/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/boot.html
    - shard-glk:          ([PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80]) -> ([PASS][81], [PASS][82], [PASS][83], [PASS][84], [FAIL][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105]) ([i915#4392])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk8/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk8/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk7/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk7/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk6/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk6/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk5/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk3/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk3/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk3/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk3/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk2/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk1/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk1/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk1/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk9/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk9/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk9/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk8/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk9/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk9/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk9/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk8/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk8/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk8/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk8/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk7/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk7/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk7/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk6/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk6/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk6/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk5/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk5/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk5/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk3/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk3/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk3/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk2/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk2/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk1/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk1/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][106] -> [SKIP][107] ([i915#4525]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][108] -> [FAIL][109] ([i915#2842])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][110] -> [SKIP][111] ([i915#2190])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-skl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#4613])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-glk:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#4613]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-glk:          [PASS][114] -> [DMESG-WARN][115] ([i915#7311])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk9/igt@gem_mmap_gtt@big-copy.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk5/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#4270])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271]) +43 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_tiled_wb:
    - shard-skl:          NOTRUN -> [TIMEOUT][118] ([i915#6990] / [i915#7065])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@gem_tiled_wb.html

  * igt@gem_userptr_blits@probe:
    - shard-skl:          NOTRUN -> [FAIL][119] ([i915#7224] / [i915#7247])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@gem_userptr_blits@probe.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([fdo#109289])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-apl:          NOTRUN -> [SKIP][121] ([fdo#109271]) +36 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-skl:          NOTRUN -> [FAIL][122] ([i915#7036])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglb:         NOTRUN -> [WARN][123] ([i915#2681]) +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][124] -> [DMESG-FAIL][125] ([i915#5334])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#3689] / [i915#3886]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#3886])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk9/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#3886])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-glk:          NOTRUN -> [SKIP][129] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk9/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@ctm-blue-to-red:
    - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@kms_color_chamelium@ctm-blue-to-red.html

  * igt@kms_color_chamelium@ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@kms_color_chamelium@ctm-max.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
    - shard-apl:          [PASS][132] -> [DMESG-WARN][133] ([i915#180]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][134] ([i915#2587] / [i915#2672]) +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#2587] / [i915#2672])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([i915#2672]) +7 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][137] ([i915#3555])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([i915#6497])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][139] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][140] ([i915#4573]) +2 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#658])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][142] -> [SKIP][143] ([fdo#109441]) +3 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb1/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglb:         NOTRUN -> [SKIP][144] ([i915#3555])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_vblank@pipe-d-wait-busy-hang:
    - shard-glk:          NOTRUN -> [SKIP][145] ([fdo#109271]) +44 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk9/igt@kms_vblank@pipe-d-wait-busy-hang.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#2437])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#2437])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][148] -> [FAIL][149] ([i915#5639])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk3/igt@perf@polling-parameterized.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk7/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@recycle:
    - shard-glk:          NOTRUN -> [SKIP][150] ([fdo#109271] / [i915#2994])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk9/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-25:
    - shard-skl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#2994])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [FAIL][152] ([i915#6268]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [DMESG-WARN][154] ([i915#180]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][156] ([i915#4525]) -> [PASS][157] +2 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][158] ([i915#2846]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][160] ([i915#2842]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [FAIL][162] ([i915#2842]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][164] ([i915#2842]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-skl:          [INCOMPLETE][166] ([i915#7311]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-skl6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl9/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_softpin@evict-single-offset:
    - shard-tglb:         [INCOMPLETE][168] -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-tglb3/igt@gem_softpin@evict-single-offset.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@gem_softpin@evict-single-offset.html

  * igt@i915_selftest@live@hugepages:
    - shard-glk:          [DMESG-FAIL][170] ([i915#7311]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk1/igt@i915_selftest@live@hugepages.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk6/igt@i915_selftest@live@hugepages.html

  * igt@kms_async_flips@test-time-stamp@pipe-a-edp-1:
    - shard-skl:          [FAIL][172] -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-skl3/igt@kms_async_flips@test-time-stamp@pipe-a-edp-1.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl6/igt@kms_async_flips@test-time-stamp@pipe-a-edp-1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][174] ([i915#79]) -> [PASS][175] +1 similar issue
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [FAIL][176] ([i915#79]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [FAIL][178] ([i915#2122]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-skl4/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl9/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
    - shard-iclb:         [FAIL][180] ([i915#2546]) -> [PASS][181] +2 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-iclb:         [FAIL][182] -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][184] ([fdo#109441]) -> [PASS][185] +1 similar issue
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][186] ([i915#5639]) -> [PASS][187]
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-skl9/igt@perf@polling-parameterized.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl10/igt@perf@polling-parameterized.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][188] ([i915#51]) -> [PASS][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-skl3/igt@perf@short-reads.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl10/igt@perf@short-reads.html

  * igt@perf_pmu@interrupts:
    - shard-skl:          [FAIL][190] ([i915#7318]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-skl6/igt@perf_pmu@interrupts.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl3/igt@perf_pmu@interrupts.html

  
#### Warnings ####

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          [INCOMPLETE][192] ([i915#7311]) -> [INCOMPLETE][193] ([i915#7248] / [i915#7311])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl2/igt@gem_pwrite@basic-exhaustion.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl8/igt@gem_pwrite@basic-exhaustion.html
    - shard-tglb:         [DMESG-WARN][194] ([i915#7311]) -> [WARN][195] ([i915#2658])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-tglb2/igt@gem_pwrite@basic-exhaustion.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-tglb2/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][196] ([i915#658]) -> [SKIP][197] ([i915#2920]) +1 similar issue
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][198] ([i915#2920]) -> [SKIP][199] ([fdo#111068] / [i915#658]) +1 similar issue
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
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
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
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
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6032]: https://gitlab.freedesktop.org/drm/intel/issues/6032
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6990]: https://gitlab.freedesktop.org/drm/intel/issues/6990
  [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
  [i915#7065]: https://gitlab.freedesktop.org/drm/intel/issues/7065
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
  [i915#7224]: https://gitlab.freedesktop.org/drm/intel/issues/7224
  [i915#7247]: https://gitlab.freedesktop.org/drm/intel/issues/7247
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7311]: https://gitlab.freedesktop.org/drm/intel/issues/7311
  [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12290 -> Patchwork_110116v1

  CI-20190529: 20190529
  CI_DRM_12290: 10baa7781c4532c362d6cab509a0e4fea4e11a94 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7026: ce0f97e7e0aa54c40049a8365b3d61773c92e588 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110116v1: 10baa7781c4532c362d6cab509a0e4fea4e11a94 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/index.html

--===============7840480387183085501==
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
<tr><td><b>Series:</b></td><td>i915/i915_gem_context: Remove debug message =
in i915_gem_context_create_ioctl</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/110116/">https://patchwork.freedesktop.org/series/110116/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110116v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110116v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12290_full -&gt; Patchwork_110116v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110116v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_110116v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 11)</h2>
<p>Additional (2): shard-rkl shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
110116v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-glk5/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-=
glk8/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict@bcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-glk6/igt@gem_softpin@allocator-evict@bcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11011=
6v1/shard-glk2/igt@gem_softpin@allocator-evict@bcs0.html">INCOMPLETE</a></l=
i>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-rkl-6/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-90.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@idempotent@vcs0:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-dg1-19/igt@sysfs_timeslice_duration@=
idempotent@vcs0.html">FAIL</a> +9 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110116v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2290/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12290/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12290/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12290/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12290/shard-apl1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12290/shard-apl1/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl2/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12290/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12290/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2290/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12290/shard-apl3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-apl3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shar=
d-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12290/shard-apl6/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl8/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
116v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_110116v1/shard-apl8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110116v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/sh=
ard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110116v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0116v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110116v1/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110116v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/sh=
ard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110116v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0116v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110116v1/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl2/=
boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110116v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/sh=
ard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110116v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-apl1/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4386=
">i915#4386</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2290/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12290/shard-glk7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shar=
d-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12290/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk5/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12290/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12290/shard-glk3/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk3/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12290/shard-glk2/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk2/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12290/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12290/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2290/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12290/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12290/shar=
d-glk8/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_110116v1/shard-glk9/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110116v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-g=
lk8/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110116v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v=
1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110116v1/shard-glk7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110116v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110116v1/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110116v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110116v1/shard-glk3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110116v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110116v1/shard-glk2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110116v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-glk1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110116v1/shard-glk1/boot.html">PASS</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/4392">i915#4392</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110116v1/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#45=
25</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10116v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@gem_lmem_swapping@basic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-glk6/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-glk9/igt@gem_mmap_gtt@big-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-g=
lk5/igt@gem_mmap_gtt@big-copy.html">DMESG-WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/7311">i915#7311</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@gem_pxp@create-regular-con=
text-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@gem_pxp@verify-pxp-stale-bu=
f-optout-execution.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_wb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@gem_tiled_wb.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6990">i915#=
6990</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7065"=
>i915#7065</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@probe:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@gem_userptr_blits@probe.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/722=
4">i915#7224</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7247">i915#7247</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@gen7_exec_parse@load-regis=
ter-reg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@gen7_exec_parse@oacontrol-t=
racking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@i915_pipe_stress@stress-xrg=
b8888-untiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7036">i915#7036</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@i915_pm_rc6_residency@rc6-=
idle@rcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2681">i915#2681</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116=
v1/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@kms_ccs@pipe-a-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-glk9/igt@kms_ccs@pipe-b-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-glk9/igt@kms_chamelium@vga-hpd-enabl=
e-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-blue-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@kms_color_chamelium@ctm-blu=
e-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@kms_color_chamelium@ctm-max=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110116v1/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915=
#2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/6497">i915#6497</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/sha=
rd-iclb1/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-tglb3/igt@kms_setmode@clone-exclusiv=
e-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-busy-hang:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-glk9/igt@kms_vblank@pipe-d-wait-busy=
-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-apl1/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-glk3/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/sh=
ard-glk7/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-glk9/igt@sysfs_clients@recycle.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110116v1/shard-skl7/igt@sysfs_clients@sema-25.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110116v1/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110116v1/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110116v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
116v1/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10116v1/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110116v1/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110116v1/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-skl6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/731=
1">i915#7311</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110116v1/shard-skl9/igt@gem_mmap_gtt@cpuset-basic-small-copy.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-tglb3/igt@gem_softpin@evict-single-offset.html">INCOMPL=
ETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110116v1/shard-tglb3/igt@gem_softpin@evict-single-offset.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-glk1/igt@i915_selftest@live@hugepages.html">DMESG-FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7311">i915#=
7311</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110116v1/shard-glk6/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-skl3/igt@kms_async_flips@test-time-stamp@pipe-a-edp-1.h=
tml">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_110116v1/shard-skl6/igt@kms_async_flips@test-time-stamp@pipe-a-edp-1=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_110116v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110116v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank=
-interruptible@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-skl4/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915=
#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110116v1/shard-skl9/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2546">i915#2546</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110116v1/shard-iclb1/igt@kms_frontbuffer_track=
ing@fbc-1p-primscrn-pri-shrfb-draw-blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-render.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110116v1/shard-iclb1/igt@kms_frontbuffer_tracking=
@psr-1p-primscrn-cur-indfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11011=
6v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11011=
6v1/shard-skl10/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-skl3/igt@perf@short-reads.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/51">i915#51</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/shard-skl1=
0/igt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-skl6/igt@perf_pmu@interrupts.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/7318">i915#7318</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110116v1/sha=
rd-skl3/igt@perf_pmu@interrupts.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12290/shard-apl2/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7311">i915#73=
11</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110116v1/shard-apl8/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7311">i915=
#7311</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12290/shard-tglb2/igt@gem_pwrite@basic-exhaustion.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7311">i915#7=
311</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110116v1/shard-tglb2/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)=
</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110116v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12290/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110116v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-c=
ontinuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12290 -&gt; Patchwork_110116v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12290: 10baa7781c4532c362d6cab509a0e4fea4e11a94 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7026: ce0f97e7e0aa54c40049a8365b3d61773c92e588 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110116v1: 10baa7781c4532c362d6cab509a0e4fea4e11a94 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7840480387183085501==--
