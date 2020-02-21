Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD64168724
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 19:59:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AECD06E47E;
	Fri, 21 Feb 2020 18:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1FBB06E47E;
 Fri, 21 Feb 2020 18:59:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1768BA47E9;
 Fri, 21 Feb 2020 18:59:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Date: Fri, 21 Feb 2020 18:59:50 -0000
Message-ID: <158231159009.7918.12441121229860623978@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219211551.20125-1-bob.j.paauwe@intel.com>
In-Reply-To: <20200219211551.20125-1-bob.j.paauwe@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?ing_YUV444_packed_format_support_for_skl+_=28rev3=29?=
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

Series: Adding YUV444 packed format support for skl+ (rev3)
URL   : https://patchwork.freedesktop.org/series/73020/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7966_full -> Patchwork_16632_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16632_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16632_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16632_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@kms_fbcon_fbt@psr-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb1/igt@kms_fbcon_fbt@psr-suspend.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7966_full and Patchwork_16632_full:

### New IGT tests (4) ###

  * igt@gem_eio@context-create:
    - Statuses : 6 pass(s)
    - Exec time: [0.02, 0.14] s

  * igt@i915_pm_rpm@gem-mmap-cpu:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 11.91] s

  * igt@i915_pm_rpm@gem-mmap-gtt:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 23.56] s

  * igt@kms_mmap_write_crc@main:
    - Statuses : 6 pass(s)
    - Exec time: [4.18, 20.85] s

  

Known issues
------------

  Here are the changes found in Patchwork_16632_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@clone:
    - shard-kbl:          [PASS][5] -> [SKIP][6] ([fdo#109271] / [i915#1099]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl1/igt@gem_ctx_persistence@clone.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-kbl2/igt@gem_ctx_persistence@clone.html

  * igt@gem_ctx_persistence@file:
    - shard-skl:          [PASS][7] -> [SKIP][8] ([fdo#109271] / [i915#1099]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl8/igt@gem_ctx_persistence@file.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-skl7/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@process:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112179] / [i915#1099]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb1/igt@gem_ctx_persistence@process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb2/igt@gem_ctx_persistence@process.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][11] -> [SKIP][12] ([fdo#109271] / [i915#1099]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl4/igt@gem_ctx_persistence@processes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-apl6/igt@gem_ctx_persistence@processes.html
    - shard-glk:          [PASS][13] -> [SKIP][14] ([fdo#109271] / [i915#1099]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk1/igt@gem_ctx_persistence@processes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-glk7/igt@gem_ctx_persistence@processes.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][15] -> [DMESG-WARN][16] ([i915#444])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb4/igt@gem_eio@kms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +14 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([i915#677])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146]) +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#644])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-snb:          [PASS][27] -> [DMESG-WARN][28] ([fdo#111870] / [i915#478])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb4/igt@gem_userptr_blits@dmabuf-sync.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-snb5/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([fdo#111870] / [i915#211] / [i915#836])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-apl4/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#413])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl8/igt@i915_suspend@fence-restore-untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-apl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl6/igt@i915_suspend@forcewake.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-kbl2/igt@i915_suspend@forcewake.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-glk:          [PASS][39] -> [SKIP][40] ([fdo#109271]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk5/igt@kms_fbcon_fbt@fbc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-glk4/igt@kms_fbcon_fbt@fbc.html
    - shard-kbl:          [PASS][41] -> [SKIP][42] ([fdo#109271]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl1/igt@kms_fbcon_fbt@fbc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-kbl4/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-snb:          [PASS][43] -> [SKIP][44] ([fdo#109271]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb6/igt@kms_fbcon_fbt@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-apl:          [PASS][45] -> [SKIP][46] ([fdo#109271]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#64]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl7/igt@kms_fbcon_fbt@psr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-skl2/igt@kms_fbcon_fbt@psr.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-iclb:         [PASS][49] -> [FAIL][50] ([i915#160]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#899]) +10 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk4/igt@kms_plane_lowres@pipe-b-tiling-x.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-glk2/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#899]) +11 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb5/igt@kms_plane_lowres@pipe-c-tiling-none.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb7/igt@kms_plane_lowres@pipe-c-tiling-none.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][55] -> [FAIL][56] ([i915#173])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@kms_psr@no_drrs.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109441]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_busy@basic-hang-rcs0:
    - shard-kbl:          [SKIP][59] ([fdo#109271]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl4/igt@gem_busy@basic-hang-rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-kbl1/igt@gem_busy@basic-hang-rcs0.html
    - shard-apl:          [SKIP][61] ([fdo#109271]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl6/igt@gem_busy@basic-hang-rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-apl7/igt@gem_busy@basic-hang-rcs0.html
    - shard-glk:          [SKIP][63] ([fdo#109271]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk7/igt@gem_busy@basic-hang-rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-glk6/igt@gem_busy@basic-hang-rcs0.html
    - shard-skl:          [SKIP][65] ([fdo#109271]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl1/igt@gem_busy@basic-hang-rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-skl3/igt@gem_busy@basic-hang-rcs0.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][67] ([fdo#110854]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][71] ([i915#644]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][73] ([i915#454]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a:
    - shard-snb:          [SKIP][75] ([fdo#109271]) -> [PASS][76] +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb6/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-snb2/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - shard-apl:          [FAIL][77] ([i915#54]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][79] ([i915#300]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-glk:          [FAIL][83] ([i915#49]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +5 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-skl:          [FAIL][87] ([i915#49]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-snb:          [DMESG-WARN][89] ([i915#478]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb4/igt@kms_plane@pixel-format-pipe-b-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-snb5/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][91] ([fdo#108145] / [i915#265]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][95] ([i915#31]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk9/igt@kms_setmode@basic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-glk8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][97] ([fdo#112080]) -> [PASS][98] +7 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb3/igt@perf_pmu@busy-check-all-vcs1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][99] ([fdo#109276]) -> [PASS][100] +15 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][101] ([fdo#112080]) -> [FAIL][102] ([IGT#28])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-dirty-switch:
    - shard-iclb:         [SKIP][103] ([fdo#112080]) -> [SKIP][104] ([fdo#109276] / [fdo#112080]) +11 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@gem_ctx_isolation@vcs2-dirty-switch.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-iclb3/igt@gem_ctx_isolation@vcs2-dirty-switch.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [FAIL][105] ([i915#454]) -> [INCOMPLETE][106] ([i915#198])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl8/igt@i915_pm_dc@dc6-dpms.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-skl2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [INCOMPLETE][107] ([i915#82]) -> [SKIP][108] ([fdo#109271])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb6/igt@i915_pm_rpm@gem-idle.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/shard-snb2/igt@i915_pm_rpm@gem-idle.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112179]: https://bugs.freedesktop.org/show_bug.cgi?id=112179
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5451 -> IGTPW_4011
  * Linux: CI_DRM_7966 -> Patchwork_16632

  CI-20190529: 20190529
  CI_DRM_7966: 014bfb094e0b4e80d7510dc5d6f45e5e73bbb419 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4011: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4011/index.html
  IGT_5451: 1c42f971d37a066da3e588783611ab08d5afbded @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16632: 6e576dd5ff3664855ce63be067856c64fd993146 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16632/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
