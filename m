Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1773C55EE12
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 21:48:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D2311292A;
	Tue, 28 Jun 2022 19:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09BCC10FEFB;
 Tue, 28 Jun 2022 19:48:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2150A66C8;
 Tue, 28 Jun 2022 19:48:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2466746130228893049=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Tue, 28 Jun 2022 19:48:21 -0000
Message-ID: <165644570194.14504.4574560048908485368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220621233005.3952293-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220621233005.3952293-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_ADL-N_should_use_the_same_GuC_FW_as_ADL-S_=28rev2?=
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

--===============2466746130228893049==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: ADL-N should use the same GuC FW as ADL-S (rev2)
URL   : https://patchwork.freedesktop.org/series/105444/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11816_full -> Patchwork_105444v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105444v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105444v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105444v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@fds@vcs0:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb1/igt@gem_exec_parallel@fds@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb3/igt@gem_exec_parallel@fds@vcs0.html

  * igt@gem_exec_schedule@preempt-other@vcs0:
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk9/igt@gem_exec_schedule@preempt-other@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk5/igt@gem_exec_schedule@preempt-other@vcs0.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-implicit-ivec2-i64vec2:
    - pig-glk-j5005:      NOTRUN -> [CRASH][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/pig-glk-j5005/spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-implicit-ivec2-i64vec2.html

  * spec@glsl-1.20@execution@fs-outerproduct-mat3x3:
    - pig-skl-6260u:      NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/pig-skl-6260u/spec@glsl-1.20@execution@fs-outerproduct-mat3x3.html

  
Known issues
------------

  Here are the changes found in Patchwork_105444v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31]) -> ([FAIL][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56]) ([i915#4392])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk9/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk9/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk9/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk9/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk9/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk5/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk5/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk3/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk2/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [FAIL][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80]) ([i915#5032]) -> ([PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl3/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl3/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl9/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl7/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl7/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl7/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl7/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl4/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl4/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl4/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl4/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl4/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl3/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl3/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl3/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl3/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#3555] / [i915#5325])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_eio@in-flight-immediate:
    - shard-tglb:         [PASS][105] -> [TIMEOUT][106] ([i915#3063])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglb3/igt@gem_eio@in-flight-immediate.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb2/igt@gem_eio@in-flight-immediate.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][107] -> [SKIP][108] ([i915#4525]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][109] -> [FAIL][110] ([i915#2842])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [PASS][111] -> [FAIL][112] ([i915#2842]) +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][113] -> [FAIL][114] ([i915#2842])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][115] -> [FAIL][116] ([i915#2849])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][117] -> [DMESG-WARN][118] ([i915#118])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk6/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([i915#4613])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@verify:
    - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#4613])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/igt@gem_lmem_swapping@verify.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][121] ([i915#2658])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglb:         NOTRUN -> [SKIP][122] ([i915#3323])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][123] -> [DMESG-WARN][124] ([i915#5566] / [i915#716])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl1/igt@gen9_exec_parse@allowed-all.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-apl8/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [PASS][125] -> [DMESG-WARN][126] ([i915#5566] / [i915#716])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-kbl4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#2527] / [i915#2856])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][128] -> [FAIL][129] ([i915#454])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglb:         NOTRUN -> [SKIP][130] ([i915#4387])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][131] -> [DMESG-WARN][132] ([i915#180])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][133] ([i915#5286])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([fdo#111614])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][135] ([i915#3743])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][136] ([i915#3763])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([fdo#111615])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([i915#3689] / [i915#6095])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][139] ([fdo#111615] / [i915#3689]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#3886]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#3886]) +2 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk1/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#3886]) +2 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-apl3/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][143] ([i915#3689] / [i915#3886]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][144] ([fdo#109271]) +69 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-apl1/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][145] ([i915#3689]) +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglb:         NOTRUN -> [SKIP][146] ([i915#3742])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-tglb:         NOTRUN -> [SKIP][147] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-apl:          NOTRUN -> [SKIP][148] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-glk:          NOTRUN -> [SKIP][149] ([fdo#109271] / [fdo#111827])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk1/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][150] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-snb:          NOTRUN -> [SKIP][151] ([fdo#109271] / [fdo#111827])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-snb5/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][152] ([i915#1319])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [PASS][153] -> [FAIL][154] ([i915#2346])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglb:         NOTRUN -> [SKIP][155] ([fdo#109274])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][156] ([i915#5287])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][157] ([fdo#109274] / [fdo#111825]) +12 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][158] -> [FAIL][159] ([i915#79])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a2:
    - shard-glk:          [PASS][160] -> [FAIL][161] ([i915#2122])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a2.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][162] -> [SKIP][163] ([i915#3701])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-glk:          [PASS][164] -> [FAIL][165] ([i915#1888])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-skl:          NOTRUN -> [SKIP][166] ([fdo#109271]) +123 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][167] ([fdo#109280] / [fdo#111825]) +7 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
    - shard-kbl:          [PASS][168] -> [FAIL][169] ([i915#1188])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-kbl6/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-glk:          NOTRUN -> [SKIP][170] ([fdo#109271]) +29 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk1/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga-1:
    - shard-snb:          [PASS][171] -> [SKIP][172] ([fdo#109271])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-snb6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga-1.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-snb6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga-1.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][173] ([fdo#108145] / [i915#265])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][174] ([fdo#108145] / [i915#265])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][175] ([fdo#108145] / [i915#265]) +1 similar issue
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][176] ([i915#5176]) +3 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][177] ([i915#5235]) +3 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-skl:          NOTRUN -> [SKIP][178] ([fdo#109271] / [i915#658]) +2 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-tglb:         NOTRUN -> [FAIL][179] ([i915#132] / [i915#3467]) +1 similar issue
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][180] -> [SKIP][181] ([fdo#109441]) +2 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb8/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-snb:          NOTRUN -> [SKIP][182] ([fdo#109271]) +2 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-snb5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][183] ([fdo#109271] / [i915#533])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][184] -> [FAIL][185] ([i915#5639])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/igt@perf@polling-parameterized.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl3/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          NOTRUN -> [DMESG-WARN][186] ([i915#1982])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/igt@perf_pmu@module-unload.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-tglb:         NOTRUN -> [SKIP][187] ([fdo#109291])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@prime_vgem@fence-write-hang:
    - shard-tglb:         NOTRUN -> [SKIP][188] ([fdo#109295])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@prime_vgem@fence-write-hang.html

  * igt@sw_sync@sync_merge_same:
    - shard-tglb:         NOTRUN -> [FAIL][189] ([i915#6140])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@sw_sync@sync_merge_same.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][190] ([fdo#109271] / [i915#2994])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@sema-10:
    - shard-tglb:         NOTRUN -> [SKIP][191] ([i915#2994])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@fbdev@info:
    - {shard-dg1}:        [SKIP][192] ([i915#2582]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-16/igt@fbdev@info.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-dg1-19/igt@fbdev@info.html

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][194] ([i915#2582]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@fbdev@write.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@fbdev@write.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][196] ([i915#658]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb7/igt@feature_discovery@psr2.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][198] ([i915#6268]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - {shard-rkl}:        [SKIP][200] ([i915#6252]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [TIMEOUT][202] ([i915#3063]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb6/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][204] ([i915#3070]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][206] ([i915#4525]) -> [PASS][207] +2 similar issues
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][208] ([i915#2842]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][210] ([i915#2842]) -> [PASS][211] +1 similar issue
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][212] ([i915#2842]) -> [PASS][213] +1 similar issue
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - {shard-rkl}:        [SKIP][214] ([i915#6251]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@gem_exec_fence@basic-busy@bcs0.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-1/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - {shard-rkl}:        [SKIP][216] ([i915#3281]) -> [PASS][217] +2 similar issues
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][218] ([i915#2190]) -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][220] ([i915#4936]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@coherency:
    - {shard-rkl}:        [SKIP][222] ([fdo#111656]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-2/igt@gem_mmap_gtt@coherency.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          [INCOMPLETE][224] ([i915#5161]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_pread@bench:
    - {shard-rkl}:        [SKIP][226] ([i915#3282]) -> [PASS][227] +2 similar issues
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@gem_pread@bench.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-5/igt@gem_pread@bench.html

  * igt@gem_userptr_blits@huge-split:
    - shard-tglb:         [FAIL][228] ([i915#3376]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglb6/igt@gem_userptr_blits@huge-split.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-tglb5/igt@gem_userptr_blits@huge-split.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][230] ([i915#180]) -> [PASS][231] +2 similar issues
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@unaligned-access:
    - {shard-rkl}:        [SKIP][232] ([i915#2527]) -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@gen9_exec_parse@unaligned-access.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][234] ([i915#454]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {shard-dg1}:        [SKIP][236] ([i915#5174]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-16/igt@i915_pm_rpm@basic-pci-d3-state.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-dg1-19/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][238] ([fdo#109308]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@i915_pm_rpm@drm-resources-equal.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-rkl}:        [SKIP][240] ([i915#1397]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@hangcheck:
    - shard-skl:          [INCOMPLETE][242] ([i915#6172]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/igt@i915_selftest@live@hangcheck.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl9/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [FAIL][244] ([i915#2521]) -> [PASS][245] +1 similar issue
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-glk:          [FAIL][246] -> [PASS][247]
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_color@pipe-a-ctm-max:
    - {shard-rkl}:        [SKIP][248] ([i915#1149] / [i915#1849] / [i915#4098]) -> [PASS][249] +1 similar issue
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@kms_color@pipe-a-ctm-max.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_color@pipe-c-invalid-degamma-lut-sizes:
    - {shard-rkl}:        [SKIP][250] ([i915#4070]) -> [PASS][251] +1 similar issue
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html

  * igt@kms_color@pipe-d-ctm-red-to-blue:
    - {shard-dg1}:        [SKIP][252] ([i915#2575]) -> [PASS][253] +38 similar issues
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-16/igt@kms_color@pipe-d-ctm-red-to-blue.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-dg1-19/igt@kms_color@pipe-d-ctm-red-to-blue.html

  * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
    - {shard-rkl}:        [SKIP][254] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][255] +1 similar issue
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][256] ([i915#2122]) -> [PASS][257] +2 similar issues
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][258] ([i915#79]) -> [PASS][259]
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - {shard-rkl}:        [SKIP][260] ([i915#1849] / [i915#4098]) -> [PASS][261] +7 similar issues
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_invalid_mode@bad-hsync-end:
    - {shard-rkl}:        [SKIP][262] ([i915#4278]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@kms_invalid_mode@bad-hsync-end.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-x:
    - {shard-rkl}:        [SKIP][264] ([i915#1849] / [i915#3558]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][266] ([i915#5235]) -> [PASS][267] +2 similar issues
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_properties@plane-properties-atomic:
    - {shard-rkl}:        [SKIP][268] ([i915#1849]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][270] ([fdo#109441]) -> [PASS][271] +3 similar issues
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - {shard-rkl}:        [SKIP][272] ([i915#5461]) -> [PASS][273]
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-glk:          [DMESG-WARN][274] -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk8/igt@kms_rotation_crc@primary-rotation-270.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk1/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_vblank@pipe-a-wait-forked-busy-hang:
    - {shard-rkl}:        [SKIP][276] ([i915#1845] / [i915#4098]) -> [PASS][277] +11 similar issues
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@kms_vblank@pipe-a-wait-forked-busy-hang.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_vblank@pipe-a-wait-forked-busy-hang.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - {shard-dg1}:        [FAIL][278] ([fdo#103375]) -> [PASS][279] +2 similar issues
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-17/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-dg1-18/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@perf_pmu@enable-race@vecs0:
    - shard-glk:          [DMESG-WARN][280] ([i915#118]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk9/igt@perf_pmu@enable-race@vecs0.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk7/igt@perf_pmu@enable-race@vecs0.html

  * igt@perf_pmu@invalid-open:
    - {shard-dg1}:        [SKIP][282] ([i915#5608]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-16/igt@perf_pmu@invalid-open.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-dg1-19/igt@perf_pmu@invalid-open.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][284] ([i915#6117]) -> [SKIP][285] ([i915#4525])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][286] ([i915#2842]) -> [FAIL][287] ([i915#2852])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_params@larger-than-life-batch:
    - shard-skl:          [SKIP][288] ([fdo#109271] / [i915#1888]) -> [SKIP][289] ([fdo#109271]) +1 similar issue
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/igt@gem_exec_params@larger-than-life-batch.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl4/igt@gem_exec_params@larger-than-life-batch.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][290] ([i915#588]) -> [SKIP][291] ([i915#658])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1:
    - shard-skl:          [SKIP][292] ([fdo#109271]) -> [SKIP][293] ([fdo#109271] / [i915#1888])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][294] ([fdo#111068] / [i915#658]) -> [SKIP][295] ([i915#2920])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][296] ([i915#2920]) -> [SKIP][297] ([i915#658])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][298], [FAIL][299]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][300], [FAIL][301], [FAIL][302]) ([fdo#109271] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-kbl6/igt@runner@aborted.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-kbl1/igt@runner@aborted.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-kbl4/igt@runner@aborted.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-kbl4/igt@runner@aborted.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-kbl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
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
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
  [i915#6172]: https://gitlab.freedesktop.org/drm/intel/issues/6172
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11816 -> Patchwork_105444v2

  CI-20190529: 20190529
  CI_DRM_11816: df99947ea190ec0665196a80775e0007f497eb2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6543: 0463b607ed58ceede542f9bad6a9dad8d77d6f9c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105444v2: df99947ea190ec0665196a80775e0007f497eb2e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/index.html

--===============2466746130228893049==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: ADL-N should use the same GuC =
FW as ADL-S (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105444/">https://patchwork.freedesktop.org/series/105444/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105444v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105444v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11816_full -&gt; Patchwork_105444v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105444v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_105444v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105444v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@fds@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb1/igt@gem_exec_parallel@fds@vcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/s=
hard-iclb3/igt@gem_exec_parallel@fds@vcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-other@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk9/igt@gem_exec_schedule@preempt-other@vcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05444v2/shard-glk5/igt@gem_exec_schedule@preempt-other@vcs0.html">INCOMPLET=
E</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-implicit-=
ivec2-i64vec2:</p>
<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/pig-glk-j5005/spec@arb_gpu_shader_int64@ex=
ecution@conversion@vert-conversion-implicit-ivec2-i64vec2.html">CRASH</a></=
li>
</ul>
</li>
<li>
<p>spec@glsl-1.20@execution@fs-outerproduct-mat3x3:</p>
<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/pig-skl-6260u/spec@glsl-1.20@execution@fs-=
outerproduct-mat3x3.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105444v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11816/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11816/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11816/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/sha=
rd-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11816/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11816/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11816/shard-glk9/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11816/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1816/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11816/shard-glk7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shar=
d-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11816/shard-glk6/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk2/boot.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
444v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_105444v2/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105444v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105444v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5444v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105444v2/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105444v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/sh=
ard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105444v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5444v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105444v2/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105444v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105444v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-glk1/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11816/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11816/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/sha=
rd-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11816/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11816/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11816/shard-skl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl3/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-sk=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1816/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/s=
hard-skl10/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5032">i915#5032</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl9/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-=
skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_105444v2/shard-skl7/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444=
v2/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105444v2/shard-skl4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl4/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105444v2/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl4/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-s=
kl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105444v2/shard-skl3/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v=
2/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105444v2/shard-skl3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105444v2/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105444v2/shard-skl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-sk=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105444v2/shard-skl10/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444=
v2/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105444v2/shard-skl10/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl10/bo=
ot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@gem_ccs@block-copy-compres=
sed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-immediate:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglb3/igt@gem_eio@in-flight-immediate.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/=
shard-tglb2/igt@gem_eio@in-flight-immediate.html">TIMEOUT</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05444v2/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
444v2/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2=
/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
444v2/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
444v2/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk6/igt@gem_exec_whisper@basic-contexts-priority-all.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105444v2/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@gem_lmem_swapping@heavy-ve=
rify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl1/igt@gem_lmem_swapping@verify.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@gem_pwrite@basic-exhaustio=
n.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-apl1/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/s=
hard-apl8/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-kbl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v=
2/shard-kbl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@gen9_exec_parse@bb-large.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-ic=
lb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105444v2/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_big_fb@x-tiled-16bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-s=
tride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary=
-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-glk1/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-apl3/igt@kms_ccs@pipe-c-crc-primary-=
basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_ccs@pipe-c-missing-ccs=
-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-apl1/igt@kms_ccs@pipe-d-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +69 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_ccs@pipe-d-bad-rotatio=
n-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_chamelium@dp-audio-edi=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-apl1/igt@kms_color_chamelium@pipe-a-=
ctm-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-glk1/igt@kms_color_chamelium@pipe-b-=
ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_color_chamelium@pipe-b=
-ctm-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-snb5/igt@kms_color_chamelium@pipe-d-=
ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-apl1/igt@kms_content_protection@atom=
ic-dpms.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105444v2/shard-glk3/igt@kms_cursor_legacy@flip-v=
s-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_draw_crc@draw-method-x=
rgb8888-mmap-gtt-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +12 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105444v2/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105444v2/shard-glk8/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@b-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105444v2/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-=
ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105444v2/shard-glk5/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytile-downscaling.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl1/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +123 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +7 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v=
2/shard-kbl6/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-glk1/igt@kms_panel_fitting@atomic-fa=
stset.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-snb6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga=
-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105444v2/shard-snb6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe=
-a-vga-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-glk1/igt@kms_plane_alpha_blend@pipe-=
b-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-apl1/igt@kms_plane_alpha_blend@pipe-=
c-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_plane_alpha_blend@pipe=
-c-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-25@pipe-b-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-=
edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@kms_psr@psr2_sprite_plane_=
onoff.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3467">i915#3467</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/s=
hard-iclb8/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-snb5/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-apl1/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl9/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/sh=
ard-skl3/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl1/igt@perf_pmu@module-unload.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@prime_nv_api@i915_nv_impor=
t_twice.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a>)</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_merge_same:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@sw_sync@sync_merge_same.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/61=
40">i915#6140</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-skl10/igt@sysfs_clients@fair-3.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105444v2/shard-tglb1/igt@sysfs_clients@sema-10.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-16/igt@fbdev@info.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-dg1-=
19/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@fbdev@write.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-=
6/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/s=
hard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105444v2/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i=
915#6252</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105444v2/shard-rkl-6/igt@gem_ctx_persistence@engines-hang@bcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#=
3063</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105444v2/shard-tglb6/igt@gem_eio@in-flight-contexts-1us.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070">i915#3070</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10544=
4v2/shard-iclb7/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105444v2/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05444v2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105444v2/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105444v2/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6251">i915#625=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105444v2/shard-rkl-1/igt@gem_exec_fence@basic-busy@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915=
#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105444v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-active.html">PASS<=
/a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/=
shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936"=
>i915#4936</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105444v2/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-2/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444=
v2/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5161">i9=
15#5161</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105444v2/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@gem_pread@bench.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-=
rkl-5/igt@gem_pread@bench.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglb6/igt@gem_userptr_blits@huge-split.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3376">i915#3376<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5444v2/shard-tglb5/igt@gem_userptr_blits@huge-split.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105444v2/shard-apl3/igt@gem_workarounds@suspend-resume-context.h=
tml">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@gen9_exec_parse@unaligned-access.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2=
527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105444v2/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard=
-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-16/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#51=
74</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105444v2/shard-dg1-19/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#10=
9308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105444v2/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397"=
>i915#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105444v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6172">i915#=
6172</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105444v2/shard-skl9/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105444v2/shard-skl1/igt@kms_async_flips@alternate-sy=
nc-async-flip@pipe-b-edp-1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-=
0-async-flip.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105444v2/shard-glk6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-max:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@kms_color@pipe-a-ctm-max.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#184=
9</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i9=
15#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105444v2/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-degamma-lut-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
70">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105444v2/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-s=
izes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-16/igt@kms_color@pipe-d-ctm-red-to-blue.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#=
2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105444v2/shard-dg1-19/igt@kms_color@pipe-d-ctm-red-to-blue.html">PASS</a=
> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-render-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-render-xtiled=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_draw_crc@draw-met=
hod-rgb565-render-xtiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105444v2/shard-skl10/igt@kms_flip@flip-vs-expired-vbla=
nk-interruptible@b-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105444v2/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_frontbuffer=
_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html">PASS</a> +7 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@kms_invalid_mode@bad-hsync-end.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#427=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105444v2/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-x:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-=
tiling-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-iclb8/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105444v2/shard-rkl-6/igt@kms_properties@plane-properties-atomic.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105444v2/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk8/igt@kms_rotation_crc@primary-rotation-270.html">DM=
ESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105444v2/shard-glk1/igt@kms_rotation_crc@primary-rotation-270.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-wait-forked-busy-hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@kms_vblank@pipe-a-wait-forked-busy-hang.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105444v2/shard-rkl-6/igt@kms_vblank@pipe-a-wait-forked-busy-=
hang.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-suspend:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-17/igt@kms_vblank@pipe-d-ts-continuation-suspend.ht=
ml">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103=
375">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105444v2/shard-dg1-18/igt@kms_vblank@pipe-d-ts-continuation-s=
uspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@enable-race@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk9/igt@perf_pmu@enable-race@vecs0.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05444v2/shard-glk7/igt@perf_pmu@enable-race@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-open:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-16/igt@perf_pmu@invalid-open.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2=
/shard-dg1-19/igt@perf_pmu@invalid-open.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105444v2/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105444v2/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915#=
2852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@larger-than-life-batch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl1/igt@gem_exec_params@larger-than-life-batch.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105444v2/shard-skl4/igt@gem_exec_params@larger-than-life-bat=
ch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05444v2/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl7/igt@kms_plane_scaling@planes-upscale-factor-0-25-d=
ownscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-skl4/igt@k=
ms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-ed=
p-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105444v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105444v2/shard-iclb7/igt@kms_psr2_sf@overlay-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11816/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-kbl1/igt@runner@ab=
orted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105444v2/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105444v2/shard-kbl4/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11816 -&gt; Patchwork_105444v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11816: df99947ea190ec0665196a80775e0007f497eb2e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6543: 0463b607ed58ceede542f9bad6a9dad8d77d6f9c @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105444v2: df99947ea190ec0665196a80775e0007f497eb2e @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2466746130228893049==--
