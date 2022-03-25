Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 023C44E7A0E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 18:39:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1159010E6EA;
	Fri, 25 Mar 2022 17:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10A5510E95D;
 Fri, 25 Mar 2022 17:39:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B934A00E8;
 Fri, 25 Mar 2022 17:39:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8646068741604210633=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 25 Mar 2022 17:39:25 -0000
Message-ID: <164822996501.24039.17051953562206855543@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220324172143.377104-1-matthew.auld@intel.com>
In-Reply-To: <20220324172143.377104-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/ttm=3A_limit_where_we_appl?=
 =?utf-8?q?y_TTM=5FPL=5FFLAG=5FCONTIGUOUS_=28rev2=29?=
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

--===============8646068741604210633==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/ttm: limit where we apply TTM_PL_FLAG_CONTIGUOUS (rev2)
URL   : https://patchwork.freedesktop.org/series/101749/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11403_full -> Patchwork_22677_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22677_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22677_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22677_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl1/igt@i915_selftest@live@gem_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {shard-rkl}:        [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-rkl-6/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-rkl-5/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_22677_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [FAIL][25], [PASS][26], [PASS][27], [PASS][28]) ([i915#4392]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk1/boot.html
    - shard-apl:          ([PASS][54], [FAIL][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78]) ([i915#4386]) -> ([PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl8/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl3/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl6/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl6/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl6/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl7/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl7/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl7/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl7/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl8/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl8/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl8/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl8/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl8/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl8/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl8/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl7/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl7/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl7/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl6/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl6/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl6/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl4/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl4/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl4/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl3/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl3/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl3/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl3/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl2/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl1/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl1/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#3555] / [i915#5325])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [PASS][105] -> [DMESG-WARN][106] ([i915#180]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][107] -> [DMESG-WARN][108] ([i915#180]) +4 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([i915#280])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-iclb:         [PASS][110] -> [TIMEOUT][111] ([i915#3070])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-iclb5/igt@gem_eio@in-flight-contexts-immediate.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][112] ([i915#5076])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][113] -> [FAIL][114] ([i915#2842])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][115] ([i915#2842])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-tglb:         NOTRUN -> [FAIL][116] ([i915#2842])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][117] -> [FAIL][118] ([i915#2849])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#109283] / [i915#4877])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [PASS][120] -> [INCOMPLETE][121] ([i915#1895] / [i915#5304])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked-all.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][122] -> [SKIP][123] ([i915#2190])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb7/igt@gem_huc_copy@huc-copy.html
    - shard-skl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#2190])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#4613]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl6/igt@gem_lmem_swapping@random.html
    - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#4613])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#4613]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][128] ([i915#2658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk9/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-tglb:         NOTRUN -> [SKIP][129] ([i915#4270])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([i915#768])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][131] -> [FAIL][132] ([i915#4171])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_spin_batch@engines@bcs0:
    - shard-apl:          [PASS][133] -> [FAIL][134] ([i915#2898])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl2/igt@gem_spin_batch@engines@bcs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl2/igt@gem_spin_batch@engines@bcs0.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#3297])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][136] -> [DMESG-WARN][137] ([i915#1436] / [i915#716])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([i915#2527] / [i915#2856]) +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb1/igt@gen9_exec_parse@bb-start-param.html
    - shard-iclb:         NOTRUN -> [SKIP][139] ([i915#2856])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][140] -> [DMESG-WARN][141] ([i915#1982])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][142] -> [SKIP][143] ([i915#4281])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][144] ([i915#1886])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl1/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#3777]) +3 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#3777])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][147] -> [DMESG-WARN][148] ([i915#118]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk7/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][149] ([i915#3743]) +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][150] ([fdo#111615]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][151] ([i915#3689] / [i915#3886]) +2 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][152] ([fdo#109278] / [i915#3886])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#3886]) +2 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][154] ([fdo#111615] / [i915#3689]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][155] ([i915#3689]) +3 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][156] ([fdo#109271] / [i915#3886]) +3 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][157] ([fdo#109278]) +6 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][158] ([fdo#109271]) +17 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk9/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][159] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-iclb:         NOTRUN -> [SKIP][160] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-tglb:         NOTRUN -> [SKIP][161] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][162] ([fdo#109271]) +109 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl6/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-gamma:
    - shard-glk:          NOTRUN -> [SKIP][163] ([fdo#109271] / [fdo#111827])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk9/igt@kms_color_chamelium@pipe-a-gamma.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][164] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl1/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-iclb:         NOTRUN -> [SKIP][165] ([fdo#109300] / [fdo#111066])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][166] ([i915#1063]) +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][167] ([i915#3116] / [i915#3299])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][168] ([i915#2105])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][169] ([fdo#109279] / [i915#3359]) +3 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][170] ([i915#3319]) +2 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:
    - shard-apl:          NOTRUN -> [SKIP][171] ([fdo#109271]) +86 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][172] ([i915#3359]) +1 similar issue
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][173] ([i915#2346])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][174] ([fdo#109271] / [i915#533]) +1 similar issue
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][175] ([i915#3528])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][176] ([i915#5287])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_draw_crc@draw-method-rgb565-blt-4tiled.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-tglb:         NOTRUN -> [SKIP][177] ([fdo#109274] / [fdo#111825]) +5 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][178] ([fdo#109274])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][179] -> [FAIL][180] ([i915#79]) +1 similar issue
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][181] ([fdo#109280] / [fdo#111825]) +12 similar issues
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][182] ([fdo#109280])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [FAIL][183] ([i915#1188])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-skl10/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html

  * igt@kms_pipe_b_c_ivb@p

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/index.html

--===============8646068741604210633==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/ttm: lim=
it where we apply TTM_PL_FLAG_CONTIGUOUS (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101749/">https://patchwork.freedesktop.org/series/101749/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22677/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22677/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11403_full -&gt; Patchwork_22677_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22677_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22677_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22677_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-skl1/igt@i915_selftest@live@gem_context=
s.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-rkl-6/igt@i915_selftest@live@execlists.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/sh=
ard-rkl-5/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22677_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1403/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11403/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shar=
d-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11403/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11403/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11403/shard-glk6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11403/shard-glk5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11403/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11403/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1403/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11403/shard-glk2/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11403/shard-glk1/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-glk1/=
boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl1/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1403/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11403/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11403/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl3/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11403/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11403/shard-apl3/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11403/shard-apl4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl6/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11403/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11403/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1403/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11403/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11403/shard-apl8/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22677/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-apl1/=
boot.html">PASS</a>)</p>
</li>
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
/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@gem_ccs@block-copy-compressed=
.html">SKIP</a> ([i915#3555] / [i915#5325])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22677/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WA=
RN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22677/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WA=
RN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@gem_ctx_sseu@mmap-args.html">=
SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-iclb5/igt@gem_eio@in-flight-contexts-immediate.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22677/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a=
> ([i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@gem_exec_balancer@parallel-ou=
t-fence.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2677/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22677/shard-iclb1/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22677/shard-tglb1/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_226=
77/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@gem_exec_params@no-vebox.html=
">SKIP</a> ([fdo#109283] / [i915#4877])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked-all.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22677/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked-all.html">IN=
COMPLETE</a> ([i915#1895] / [i915#5304])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11403/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-tglb=
7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22677/shard-skl1/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22677/shard-skl6/igt@gem_lmem_swapping@random.html">=
SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22677/shard-iclb1/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@gem_lmem_swapping@verify-rand=
om.html">SKIP</a> ([i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-glk9/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@gem_pxp@verify-pxp-stale-buf-=
execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@gem_render_copy@y-tiled-ccs-t=
o-y-tiled-mc-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22677/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</=
a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@engines@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-apl2/igt@gem_spin_batch@engines@bcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shar=
d-apl2/igt@gem_spin_batch@engines@bcs0.html">FAIL</a> ([i915#2898])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@gem_userptr_blits@unsync-unma=
p.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-glk7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shar=
d-glk4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22677/shard-tglb1/igt@gen9_exec_parse@bb-start-param=
.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22677/shard-iclb1/igt@gen9_exec_parse@bb-start-param=
.html">SKIP</a> ([i915#2856])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-skl1/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22677/shard-skl7/igt@i915_module_load@reload-with-fault-injection.ht=
ml">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/shard-iclb3=
/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-skl1/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1886])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-glk7/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2267=
7/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_ccs@pipe-a-bad-pixel-form=
at-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_ccs@pipe-a-bad-rotation-9=
0-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-apl7/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-ro=
tation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-dat=
a-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-skl1/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_ccs@pipe-d-bad-rotation-9=
0-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-glk9/igt@kms_ccs@pipe-d-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271]) +17 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-apl7/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_chamelium@hdmi-hpd-enable=
-disable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@kms_chamelium@vga-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-skl6/igt@kms_color@pipe-d-ctm-0-5.html"=
>SKIP</a> ([fdo#109271]) +109 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-gamma:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-glk9/igt@kms_color_chamelium@pipe-a-gam=
ma.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-skl1/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_content_protection@atomic=
.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_content_protection@atomic=
-dpms.html">SKIP</a> ([i915#1063]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@kms_content_protection@dp-mst=
-lic-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-apl7/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-onscreen.html">SKIP</a> ([i915#3319]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-6=
4x21-rapid-movement.html">SKIP</a> ([fdo#109271]) +86 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-=
max-size-rapid-movement.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-skl1/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-skl6/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_dp_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_draw_crc@draw-method-rgb5=
65-blt-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_flip@2x-plain-flip-fb-rec=
reate.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_flip@2x-plain-flip-interr=
uptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11403/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22677/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-tglb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280] / [fdo#=
111825]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-iclb1/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22677/shard-skl10/igt@kms_hdr@bpc-switch-suspend@bp=
c-switch-suspend-edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@p</p>
</li>
</ul>

</body>
</html>

--===============8646068741604210633==--
