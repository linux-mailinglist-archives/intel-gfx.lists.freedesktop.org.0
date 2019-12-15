Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA8F11FB6D
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 22:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737F26E158;
	Sun, 15 Dec 2019 21:13:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 044B86E151;
 Sun, 15 Dec 2019 21:13:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED5F0A47DB;
 Sun, 15 Dec 2019 21:13:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 15 Dec 2019 21:13:34 -0000
Message-ID: <157644441496.27848.10686098025291044269@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191215170131.2370099-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191215170131.2370099-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Set_vm_again_after_MI=5FSET=5FCONTEXT_=28rev11=29?=
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

Series: drm/i915/gt: Set vm again after MI_SET_CONTEXT (rev11)
URL   : https://patchwork.freedesktop.org/series/70839/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7569_full -> Patchwork_15775_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15775_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15775_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15775_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_partial_pwrite_pread@write-display:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl8/igt@gem_partial_pwrite_pread@write-display.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl8/igt@gem_partial_pwrite_pread@write-display.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen7_exec_parse@basic-allocation}:
    - shard-hsw:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@gen7_exec_parse@basic-allocation.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-hsw5/igt@gen7_exec_parse@basic-allocation.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@!opengl 3.0@attribs (NEW):
    - pig-hsw-4770r:      NOTRUN -> [FAIL][7] +2 similar issues
   [7]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_7569_full and Patchwork_15775_full:

### New Piglit tests (3) ###

  * spec@!opengl 1.1@depthstencil-default_fb-copypixels samples=6:
    - Statuses : 1 fail(s)
    - Exec time: [5.30] s

  * spec@!opengl 3.0@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  * spec@arb_es2_compatibility@fbo-alphatest-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  

Known issues
------------

  Here are the changes found in Patchwork_15775_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [fdo#112080])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111735])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_async@concurrent-writes-bsd2:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd2.html

  * igt@gem_exec_params@dr4-dirt:
    - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#109])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl10/igt@gem_exec_params@dr4-dirt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl8/igt@gem_exec_params@dr4-dirt.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([fdo#111677])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb5/igt@gem_exec_schedule@preempt-queue-blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-tglb6/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][20] -> [FAIL][21] ([i915#818])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#112080]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-iclb6/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_pm_rpm@cursor:
    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#88])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl9/igt@i915_pm_rpm@cursor.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl4/igt@i915_pm_rpm@cursor.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#747])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl10/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#435] / [i915#456] / [i915#460])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@kms_fbcon_fbt@fbc-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-tglb8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#79])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#221])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#474] / [i915#667])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][40] -> [FAIL][41] ([i915#49]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#49])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][44] -> [INCOMPLETE][45] ([fdo#103665] / [i915#648] / [i915#667])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([fdo#108145])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][48] -> [FAIL][49] ([i915#31])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@kms_setmode@basic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-hsw8/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][50] -> [FAIL][51] ([i915#31])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl1/igt@kms_setmode@basic.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-kbl4/igt@kms_setmode@basic.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][52] -> [INCOMPLETE][53] ([i915#61])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw4/igt@prime_mmap_coherency@ioctl-errors.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][54] ([i915#180]) -> [PASS][55] +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-apl:          [DMESG-WARN][56] ([i915#180]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl6/igt@gem_ctx_isolation@vcs0-s3.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-apl3/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][58] ([fdo#109276] / [fdo#112080]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_ctx_isolation@vcs1-reset.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-iclb4/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][60] ([fdo#110854]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][62] ([i915#435]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@gem_exec_create@madvise.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-tglb8/igt@gem_exec_create@madvise.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][64] ([fdo#109276]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_params@invalid-bsd-ring.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][66] ([fdo#112146]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][68] ([i915#463]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@gem_exec_schedule@smoketest-all.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-tglb1/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-iclb:         [INCOMPLETE][70] ([i915#140]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_workarounds@suspend-resume-fd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-iclb8/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-skl:          [FAIL][72] ([i915#54]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-hsw:          [DMESG-WARN][74] ([IGT#6]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-hsw1/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [INCOMPLETE][76] ([i915#435] / [i915#667]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-tglb:         [INCOMPLETE][78] ([i915#460] / [i915#516]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb8/igt@kms_flip@flip-vs-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-tglb9/igt@kms_flip@flip-vs-suspend.html
    - shard-hsw:          [INCOMPLETE][80] ([i915#61]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@kms_flip@flip-vs-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-hsw8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglb:         [INCOMPLETE][82] ([i915#456] / [i915#460] / [i915#516]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][84] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][86] ([fdo#108145]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][88] ([fdo#108145] / [i915#265]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_vblank@pipe-a-wait-busy-hang:
    - shard-kbl:          [INCOMPLETE][90] ([fdo#103665]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl7/igt@kms_vblank@pipe-a-wait-busy-hang.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-kbl7/igt@kms_vblank@pipe-a-wait-busy-hang.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][92] ([fdo#112080]) -> [PASS][93] +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][94] ([fdo#112080]) -> [SKIP][95] ([fdo#111912] / [fdo#112080])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-tglb1/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][96] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][97] ([fdo#112347] / [i915#648] / [i915#667])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7569 -> Patchwork_15775

  CI-20190529: 20190529
  CI_DRM_7569: 62c2abc0df8983aba79ba093413683c44e9c4748 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15775: 323efc4d6854841261897beec4286fe30bd2988d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15775/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
