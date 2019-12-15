Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CF611F8D0
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 17:16:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8996E0FC;
	Sun, 15 Dec 2019 16:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3BEA06E0DC;
 Sun, 15 Dec 2019 16:16:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28230A0091;
 Sun, 15 Dec 2019 16:16:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 15 Dec 2019 16:16:46 -0000
Message-ID: <157642660613.27846.1868111833466670688@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191215135519.2335916-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191215135519.2335916-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Set_vm_again_after_MI=5FSET=5FCONTEXT_=28rev5=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: Set vm again after MI_SET_CONTEXT (rev5)
URL   : https://patchwork.freedesktop.org/series/70839/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7569_full -> Patchwork_15768_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15768_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15768_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15768_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_isolation@rcs0-none:
    - shard-hsw:          [PASS][1] -> [FAIL][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw8/igt@gem_ctx_isolation@rcs0-none.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-hsw4/igt@gem_ctx_isolation@rcs0-none.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen7_exec_parse@basic-allocation}:
    - shard-hsw:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@gen7_exec_parse@basic-allocation.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-hsw6/igt@gen7_exec_parse@basic-allocation.html

  * {igt@gen7_exec_parse@basic-offset}:
    - shard-tglb:         NOTRUN -> [SKIP][5] +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb3/igt@gen7_exec_parse@basic-offset.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * {igt@gen9_exec_parse@bb-chained}:
    - shard-iclb:         NOTRUN -> [SKIP][8] +6 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb4/igt@gen9_exec_parse@bb-chained.html

  
Known issues
------------

  Here are the changes found in Patchwork_15768_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [fdo#112080])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_exec_async@concurrent-writes-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd2.html

  * igt@gem_exec_await@wide-all:
    - shard-hsw:          [PASS][13] -> [SKIP][14] ([fdo#109271]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw8/igt@gem_exec_await@wide-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-hsw4/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#435])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb8/igt@gem_exec_nop@basic-series.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb6/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb7/igt@gem_sync@basic-store-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][25] -> [FAIL][26] ([i915#818])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb6/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#747])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-skl4/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#456] / [i915#460])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb7/igt@i915_suspend@debugfs-reader.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#435] / [i915#456] / [i915#460])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@kms_fbcon_fbt@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#474] / [i915#667])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-hsw6/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][43] -> [FAIL][44] ([i915#31])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl1/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-kbl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +6 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@oa-exponents:
    - shard-hsw:          [PASS][47] -> [FAIL][48] ([i915#84])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@perf@oa-exponents.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-hsw6/igt@perf@oa-exponents.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl6/igt@gem_ctx_isolation@vcs0-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-apl4/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [fdo#112080]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_ctx_isolation@vcs1-reset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb1/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][53] ([fdo#110854]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_capture@capture-bsd2:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_exec_capture@capture-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb4/igt@gem_exec_capture@capture-bsd2.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][57] ([i915#435]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@gem_exec_create@madvise.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb1/igt@gem_exec_create@madvise.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][61] ([i915#463]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@gem_exec_schedule@smoketest-all.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-iclb:         [INCOMPLETE][63] ([i915#140]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_workarounds@suspend-resume-fd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-skl:          [FAIL][65] ([i915#54]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-hsw:          [DMESG-WARN][67] ([IGT#6]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-hsw1/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [INCOMPLETE][69] ([i915#435] / [i915#667]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [INCOMPLETE][71] ([i915#435] / [i915#474] / [i915#667]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][73] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl2/igt@kms_plane@pixel-format-pipe-b-planes.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_vblank@pipe-a-wait-busy-hang:
    - shard-kbl:          [INCOMPLETE][77] ([fdo#103665]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl7/igt@kms_vblank@pipe-a-wait-busy-hang.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-kbl1/igt@kms_vblank@pipe-a-wait-busy-hang.html

  * igt@perf@disabled-read-error:
    - shard-hsw:          [INCOMPLETE][79] ([i915#61]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw8/igt@perf@disabled-read-error.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-hsw4/igt@perf@disabled-read-error.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@perf_pmu@busy-check-all-vcs1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][83] ([fdo#112080]) -> [SKIP][84] ([fdo#111912] / [fdo#112080])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb7/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][85] ([fdo#112016] / [fdo#112021]) -> [SKIP][86] ([fdo#112021])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb1/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7569 -> Patchwork_15768

  CI-20190529: 20190529
  CI_DRM_7569: 62c2abc0df8983aba79ba093413683c44e9c4748 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15768: 46e9e44a1db4c1ba0921bf9ed158c16d69938c78 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15768/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
