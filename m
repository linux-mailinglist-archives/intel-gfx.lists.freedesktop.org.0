Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 602F011FD0B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 04:00:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0830D6E423;
	Mon, 16 Dec 2019 03:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1008D6E267;
 Mon, 16 Dec 2019 03:00:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB491A0BC6;
 Mon, 16 Dec 2019 03:00:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 16 Dec 2019 03:00:27 -0000
Message-ID: <157646522787.5611.2882588040289181343@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216002501.2406334-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191216002501.2406334-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Set_vm_again_after_MI=5FSET=5FCONTEXT_=28rev14=29?=
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

Series: drm/i915/gt: Set vm again after MI_SET_CONTEXT (rev14)
URL   : https://patchwork.freedesktop.org/series/70839/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7569_full -> Patchwork_15781_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15781_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15781_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15781_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_linear_blits@interruptible:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl2/igt@gem_linear_blits@interruptible.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-kbl3/igt@gem_linear_blits@interruptible.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen7_exec_parse@basic-allocation}:
    - shard-hsw:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@gen7_exec_parse@basic-allocation.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-hsw6/igt@gen7_exec_parse@basic-allocation.html

  
Known issues
------------

  Here are the changes found in Patchwork_15781_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111735])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl1/igt@gem_eio@in-flight-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-skl5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_async@concurrent-writes-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-iclb8/igt@gem_exec_async@concurrent-writes-bsd2.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#435])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb8/igt@gem_exec_nop@basic-series.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb4/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#470])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@gem_exec_parallel@fds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb6/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [PASS][21] -> [TIMEOUT][22] ([fdo#112126] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb8/igt@gem_persistent_relocs@forked-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb5/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#644])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][27] -> [FAIL][28] ([i915#818])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-iclb8/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#747])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-skl4/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#109])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#54]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#435] / [i915#667])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#435] / [i915#456] / [i915#460])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@kms_fbcon_fbt@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [PASS][45] -> [INCOMPLETE][46] ([i915#474] / [i915#667]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-glk:          [PASS][49] -> ([INCOMPLETE][50], [PASS][51]) ([i915#58] / [k.org#198133])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-glk6/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-glk9/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-glk7/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][52] -> [FAIL][53] ([i915#31])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@kms_setmode@basic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-hsw8/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][54] -> [FAIL][55] ([i915#31])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl1/igt@kms_setmode@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-kbl7/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][56] ([i915#180]) -> [PASS][57] +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-apl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl6/igt@gem_ctx_isolation@vcs0-s3.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-apl7/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][60] ([fdo#109276] / [fdo#112080]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][62] ([fdo#110854]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][64] ([fdo#111593]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@gem_exec_gttfill@basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb7/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [INCOMPLETE][66] ([i915#435]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@gem_exec_nop@basic-parallel.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb1/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][68] ([fdo#109276]) -> [PASS][69] +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][70] ([fdo#112146]) -> [PASS][71] +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][72] ([i915#818]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@gem_tiled_blits@normal.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-hsw8/igt@gem_tiled_blits@normal.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-iclb:         [INCOMPLETE][74] ([i915#140]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_workarounds@suspend-resume-fd.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-iclb8/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-skl:          [FAIL][76] ([i915#54]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][78] ([i915#456] / [i915#460]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-hsw:          [DMESG-WARN][80] ([IGT#6]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-hsw5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [INCOMPLETE][82] ([i915#435] / [i915#667]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][84] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][86] ([fdo#108145]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_vblank@pipe-a-wait-busy-hang:
    - shard-kbl:          [INCOMPLETE][88] ([fdo#103665]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl7/igt@kms_vblank@pipe-a-wait-busy-hang.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-kbl1/igt@kms_vblank@pipe-a-wait-busy-hang.html

  * igt@perf@disabled-read-error:
    - shard-hsw:          [INCOMPLETE][90] ([i915#61]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw8/igt@perf@disabled-read-error.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-hsw6/igt@perf@disabled-read-error.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][92] ([fdo#112080]) -> [PASS][93] +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][94] ([fdo#112080]) -> [SKIP][95] ([fdo#111912] / [fdo#112080])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb6/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][96] ([fdo#112021]) -> [SKIP][97] ([fdo#112016] / [fdo#112021])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-tglb6/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][98] ([i915#648] / [i915#667]) -> [INCOMPLETE][99] ([i915#648])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7569 -> Patchwork_15781

  CI-20190529: 20190529
  CI_DRM_7569: 62c2abc0df8983aba79ba093413683c44e9c4748 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15781: f243dd7bf717b7edef90710ff072f856f72e5c3a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15781/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
