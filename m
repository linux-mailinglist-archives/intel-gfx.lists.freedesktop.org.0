Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5726142B7A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 14:06:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101276E948;
	Mon, 20 Jan 2020 13:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA0CB6E946;
 Mon, 20 Jan 2020 13:06:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A11D7A0019;
 Mon, 20 Jan 2020 13:06:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 13:06:00 -0000
Message-ID: <157952556062.681.10184650797213945806@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117102145.2948244-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117102145.2948244-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Include_the_debugfs_params_header_for_its_own_definiti?=
 =?utf-8?q?on?=
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

Series: drm/i915: Include the debugfs params header for its own definition
URL   : https://patchwork.freedesktop.org/series/72181/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7760_full -> Patchwork_16148_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16148_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][5] -> [FAIL][6] ([i915#490])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-snb1/igt@gem_eio@in-flight-contexts-1us.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [PASS][7] -> [INCOMPLETE][8] ([i915#140])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb5/igt@gem_exec_balancer@hang.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb4/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#109])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl4/igt@gem_exec_reloc@basic-cpu-gtt-active.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl5/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +22 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-hsw:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-hsw2/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-hsw5/igt@gem_persistent_relocs@forked-thrash-inactive.html
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl8/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl8/igt@gem_persistent_relocs@forked-thrash-inactive.html
    - shard-kbl:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-kbl7/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-kbl6/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#716])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl4/igt@gen9_exec_parse@allowed-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl5/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#52] / [i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#34])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#49])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [fdo#112080]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@pi-ringfull-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb2/igt@gem_exec_schedule@pi-ringfull-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb5/igt@gem_exec_schedule@pi-ringfull-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [INCOMPLETE][53] ([fdo#103665] / [i915#530]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-snb:          [FAIL][55] ([i915#520]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-snb4/igt@gem_persistent_relocs@forked-thrashing.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-snb5/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-hsw:          [FAIL][59] ([i915#817]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-hsw5/igt@gem_tiled_partial_pwrite_pread@writes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-hsw2/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - shard-iclb:         [INCOMPLETE][61] ([fdo#109960] / [i915#140] / [i915#189]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb4/igt@i915_pm_rpm@legacy-planes-dpms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb8/igt@i915_pm_rpm@legacy-planes-dpms.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [DMESG-WARN][63] ([i915#118] / [i915#95]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-glk4/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [DMESG-WARN][65] ([i915#109]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl7/igt@kms_color@pipe-a-ctm-0-25.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl6/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][67] ([i915#300]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][69] ([IGT#5]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][71] ([i915#221]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][75] ([i915#34]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-skl4/igt@kms_flip@plain-flip-fb-recreate.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-skl9/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_plane_lowres@pipe-b-tiling-none:
    - shard-snb:          [SKIP][77] ([fdo#109271]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-snb1/igt@kms_plane_lowres@pipe-b-tiling-none.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-snb6/igt@kms_plane_lowres@pipe-b-tiling-none.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80] +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][81] ([i915#31]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-apl8/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][83] ([fdo#112080]) -> [PASS][84] +14 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb5/igt@perf_pmu@busy-vcs1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][85] ([fdo#109276]) -> [PASS][86] +17 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][87] ([fdo#109276] / [fdo#112080]) -> [FAIL][88] ([IGT#28])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][89] ([i915#444]) -> [INCOMPLETE][90] ([i915#82])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/shard-snb2/igt@gem_eio@kms.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/shard-snb4/igt@gem_eio@kms.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109960]: https://bugs.freedesktop.org/show_bug.cgi?id=109960
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#817]: https://gitlab.freedesktop.org/drm/intel/issues/817
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7760 -> Patchwork_16148

  CI-20190529: 20190529
  CI_DRM_7760: 4e091847574c5397364f14c7e24dea488f4be2d1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16148: 89ac0a925cfe7f9a3b593c3411ca6bd4efd1897d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16148/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
