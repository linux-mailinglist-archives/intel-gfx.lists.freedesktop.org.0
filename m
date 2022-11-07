Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 321C361F0F1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 11:41:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A92B210E2E6;
	Mon,  7 Nov 2022 10:41:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3D4010E13E;
 Mon,  7 Nov 2022 10:41:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A083BA73C9;
 Mon,  7 Nov 2022 10:41:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6172491783943030065=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Mon, 07 Nov 2022 10:41:17 -0000
Message-ID: <166781767764.17756.3020733416009853396@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107073923.1353049-1-suraj.kandpal@intel.com>
In-Reply-To: <20221107073923.1353049-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_YCbCr420_for_VDSC?=
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

--===============6172491783943030065==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable YCbCr420 for VDSC
URL   : https://patchwork.freedesktop.org/series/110581/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12347_full -> Patchwork_110581v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110581v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110581v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110581v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@userptr@bcs0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl9/igt@gem_exec_parallel@userptr@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl3/igt@gem_exec_parallel@userptr@bcs0.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl6/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_110581v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17]) -> ([PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [FAIL][34]) ([i915#5032])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl10/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl10/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl10/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl10/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl10/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl5/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [FAIL][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59]) ([i915#4392]) -> ([PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk9/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk2/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk9/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk9/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk9/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk8/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk8/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk8/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk7/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk7/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk7/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk6/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk6/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk6/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk5/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk5/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk5/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk3/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk3/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk3/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk1/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk1/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk1/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#5327])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][86] ([i915#4991])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl6/igt@gem_create@create-massive.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][87] ([i915#4991])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@gem_create@create-massive.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#4525])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][89] -> [SKIP][90] ([i915#4525])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb7/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][91] ([i915#2846])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl6/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#2846])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/igt@gem_exec_fair@basic-deadline.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk1/igt@gem_exec_fair@basic-deadline.html
    - shard-skl:          NOTRUN -> [FAIL][94] ([i915#2846])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][95] -> [FAIL][96] ([i915#2842]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][97] ([i915#2842])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][98] ([i915#2842])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#2842])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][101] -> [FAIL][102] ([i915#2842])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2190])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#4613]) +5 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl5/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#4613])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-glk:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#4613])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [INCOMPLETE][107] ([i915#7248])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl7/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271]) +42 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#768])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271]) +309 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([i915#3297])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen3_mixed_blits:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109289]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([i915#2856])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-skl:          NOTRUN -> [FAIL][114] ([i915#7036])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][115] ([i915#3989] / [i915#454])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl10/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][116] ([i915#1886])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl6/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([i915#5286]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][118] ([i915#3763])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#3886]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl3/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#3886]) +11 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109278]) +4 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#3886]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109278] / [i915#3886]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109284] / [fdo#111827])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd:
    - shard-glk:          NOTRUN -> [SKIP][126] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@ctm-0-25@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [FAIL][127] ([i915#315] / [i915#6946]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_color@ctm-0-25@pipe-b-edp-1.html

  * igt@kms_color@ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#3546])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@kms_color@ctm-red-to-blue.html

  * igt@kms_color_chamelium@ctm-negative:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl3/igt@kms_color_chamelium@ctm-negative.html

  * igt@kms_content_protection@lic:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([i915#7118])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-iclb:         NOTRUN -> [SKIP][131] ([i915#3359])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
    - shard-apl:          [PASS][132] -> [DMESG-WARN][133] ([i915#180])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
    - shard-skl:          [PASS][134] -> [INCOMPLETE][135] ([i915#6951])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][136] ([i915#5072])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl10/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][137] -> [FAIL][138] ([i915#2346])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#109274]) +5 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][140] -> [FAIL][141] ([i915#2122])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [FAIL][142] ([i915#79])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][143] -> [FAIL][144] ([i915#2122]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][145] ([i915#2587] / [i915#2672]) +3 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([i915#2672]) +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][147] ([i915#2672] / [i915#3555])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][148] ([fdo#109271]) +61 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][149] ([fdo#109280]) +8 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][150] ([i915#3555]) +2 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-iclb:         NOTRUN -> [SKIP][151] ([i915#1839])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][152] ([i915#4573]) +2 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-edp-1.html

  * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
    - shard-skl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#5776]) +2 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [PASS][154] -> [SKIP][155] ([i915#5235]) +5 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][156] ([fdo#109271] / [i915#658])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         NOTRUN -> [SKIP][157] ([fdo#109642] / [fdo#111068] / [i915#658])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb7/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#658]) +3 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][159] -> [SKIP][160] ([fdo#109441]) +2 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         NOTRUN -> [SKIP][161] ([fdo#109441])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [PASS][162] -> [SKIP][163] ([i915#5519])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][164] ([fdo#109271] / [i915#2437]) +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@kms_writeback@writeback-fb-id.html
    - shard-apl:          NOTRUN -> [SKIP][165] ([fdo#109271] / [i915#2437])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl6/igt@kms_writeback@writeback-fb-id.html

  * igt@perf_pmu@interrupts:
    - shard-skl:          [PASS][166] -> [FAIL][167] ([i915#7318])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl9/igt@perf_pmu@interrupts.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl3/igt@perf_pmu@interrupts.html

  * igt@syncobj_wait@wait-all-for-submit-snapshot:
    - shard-skl:          [PASS][168] -> [FAIL][169] ([i915#7109])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl9/igt@syncobj_wait@wait-all-for-submit-snapshot.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl3/igt@syncobj_wait@wait-all-for-submit-snapshot.html

  * igt@sysfs_clients@busy:
    - shard-glk:          NOTRUN -> [SKIP][170] ([fdo#109271] / [i915#2994]) +1 similar issue
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][171] ([fdo#109271] / [i915#2994]) +4 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl5/igt@sysfs_clients@split-25.html

  * igt@sysfs_clients@split-50:
    - shard-iclb:         NOTRUN -> [SKIP][172] ([i915#2994])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][173] ([i915#4525]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-iclb:         [INCOMPLETE][175] ([i915#6453]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_softpin@evict-single-offset:
    - shard-tglb:         [FAIL][177] ([i915#4171]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb3/igt@gem_softpin@evict-single-offset.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-tglb2/igt@gem_softpin@evict-single-offset.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][179] ([i915#5566] / [i915#716]) -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [DMESG-WARN][181] ([i915#5591]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb5/igt@i915_selftest@live@hangcheck.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-tglb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-apl:          [FAIL][183] ([i915#2346]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
    - shard-glk:          [FAIL][185] ([i915#2346]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
    - shard-iclb:         [FAIL][187] ([i915#2346]) -> [PASS][188] +1 similar issue
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-apl:          [DMESG-WARN][189] ([i915#180]) -> [PASS][190] +2 similar issues
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl2/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][191] ([fdo#109441]) -> [PASS][192] +1 similar issue
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][193] ([i915#5519]) -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-tglb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  
#### Warnings ####

  * igt@gem_pread@exhaustion:
    - shard-tglb:         [INCOMPLETE][195] ([i915#7248]) -> [WARN][196] ([i915#2658])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb6/igt@gem_pread@exhaustion.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-tglb6/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          [INCOMPLETE][197] ([i915#7248]) -> [WARN][198] ([i915#2658])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl1/igt@gem_pwrite@basic-exhaustion.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl2/igt@gem_pwrite@basic-exhaustion.html
    - shard-glk:          [INCOMPLETE][199] ([i915#7248]) -> [WARN][200] ([i915#2658])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk7/igt@gem_pwrite@basic-exhaustion.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk5/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][201] ([i915#658]) -> [SKIP][202] ([i915#2920]) +1 similar issue
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][203] ([fdo#111068] / [i915#658]) -> [SKIP][204] ([i915#2920]) +1 similar issue
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][205], [FAIL][206], [FAIL][207], [FAIL][208], [FAIL][209]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][210], [FAIL][211], [FAIL][212]) ([i915#3002] / [i915#4312])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl1/igt@runner@aborted.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl2/igt@runner@aborted.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl8/igt@runner@aborted.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl8/igt@runner@aborted.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl6/igt@runner@aborted.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl1/igt@runner@aborted.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl6/igt@runner@aborted.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl8/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
  [i915#6453]: https://gitlab.freedesktop.org/drm/intel/issues/6453
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6951]: https://gitlab.freedesktop.org/drm/intel/issues/6951
  [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
  [i915#7109]: https://gitlab.freedesktop.org/drm/intel/issues/7109
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12347 -> Patchwork_110581v1

  CI-20190529: 20190529
  CI_DRM_12347: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110581v1: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/index.html

--===============6172491783943030065==
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
<tr><td><b>Series:</b></td><td>Enable YCbCr420 for VDSC</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/110581/">https://patchwork.freedesktop.org/series/110581/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110581v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110581v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12347_full -&gt; Patchwork_110581v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110581v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_110581v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
110581v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@userptr@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl9/igt@gem_exec_parallel@userptr@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v=
1/shard-skl3/igt@gem_exec_parallel@userptr@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl6/igt@i915_selftest@live@execlist=
s.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110581v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12347/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12347/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12347/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/sha=
rd-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12347/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12347/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12347/shard-skl10/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl10/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_123=
47/shard-skl10/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110581v1/shard-skl5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-sk=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110581v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1=
/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110581v1/shard-skl3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110581v1/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110581v1/shard-skl10/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-sk=
l10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110581v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v=
1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110581v1/shard-skl7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110581v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110581v1/shard-skl5/boot.html">FAIL</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5032">i915#5032</a>=
)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12347/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12347/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12347/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/sha=
rd-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12347/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12347/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347=
/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12347/shard-glk7/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2347/shard-glk1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12347/shard-glk2/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4392">i915#4392</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110581v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-g=
lk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110581v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v=
1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110581v1/shard-glk7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110581v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110581v1/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110581v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110581v1/shard-glk3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110581v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110581v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110581v1/shard-glk1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk1/boot.htm=
l">PASS</a>)</li>
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
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/5327">i915#5327</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110581v1/shard-apl6/igt@gem_create@create-massive.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4991">i915#4991</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@gem_create@create-massive.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4991">i915#4991</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_exec_balancer@parallel=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10581v1/shard-iclb7/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110581v1/shard-apl6/igt@gem_exec_fair@basic-deadline=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-glk6/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/s=
hard-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@gem_exec_fair@basic-deadline=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2846">i915#2846</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v=
1/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-glk3/igt@gem_exec_fair@basic-none-sh=
are@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_exec_fair@basic-none-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1=
/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
581v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl5/igt@gem_lmem_swapping@heavy-ver=
ify-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-apl6/igt@gem_lmem_swapping@parallel-=
random-engines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl7/igt@gem_pread@exhaustion.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7248">i915#7248</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-apl3/igt@gem_render_copy@x-tiled-to-=
vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_render_copy@yf-tiled-m=
c-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@gem_render_copy@yf-tiled-mc=
-ccs-to-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +309 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gen3_mixed_blits.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fd=
o#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@gen9_exec_parse@bb-start-p=
aram.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@i915_pipe_stress@stress-xrg=
b8888-ytiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7036">i915#7036</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl10/igt@i915_pm_dc@dc6-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">=
i915#3989</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl6/igt@i915_selftest@live@gt_pm.ht=
ml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-apl3/igt@kms_ccs@pipe-a-bad-rotation=
-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_ccs@pipe-a-crc-sprite-p=
lanes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +11 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_ccs@pipe-b-ccs-on-anot=
her-bo-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_ccs@pipe-c-crc-sprite-=
planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_chamelium@dp-hpd-after=
-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_chamelium@hdmi-hpd-with=
-enabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_chamelium@vga-hpd.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_color@ctm-0-25@pipe-b-=
edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/315">i915#315</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/6946">i915#6946</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@kms_color@ctm-red-to-blue.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-negative:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-apl3/igt@kms_color_chamelium@ctm-neg=
ative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_content_protection@lic=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110581v1/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110581v1/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6951">i915#6951</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl10/igt@kms_cursor_legacy@cursor-v=
s-flip@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5072">i915#5072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110581v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110581v1/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate@=
ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_flip@flip-vs-expired-vb=
lank-interruptible@a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110581v1/shard-skl3/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#=
2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672"=
>i915#2672</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +61 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +8 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scale=
rs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@kms_plane_scaling@invalid-n=
um-scalers@pipe-a-edp-1-invalid-num-scalers.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5776">i915#5776</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-c-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb7/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8=
888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shar=
d-iclb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@kms_psr@psr2_primary_page_=
flip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_110581v1/shard-iclb5/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110581v1/shard-skl9/igt@kms_writeback@writeback-fb-i=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110581v1/shard-apl6/igt@kms_writeback@writeback-fb-i=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl9/igt@perf_pmu@interrupts.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-skl=
3/igt@perf_pmu@interrupts.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7318">i915#7318</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@wait-all-for-submit-snapshot:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl9/igt@syncobj_wait@wait-all-for-submit-snapshot.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110581v1/shard-skl3/igt@syncobj_wait@wait-all-for-submit-snapshot.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7109"=
>i915#7109</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@sysfs_clients@busy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-skl5/igt@sysfs_clients@split-25.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb6/igt@sysfs_clients@split-50.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/299=
4">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110581v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-subm=
it-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6453">i915#6453</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110581v1/shard-iclb6/igt@gem_exec_whisper@basic-queues-priori=
ty.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb3/igt@gem_softpin@evict-single-offset.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#41=
71</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110581v1/shard-tglb2/igt@gem_softpin@evict-single-offset.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-glk6/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110581v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915=
#5591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110581v1/shard-tglb6/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl7/igt@kms_cursor_legacy@f=
lip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_110581v1/shard-glk2/igt@kms_cursor_legacy@f=
lip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_cursor_legacy=
@flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a> +1 similar i=
ssue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110581v1/shard-apl2/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.h=
tml">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11058=
1v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110581v1/shard-tglb3/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb6/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1105=
81v1/shard-tglb6/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-apl1/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#72=
48</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110581v1/shard-apl2/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</=
p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-glk7/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#72=
48</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110581v1/shard-glk5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-co=
ntinuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110581v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12347/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12347/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12347/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0581v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/shard-apl6/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_110581v1/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</=
li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12347 -&gt; Patchwork_110581v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12347: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110581v1: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6172491783943030065==--
