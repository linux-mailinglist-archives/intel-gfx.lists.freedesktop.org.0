Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65E346EFA1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE1610E639;
	Thu,  9 Dec 2021 16:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B833110E116;
 Thu,  9 Dec 2021 16:31:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1C7EAADD8;
 Thu,  9 Dec 2021 16:31:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6030131313546096499=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 09 Dec 2021 16:31:08 -0000
Message-ID: <163906746870.5090.14736877421176282650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Pass_plane_to_watermark?=
 =?utf-8?q?_calculation_functions_=28rev2=29?=
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

--===============6030131313546096499==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Pass plane to watermark calculation functions (rev2)
URL   : https://patchwork.freedesktop.org/series/97652/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10978_full -> Patchwork_21796_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21796_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21796_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21796_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:
    - shard-skl:          [PASS][1] -> [FAIL][2] +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl4/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-kbl:          [PASS][3] -> [FAIL][4] +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-kbl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-glk:          [PASS][5] -> [FAIL][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-snb:          [PASS][7] -> [FAIL][8] +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-skl:          NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-iclb:         [PASS][10] -> [FAIL][11] +13 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [FAIL][12] +5 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - shard-iclb:         [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb7/igt@kms_plane@pixel-format@pipe-a-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb5/igt@kms_plane@pixel-format@pipe-a-planes.html
    - shard-tglb:         [PASS][15] -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb3/igt@kms_plane@pixel-format@pipe-a-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb2/igt@kms_plane@pixel-format@pipe-a-planes.html

  * igt@kms_plane@pixel-format@pipe-b-planes:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk2/igt@kms_plane@pixel-format@pipe-b-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_plane@pixel-format@pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][19] -> [FAIL][20] +10 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane@plane-position-hole-dpms@pipe-a-planes:
    - shard-tglb:         [PASS][21] -> [FAIL][22] +32 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb6/igt@kms_plane@plane-position-hole-dpms@pipe-a-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb7/igt@kms_plane@plane-position-hole-dpms@pipe-a-planes.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - {shard-rkl}:        NOTRUN -> [FAIL][23] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - {shard-rkl}:        NOTRUN -> ([FAIL][24], [SKIP][25]) ([i915#1845])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  
Known issues
------------

  Here are the changes found in Patchwork_21796_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +8 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][28] -> [TIMEOUT][29] ([i915#3063] / [i915#3648])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][30] -> [SKIP][31] ([i915#2848])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@basic:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#4613])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#4613])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#3297])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3297])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#2856])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#1937])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-tglb:         [PASS][38] -> [FAIL][39] ([i915#2521])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb6/igt@kms_async_flips@alternate-sync-async-flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb8/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:
    - shard-glk:          [PASS][40] -> [FAIL][41] ([i915#3653]) +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk5/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk9/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#3743]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3777])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#3743])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [DMESG-WARN][47] ([i915#1888] / [i915#2017])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#111615]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3777])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#3886]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3689] / [i915#3886])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:
    - shard-iclb:         [PASS][52] -> [DMESG-FAIL][53] ([i915#1226]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb8/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
    - shard-glk:          [PASS][54] -> [DMESG-FAIL][55] ([i915#118] / [i915#1982])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk3/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
    - shard-skl:          [PASS][56] -> [DMESG-FAIL][57] ([i915#1226])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][58] ([i915#1226])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#3886])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3886]) +6 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#111615] / [i915#3689])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#3689]) +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][64] -> [DMESG-WARN][65] ([i915#1982])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109284] / [fdo#111827])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_content_protection@srm:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#111828])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-glk:          [PASS][69] -> [FAIL][70] ([i915#3444]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109279] / [i915#3359])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-iclb:         [PASS][72] -> [FAIL][73] ([i915#3444]) +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#3359]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#3319])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-32x32-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][76] -> [FAIL][77] ([i915#2346])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@2x-busy-flip:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109274])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb3/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111825]) +12 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [PASS][80] -> [FAIL][81] ([i915#79])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-modeset-vs-hang@a-edp1:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][82] ([i915#1226])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb3/igt@kms_flip@flip-vs-modeset-vs-hang@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-glk:          [PASS][83] -> [FAIL][84] ([i915#2546]) +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271]) +75 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][86] -> [FAIL][87] ([i915#2411]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-iclb:         [PASS][88] -> [FAIL][89] ([i915#2546]) +12 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_invalid_mode@clock-too-high:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271]) +24 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_invalid_mode@clock-too-high.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#1839])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +77 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl3/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][93] -> [DMESG-WARN][94] ([i915#180])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:
    - shard-skl:          [PASS][95] -> [FAIL][96] ([i915#1623]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl4/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl10/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
    - shard-tglb:         [PASS][97] -> [FAIL][98] ([i915#1623])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb2/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb7/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
    - shard-glk:          [PASS][99] -> [DMESG-FAIL][100] ([i915#118]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk4/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk4/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
    - shard-kbl:          [PASS][101] -> [DMESG-FAIL][102] ([i915#1226])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-kbl6/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl7/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - shard-apl:          [PASS][103] -> [FAIL][104] ([i915#1623]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-apl3/igt@kms_plane@pixel-format@pipe-a-planes.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@kms_plane@pixel-format@pipe-a-planes.html
    - shard-glk:          [PASS][105] -> [SKIP][106] ([fdo#109271])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk2/igt@kms_plane@pixel-format@pipe-a-planes.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_plane@pixel-format@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][107] ([fdo#108145] / [i915#265]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-kbl:          [PASS][108] -> [FAIL][109] ([fdo#108145] / [i915#265])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
    - shard-apl:          [PASS][110] -> [FAIL][111] ([fdo#108145] / [i915#265])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
    - shard-glk:          [PASS][112] -> [FAIL][113] ([fdo#108145] / [i915#265])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
    - shard-skl:          [PASS][114] -> [FAIL][115] ([fdo#108145] / [i915#265]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - shard-iclb:         [PASS][116] -> [FAIL][117] ([i915#4729])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb7/igt@kms_plane_cursor@pipe-a-primary-size-128.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb5/igt@kms_plane_cursor@pipe-a-primary-size-128.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([fdo#111615] / [fdo#112054])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#658]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_dpms:
    - shard-tglb:         NOTRUN -> [FAIL][122] ([i915#132] / [i915#3467])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_psr@psr2_dpms.html

  * igt@kms_rotation_crc@multiplane-rotation:
    - shard-tglb:         [PASS][123] -> [FAIL][124] ([i915#65])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb1/igt@kms_rotation_crc@multiplane-rotation.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb2/igt@kms_rotation_crc@multiplane-rotation.html
    - shard-glk:          [PASS][125] -> [DMESG-FAIL][126] ([i915#118] / [i915#1982] / [i915#65])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk5/igt@kms_rotation_crc@multiplane-rotation.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk9/igt@kms_rotation_crc@multiplane-rotation.html
    - shard-kbl:          [PASS][127] -> [DMESG-FAIL][128] ([i915#1226] / [i915#65])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-kbl3/igt@kms_rotation_crc@multiplane-rotation.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl7/igt@kms_rotation_crc@multiplane-rotation.html

  * igt@kms_rotation_crc@primary-rotation-180:
    - shard-iclb:         [PASS][129] -> [DMESG-WARN][130] ([i915#1226]) +3 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb1/igt@kms_rotation_crc@primary-rotation-180.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb8/igt@kms_rotation_crc@primary-rotation-180.html
    - shard-glk:          [PASS][131] -> [DMESG-WARN][132] ([i915#118])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk7/igt@kms_rotation_crc@primary-rotation-180.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_rotation_crc@primary-rotation-180.html

  * igt@kms_selftest@all@check_plane_state:
    - shard-apl:          NOTRUN -> [INCOMPLETE][133] ([i915#4663])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl3/igt@kms_selftest@all@check_plane_state.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][134] -> [FAIL][135] ([i915#31])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-apl4/igt@kms_setmode@basic.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#2437])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_writeback@writeback-check-output.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [PASS][137] -> [FAIL][138] ([i915#1542])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb1/igt@perf@polling-parameterized.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb6/igt@perf@polling-parameterized.html

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/index.html

--===============6030131313546096499==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Pass plane to watermark calculation functions (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97652/">https://patchwork.freedesktop.org/series/97652/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10978_full -&gt; Patchwork_21796_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21796_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21796_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21796_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl4/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-kbl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">FAIL</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html">FAIL</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">FAIL</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb7/igt@kms_plane@pixel-format@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb5/igt@kms_plane@pixel-format@pipe-a-planes.html">SKIP</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb3/igt@kms_plane@pixel-format@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb2/igt@kms_plane@pixel-format@pipe-a-planes.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-b-planes:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk2/igt@kms_plane@pixel-format@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_plane@pixel-format@pipe-b-planes.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">FAIL</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms@pipe-a-planes:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb6/igt@kms_plane@plane-position-hole-dpms@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb7/igt@kms_plane@plane-position-hole-dpms@pipe-a-planes.html">FAIL</a> +32 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a>) ([i915#1845])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21796_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">SKIP</a> ([i915#2848])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb6/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb8/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk5/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk9/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html">FAIL</a> ([i915#3653]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">DMESG-WARN</a> ([i915#1888] / [i915#2017])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111615]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb8/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html">DMESG-FAIL</a> ([i915#1226]) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk3/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html">DMESG-FAIL</a> ([i915#118] / [i915#1982])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html">DMESG-FAIL</a> ([i915#1226])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html">DMESG-FAIL</a> ([i915#1226])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@kms_chamelium@dp-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@kms_color_chamelium@pipe-b-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_content_protection@srm.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-random:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html">FAIL</a> ([i915#3444]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-size-change:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-size-change.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-size-change.html">FAIL</a> ([i915#3444]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-32x32-offscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb3/igt@kms_flip@2x-busy-flip.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> ([fdo#111825]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-modeset-vs-hang@a-edp1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb3/igt@kms_flip@flip-vs-modeset-vs-hang@a-edp1.html">DMESG-WARN</a> ([i915#1226])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">FAIL</a> ([i915#2546]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +75 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html">FAIL</a> ([i915#2411]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">FAIL</a> ([i915#2546]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_invalid_mode@clock-too-high.html">SKIP</a> ([fdo#109271]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl3/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html">SKIP</a> ([fdo#109271]) +77 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl4/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl10/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html">FAIL</a> ([i915#1623]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb2/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb7/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html">FAIL</a> ([i915#1623])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk4/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk4/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html">DMESG-FAIL</a> ([i915#118]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-kbl6/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl7/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html">DMESG-FAIL</a> ([i915#1226])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-apl3/igt@kms_plane@pixel-format@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@kms_plane@pixel-format@pipe-a-planes.html">FAIL</a> ([i915#1623]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk2/igt@kms_plane@pixel-format@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_plane@pixel-format@pipe-a-planes.html">SKIP</a> ([fdo#109271])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb7/igt@kms_plane_cursor@pipe-a-primary-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb5/igt@kms_plane_cursor@pipe-a-primary-size-128.html">FAIL</a> ([i915#4729])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_psr@psr2_dpms.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb1/igt@kms_rotation_crc@multiplane-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb2/igt@kms_rotation_crc@multiplane-rotation.html">FAIL</a> ([i915#65])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk5/igt@kms_rotation_crc@multiplane-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk9/igt@kms_rotation_crc@multiplane-rotation.html">DMESG-FAIL</a> ([i915#118] / [i915#1982] / [i915#65])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-kbl3/igt@kms_rotation_crc@multiplane-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-kbl7/igt@kms_rotation_crc@multiplane-rotation.html">DMESG-FAIL</a> ([i915#1226] / [i915#65])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-180:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-iclb1/igt@kms_rotation_crc@primary-rotation-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-iclb8/igt@kms_rotation_crc@primary-rotation-180.html">DMESG-WARN</a> ([i915#1226]) +3 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-glk7/igt@kms_rotation_crc@primary-rotation-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-glk7/igt@kms_rotation_crc@primary-rotation-180.html">DMESG-WARN</a> ([i915#118])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all@check_plane_state:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl3/igt@kms_selftest@all@check_plane_state.html">INCOMPLETE</a> ([i915#4663])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-apl4/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-apl2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb5/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10978/shard-tglb1/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21796/shard-tglb6/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6030131313546096499==--
