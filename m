Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9382F471385
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 11:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD1910EA45;
	Sat, 11 Dec 2021 10:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7819110EA45;
 Sat, 11 Dec 2021 10:59:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E9FBA0096;
 Sat, 11 Dec 2021 10:59:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7389637447701977750=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Sat, 11 Dec 2021 10:59:44 -0000
Message-ID: <163922038441.10521.786947707509823889@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211210110556.883735-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20211210110556.883735-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Stop_doing_writeback_from_the_shrinker?=
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

--===============7389637447701977750==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Stop doing writeback from the shrinker
URL   : https://patchwork.freedesktop.org/series/97856/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10988_full -> Patchwork_21821_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21821_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21821_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21821_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_async_flips@async-flip-with-page-flip-events:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl8/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-skl6/igt@kms_async_flips@async-flip-with-page-flip-events.html

  
Known issues
------------

  Here are the changes found in Patchwork_21821_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [FAIL][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4392])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk9/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#1099])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-snb6/igt@gem_ctx_persistence@engines-hostile-preempt.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#280])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-tglb7/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][55] -> [TIMEOUT][56] ([i915#3063] / [i915#3648])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#4547])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl8/igt@gem_exec_capture@pi@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-skl6/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-iclb4/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][61] ([i915#2842]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@verify:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl7/igt@gem_lmem_swapping@verify.html
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl7/igt@gem_lmem_swapping@verify.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#644])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][66] -> [FAIL][67] ([i915#4171])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk8/igt@gem_softpin@allocator-evict-all-engines.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3777]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#3777])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#3886]) +6 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3886]) +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl2/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +99 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl2/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl1/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-snb:          NOTRUN -> [SKIP][74] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-snb6/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl2/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][76] ([i915#1319])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][77] -> [FAIL][78] ([i915#2346])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [PASS][79] -> [FAIL][80] ([i915#2346])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][81] -> [FAIL][82] ([i915#79]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][83] -> [FAIL][84] ([i915#2122])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][85] -> [DMESG-WARN][86] ([i915#180]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][87] -> [INCOMPLETE][88] ([i915#636])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:
    - shard-apl:          NOTRUN -> [DMESG-WARN][89] ([i915#1226])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl8/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-snb:          NOTRUN -> [SKIP][90] ([fdo#109271]) +42 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271]) +146 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][92] -> [FAIL][93] ([i915#1188])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#533])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl8/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][95] ([i915#265])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][96] ([fdo#108145] / [i915#265]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#658]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#658]) +4 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][99] -> [DMESG-WARN][100] ([i915#180]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#533]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@perf_pmu@most-busy-idle-check-all@vecs0:
    - shard-skl:          [PASS][102] -> [DMESG-WARN][103] ([i915#1982])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl8/igt@perf_pmu@most-busy-idle-check-all@vecs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-skl6/igt@perf_pmu@most-busy-idle-check-all@vecs0.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-block:
    - {shard-rkl}:        [SKIP][104] ([i915#4098]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@drm_read@short-buffer-block.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@drm_read@short-buffer-block.html

  * igt@drm_read@short-buffer-wakeup:
    - {shard-rkl}:        [SKIP][106] ([i915#1845] / [i915#4098]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@drm_read@short-buffer-wakeup.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html

  * igt@fbdev@pan:
    - {shard-rkl}:        [SKIP][108] ([i915#2582]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@fbdev@pan.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@fbdev@pan.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111] +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl6/igt@gem_eio@in-flight-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][112] ([i915#2842]) -> [PASS][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-kbl:          [SKIP][114] ([fdo#109271]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][116] ([i915#2849]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - {shard-rkl}:        [SKIP][118] ([i915#3012]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rpm@gem-pread:
    - {shard-rkl}:        [SKIP][120] ([fdo#109308]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@i915_pm_rpm@gem-pread.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@i915_pm_rpm@gem-pread.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][122] ([i915#3921]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-snb6/igt@i915_selftest@live@hangcheck.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        ([SKIP][124], [SKIP][125]) ([i915#1845]) -> [PASS][126] +3 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-b-degamma:
    - {shard-rkl}:        [SKIP][127] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_color@pipe-b-degamma.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_color@pipe-b-degamma.html

  * igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:
    - {shard-rkl}:        ([PASS][129], [SKIP][130]) ([i915#4070]) -> [PASS][131]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-6/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-4/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - {shard-rkl}:        ([SKIP][132], [SKIP][133]) ([fdo#112022] / [i915#4070]) -> [PASS][134]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - {shard-rkl}:        [SKIP][135] ([fdo#112022] / [i915#4070]) -> [PASS][136] +3 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:
    - {shard-rkl}:        [SKIP][137] ([i915#1849] / [i915#4070]) -> [PASS][138] +3 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-legacy:
    - {shard-rkl}:        [SKIP][139] ([fdo#111825] / [i915#4070]) -> [PASS][140] +4 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - {shard-rkl}:        ([SKIP][141], [SKIP][142]) ([fdo#111825] / [i915#4070]) -> [PASS][143]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
    - {shard-rkl}:        [SKIP][144] ([fdo#111314]) -> [PASS][145] +7 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][146] ([i915#2122]) -> [PASS][147] +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - {shard-rkl}:        [SKIP][148] ([i915#1849]) -> [PASS][149] +16 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - {shard-rkl}:        ([SKIP][150], [SKIP][151]) ([i915#1849] / [i915#4098]) -> [PASS][152]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][153] ([i915#180]) -> [PASS][154] +2 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-position-covered@pipe-b-planes:
    - {shard-rkl}:        [SKIP][155] ([i915#3558]) -> [PASS][156] +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_plane@plane-position-covered@pipe-b-planes.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][157] ([fdo#108145] / [i915#265]) -> [PASS][158] +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - {shard-rkl}:        [SKIP][159] ([i915#1845]) -> [PASS][160] +12 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_plane_cursor@pipe-a-primary-size-128.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_plane_cursor@pipe-a-primary-size-128.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
    - {shard-rkl}:        [SKIP][161] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html

  * igt@kms_psr@primary_render:
    - {shard-rkl}:        ([SKIP][163], [SKIP][164]) ([i915#1072]) -> [PASS][165]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_psr@primary_render.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_psr@primary_render.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_psr@primary_render.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][166] ([fdo#109441]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb3/igt@kms_psr@psr2_basic.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@sprite_mmap_cpu:
    - {shard-rkl}:        [SKIP][168] ([i915#1072]) -> [PASS][169] +1 similar issue
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_psr@sprite_mmap_cpu.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - {shard-rkl}:        [SKIP][170] ([i915#1845] / [i915#4070]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][172] ([i915#180] / [i915#29

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/index.html

--===============7389637447701977750==
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
<tr><td><b>Series:</b></td><td>drm/i915: Stop doing writeback from the shri=
nker</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97856/">https://patchwork.freedesktop.org/series/97856/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21821/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21821/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10988_full -&gt; Patchwork_21821_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21821_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21821_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21821_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_async_flips@async-flip-with-page-flip-events:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl8/igt@kms_async_flips@async-flip-with-page-flip-even=
ts.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21821/shard-skl6/igt@kms_async_flips@async-flip-with-page-flip-e=
vents.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21821_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10988/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10988/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10988/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10988/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10988/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10988/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0988/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10988/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10988/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21821/shard-glk2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21821/shard-glk3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21821/shard-glk4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk4/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21821/shard-glk5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21821/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21821/shard-glk7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21821/shard-glk8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21821/shard-glk9/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-glk9/boot.html">PAS=
S</a>) ([i915#4392])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-snb6/igt@gem_ctx_persistence@engines-ho=
stile-preempt.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-tglb7/igt@gem_ctx_sseu@engines.html">SK=
IP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-tg=
lb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl8/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-s=
kl6/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/s=
hard-iclb4/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21821/shard-apl7/igt@gem_lmem_swapping@verify.html">=
SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21821/shard-kbl7/igt@gem_lmem_swapping@verify.html">=
SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
21/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#=
644])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-glk8/igt@gem_softpin@allocator-evict-all-engines.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21821/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</=
a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-kbl7/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]=
) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-apl2/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-apl2/igt@kms_cdclk@mode-transition.html=
">SKIP</a> ([fdo#109271]) +99 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-kbl1/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-snb6/igt@kms_color_chamelium@pipe-a-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-apl2/igt@kms_color_chamelium@pipe-b-ctm=
-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-kbl1/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21821/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21821/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL=
</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21821/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21821/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a>=
 ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21821/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/s=
hard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">INCOMPLETE</a> ([i915#63=
6])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-apl8/igt@kms_flip_tiling@flip-change-ti=
ling@dp-1-pipe-a-y-to-yf-ccs.html">DMESG-WARN</a> ([i915#1226])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-snb6/igt@kms_frontbuffer_tracking@fbcps=
r-rgb101010-draw-blt.html">SKIP</a> ([fdo#109271]) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-kbl7/igt@kms_frontbuffer_tracking@psr-r=
gb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-sk=
l1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-apl8/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-apl7/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-kbl2/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21821/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl8/igt@perf_pmu@most-busy-idle-check-all@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21821/shard-skl6/igt@perf_pmu@most-busy-idle-check-all@vecs0.html">DMESG-=
WARN</a> ([i915#1982])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@drm_read@short-buffer-block.html">SKIP</a> ([=
i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21821/shard-rkl-6/igt@drm_read@short-buffer-block.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-wakeup:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@drm_read@short-buffer-wakeup.html">SKIP</a> (=
[i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21821/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@fbdev@pan.html">SKIP</a> ([i915#2582]) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-r=
kl-6/igt@fbdev@pan.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-kbl6/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a>=
 ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21821/shard-kbl2/igt@gem_eio@in-flight-suspend.html">PASS</a> +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21821/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> (=
[fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21821/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21821/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html">SKI=
P</a> ([i915#3012]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21821/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-pread:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@i915_pm_rpm@gem-pread.html">SKIP</a> ([fdo#10=
9308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21821/shard-rkl-6/igt@i915_pm_rpm@gem-pread.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> ([i915#3921]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21821/shard-snb6/igt@i915_selftest@live@hangcheck.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12=
_rc_ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-4/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_=
rc_ccs.html">SKIP</a>) ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_ccs@pipe-a-bad-rota=
tion-90-y_tiled_gen12_rc_ccs.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@kms_color@pipe-b-degamma.html">SKIP</a> ([i91=
5#1149] / [i915#1849] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_color@pipe-b-degamm=
a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-4/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10=
988/shard-rkl-6/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html">SKIP</a=
>) ([i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21821/shard-rkl-4/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-dpms:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">SKIP=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shar=
d-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">SKIP</a>) ([fdo#112022]=
 / [i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21821/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-random:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.htm=
l">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_cursor_crc@pipe=
-b-cursor-64x64-random.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.=
html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_cursor_edge_w=
alk@pipe-a-128x128-top-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.htm=
l">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_cursor_legacy@c=
ursora-vs-flipa-legacy.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-at=
omic.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10988/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic=
.html">SKIP</a>) ([fdo#111825] / [i915#4070]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_cursor_leg=
acy@flip-vs-cursor-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytil=
ed.html">SKIP</a> ([fdo#111314]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_draw_crc@draw-method-rg=
b565-mmap-cpu-ytiled.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-=
edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21821/shard-skl7/igt@kms_flip@plain-flip-ts-chec=
k-interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
indfb-draw-render.html">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_frontbuff=
er_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">PASS</a> +16 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-=
render.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10988/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-re=
nder.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_frontbu=
ffer_tracking@psr-rgb101010-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-apl8/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-c.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@kms_plane@plane-position-covered@pipe-b-plane=
s.html">SKIP</a> ([i915#3558]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_plane@plane-position-cove=
red@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-skl6/igt@kms_plane_alpha_=
blend@pipe-c-constant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@kms_plane_cursor@pipe-a-primary-size-128.html=
">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_plane_cursor@pipe-a-primary-siz=
e-128.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-none:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.=
html">SKIP</a> ([i915#1849] / [i915#3558] / [i915#4070]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms=
_plane_multiple@atomic-pipe-b-tiling-none.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-1/igt@kms_psr@primary_render.html">SKIP</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt=
@kms_psr@primary_render.html">SKIP</a>) ([i915#1072]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_ps=
r@primary_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-iclb3/igt@kms_psr@psr2_basic.html">SKIP</a> ([fdo#10944=
1]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
21/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_cpu:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@kms_psr@sprite_mmap_cpu.html">SKIP</a> ([i915=
#1072]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21821/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@kms_universal_plane@universal-plane-gen9-feat=
ures-pipe-a.html">SKIP</a> ([i915#1845] / [i915#4070]) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21821/shard-rkl-6/igt@kms_u=
niversal_plane@universal-plane-gen9-features-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          [DMESG-WARN][172] ([i915#180] / [i915#29</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7389637447701977750==--
