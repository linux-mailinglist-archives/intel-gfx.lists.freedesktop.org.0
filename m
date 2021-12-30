Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0884817E7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Dec 2021 01:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F058B10E1FF;
	Thu, 30 Dec 2021 00:29:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD8ED10E1FD;
 Thu, 30 Dec 2021 00:29:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6C27A00CC;
 Thu, 30 Dec 2021 00:29:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5116939919403658986=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anisse Astier" <anisse@astier.eu>
Date: Thu, 30 Dec 2021 00:29:12 -0000
Message-ID: <164082415264.9666.2906092104295720087@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211229222200.53128-1-anisse@astier.eu>
In-Reply-To: <20211229222200.53128-1-anisse@astier.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgR1BE?=
 =?utf-8?q?_Win_Max_display_fixes_=28rev7=29?=
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

--===============5116939919403658986==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GPD Win Max display fixes (rev7)
URL   : https://patchwork.freedesktop.org/series/90483/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11039_full -> Patchwork_21908_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21908_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21908_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 19)
------------------------------

  Additional (7): shard-tglu-7 shard-tglu-6 shard-tglu-8 shard-tglu-1 shard-tglu-3 shard-tglu-4 shard-tglu-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21908_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-skl9/igt@i915_selftest@mock@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl6/igt@i915_selftest@mock@requests.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@api_intel_allocator@fork-simple-stress:
    - {shard-rkl}:        [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-rkl-2/igt@api_intel_allocator@fork-simple-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-rkl-5/igt@api_intel_allocator@fork-simple-stress.html

  * igt@gem_create@busy-create:
    - {shard-tglu-7}:     NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-7/igt@gem_create@busy-create.html

  * igt@gem_create@create-massive:
    - {shard-tglu-4}:     NOTRUN -> [DMESG-WARN][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-4/igt@gem_create@create-massive.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - {shard-tglu-8}:     NOTRUN -> [FAIL][7] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - {shard-tglu-2}:     NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - {shard-tglu-6}:     NOTRUN -> [FAIL][9] +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - {shard-tglu-3}:     NOTRUN -> [FAIL][10] +5 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-vebox:
    - {shard-tglu-7}:     NOTRUN -> [SKIP][11] +80 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-7/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_suspend@basic-s3-devices@smem:
    - {shard-tglu-7}:     NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-7/igt@gem_exec_suspend@basic-s3-devices@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {shard-tglu-1}:     NOTRUN -> [FAIL][13] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [PASS][14] -> [DMESG-WARN][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - {shard-dg1}:        NOTRUN -> [SKIP][16] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-dg1-17/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@input-checking:
    - {shard-tglu-7}:     NOTRUN -> [DMESG-WARN][17] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-7/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@probe:
    - {shard-dg1}:        NOTRUN -> [FAIL][18] +5 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-dg1-17/igt@gem_userptr_blits@probe.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - {shard-tglu-2}:     NOTRUN -> [WARN][19] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - {shard-tglu-8}:     NOTRUN -> [SKIP][20] +77 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-8/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_pm_rps@waitboost:
    - {shard-dg1}:        [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-dg1-16/igt@i915_pm_rps@waitboost.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-dg1-13/igt@i915_pm_rps@waitboost.html

  * igt@i915_query@query-topology-unsupported:
    - {shard-tglu-1}:     NOTRUN -> [SKIP][23] +74 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-1/igt@i915_query@query-topology-unsupported.html

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - {shard-tglu-8}:     NOTRUN -> [DMESG-WARN][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-8/igt@kms_big_fb@linear-16bpp-rotate-180.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - {shard-tglu-6}:     NOTRUN -> [DMESG-WARN][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-6/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - {shard-tglu-3}:     NOTRUN -> [DMESG-WARN][26] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - {shard-tglu-4}:     NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - {shard-tglu-2}:     NOTRUN -> [SKIP][28] +91 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - {shard-tglu-6}:     NOTRUN -> [SKIP][29] +121 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - {shard-tglu-4}:     NOTRUN -> [SKIP][30] +100 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@prime_vgem@fence-flip-hang:
    - {shard-tglu-3}:     NOTRUN -> [SKIP][31] +116 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglu-3/igt@prime_vgem@fence-flip-hang.html

  
Known issues
------------

  Here are the changes found in Patchwork_21908_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55]) -> ([PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [FAIL][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80]) ([i915#4392])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk2/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk5/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk4/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk4/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk3/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk3/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk2/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk2/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk1/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk9/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk9/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk9/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk8/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk8/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk7/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk7/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk7/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk6/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk6/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk6/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk5/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk5/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [FAIL][104], [PASS][105]) ([i915#4386]) -> ([PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128], [PASS][129], [PASS][130])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl7/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl7/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl6/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl6/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl6/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl7/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl7/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl4/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl4/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl8/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl8/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl4/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl8/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl3/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl3/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl3/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl3/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl2/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl1/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl1/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl1/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl1/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl1/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl1/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl1/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl2/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl2/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl2/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl2/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl3/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl3/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl3/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl3/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl4/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl4/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl4/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl6/boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl6/boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl6/boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl7/boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl7/boot.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl7/boot.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl7/boot.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl8/boot.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl8/boot.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl8/boot.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][131] ([i915#4547])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl9/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][132] -> [FAIL][133] ([i915#2842]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-tglb:         [PASS][134] -> [FAIL][135] ([i915#2842])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          NOTRUN -> [FAIL][136] ([i915#2842])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-glk:          [PASS][137] -> [FAIL][138] ([i915#2842]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk9/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-tglb:         NOTRUN -> [FAIL][139] ([i915#2842])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][140] -> [FAIL][141] ([i915#2842]) +2 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][142] ([i915#2842])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#4613]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl4/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-kbl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#4613]) +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-kbl1/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-apl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#4613]) +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl6/igt@gem_lmem_swapping@parallel-random-engines.html
    - shard-tglb:         NOTRUN -> [SKIP][146] ([i915#4613])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglb:         NOTRUN -> [SKIP][147] ([i915#4270])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb6/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][148] ([fdo#109271] / [i915#3323])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-skl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#3323])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-glk:          NOTRUN -> [DMESG-WARN][150] ([i915#3002])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk3/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglb:         NOTRUN -> [SKIP][151] ([fdo#109289])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][152] -> [DMESG-WARN][153] ([i915#1436] / [i915#1982] / [i915#716])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-tglb:         NOTRUN -> [SKIP][154] ([i915#2856])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][155] ([i915#454])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl9/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][156] ([fdo#111614])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][157] ([i915#3743]) +2 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#3777]) +2 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-glk:          NOTRUN -> [SKIP][159] ([fdo#109271] / [i915#3777]) +1 similar issue
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][160] ([fdo#111615]) +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][161] ([fdo#109271]) +105 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][162] ([fdo#109271] / [i915#3886]) +5 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][163] ([fdo#111615] / [i915#3689])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_ccs@pipe-b-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][164] ([i915#3689])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][165] ([i915#3689] / [i915#3886]) +2 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][166] ([fdo#109271] / [i915#3886]) +11 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl9/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][167] ([fdo#109271] / [i915#3886]) +3 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-kbl4/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-glk:          NOTRUN -> [SKIP][168] ([fdo#109271]) +16 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk3/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-glk:          NOTRUN -> [SKIP][169] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk3/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][170] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-apl:          NOTRUN -> [SKIP][171] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl7/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color@pipe-b-ctm-max:
    - shard-skl:          [PASS][172] -> [DMESG-WARN][173] ([i915#1982])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-skl7/igt@kms_color@pipe-b-ctm-max.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl7/igt@kms_color@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][174] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][175] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl9/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][176] ([i915#1319])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-kbl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@uevent:
    - shard-tglb:         NOTRUN -> [SKIP][177] ([fdo#111828])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_content_protection@uevent.html
    - shard-apl:          NOTRUN -> [FAIL][178] ([i915#2105])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][179] -> [DMESG-WARN][180] ([i915#180]) +2 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
    - shard-tglb:         NOTRUN -> [SKIP][181] ([fdo#109279] / [i915#3359])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][182] ([i915#3319]) +1 similar issue
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][183] ([i915#2346] / [i915#533])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-skl9/igt@kms_cursor_legac

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/index.html

--===============5116939919403658986==
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
<tr><td><b>Series:</b></td><td>GPD Win Max display fixes (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90483/">https://patchwork.freedesktop.org/series/90483/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21908/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21908/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11039_full -&gt; Patchwork_21908_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21908_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21908_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 19)</h2>
<p>Additional (7): shard-tglu-7 shard-tglu-6 shard-tglu-8 shard-tglu-1 shar=
d-tglu-3 shard-tglu-4 shard-tglu-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21908_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@mock@requests:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11039/shard-skl9/igt@i915_selftest@mock@requests.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shar=
d-skl6/igt@i915_selftest@mock@requests.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@api_intel_allocator@fork-simple-stress:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11039/shard-rkl-2/igt@api_intel_allocator@fork-simple-stress.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21908/shard-rkl-5/igt@api_intel_allocator@fork-simple-stress.html">INCOMP=
LETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_create@busy-create:</p>
<ul>
<li>{shard-tglu-7}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-7/igt@gem_create@busy-create.html"=
>INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>{shard-tglu-4}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-4/igt@gem_create@create-massive.ht=
ml">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>{shard-tglu-8}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-8/igt@gem_exec_fair@basic-none-rru=
l@rcs0.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>{shard-tglu-2}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-2/igt@gem_exec_fair@basic-none-vip=
@rcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>{shard-tglu-6}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-6/igt@gem_exec_fair@basic-pace@vec=
s0.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>{shard-tglu-3}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-3/igt@gem_exec_fair@basic-throttle=
@rcs0.html">FAIL</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>{shard-tglu-7}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-7/igt@gem_exec_params@no-vebox.htm=
l">SKIP</a> +80 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices@smem:</p>
<ul>
<li>{shard-tglu-7}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-7/igt@gem_exec_suspend@basic-s3-de=
vices@smem.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-1/igt@gem_exec_suspend@basic-s3@sm=
em.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11039/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
08/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-dg1-17/igt@gem_tiled_partial_pwrite_pre=
ad@reads.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>{shard-tglu-7}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-7/igt@gem_userptr_blits@input-chec=
king.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@probe:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-dg1-17/igt@gem_userptr_blits@probe.html=
">FAIL</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>{shard-tglu-2}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-fe=
nce.html">WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-tglu-8}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-8/igt@i915_pm_rpm@modeset-non-lpsp=
-stress-no-wait.html">SKIP</a> +77 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11039/shard-dg1-16/igt@i915_pm_rps@waitboost.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-dg=
1-13/igt@i915_pm_rps@waitboost.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-1/igt@i915_query@query-topology-un=
supported.html">SKIP</a> +74 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-180:</p>
<ul>
<li>{shard-tglu-8}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-8/igt@kms_big_fb@linear-16bpp-rota=
te-180.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>{shard-tglu-6}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-6/igt@kms_big_fb@linear-32bpp-rota=
te-0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>{shard-tglu-3}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-3/igt@kms_big_fb@x-tiled-32bpp-rot=
ate-180.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>{shard-tglu-4}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-st=
ride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>{shard-tglu-2}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-2/igt@kms_big_fb@yf-tiled-32bpp-ro=
tate-270.html">SKIP</a> +91 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-tglu-6}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc=
-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> +121 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>{shard-tglu-4}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc=
psr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> +100 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>{shard-tglu-3}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglu-3/igt@prime_vgem@fence-flip-hang.h=
tml">SKIP</a> +116 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21908_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11039/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11039/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11039/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11039/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11039/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11039/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11039/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11039/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1039/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11039/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shar=
d-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21908/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
08/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21908/shard-glk4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
08/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21908/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk3/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
08/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21908/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk2/boot.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
08/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21908/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
08/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21908/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk8/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
08/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21908/shard-glk7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
08/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21908/shard-glk6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-glk6/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
08/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21908/shard-glk5/boot.html">PASS</a>) ([i915#4392])</=
li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11039/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11039/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11039/shard-apl6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/sha=
rd-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11039/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11039/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11039/shard-apl8/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039=
/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11039/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11039/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1039/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11039/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/shar=
d-apl1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11039/shard-apl1/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21908/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21908/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21908/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21908/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21908/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21908/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21908/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21908/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-apl8/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-skl9/igt@gem_exec_capture@pi@rcs0.html"=
>INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11039/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
908/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i9=
15#2842]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11039/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
908/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i9=
15#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21908/shard-apl6/igt@gem_exec_fair@basic-none-solo@r=
cs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11039/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2190=
8/shard-glk9/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2=
842]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21908/shard-tglb5/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11039/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/sh=
ard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-skl4/igt@gem_lmem_swapping@heavy-multi.=
html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-kbl1/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21908/shard-apl6/igt@gem_lmem_swapping@parallel-rand=
om-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21908/shard-tglb5/igt@gem_lmem_swapping@parallel-ran=
dom-engines.html">SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb6/igt@gem_pxp@create-regular-contex=
t-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21908/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21908/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-glk3/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@gen7_exec_parse@basic-offset.=
html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11039/shard-skl6/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/s=
hard-skl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#14=
36] / [i915#1982] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@gen9_exec_parse@bb-start-out.=
html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-skl9/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_big_fb@x-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-glk3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-180-async-flip.html">SKIP</a> ([fdo#111615]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +105 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-apl6/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_ccs@pipe-b-ccs-on-another=
-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_ccs@pipe-b-crc-primary-ba=
sic-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_ccs@pipe-c-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-skl9/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +11 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-kbl4/igt@kms_ccs@pipe-c-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-glk3/igt@kms_ccs@pipe-d-crc-sprite-plan=
es-basic-yf_tiled_ccs.html">SKIP</a> ([fdo#109271]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-glk3/igt@kms_chamelium@dp-hpd-for-each-=
pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_chamelium@vga-hpd-after-s=
uspend.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-apl7/igt@kms_chamelium@vga-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11039/shard-skl7/igt@kms_color@pipe-b-ctm-max.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/shard-s=
kl7/igt@kms_color@pipe-b-ctm-max.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm=
-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-skl9/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-kbl4/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_content_protection@uevent.=
html">SKIP</a> ([fdo#111828])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21908/shard-apl6/igt@kms_content_protection@uevent.h=
tml">FAIL</a> ([i915#2105])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11039/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1908/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-random.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-onscreen.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21908/shard-skl9/igt@kms_cursor_legac">FAIL</a> ([i=
915#2346] / [i915#533])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5116939919403658986==--
