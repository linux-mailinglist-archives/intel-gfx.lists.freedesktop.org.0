Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3788A1681A6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 16:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3806F484;
	Fri, 21 Feb 2020 15:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C1246F482;
 Fri, 21 Feb 2020 15:31:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 15545A00E8;
 Fri, 21 Feb 2020 15:31:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Fri, 21 Feb 2020 15:31:21 -0000
Message-ID: <158229908108.7918.318736325767934214@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219141435.23651-1-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20200219141435.23651-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/userptr=3A_Activate_MMU_notifier_only_after_pages_are_set?=
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

Series: drm/i915/userptr: Activate MMU notifier only after pages are set
URL   : https://patchwork.freedesktop.org/series/73652/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7966_full -> Patchwork_16625_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7966_full and Patchwork_16625_full:

### New IGT tests (2) ###

  * igt@gem_eio@context-create:
    - Statuses : 8 pass(s)
    - Exec time: [0.02, 0.15] s

  * igt@kms_mmap_write_crc@main:
    - Statuses : 8 pass(s)
    - Exec time: [3.81, 21.83] s

  

Known issues
------------

  Here are the changes found in Patchwork_16625_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#1277])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb6/igt@gem_exec_balancer@hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-tglb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#694]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rpm@universal-planes-dpms:
    - shard-tglb:         [PASS][13] -> [TIMEOUT][14] ([fdo#112126] / [fdo#112271]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb1/igt@i915_pm_rpm@universal-planes-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-tglb5/igt@i915_pm_rpm@universal-planes-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#413])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-skl:          [PASS][17] -> [DMESG-FAIL][18] ([fdo#112406])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl5/igt@i915_selftest@live_gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-skl8/igt@i915_selftest@live_gt_heartbeat.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-hsw:          [PASS][21] -> [FAIL][22] ([i915#969])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw1/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-hsw2/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_color@pipe-a-degamma:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#71])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl5/igt@kms_color@pipe-a-degamma.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-skl9/igt@kms_color@pipe-a-degamma.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#72]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl8/igt@kms_flip@flip-vs-expired-vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-apl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#79])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-panning-vs-hang-interruptible:
    - shard-tglb:         [PASS][31] -> [TIMEOUT][32] ([fdo#112271] / [i915#561]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb6/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-tglb6/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-tglb:         [PASS][33] -> [SKIP][34] ([i915#668]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276]) +18 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][43] ([fdo#110854]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +12 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@implicit-read-write-bsd1}:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [i915#677]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd}:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +14 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb3/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * {igt@gem_exec_whisper@basic-contexts-forked}:
    - shard-apl:          [INCOMPLETE][55] ([fdo#103927]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl3/igt@gem_exec_whisper@basic-contexts-forked.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-apl7/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-hsw:          [FAIL][57] ([i915#694]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw6/igt@gen7_exec_parse@basic-allocation.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-hsw1/igt@gen7_exec_parse@basic-allocation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][59] ([i915#454]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a:
    - shard-snb:          [SKIP][61] ([fdo#109271]) -> [PASS][62] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb6/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-snb2/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - shard-apl:          [FAIL][63] ([i915#54]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][65] ([i915#300]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +6 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [SKIP][71] ([i915#668]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-skl:          [FAIL][73] ([i915#1188]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][75] ([fdo#108145] / [i915#265]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78] +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][79] ([i915#831]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [FAIL][82] ([IGT#28]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][83] ([i915#694]) -> [FAIL][84] ([i915#818])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw2/igt@gem_tiled_blits@normal.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][85] ([i915#468]) -> [FAIL][86] ([i915#454])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [INCOMPLETE][87] ([i915#82]) -> [SKIP][88] ([fdo#109271])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb6/igt@i915_pm_rpm@gem-idle.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/shard-snb2/igt@i915_pm_rpm@gem-idle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#561]: https://gitlab.freedesktop.org/drm/intel/issues/561
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#969]: https://gitlab.freedesktop.org/drm/intel/issues/969


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7966 -> Patchwork_16625

  CI-20190529: 20190529
  CI_DRM_7966: 014bfb094e0b4e80d7510dc5d6f45e5e73bbb419 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5451: 1c42f971d37a066da3e588783611ab08d5afbded @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16625: 2944b0b1ec9bd79379661df1fcab798caa03bcaf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16625/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
