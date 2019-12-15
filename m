Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5363E11F53D
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 02:12:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8B76E210;
	Sun, 15 Dec 2019 01:12:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96DC56E20E;
 Sun, 15 Dec 2019 01:12:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8743AA00C7;
 Sun, 15 Dec 2019 01:12:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 15 Dec 2019 01:12:25 -0000
Message-ID: <157637234552.27847.5110387085662218526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213223140.1830738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191213223140.1830738-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Serialise_object_before_changing_cache-level?=
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

Series: drm/i915/gem: Serialise object before changing cache-level
URL   : https://patchwork.freedesktop.org/series/70917/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7566_full -> Patchwork_15758_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15758_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15758_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15758_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-hsw:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-hsw8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][5] ([i915#818]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-hsw6/igt@gem_tiled_blits@normal.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-hsw8/igt@gem_tiled_blits@normal.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][7] ([fdo#111249] / [k.org#204565]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-hsw4/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-hsw4/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-glk7/igt@gen9_exec_parse@allowed-single.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-glk6/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * {igt@gen9_exec_parse@basic-rejected-ctx-param}:
    - shard-tglb:         NOTRUN -> [SKIP][13] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb5/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * {igt@gen9_exec_parse@batch-without-end}:
    - shard-iclb:         NOTRUN -> [SKIP][14] +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb4/igt@gen9_exec_parse@batch-without-end.html

  
Known issues
------------

  Here are the changes found in Patchwork_15758_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276] / [fdo#112080])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb1/igt@gem_ctx_isolation@vcs1-reset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb3/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_shared@exec-shared-gtt-blt:
    - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#616])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb4/igt@gem_ctx_shared@exec-shared-gtt-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb4/igt@gem_ctx_shared@exec-shared-gtt-blt.html

  * igt@gem_eio@hibernate:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#456])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb4/igt@gem_eio@hibernate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb7/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#110854])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#470])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb9/igt@gem_exec_parallel@fds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb6/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109276]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112146]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#707])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][31] -> [DMESG-WARN][32] ([fdo#111870]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-snb7/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#456] / [i915#460]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb5/igt@gem_workarounds@suspend-resume-context.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-kbl4/igt@i915_suspend@forcewake.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-kbl6/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#300])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#54]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#460] / [i915#516])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb6/igt@kms_flip@flip-vs-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][45] -> [INCOMPLETE][46] ([i915#456] / [i915#460] / [i915#474])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][47] -> [INCOMPLETE][48] ([i915#474] / [i915#667])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#49]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][51] -> [INCOMPLETE][52] ([i915#648])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
    - shard-kbl:          [PASS][53] -> [INCOMPLETE][54] ([fdo#103665] / [i915#648] / [i915#667])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane_cursor@pipe-c-overlay-size-128:
    - shard-hsw:          [PASS][55] -> [DMESG-WARN][56] ([i915#44])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-hsw8/igt@kms_plane_cursor@pipe-c-overlay-size-128.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-hsw5/igt@kms_plane_cursor@pipe-c-overlay-size-128.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109441]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][59] -> [DMESG-WARN][60] ([i915#402])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb4/igt@kms_psr@psr2_suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb7/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][61] -> [FAIL][62] ([i915#31])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-hsw1/igt@kms_setmode@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-hsw8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#112080]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb3/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][65] ([i915#435]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb6/igt@gem_busy@close-race.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb5/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][67] ([i915#679]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl10/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl6/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][69] ([fdo#109276] / [fdo#112080]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_parallel@vcs0:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#111593]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb5/igt@gem_exec_parallel@vcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb1/igt@gem_exec_parallel@vcs0.html

  * {igt@gem_exec_schedule@pi-userfault-bsd}:
    - shard-iclb:         [SKIP][73] ([i915#677]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][75] ([fdo#112146]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472] / [i915#707]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb3/igt@gem_sync@basic-each.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [DMESG-WARN][79] ([fdo#111870]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-snb4/igt@gem_userptr_blits@sync-unmap-after-close.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-snb4/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][83] ([i915#747]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl6/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-apl4/igt@i915_suspend@fence-restore-untiled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-apl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][87] ([i915#54]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][89] ([i915#456] / [i915#460]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled:
    - shard-skl:          [INCOMPLETE][91] ([i915#667]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][93] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb4/igt@kms_fbcon_fbt@fbc-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][95] ([i915#79]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][97] ([i915#79]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][99] ([i915#49]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][101] ([fdo#108145]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][103] ([fdo#108145] / [i915#265]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][105] ([i915#31]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-apl8/igt@kms_setmode@basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-apl2/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][107] ([i915#31]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-kbl6/igt@kms_setmode@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][109] ([i915#69]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf@disabled-read-error:
    - shard-hsw:          [INCOMPLETE][111] ([i915#61]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-hsw8/igt@perf@disabled-read-error.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-hsw6/igt@perf@disabled-read-error.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][113] ([fdo#109276]) -> [PASS][114] +5 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-switch:
    - shard-tglb:         [SKIP][115] ([fdo#111912] / [fdo#112080]) -> [SKIP][116] ([fdo#112080])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb7/igt@gem_ctx_isolation@vcs2-dirty-switch.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-switch.html

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][117] ([fdo#112080]) -> [SKIP][118] ([fdo#111912] / [fdo#112080])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb6/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][119] ([fdo#112021]) -> [SKIP][120] ([fdo#112016] / [fdo#112021])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][121] ([i915#69] / [k.org#204565]) -> [FAIL][122] ([i915#69])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl2/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/shard-skl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111249]: https://bugs.freedesktop.org/show_bug.cgi?id=111249
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7566 -> Patchwork_15758

  CI-20190529: 20190529
  CI_DRM_7566: 87c99602f2beb1b0ee7bdb3310bf12133f4d3f7f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15758: 30034c200ed3b908d3f5fb2e93ad5889db8ff2d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
