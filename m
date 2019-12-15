Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FE111F5BA
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 05:29:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566526E214;
	Sun, 15 Dec 2019 04:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D4076E07B;
 Sun, 15 Dec 2019 04:29:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32390A0BA8;
 Sun, 15 Dec 2019 04:29:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 15 Dec 2019 04:29:43 -0000
Message-ID: <157638418317.27847.4798658567910765321@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191214153300.2163903-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191214153300.2163903-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Hold_reference_to_intel=5Ffrontbuffer_as_we_track_acti?=
 =?utf-8?q?vity_=28rev2=29?=
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

Series: drm/i915: Hold reference to intel_frontbuffer as we track activity (rev2)
URL   : https://patchwork.freedesktop.org/series/70930/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7567_full -> Patchwork_15761_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15761_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15761_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15761_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl3/igt@kms_big_fb@linear-16bpp-rotate-180.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl5/igt@kms_big_fb@linear-16bpp-rotate-180.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * {igt@gen9_exec_parse@bb-chained}:
    - shard-iclb:         NOTRUN -> [SKIP][5] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb8/igt@gen9_exec_parse@bb-chained.html

  * {igt@gen9_exec_parse@bb-start-cmd}:
    - shard-tglb:         NOTRUN -> [SKIP][6] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb1/igt@gen9_exec_parse@bb-start-cmd.html

  
Known issues
------------

  Here are the changes found in Patchwork_15761_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111735])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][11] -> [FAIL][12] ([i915#232])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-snb6/igt@gem_eio@reset-stress.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-snb1/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#469])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb9/igt@gem_eio@unwedge-stress.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#463])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb1/igt@gem_exec_schedule@smoketest-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_mmap_gtt@medium-copy:
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([fdo#103665])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-kbl2/igt@gem_mmap_gtt@medium-copy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-kbl1/igt@gem_mmap_gtt@medium-copy.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl10/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#644])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#456])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb9/igt@gem_softpin@noreloc-s3.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb5/igt@gem_softpin@noreloc-s3.html
    - shard-snb:          [PASS][33] -> [DMESG-WARN][34] ([i915#42])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-snb5/igt@gem_softpin@noreloc-s3.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-snb4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#472] / [i915#707])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb5/igt@gem_sync@basic-each.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb7/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [PASS][37] -> [DMESG-WARN][38] ([fdo#111870]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-snb1/igt@gem_userptr_blits@sync-unmap-after-close.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-snb4/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_selftest@live_gtt:
    - shard-glk:          [PASS][39] -> [TIMEOUT][40] ([i915#690])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-glk8/igt@i915_selftest@live_gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-glk6/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][41] -> [DMESG-WARN][42] ([i915#747])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl5/igt@i915_selftest@mock_sanitycheck.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl2/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-hsw:          [PASS][45] -> [DMESG-WARN][46] ([IGT#6])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-hsw8/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#54])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#456] / [i915#460] / [i915#516])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][51] -> [INCOMPLETE][52] ([i915#456] / [i915#460]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb9/igt@kms_frontbuffer_tracking@psr-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][55] -> [FAIL][56] ([i915#31])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-apl1/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#69])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-apl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@short-reads:
    - shard-kbl:          [PASS][61] -> [TIMEOUT][62] ([i915#51])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-kbl3/igt@perf@short-reads.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-kbl7/igt@perf@short-reads.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109276]) +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][65] ([fdo#109276] / [fdo#112080]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [FAIL][67] ([i915#679]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl4/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl7/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [INCOMPLETE][69] ([i915#435]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb3/igt@gem_exec_nop@basic-parallel.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb1/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl6/igt@gem_exec_reloc@basic-wc-active.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl5/igt@gem_exec_reloc@basic-wc-active.html

  * {igt@gem_exec_schedule@pi-userfault-bsd2}:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +11 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][75] ([fdo#112146]) -> [PASS][76] +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-tglb:         [TIMEOUT][77] ([i915#530]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb9/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [DMESG-WARN][79] ([fdo#111870]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-snb4/igt@gem_userptr_blits@sync-unmap-cycles.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-snb6/igt@gem_userptr_blits@sync-unmap-cycles.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][81] -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-apl4/igt@gen9_exec_parse@allowed-single.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-apl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][83] ([i915#454]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_gtt:
    - shard-tglb:         [INCOMPLETE][85] ([i915#457]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb1/igt@i915_selftest@live_gtt.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb4/igt@i915_selftest@live_gtt.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [FAIL][87] ([i915#54]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][89] ([i915#79]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [FAIL][91] ([i915#49]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-skl:          [FAIL][93] ([i915#49]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +5 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [INCOMPLETE][97] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][99] ([fdo#108145] / [i915#265]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [FAIL][101] ([fdo#111842] / [i915#608]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb6/igt@kms_psr2_su@frontbuffer.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][103] ([fdo#109642] / [fdo#111068]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb3/igt@kms_psr2_su@page_flip.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
    - shard-skl:          [INCOMPLETE][107] ([i915#69]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-skl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@disabled-read-error:
    - shard-hsw:          [INCOMPLETE][109] ([i915#61]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-hsw8/igt@perf@disabled-read-error.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-hsw6/igt@perf@disabled-read-error.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][111] ([fdo#112080]) -> [PASS][112] +6 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][113] ([fdo#111912] / [fdo#112080]) -> [SKIP][114] ([fdo#112080])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-tglb3/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][115] ([fdo#109349]) -> [DMESG-WARN][116] ([fdo#107724])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7567/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#457]: https://gitlab.freedesktop.org/drm/intel/issues/457
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#690]: https://gitlab.freedesktop.org/drm/intel/issues/690
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7567 -> Patchwork_15761

  CI-20190529: 20190529
  CI_DRM_7567: 034640205de60d963c458f6e48e90d30bc218ebf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15761: 3750c00e96eff5e306b7b62ce4e7ef1d9cb1b06f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15761/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
