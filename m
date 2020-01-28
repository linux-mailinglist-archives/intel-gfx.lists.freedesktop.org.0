Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 114BD14BDD9
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 17:36:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F9B56E0E0;
	Tue, 28 Jan 2020 16:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E21526E0D1;
 Tue, 28 Jan 2020 16:36:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D78DFA0019;
 Tue, 28 Jan 2020 16:36:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Jan 2020 16:36:00 -0000
Message-ID: <158022936085.20534.6801771169429123432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200126193107.2097477-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200126193107.2097477-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Restore_the_kernel_context_after_verifying_the_w/a_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915: Restore the kernel context after verifying the w/a (rev2)
URL   : https://patchwork.freedesktop.org/series/72588/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7826_full -> Patchwork_16271_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16271_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb5/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#109]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-skl9/igt@gem_exec_reloc@basic-write-wc-active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-skl1/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-skl10/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-skl2/igt@gen9_exec_parse@allowed-single.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#413])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#34])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_caching@reads:
    - shard-hsw:          [FAIL][37] ([i915#694]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-hsw2/igt@gem_caching@reads.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-hsw7/igt@gem_caching@reads.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-apl6/igt@gem_ctx_isolation@vecs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-apl4/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@vcs1:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +9 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb8/igt@gem_exec_parallel@vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb2/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +23 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [FAIL][51] ([i915#644]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-tglb3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-hsw:          [DMESG-WARN][53] ([i915#44]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-hsw5/igt@kms_color@pipe-c-ctm-0-5.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-hsw6/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][57] ([i915#96]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][59] ([i915#221]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-skl9/igt@kms_flip@flip-vs-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-skl8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][61] ([fdo#108145]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-skl7/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-skl3/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-kbl1/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-kbl1/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][69] ([i915#770]) -> [DMESG-FAIL][70] ([i915#725])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-hsw1/igt@i915_selftest@live_blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-hsw6/igt@i915_selftest@live_blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-tglb:         [FAIL][71] ([i915#160]) -> [SKIP][72] ([i915#668])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7826/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7826 -> Patchwork_16271

  CI-20190529: 20190529
  CI_DRM_7826: 04d0421c09d70ea76da8a3685347740df9f84aaf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5389: 966c58649dee31bb5bf2fad92f75ffd365968b81 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16271: 7a9b1c770e47d793776c54b6ebe660e778f9e158 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16271/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
