Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DDF4BC4CC
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 03:23:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DC3F10EB27;
	Sat, 19 Feb 2022 02:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45B6E10EB14;
 Sat, 19 Feb 2022 02:23:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41A39A0BCB;
 Sat, 19 Feb 2022 02:23:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2762187686500539327=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Sat, 19 Feb 2022 02:23:34 -0000
Message-ID: <164523741426.29220.218082683892623098@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220216173703.1750589-1-matthew.auld@intel.com>
In-Reply-To: <20220216173703.1750589-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_fixup_the_mock=5Fbo_=28rev2=29?=
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

--===============2762187686500539327==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: fixup the mock_bo (rev2)
URL   : https://patchwork.freedesktop.org/series/100255/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11248_full -> Patchwork_22328_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22328_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22328_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22328_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock@memory_region:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl9/igt@i915_selftest@mock@memory_region.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk1/igt@i915_selftest@mock@memory_region.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl3/igt@i915_selftest@mock@memory_region.html
    - shard-iclb:         NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb8/igt@i915_selftest@mock@memory_region.html
    - shard-kbl:          NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-kbl1/igt@i915_selftest@mock@memory_region.html
    - shard-snb:          NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-snb2/igt@i915_selftest@mock@memory_region.html

  
Known issues
------------

  Here are the changes found in Patchwork_22328_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31]) -> ([PASS][32], [PASS][33], [FAIL][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56]) ([i915#4392])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk3/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk5/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk6/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk8/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk8/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk8/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk9/boot.html
    - shard-apl:          ([PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81]) -> ([PASS][82], [PASS][83], [PASS][84], [FAIL][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106]) ([i915#4386])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl1/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl2/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl3/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl3/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl3/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl4/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl7/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl7/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl7/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl7/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl8/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl8/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl8/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl8/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl8/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl1/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl1/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl1/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl1/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl1/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl2/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl2/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl2/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl2/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl2/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl3/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl3/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl3/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl3/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl4/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl4/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl4/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl4/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl7/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl7/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl7/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl7/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl8/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl8/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [PASS][107] -> [DMESG-WARN][108] ([i915#180]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@file:
    - shard-snb:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#1099])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-snb4/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][110] -> [FAIL][111] ([i915#2410])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][112] -> [SKIP][113] ([i915#4525])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][114] ([i915#2846])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl10/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][115] -> [FAIL][116] ([i915#2842]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][117] -> [FAIL][118] ([i915#2842])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][119] -> [FAIL][120] ([i915#2842])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_parallel@fds@bcs0:
    - shard-iclb:         [PASS][121] -> [INCOMPLETE][122] ([i915#1895])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-iclb3/igt@gem_exec_parallel@fds@bcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb1/igt@gem_exec_parallel@fds@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][123] -> [SKIP][124] ([i915#2190])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-iclb:         NOTRUN -> [SKIP][125] ([i915#4613])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#4613])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl10/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([i915#768]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([i915#3323])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([i915#3297]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109289]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@gen7_exec_parse@bitmasks.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][131] -> [DMESG-WARN][132] ([i915#5059])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#110892])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][134] ([i915#1886] / [i915#2291])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl9/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@mock@memory_region:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][135] ([i915#750])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-tglb1/igt@i915_selftest@mock@memory_region.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#3777])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#3777]) +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][139] -> [DMESG-WARN][140] ([i915#118])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk6/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk3/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][141] ([fdo#111615])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-tglb8/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([fdo#110723]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][143] ([i915#3743]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#3777]) +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][145] ([i915#2705])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#3886]) +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl10/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#3886]) +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-kbl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][148] ([fdo#109278] / [i915#3886]) +3 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#3886]) +4 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][150] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl4/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-disable.html
    - shard-kbl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-kbl6/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][153] ([fdo#109278] / [i915#1149]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-snb:          NOTRUN -> [SKIP][154] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-snb4/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][155] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         NOTRUN -> [SKIP][156] ([fdo#109300] / [fdo#111066])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][157] ([i915#3359])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][158] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][159] ([fdo#109278]) +9 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][160] ([fdo#109271]) +68 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][161] ([fdo#109274] / [fdo#109278])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-iclb:         NOTRUN -> [SKIP][162] ([i915#3528])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][163] -> [FAIL][164] ([i915#79])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-iclb:         NOTRUN -> [SKIP][165] ([fdo#109274]) +2 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-iclb:         [PASS][166] -> [FAIL][167] ([i915#79])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-iclb4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [PASS][168] -> [INCOMPLETE][169] ([i915#636])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [INCOMPLETE][170] ([i915#4939])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][171] -> [FAIL][172] ([i915#2122]) +2 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [PASS][173] -> [SKIP][174] ([i915#3701])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][175] ([fdo#109271]) +81 similar issues
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][176] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][177] ([fdo#109280]) +8 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][178] ([fdo#109271]) +57 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][179] -> [INCOMPLETE][180] ([i915#123])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][181] -> [DMESG-WARN][182] ([i915#180]) +7 similar issues
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][183] ([i915#1187]) +1 similar issue
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][184] ([fdo#109271] / [i915#533])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
    - shard-apl:          NOTRUN -> [SKIP][185] ([fdo#109271] / [i915#533])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl7/igt@k

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/index.html

--===============2762187686500539327==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: fixup the mock_bo (rev2)</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100255/">https://patchwork.freedesktop.org/series/100255/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22328/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11248_full -&gt; Patchwork_22328_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22328_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22328_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22328_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/shard-skl9/igt@i915_selftest@mock@memory_regio=
n.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/shard-glk1/igt@i915_selftest@mock@memory_regio=
n.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/shard-apl3/igt@i915_selftest@mock@memory_regio=
n.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/shard-iclb8/igt@i915_selftest@mock@memory_regi=
on.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/shard-kbl1/igt@i915_selftest@mock@memory_regio=
n.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/shard-snb2/igt@i915_selftest@mock@memory_regio=
n.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22328_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1248/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11248/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shar=
d-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11248/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk4/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11248/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11248/shard-glk5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11248/shard-glk6/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk6/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11248/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11248/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1248/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11248/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11248/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-glk1/boot.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-glk1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-glk3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-glk4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-glk5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-glk7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-glk8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-glk9/boot.html">PAS=
S</a>) ([i915#4392])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1248/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11248/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11248/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl3/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11248/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11248/shard-apl3/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11248/shard-apl4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11248/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11248/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1248/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11248/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11248/shard-apl8/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-apl1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl1/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-apl4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-apl4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-apl7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22328/shard-apl8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-apl8/boot.html">PAS=
S</a>) ([i915#4386])</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22328/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WA=
RN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-snb4/igt@gem_ctx_persistence@file.html"=
>SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
28/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#=
2410])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2328/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i=
915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-skl10/igt@gem_exec_fair@basic-deadline.=
html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/s=
hard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2328/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
328/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@fds@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-iclb3/igt@gem_exec_parallel@fds@bcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shar=
d-iclb1/igt@gem_exec_parallel@fds@bcs0.html">INCOMPLETE</a> ([i915#1895])</=
li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@gem_lmem_swapping@heavy-verif=
y-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-skl10/igt@gem_lmem_swapping@parallel-mu=
lti.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@gem_render_copy@y-tiled-to-ve=
box-linear.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@gem_userptr_blits@dmabuf-sync=
.html">SKIP</a> ([i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@gem_userptr_blits@unsync-over=
lap.html">SKIP</a> ([i915#3297]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@gen7_exec_parse@bitmasks.html=
">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-snb6/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22328/shard-snb7/igt@i915_module_load@reload-with-fault-injection.ht=
ml">DMESG-WARN</a> ([i915#5059])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.=
html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-skl9/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-tglb1/igt@i915_selftest@mock@memory_reg=
ion.html">INCOMPLETE</a> ([i915#750])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotat=
e-90.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#=
3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-glk6/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
28/shard-glk3/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">DMESG-WARN</a> (=
[i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-tglb8/igt@kms_big_fb@yf-tiled-16bpp-rot=
ate-270.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-90.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_big_joiner@2x-modeset.htm=
l">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-skl10/igt@kms_ccs@pipe-a-bad-pixel-form=
at-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-kbl6/igt@kms_ccs@pipe-b-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-dat=
a-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-apl4/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-apl4/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-di=
sable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/shard-kbl6/igt@kms_chamelium@hdmi-hpd-storm-di=
sable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_color@pipe-d-ctm-0-5.html=
">SKIP</a> ([fdo#109278] / [i915#1149]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-snb4/igt@kms_color_chamelium@pipe-a-ctm=
-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_color_chamelium@pipe-c-ct=
m-limited-range.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_content_protection@legacy=
.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-rapid-movement.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-=
32x10-offscreen.html">SKIP</a> ([fdo#109278]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> ([fdo#109271]) +68 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_cursor_legacy@cursora-vs-=
flipb-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_dp_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22328/shard-glk9/igt@kms_flip@2x-flip-vs-expi=
red-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_flip@2x-flip-vs-modeset-v=
s-hang.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-iclb4/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22328/shard-iclb6/igt@kms_flip@flip-vs-expired-vblank-inter=
ruptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22328/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-skl3/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-edp1.html">INCOMPLETE</a> ([i915#4939])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible=
@c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22328/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interr=
uptible@c-edp1.html">FAIL</a> ([i915#2122]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22328/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-skl10/igt@kms_frontbuffer_tracking@fbcp=
sr-1p-primscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +81 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-tglb8/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109280] / [fdo#=
111825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +8 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-apl4/igt@kms_frontbuffer_tracking@psr-r=
gb565-draw-render.html">SKIP</a> ([fdo#109271]) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2328/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</=
a> ([i915#123])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11248/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22328/shard=
-kbl4/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +7 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22328/shard-iclb6/igt@kms_hdr@static-toggle-dpms.ht=
ml">SKIP</a> ([i915#1187]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22328/shard-apl7/igt@k">SKIP</a> ([fdo#109271] / [i9=
15#533])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2762187686500539327==--
