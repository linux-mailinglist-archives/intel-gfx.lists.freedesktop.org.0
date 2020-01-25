Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA327149709
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 18:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D056E8C1;
	Sat, 25 Jan 2020 17:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ADB066E8C0;
 Sat, 25 Jan 2020 17:54:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A529BA011A;
 Sat, 25 Jan 2020 17:54:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 25 Jan 2020 17:54:33 -0000
Message-ID: <157997487365.29035.8284064347782268431@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123151406.51679-1-colin.king@canonical.com>
In-Reply-To: <20200123151406.51679-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_fix_null_pointer_dereference_on_vm_=28rev2=29?=
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

Series: drm/i915/gem: fix null pointer dereference on vm (rev2)
URL   : https://patchwork.freedesktop.org/series/72482/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7805_full -> Patchwork_16241_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16241_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-apl8/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb7/igt@gem_exec_schedule@preempt-other-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb4/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_mmap_gtt@close-race:
    - shard-hsw:          [PASS][9] -> [DMESG-WARN][10] ([i915#44]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-hsw5/igt@gem_mmap_gtt@close-race.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-hsw5/igt@gem_mmap_gtt@close-race.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([fdo#103927])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-apl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-apl8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14] ([i915#58] / [k.org#198133])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-glk8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-glk3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-kbl:          [PASS][15] -> [INCOMPLETE][16] ([fdo#103665])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-kbl6/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-kbl1/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-snb:          [PASS][19] -> [DMESG-WARN][20] ([i915#42])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-snb1/igt@gem_softpin@noreloc-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-snb2/igt@gem_softpin@noreloc-s3.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#69])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-skl1/igt@i915_suspend@forcewake.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-skl5/igt@i915_suspend@forcewake.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible:
    - shard-hsw:          [PASS][23] -> [DMESG-FAIL][24] ([i915#44])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-hsw5/igt@kms_flip@dpms-vs-vblank-race-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-hsw5/igt@kms_flip@dpms-vs-vblank-race-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#49]) +10 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb6/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@multi-client-vcs1:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#112080]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb4/igt@perf_pmu@multi-client-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb6/igt@perf_pmu@multi-client-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +8 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [fdo#112080]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb5/igt@gem_ctx_isolation@vcs1-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb2/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_exec_parallel@bcs0-fds:
    - shard-hsw:          [INCOMPLETE][41] ([i915#61]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-hsw2/igt@gem_exec_parallel@bcs0-fds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-hsw2/igt@gem_exec_parallel@bcs0-fds.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +7 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +6 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [INCOMPLETE][47] ([i915#970]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-skl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-skl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-glk:          [INCOMPLETE][49] ([i915#58] / [i915#970] / [k.org#198133]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-glk1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [INCOMPLETE][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-skl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-skl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-hsw:          [INCOMPLETE][53] ([i915#530] / [i915#61]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][55] ([fdo#103665]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-kbl4/igt@gem_persistent_relocs@forked-thrashing.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][57] ([i915#454]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][63] ([i915#96]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          [FAIL][65] ([i915#52] / [i915#54]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [FAIL][69] ([i915#49]) -> [PASS][70] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +7 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][73] ([fdo#108145]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][77] ([i915#61]) -> [INCOMPLETE][78] ([i915#530] / [i915#61])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-hsw8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [INCOMPLETE][79] ([fdo#103927] / [i915#530]) -> [INCOMPLETE][80] ([fdo#103927])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][81] ([i915#818]) -> [FAIL][82] ([i915#694])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/shard-hsw8/igt@gem_tiled_blits@interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [i915#970]: https://gitlab.freedesktop.org/drm/intel/issues/970
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7805 -> Patchwork_16241

  CI-20190529: 20190529
  CI_DRM_7805: 447386749394e3b5cf296bfada83ed429fa5f1fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16241: 27553c3b3728650cd16bbb092bdd7112239358c0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
