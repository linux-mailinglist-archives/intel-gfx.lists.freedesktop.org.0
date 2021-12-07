Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0B046BDC7
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 15:33:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 961886EE49;
	Tue,  7 Dec 2021 14:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9EBCE6EE49;
 Tue,  7 Dec 2021 14:33:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96894A00FD;
 Tue,  7 Dec 2021 14:33:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7895364205465609721=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 07 Dec 2021 14:33:52 -0000
Message-ID: <163888763257.10819.17450003030500878812@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Pass_plane_to_watermark?=
 =?utf-8?q?_calculation_functions?=
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

--===============7895364205465609721==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Pass plane to watermark calculation functions
URL   : https://patchwork.freedesktop.org/series/97652/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10967_full -> Patchwork_21772_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21772_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21772_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21772_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb7/igt@gem_eio@reset-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb7/igt@gem_eio@reset-stress.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-iclb5/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-iclb4/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - shard-snb:          [PASS][5] -> [FAIL][6] +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb5/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb5/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-apl:          NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html
    - shard-skl:          NOTRUN -> [FAIL][8] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-kbl:          [PASS][9] -> [FAIL][10] +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-kbl6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-kbl6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
    - shard-apl:          [PASS][11] -> [FAIL][12] +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-apl6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-apl7/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-glk:          [PASS][13] -> [FAIL][14] +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-glk2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_color@pipe-a-legacy-gamma:
    - shard-tglb:         NOTRUN -> [FAIL][15] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_color@pipe-a-legacy-gamma.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-iclb:         [PASS][16] -> [FAIL][17] +13 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][18] -> [FAIL][19] +44 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
    - shard-skl:          [PASS][20] -> [FAIL][21] +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-skl7/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl1/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - {shard-rkl}:        [SKIP][22] ([i915#1845]) -> [FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][24] ([i915#1849]) -> [FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
    - {shard-rkl}:        [SKIP][26] ([i915#3558]) -> ([FAIL][27], [SKIP][28]) ([i915#3558])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html

  
Known issues
------------

  Here are the changes found in Patchwork_21772_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-snb:          ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53]) -> ([PASS][54], [PASS][55], [PASS][56], [PASS][57], [FAIL][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78]) ([i915#4338])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb2/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb7/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb7/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb6/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb6/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb5/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb5/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb5/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb4/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb4/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb2/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb2/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb2/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb2/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][79] -> [DMESG-WARN][80] ([i915#180]) +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [PASS][81] -> [FAIL][82] ([i915#2842]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-kbl2/igt@gem_exec_fair@basic-none@rcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][83] -> [FAIL][84] ([i915#2842])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][85] -> [FAIL][86] ([i915#2842])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [PASS][87] -> [FAIL][88] ([i915#2842]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [PASS][89] -> [INCOMPLETE][90] ([i915#1895])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-iclb1/igt@gem_exec_whisper@basic-queues-forked-all.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-iclb2/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][91] -> [SKIP][92] ([i915#2190])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#4613])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-apl2/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#4613]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl1/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3323])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#3297])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][97] ([i915#3318])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl8/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([fdo#109289])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb6/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][99] -> [DMESG-WARN][100] ([i915#1436] / [i915#716])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-glk9/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#2856])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][102] ([i915#1886] / [i915#2291])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl10/igt@i915_selftest@live@gt_pm.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [DMESG-WARN][103] ([i915#1982])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl8/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@edp-1-pipe-a.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][104] -> [FAIL][105] ([i915#3653]) +4 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][106] ([i915#3743]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-skl:          [PASS][107] -> [DMESG-FAIL][108] ([i915#1888])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-skl7/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl10/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#3777])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#3777]) +4 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-iclb:         [PASS][111] -> [FAIL][112] ([i915#3743]) +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-iclb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-iclb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#3886])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-kbl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#3689] / [i915#3886])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#3886]) +4 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-apl2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#3689])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#3886]) +6 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([fdo#111615] / [i915#3689])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][119] ([fdo#109271]) +179 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-apl2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl1/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [PASS][122] -> [FAIL][123] ([i915#1149])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-tglb8/igt@kms_color@pipe-a-gamma.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb1/igt@kms_color@pipe-a-gamma.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [PASS][124] -> [DMESG-WARN][125] ([i915#1982])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-skl6/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl9/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-kbl6/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][128] ([i915#3116])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][129] ([i915#3359]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-iclb:         [PASS][130] -> [FAIL][131] ([i915#3444]) +5 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
    - shard-glk:          [PASS][132] -> [FAIL][133] ([i915#3444]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-random:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#3319])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-32x32-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([fdo#109278]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([fdo#109279] / [i915#3359]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - shard-kbl:          NOTRUN -> [SKIP][137] ([fdo#109271]) +28 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-kbl6/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:
    - shard-iclb:         [PASS][138] -> [DMESG-WARN][139] ([i915#1226]) +5 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-iclb8/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-iclb2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][140] ([fdo#109274] / [fdo#109278])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-iclb8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][141] -> [INCOMPLETE][142] ([i915#180] / [i915#636])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][143] -> [DMESG-WARN][144] ([i915#180])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][145] -> [FAIL][146] ([i915#2122])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-skl4/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl7/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][147] -> [DMESG-FAIL][148] ([i915#1226]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
    - shard-tglb:         [PASS][149] -> [DMESG-FAIL][150] ([i915#402])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-tglb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#2672])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-apl:          [PASS][152] -> [FAIL][153] ([i915#2546]) +4 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-kbl:          [PASS][154] -> [FAIL][155] ([i915#2546]) +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         [PASS][156] -> [FAIL][157] ([i915#2546]) +17 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-glk:          [PASS][158] -> [FAIL][159] ([i915#2546]) +9 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][160] ([fdo#111825]) +8 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-skl:          NOTRUN -> [FAIL][161] ([i915#2546])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-skl:          [PASS][162] -> [FAIL][163] ([i915#2546]) +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-skl1/igt@kms_frontbuff

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/index.html

--===============7895364205465609721==
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
ane to watermark calculation functions</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97652/">https://patchwork.freedesktop.org/series/97652/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21772/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21772/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10967_full -&gt; Patchwork_21772_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21772_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21772_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21772_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-snb7/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb7/=
igt@gem_eio@reset-stress.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@debugfs-forcewake-user:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-iclb5/igt@i915_pm_rpm@debugfs-forcewake-user.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
772/shard-iclb4/igt@i915_pm_rpm@debugfs-forcewake-user.html">INCOMPLETE</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-snb5/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
772/shard-snb5/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">FAIL</a> +5 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21772/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-180.html">FAIL</a></p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21772/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-180.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10967/shard-kbl6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2177=
2/shard-kbl6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">FAIL</a> +5 simil=
ar issues</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10967/shard-apl6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2177=
2/shard-apl7/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">FAIL</a> +6 simil=
ar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-=
0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21772/shard-glk2/igt@kms_big_fb@y-tiled-max-hw-stride-=
64bpp-rotate-0-async-flip.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-legacy-gamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_color@pipe-a-legacy-gamma=
.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-=
indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21772/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-blt.html">FAIL</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21772/shard-tglb1/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">FAIL</a> +44 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-skl7/igt@kms_plane@plane-panning-bottom-right@pipe-a-pl=
anes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21772/shard-skl1/igt@kms_plane@plane-panning-bottom-right@pipe=
-a-planes.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">SKI=
P</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21772/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html=
">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-rkl-6/igt@kms_frontbu=
ffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right@pipe-a-p=
lanes.html">SKIP</a> ([i915#3558]) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21772/shard-rkl-6/igt@kms_plane@plane-panning-=
bottom-right@pipe-a-planes.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21772/shard-rkl-4/igt@kms_plane@plane-panning=
-bottom-right@pipe-a-planes.html">SKIP</a>) ([i915#3558])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21772_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10967/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10967/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10967/shard-snb6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10967/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10967/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10967/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10967/shard-snb4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0967/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10967/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10967/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10967/shard-snb2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/=
shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21772/shard-snb7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/=
shard-snb6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21772/shard-snb6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/=
shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21772/shard-snb6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21772/shard-snb5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21772/shard-snb4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21772/shard-snb4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21772/shard-snb2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/=
shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21772/shard-snb2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-snb2/boot.html">PAS=
S</a>) ([i915#4338])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21772/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WA=
RN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-kbl2/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/sh=
ard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/sh=
ard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10967/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
772/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i9=
15#2842])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10967/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_217=
72/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915=
#2842]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-iclb1/igt@gem_exec_whisper@basic-queues-forked-all.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21772/shard-iclb2/igt@gem_exec_whisper@basic-queues-forked-all.html">IN=
COMPLETE</a> ([i915#1895])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-apl2/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl1/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@gem_userptr_blits@unsync-unma=
p-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl8/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb6/igt@gen7_exec_parse@cmd-crossing-=
page.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-glk5/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shar=
d-glk9/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@gen9_exec_parse@bb-start-far.=
html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl10/igt@i915_selftest@live@gt_pm.html=
">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@edp-1-pipe-=
a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl8/igt@kms_atomic_transition@plane-us=
e-after-nonblocking-unbind@edp-1-pipe-a.html">DMESG-WARN</a> ([i915#1982])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2177=
2/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">FAIL</a> ([i915#36=
53]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-skl7/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_217=
72/shard-skl10/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">DMESG-FAIL</a> =
([i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +4 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-iclb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21772/shard-iclb6/igt@kms_big_fb@yf-tiled-ma=
x-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3743]) =
+3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21772/shard-kbl6/igt@kms_ccs@pipe-a-bad-aux-stride-y=
_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21772/shard-tglb6/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-apl2/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb6/igt@kms_ccs@pipe-b-ccs-on-another=
-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl8/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb6/igt@kms_ccs@pipe-b-crc-sprite-pla=
nes-basic-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl2/igt@kms_ccs@pipe-d-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +179 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-apl2/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl1/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-gamma:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-tglb8/igt@kms_color@pipe-a-gamma.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-tg=
lb1/igt@kms_color@pipe-a-gamma.html">FAIL</a> ([i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-skl6/igt@kms_color@pipe-b-ctm-blue-to-red.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772=
/shard-skl9/igt@kms_color@pipe-b-ctm-blue-to-red.html">DMESG-WARN</a> ([i91=
5#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_color_chamelium@pipe-a-ct=
m-negative.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-kbl6/igt@kms_color_chamelium@pipe-b-gam=
ma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_content_protection@dp-mst=
-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-=
32x10-offscreen.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10967/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21772/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.htm=
l">FAIL</a> ([i915#3444]) +5 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10967/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21772/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html"=
>FAIL</a> ([i915#3444]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-random.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-offscreen.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-kbl6/igt@kms_cursor_edge_walk@pipe-d-64=
x64-left-edge.html">SKIP</a> ([fdo#109271]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-iclb8/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-tra=
nsitions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21772/shard-iclb2/igt@kms_cursor_legacy@curso=
ra-vs-flipa-atomic-transitions-varying-size.html">DMESG-WARN</a> ([i915#122=
6]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-iclb8/igt@kms_cursor_legacy@cursora-vs-=
flipb-toggle.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21772/shard-=
kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21772/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-skl4/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21772/shard-skl7/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-e=
dp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10967/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-=
ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21772/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to=
-32bpp-ytile.html">DMESG-FAIL</a> ([i915#1226]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10967/shard-tglb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-=
ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21772/shard-tglb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to=
-32bpp-ytile.html">DMESG-FAIL</a> ([i915#402])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-s=
hrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21772/shard-apl6/igt@kms_frontbuffer_tracking@fb=
c-1p-offscren-pri-shrfb-draw-mmap-cpu.html">FAIL</a> ([i915#2546]) +4 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-s=
hrfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21772/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-=
1p-offscren-pri-shrfb-draw-render.html">FAIL</a> ([i915#2546]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21772/shard-iclb2/igt@kms_frontbuffer_tracking@fb=
c-1p-primscrn-spr-indfb-draw-pwrite.html">FAIL</a> ([i915#2546]) +17 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-move.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21772/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-prim=
scrn-cur-indfb-move.html">FAIL</a> ([i915#2546]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-tglb5/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825]) +8 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21772/shard-skl8/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-pri-shrfb-draw-blt.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10967/shard-skl1/igt@kms_frontbuff">PASS</a> -&gt; [FAIL][163] ([i9=
15#2546]) +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7895364205465609721==--
