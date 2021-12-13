Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8FE473867
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 00:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA3110E8A6;
	Mon, 13 Dec 2021 23:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD37010E8A6;
 Mon, 13 Dec 2021 23:24:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E687A47EB;
 Mon, 13 Dec 2021 23:24:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7509641932960336146=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Mon, 13 Dec 2021 23:24:17 -0000
Message-ID: <163943785720.29014.7086516619656541830@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Pass_plane_to_watermark?=
 =?utf-8?q?_calculation_functions_=28rev3=29?=
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

--===============7509641932960336146==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Pass plane to watermark calculation functions (rev3)
URL   : https://patchwork.freedesktop.org/series/97652/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10995_full -> Patchwork_21835_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21835_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21835_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21835_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-snb:          [PASS][1] -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-snb5/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-snb2/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-apl:          [PASS][3] -> [FAIL][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-apl:          NOTRUN -> [FAIL][5] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-kbl:          [PASS][6] -> [FAIL][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-kbl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-y-ccs:
    - shard-skl:          [PASS][8] -> [WARN][9] +10 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl6/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-y-ccs.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-skl7/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-y-ccs.html

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs:
    - shard-iclb:         [PASS][10] -> [WARN][11] +10 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb7/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb2/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs.html

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-yf:
    - shard-skl:          [PASS][12] -> [FAIL][13] +17 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl6/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-yf.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-skl7/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-yf.html

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-yf-ccs:
    - shard-glk:          [PASS][14] -> [WARN][15] +21 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk5/igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-yf-ccs.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-glk5/igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-yf-ccs.html

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-x:
    - shard-glk:          [PASS][16] -> [FAIL][17] +25 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk5/igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-x.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-glk5/igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-x.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-iclb:         [PASS][18] -> [FAIL][19] +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][20] -> [FAIL][21] +29 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-tglb:         NOTRUN -> [SKIP][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  
Known issues
------------

  Here are the changes found in Patchwork_21835_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47]) ([i915#4386]) -> ([PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl7/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl6/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl6/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl6/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl2/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl2/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl2/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl2/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl1/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-iclb:         [PASS][73] -> [FAIL][74] ([i915#2896])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb1/igt@gem_ctx_persistence@smoketest.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb3/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][75] -> [TIMEOUT][76] ([i915#3063] / [i915#3648])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][77] -> [FAIL][78] ([i915#2842])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][79] -> [FAIL][80] ([i915#2842]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][81] ([i915#2842])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [PASS][82] -> [FAIL][83] ([i915#2842]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][84] -> [FAIL][85] ([i915#2842])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [PASS][86] -> [FAIL][87] ([i915#2849])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2190])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#4613])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-skl10/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#4613]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb5/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#4613]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/igt@gem_lmem_swapping@random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][92] ([i915#2658])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#4270]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#2856])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#4281])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_sseu@full-enable:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#4387])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@i915_pm_sseu@full-enable.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][97] -> [DMESG-WARN][98] ([i915#180]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-iclb:         [PASS][99] -> [FAIL][100] ([i915#3653]) +6 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb4/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-iclb:         [PASS][101] -> [FAIL][102] ([i915#3743]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][103] ([i915#3743])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-skl:          [PASS][104] -> [DMESG-FAIL][105] ([i915#1888])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl1/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-skl7/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#111614]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#111615])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#3777]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-glk:          [PASS][109] -> [FAIL][110] ([i915#3653]) +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-glk6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#3886]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-kbl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([fdo#111615] / [i915#3689])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#3886]) +9 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl1/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#3689])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#3689] / [i915#3886])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#3886])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-skl7/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109278]) +4 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271]) +173 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/igt@kms_cdclk@mode-transition.html

  * igt@kms_color@pipe-a-degamma:
    - shard-glk:          [PASS][119] -> [FAIL][120] ([fdo#108145])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk8/igt@kms_color@pipe-a-degamma.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-glk3/igt@kms_color@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-skl6/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-glk1/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-apl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-tglb:         NOTRUN -> [SKIP][124] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
    - shard-kbl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-kbl1/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-glk:          [PASS][126] -> [FAIL][127] ([i915#3444]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#109278] / [fdo#109279])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][129] -> [DMESG-WARN][130] ([i915#180]) +5 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-iclb:         [PASS][131] -> [FAIL][132] ([i915#3444]) +3 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][133] ([i915#3319])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:
    - shard-glk:          NOTRUN -> [SKIP][134] ([fdo#109271]) +12 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-glk4/igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#3359])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([fdo#109279] / [i915#3359])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-ytiled:
    - shard-iclb:         [PASS][137] -> [DMESG-WARN][138] ([i915#1226]) +5 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-ytiled.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-ytiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][139] -> [INCOMPLETE][140] ([i915#180] / [i915#1982])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - shard-iclb:         [PASS][141] -> [FAIL][142] ([i915#2122])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb7/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][143] -> [FAIL][144] ([i915#2122]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][145] -> [DMESG-FAIL][146] ([i915#1226]) +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
    - shard-tglb:         [PASS][147] -> [DMESG-FAIL][148] ([i915#402])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-tglb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tglb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
    - shard-apl:          [PASS][149] -> [DMESG-WARN][150] ([i915#1226])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#2672])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-skl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-yf-ccs:
    - shard-skl:          [PASS][152] -> [DMESG-WARN][153] ([i915#1226])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl6/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-yf-ccs.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-skl7/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-yf-ccs.html

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-yf-ccs:
    - shard-glk:          [PASS][154] -> [DMESG-WARN][155] ([i915#118]) +4 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk5/igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-yf-ccs.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-glk5/igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-yf-ccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-glk:          [PASS][156] -> [FAIL][157] ([i915#2546]) +5 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-glk6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
    - shard-kbl:          [PASS][158] -> [FAIL][159] ([i915#2546]) +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-apl:          [PASS][160] -> [FAIL][161] ([i915#2546]) +2 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][162] ([fdo#109280]) +3 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/index.html

--===============7509641932960336146==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Pass pl=
ane to watermark calculation functions (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97652/">https://patchwork.freedesktop.org/series/97652/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21835/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21835/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10995_full -&gt; Patchwork_21835_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21835_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21835_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21835_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-snb5/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2183=
5/shard-snb2/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">FAIL</a> +3 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-apl6/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
35/shard-apl3/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">FAIL</a> +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-apl4/igt@kms_big_fb@y-tiled-16bpp-rotat=
e-180.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate=
-180.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21835/shard-kbl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-r=
otate-180.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-y-ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl6/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-=
a-y-ccs-to-y-ccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21835/shard-skl7/igt@kms_flip_tiling@flip-change-t=
iling@edp-1-pipe-a-y-ccs-to-y-ccs.html">WARN</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb7/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe=
-a-yf-ccs-to-y-ccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21835/shard-iclb2/igt@kms_flip_tiling@flip-chang=
e-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs.html">WARN</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-yf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl6/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-=
a-yf-to-yf.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21835/shard-skl7/igt@kms_flip_tiling@flip-change-tiling@=
edp-1-pipe-a-yf-to-yf.html">FAIL</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-yf-ccs:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-glk5/igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pi=
pe-a-linear-to-yf-ccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21835/shard-glk5/igt@kms_flip_tiling@flip-cha=
nge-tiling@hdmi-a-1-pipe-a-linear-to-yf-ccs.html">WARN</a> +21 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-x:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-glk5/igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pi=
pe-a-yf-ccs-to-x.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21835/shard-glk5/igt@kms_flip_tiling@flip-change-t=
iling@hdmi-a-2-pipe-a-yf-ccs-to-x.html">FAIL</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21835/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-cur-indfb-draw-blt.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21835/shard-tglb7/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">FAIL</a> +29 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21835_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10995/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10995/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10995/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10995/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10995/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10995/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0995/shard-apl2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10995/shard-apl1/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21835/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21835/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21835/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21835/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21835/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21835/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21835/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21835/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-apl1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb1/igt@gem_ctx_persistence@smoketest.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/s=
hard-iclb3/igt@gem_ctx_persistence@smoketest.html">FAIL</a> ([i915#2896])</=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-tglb8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-tg=
lb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/s=
hard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/sh=
ard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
835/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835=
/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#284=
2])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2183=
5/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2=
849])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-apl3/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21835/shard-skl10/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21835/shard-tglb5/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([i915#4613]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-apl4/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-apl4/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@gem_pxp@dmabuf-shared-protect=
ed-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@gen9_exec_parse@batch-without=
-end.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@i915_pm_dc@dc9-dpms.html">SKI=
P</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@i915_pm_sseu@full-enable.html=
">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-apl4/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-=
apl3/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb4/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
35/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">FAIL</a> ([i915#=
3653]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate=
-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21835/shard-iclb1/igt@kms_big_fb@x-tiled-max-hw=
-stride-64bpp-rotate-0-hflip-async-flip.html">FAIL</a> ([i915#3743]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl1/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
835/shard-skl7/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">DMESG-FAIL</a>=
 ([i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_big_fb@y-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_big_fb@yf-tiled-32bpp-rot=
ate-90.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-glk7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate=
-180.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21835/shard-glk6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-r=
otate-180.html">FAIL</a> ([i915#3653]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-kbl1/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_ccs@pipe-a-ccs-on-another=
-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-apl1/igt@kms_ccs@pipe-b-bad-pixel-forma=
t-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +9 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_ccs@pipe-b-missing-ccs-bu=
ffer-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-form=
at-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-skl7/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@kms_ccs@pipe-d-crc-primary-ro=
tation-180-y_tiled_ccs.html">SKIP</a> ([fdo#109278]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-apl4/igt@kms_cdclk@mode-transition.html=
">SKIP</a> ([fdo#109271]) +173 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-degamma:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-glk8/igt@kms_color@pipe-a-degamma.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-g=
lk3/igt@kms_color@pipe-a-degamma.html">FAIL</a> ([fdo#108145])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-skl6/igt@kms_color_chamelium@pipe-b-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-glk1/igt@kms_color_chamelium@pipe-c-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_color_chamelium@pipe-c-de=
gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-limited-range:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-kbl1/igt@kms_color_chamelium@pipe-d-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21835/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.=
html">FAIL</a> ([i915#3444]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-=
512x170-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
835/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +5 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1835/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">FAIL</a> ([=
i915#3444]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-glk4/igt@kms_cursor_crc@pipe-b-cursor-5=
12x170-rapid-movement.html">SKIP</a> ([fdo#109271]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-ytiled:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-yt=
iled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21835/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-g=
tt-ytiled.html">DMESG-WARN</a> ([i915#1226]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21835/shard-=
apl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb7/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21835/shard-iclb2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">FAIL=
</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21835/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a>=
 ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-=
ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21835/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to=
-32bpp-ytile.html">DMESG-FAIL</a> ([i915#1226]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-tglb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-=
ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21835/shard-tglb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to=
-32bpp-ytile.html">DMESG-FAIL</a> ([i915#402])</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-apl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-y=
tile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21835/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-3=
2bpp-ytile.html">DMESG-WARN</a> ([i915#1226])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-skl7/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-yf-ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl6/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-=
a-yf-ccs-to-yf-ccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21835/shard-skl7/igt@kms_flip_tiling@flip-change=
-tiling@edp-1-pipe-a-yf-ccs-to-yf-ccs.html">DMESG-WARN</a> ([i915#1226])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-yf-ccs:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-glk5/igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pi=
pe-a-yf-ccs-to-yf-ccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21835/shard-glk5/igt@kms_flip_tiling@flip-cha=
nge-tiling@hdmi-a-2-pipe-a-yf-ccs-to-yf-ccs.html">DMESG-WARN</a> ([i915#118=
]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-sh=
rfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-glk6/igt@kms_frontbuffer_tracking@fbc-1=
p-offscren-pri-shrfb-draw-pwrite.html">FAIL</a> ([i915#2546]) +5 similar is=
sues</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-sh=
rfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1=
p-offscren-pri-shrfb-draw-pwrite.html">FAIL</a> ([i915#2546]) +1 similar is=
sue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-s=
hrfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21835/shard-apl6/igt@kms_frontbuffer_tracking@fbc-=
1p-primscrn-pri-shrfb-draw-pwrite.html">FAIL</a> ([i915#2546]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21835/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer</p>
</li>
</ul>

</body>
</html>

--===============7509641932960336146==--
