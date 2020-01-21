Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2356143E0E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 14:32:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1286C6ECF0;
	Tue, 21 Jan 2020 13:32:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AEE16ECF0;
 Tue, 21 Jan 2020 13:32:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 730CBA0096;
 Tue, 21 Jan 2020 13:32:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 21 Jan 2020 13:32:11 -0000
Message-ID: <157961353146.11481.15700810976450184588@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Global_state_rework?=
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

Series: drm/i915: Global state rework
URL   : https://patchwork.freedesktop.org/series/72301/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7781_full -> Patchwork_16175_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16175_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16175_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16175_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-glk3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  
Known issues
------------

  Here are the changes found in Patchwork_16175_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735] / [i915#472]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb8/igt@gem_ctx_shared@q-smoketest-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb1/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][9] -> [TIMEOUT][10] ([fdo#112271] / [i915#940])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk5/igt@gem_exec_create@forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-glk6/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#463] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb6/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +7 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([fdo#103665] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-kbl2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][21] -> [INCOMPLETE][22] ([CI#80] / [fdo#103927] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-tglb:         [PASS][23] -> [TIMEOUT][24] ([fdo#112126] / [fdo#112271] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl9/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-hsw:          [PASS][29] -> [TIMEOUT][30] ([fdo#112271] / [i915#530]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw2/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-hsw5/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#470] / [i915#472] / [i915#475])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb2/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb3/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#644])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#472]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb1/igt@gem_sync@basic-store-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb4/igt@gem_sync@basic-store-all.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [PASS][37] -> [FAIL][38] ([i915#694])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw4/igt@gem_tiled_blits@normal.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-hsw4/igt@gem_tiled_blits@normal.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
    - shard-kbl:          [PASS][41] -> [INCOMPLETE][42] ([fdo#103665])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl7/igt@gem_workarounds@suspend-resume-context.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-kbl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][43] -> [DMESG-WARN][44] ([i915#716])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#198])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl4/igt@i915_selftest@mock_requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl7/igt@i915_selftest@mock_requests.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-snb:          [PASS][47] -> [SKIP][48] ([fdo#109271]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-snb6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-snb4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [PASS][49] -> [DMESG-WARN][50] ([i915#109]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl1/igt@kms_color@pipe-a-ctm-green-to-red.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl10/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][51] -> [INCOMPLETE][52] ([i915#61])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][53] -> [FAIL][54] ([i915#49])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([fdo#108145])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([fdo#108145] / [i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-iclb:         [PASS][61] -> [DMESG-WARN][62] ([fdo#111764]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][63] -> [INCOMPLETE][64] ([i915#69])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109276]) +12 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-apl8/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [FAIL][69] ([i915#679]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl10/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl9/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][71] ([fdo#109276] / [fdo#112080]) -> [PASS][72] +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][73] ([fdo#110854]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][75] ([fdo#111593] / [i915#472]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb3/igt@gem_exec_gttfill@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@vcs0-fds:
    - shard-tglb:         [INCOMPLETE][77] ([i915#470] / [i915#472]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb2/igt@gem_exec_parallel@vcs0-fds.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb5/igt@gem_exec_parallel@vcs0-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][79] ([i915#677]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd2:
    - shard-iclb:         [SKIP][81] ([fdo#109276]) -> [PASS][82] +15 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][83] ([fdo#112146]) -> [PASS][84] +6 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][85] ([i915#530] / [i915#61]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [TIMEOUT][87] ([fdo#112271] / [i915#530]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][89] ([i915#644]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][91] ([i915#472] / [i915#707]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb6/igt@gem_sync@basic-each.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][93] ([i915#472]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb7/igt@gem_sync@basic-store-each.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb5/igt@gem_sync@basic-store-each.html

  * igt@i915_selftest@mock_requests:
    - shard-hsw:          [INCOMPLETE][95] ([i915#61]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw1/igt@i915_selftest@mock_requests.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-hsw6/igt@i915_selftest@mock_requests.html
    - shard-iclb:         [INCOMPLETE][97] ([i915#140]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb8/igt@i915_selftest@mock_requests.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb3/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [FAIL][99] ([i915#54]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][101] ([i915#49]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104] +5 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][105] ([i915#69]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][107] ([fdo#108145]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110] +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][111] ([i915#31]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl2/igt@kms_setmode@basic.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-apl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][113] ([fdo#112080]) -> [PASS][114] +10 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][115] ([fdo#109276] / [fdo#112080]) -> [FAIL][116] ([IGT#28]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][117] ([i915#818]) -> [DMESG-FAIL][118] ([i915#44])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-hsw7/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][119] ([i915#454]) -> [SKIP][120] ([i915#468])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][121] ([i915#997] / [k.org#202321]) -> ([FAIL][122], [FAIL][123], [FAIL][124]) ([i915#940] / [i915#997] / [k.org#202321])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-glk5/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-glk2/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-glk6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][125], [FAIL][126]) ([i915#69] / [i915#997]) -> ([FAIL][127], [FAIL][128], [FAIL][129]) ([i915#69] / [i915#873] / [i915#997])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl3/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl8/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl8/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/shard-skl6/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7781 -> Patchwork_16175

  CI-20190529: 20190529
  CI_DRM_7781: 3f2b341ae1fde67f823aeb715c6f489affdef8b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5374: 83c32e859202e43ff6a8cca162c76fcd90ad6e3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16175: dd68e8f33fde8b9c142b0475bceb4f95c1185aaf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16175/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
