Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 300864F5730
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 10:01:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F6110F184;
	Wed,  6 Apr 2022 08:01:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7494A10F184;
 Wed,  6 Apr 2022 08:01:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6FB4CAADD7;
 Wed,  6 Apr 2022 08:01:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0714235572176893095=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Casey Bowman" <casey.g.bowman@intel.com>
Date: Wed, 06 Apr 2022 08:01:04 -0000
Message-ID: <164923206444.5452.10132607706803263200@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220330234809.1218210-1-casey.g.bowman@intel.com>
In-Reply-To: <20220330234809.1218210-1-casey.g.bowman@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU3Bs?=
 =?utf-8?q?itting_intel-gtt_calls_for_non-x86_platforms_=28rev8=29?=
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

--===============0714235572176893095==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Splitting intel-gtt calls for non-x86 platforms (rev8)
URL   : https://patchwork.freedesktop.org/series/101552/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11459_full -> Patchwork_22792_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22792_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22792_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22792_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@full:
    - shard-skl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl9/igt@gem_exec_balancer@full.html

  
Known issues
------------

  Here are the changes found in Patchwork_22792_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23]) ([i915#5032]) -> ([PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl10/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl10/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl4/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl10/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl10/boot.html
    - shard-apl:          ([PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [FAIL][69], [PASS][70], [PASS][71]) ([i915#4386]) -> ([PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl3/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl4/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl4/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl4/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl6/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl6/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl7/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl7/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl8/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl8/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl8/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl8/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl1/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl1/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl1/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl1/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl7/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl7/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl7/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl6/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl6/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl6/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl6/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl4/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl4/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl4/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl4/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl3/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl3/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl3/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl3/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl2/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl2/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl2/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl1/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl1/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-cleanup:
    - shard-snb:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#1099])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-snb5/igt@gem_ctx_persistence@engines-cleanup.html

  * igt@gem_ctx_persistence@legacy-engines-hang@render:
    - shard-apl:          [PASS][98] -> [FAIL][99] ([i915#2410])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl8/igt@gem_ctx_persistence@legacy-engines-hang@render.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl4/igt@gem_ctx_persistence@legacy-engines-hang@render.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][100] -> [SKIP][101] ([i915#4525])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][102] -> [FAIL][103] ([i915#2842]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][104] -> [FAIL][105] ([i915#2842])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][106] -> [FAIL][107] ([i915#2842]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][108] ([i915#2842])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][109] -> [SKIP][110] ([i915#2190])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-tglb3/igt@gem_huc_copy@huc-copy.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#4613]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl9/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-apl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#4613])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][113] ([i915#2658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl9/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#768])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@input-checking:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][115] ([i915#4991])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb7/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][116] -> [DMESG-WARN][117] ([i915#5566] / [i915#716])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][118] -> [FAIL][119] ([i915#454])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl3/igt@i915_pm_dc@dc6-psr.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][120] -> [SKIP][121] ([i915#4281])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][122] ([i915#1886])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl10/igt@i915_selftest@live@gt_pm.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#2521])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([i915#5286])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
    - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#5286])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][127] ([i915#3743]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#3777])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][129] -> [DMESG-WARN][130] ([i915#118])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-glk5/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-glk5/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][131] ([fdo#111615])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#3886]) +16 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#3886])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-kbl1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#3886])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#3689]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([fdo#111615] / [i915#3689])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-audio:
    - shard-iclb:         NOTRUN -> [SKIP][137] ([fdo#109284] / [fdo#111827])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_chamelium@dp-audio.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-apl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [fdo#111827])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@dp-hpd-with-enabled-mode:
    - shard-snb:          NOTRUN -> [SKIP][139] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-snb5/igt@kms_chamelium@dp-hpd-with-enabled-mode.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-tglb:         NOTRUN -> [SKIP][141] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
    - shard-iclb:         NOTRUN -> [SKIP][142] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][143] ([i915#3116])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb3/igt@kms_content_protection@dp-mst-type-1.html
    - shard-tglb:         NOTRUN -> [SKIP][144] ([i915#3116] / [i915#3299])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-snb:          NOTRUN -> [SKIP][145] ([fdo#109271]) +32 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][146] ([fdo#109271]) +350 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][147] ([i915#3359]) +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-max-size-onscreen:
    - shard-apl:          NOTRUN -> [SKIP][148] ([fdo#109271]) +30 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-max-size-onscreen.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][149] ([fdo#109274] / [fdo#109278])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb3/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
    - shard-tglb:         NOTRUN -> [SKIP][150] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][151] -> [FAIL][152] ([i915#2346])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#533]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl2/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][154] ([i915#5287])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled.html

  * igt@kms_dsc@xrgb8888-dsc-compression:
    - shard-tglb:         NOTRUN -> [SKIP][155] ([i915#3828])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_dsc@xrgb8888-dsc-compression.html
    - shard-iclb:         NOTRUN -> [SKIP][156] ([i915#3828])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_dsc@xrgb8888-dsc-compression.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-iclb:         NOTRUN -> [SKIP][157] ([fdo#109274])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb3/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-kbl:          NOTRUN -> [SKIP][158] ([fdo#109271]) +2 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-kbl1/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][159] -> [DMESG-WARN][160] ([i915#180]) +3 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][161] ([i915#180]) +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][162] -> [FAIL][163] ([i915#4911])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][164] ([fdo#109280] / [fdo#111825]) +5 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][165] ([fdo#109280]) +9 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [FAIL][166] ([i915#1188])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl3/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a:
    - shard-apl:          [PASS][167] -> [DMESG-WARN][168] ([i915#180]) +2 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl1/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl2/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a.html

  * igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:
    - shard-skl:          [PASS][169] -> [FAIL][170] ([i915#1188])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl4/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl4/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][171] ([i915#265])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][172] ([fdo#108145] / [i915#265]) +5 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:
    - shard-iclb:         NOTRUN -> [SKIP][173] ([fdo#109278]) +11 similar issues
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][174] ([fdo#111615] / [fdo#112054])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_plane_lowres@pipe-b-tiling-yf.html
    - shard-iclb:         NOTRUN -> [SKIP][175] ([i915#3536])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_plane_lowres@pipe-d-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][176] ([i915#5288])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_plane_lowres@pipe-d-tiling-4.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglb:         NOTRUN -> [SKIP][177] ([i915#1911])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
    - shard-iclb:         NOTRUN -> [SKIP][178] ([fdo#109642] / [fdo#111068] / [i915#658])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][179] ([fdo#109271] / [i915#658]) +5 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl8/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         NOTRUN -> [SKIP][180] ([fdo#109441]) +1 similar issue
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][181] -> [SKIP][182] ([fdo#109441])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-tglb:         NOTRUN -> [FAIL][183] ([i915#132] / [i915#3467])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/index.html

--===============0714235572176893095==
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
<tr><td><b>Series:</b></td><td>Splitting intel-gtt calls for non-x86 platfo=
rms (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101552/">https://patchwork.freedesktop.org/series/101552/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22792/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11459_full -&gt; Patchwork_22792_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22792_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22792_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22792_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_balancer@full:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl9/igt@gem_exec_balancer@full.html">F=
AIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22792_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl10/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl1/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11459/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_11459/shard-skl2/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl2/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/sh=
ard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11459/shard-skl4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl4/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11459/shard-skl6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_11459/shard-skl6/boot.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl6/boot.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1145=
9/shard-skl6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_11459/shard-skl6/boot.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl7/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-s=
kl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11459/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-skl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11459/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11459/shard-skl9/boot.html">PASS</a>) ([i915#5032]) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/s=
hard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22792/shard-skl9/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/s=
hard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22792/shard-skl8/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/s=
hard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22792/shard-skl6/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/s=
hard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22792/shard-skl4/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/s=
hard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22792/shard-skl3/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/s=
hard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22792/shard-skl2/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/s=
hard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22792/shard-skl1/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/s=
hard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22792/shard-skl10/boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1459/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11459/shard-apl3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shar=
d-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11459/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl4/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11459/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11459/shard-apl6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl6/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11459/shard-apl7/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl7/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl=
8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11459/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11459/shard-apl8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1459/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11459/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shard-apl1/boot.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11459/shard-apl2/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22792/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22792/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22792/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22792/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22792/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22792/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22792/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22792/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-apl1/=
boot.html">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-snb5/igt@gem_ctx_persistence@engines-cl=
eanup.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@render:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-apl8/igt@gem_ctx_persistence@legacy-engines-hang@render=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22792/shard-apl4/igt@gem_ctx_persistence@legacy-engines-hang@rende=
r.html">FAIL</a> ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2792/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i=
915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_227=
92/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#=
2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/sh=
ard-glk2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/sh=
ard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-tgl=
b7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl9/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-apl8/igt@gem_lmem_swapping@smem-oom.htm=
l">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl9/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@gem_render_copy@x-tiled-to-ve=
box-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-iclb7/igt@gem_userptr_blits@input-check=
ing.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-glk5/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shar=
d-glk4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#5566] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-skl3/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-skl8/ig=
t@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792/shard-iclb3=
/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl10/igt@i915_selftest@live@gt_pm.html=
">DMESG-FAIL</a> ([i915#1886])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22792/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html">=
FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_big_fb@4-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-glk5/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_227=
92/shard-glk5/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">DMESG-WARN</a> (=
[i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl2/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +16 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-kbl1/igt@kms_ccs@pipe-c-crc-sprite-plane=
s-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-apl7/igt@kms_ccs@pipe-c-crc-sprite-plane=
s-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_ccs@pipe-d-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_ccs@pipe-d-ccs-on-another=
-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_chamelium@dp-audio.html">=
SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-apl8/igt@kms_chamelium@dp-hpd-storm-dis=
able.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-snb5/igt@kms_chamelium@dp-hpd-with-enab=
led-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-iclb3/igt@kms_content_protection@dp-mst-=
type-1.html">SKIP</a> ([i915#3116])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_content_protection@dp-mst-=
type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-2=
56x85-sliding.html">SKIP</a> ([fdo#109271]) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> ([fdo#109271]) +350 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-rapid-movement.html">SKIP</a> ([i915#3359]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-max-size-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-m=
ax-size-onscreen.html">SKIP</a> ([fdo#109271]) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-iclb3/igt@kms_cursor_legacy@2x-flip-vs-c=
ursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_cursor_legacy@2x-flip-vs-c=
ursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +1 similar issue<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22792/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl2/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb=
2101010-pwrite-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@xrgb8888-dsc-compression:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_dsc@xrgb8888-dsc-compressi=
on.html">SKIP</a> ([i915#3828])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_dsc@xrgb8888-dsc-compressi=
on.html">SKIP</a> ([i915#3828])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-iclb3/igt@kms_flip@2x-flip-vs-panning-v=
s-hang.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-kbl1/igt@kms_flip@2x-plain-flip-ts-chec=
k.html">SKIP</a> ([fdo#109271]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22792/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-apl8/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64b=
pp-ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22792/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytileccs-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +=
5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +9 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl3/igt@kms_hdr@bpc-switch-dpms@bpc-sw=
itch-dpms-edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-apl1/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-=
dp-1-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22792/shard-apl2/igt@kms_hdr@bpc-switch-suspend@bpc-swi=
tch-suspend-dp-1-pipe-a.html">DMESG-WARN</a> ([i915#180]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-skl4/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22792/shard-skl4/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html">=
FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-c=
overage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +5 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-=
constant-alpha-min.html">SKIP</a> ([fdo#109278]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_plane_lowres@pipe-b-tiling=
-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling=
-yf.html">SKIP</a> ([i915#3536])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-tglb1/igt@kms_plane_lowres@pipe-d-tilin=
g-4.html">SKIP</a> ([i915#5288])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_psr2_su@frontbuffer-xrgb88=
88.html">SKIP</a> ([i915#1911])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22792/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb88=
88.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-skl8/igt@kms_psr2_su@page_flip-xrgb8888=
.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html"=
>SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11459/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22792=
/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#10944=
1])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22792/shard-tglb6/igt@kms_psr@psr2_sprite_render.ht=
ml">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-</p>
</li>
</ul>

</body>
</html>

--===============0714235572176893095==--
