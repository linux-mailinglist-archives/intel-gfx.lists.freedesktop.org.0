Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD4E154CF6
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 21:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88FC6FB43;
	Thu,  6 Feb 2020 20:29:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FCBE6FB43;
 Thu,  6 Feb 2020 20:29:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FC06A0134;
 Thu,  6 Feb 2020 20:29:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 06 Feb 2020 20:29:49 -0000
Message-ID: <158102098903.15034.9785970672408915707@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128235241.169694-1-jose.souza@intel.com>
In-Reply-To: <20200128235241.169694-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display/fbc=3A_Make_fences?=
 =?utf-8?q?_a_nice-to-have_for_GEN9+_=28rev3=29?=
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

Series: series starting with [1/2] drm/i915/display/fbc: Make fences a nice-to-have for GEN9+ (rev3)
URL   : https://patchwork.freedesktop.org/series/72698/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7864_full -> Patchwork_16405_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16405_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16405_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16405_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-glk:          [PASS][1] -> [FAIL][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk7/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-glk4/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  
Known issues
------------

  Here are the changes found in Patchwork_16405_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#69])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl10/igt@gem_ctx_isolation@vecs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-skl6/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-hsw:          [PASS][9] -> [INCOMPLETE][10] ([CI#80] / [i915#61])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw7/igt@gem_eio@in-flight-contexts-1us.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-hsw5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@gem_partial_pwrite_pread@write-display:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#694]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw7/igt@gem_partial_pwrite_pread@write-display.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-hsw6/igt@gem_partial_pwrite_pread@write-display.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_wait@busy-vcs1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112080]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb2/igt@gem_wait@busy-vcs1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb5/igt@gem_wait@busy-vcs1.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#95]) +71 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl7/igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-apl7/igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - shard-tglb:         [PASS][23] -> [DMESG-FAIL][24] ([i915#402])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-tglb7/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-tglb6/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
    - shard-iclb:         [PASS][25] -> [DMESG-FAIL][26] ([fdo#107724])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb4/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb2/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html

  * igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-c:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#93] / [i915#95]) +48 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl2/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-c.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-kbl2/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-c.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-kbl:          [PASS][29] -> [DMESG-FAIL][30] ([i915#54] / [i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#177] / [i915#52] / [i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#52] / [i915#54]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#460] / [i915#472])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-tglb3/igt@kms_fbcon_fbt@psr-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#79])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#34])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180] / [i915#93] / [i915#95])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-iclb:         [PASS][45] -> [INCOMPLETE][46] ([i915#123]) +22 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [PASS][47] -> [SKIP][48] ([i915#668])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#472]) +30 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-tglb1/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-tglb3/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#53])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - shard-kbl:          [PASS][53] -> [DMESG-FAIL][54] ([i915#95])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl2/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-kbl3/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
    - shard-apl:          [PASS][55] -> [DMESG-FAIL][56] ([i915#95]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl3/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-apl6/igt@kms_plane_cursor@pipe-a-overlay-size-128.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#899]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-yf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb5/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          [PASS][61] -> [FAIL][62] ([i915#1041]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk2/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-glk6/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_vblank@pipe-b-query-forked-busy-hang:
    - shard-snb:          [PASS][63] -> [INCOMPLETE][64] ([CI#80] / [i915#82])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-snb5/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-snb4/igt@kms_vblank@pipe-b-query-forked-busy-hang.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb8/igt@gem_ctx_isolation@vcs1-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb1/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-hsw:          [FAIL][71] ([i915#694]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl1/igt@gem_workarounds@suspend-resume.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-apl6/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][75] ([i915#454]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl8/igt@i915_pm_dc@dc6-psr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][79] ([i915#79]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][83] ([i915#899]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][85] ([i915#831]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][87] ([fdo#112080]) -> [FAIL][88] ([IGT#28])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][89] ([i915#454]) -> [SKIP][90] ([i915#468])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][91] ([i915#725]) -> [DMESG-FAIL][92] ([i915#553] / [i915#725])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw7/igt@i915_selftest@live_blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-hsw1/igt@i915_selftest@live_blt.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [FAIL][93] ([fdo#110321]) -> [DMESG-FAIL][94] ([fdo#110321] / [i915#95])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl6/igt@kms_content_protection@srm.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-kbl4/igt@kms_content_protection@srm.html
    - shard-apl:          [FAIL][95] ([fdo#110321]) -> [DMESG-FAIL][96] ([fdo#110321] / [i915#95])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl7/igt@kms_content_protection@srm.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/shard-apl1/igt@kms_content_protection@srm.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1041]: https://gitlab.freedesktop.org/drm/intel/issues/1041
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-skl-6260u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7864 -> Patchwork_16405

  CI-20190529: 20190529
  CI_DRM_7864: 5a140e2fc771e4c8b10d14e2db7bfb4996ee9d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5417: 33cc93c8ba5daa0b7498f297a4f626844d895d06 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16405: 3adc6e19d4d5a9ebcbd6f79c44e07e280f93e20b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16405/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
