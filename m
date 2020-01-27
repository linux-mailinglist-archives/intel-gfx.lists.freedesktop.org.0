Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAA2149E7E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 05:29:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4872A6E2D3;
	Mon, 27 Jan 2020 04:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 730166E2B8;
 Mon, 27 Jan 2020 04:29:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C7CBA0087;
 Mon, 27 Jan 2020 04:29:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Jan 2020 04:29:54 -0000
Message-ID: <158009939421.9685.15196991653155827290@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124143339.140988-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200124143339.140988-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Flush_engine_parking_before_release?=
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

Series: drm/i915/gt: Flush engine parking before release
URL   : https://patchwork.freedesktop.org/series/72540/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7810_full -> Patchwork_16257_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16257_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-apl6/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][9] -> [INCOMPLETE][10] ([i915#58] / [k.org#198133])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-glk5/igt@gem_exec_create@forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-glk2/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#520])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl4/igt@gem_softpin@noreloc-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#370])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb2/igt@i915_pm_rps@min-max-config-loaded.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb7/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#109])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl10/igt@kms_color@pipe-b-ctm-0-5.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl4/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-size-change:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-size-change.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-size-change.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([IGT#5])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][29] -> [INCOMPLETE][30] ([i915#61])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-hsw5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-kbl2/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-kbl3/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#112080]) +8 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276]) +13 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb7/igt@gem_ctx_isolation@vcs1-none.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-glk:          [FAIL][45] ([i915#679]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-glk4/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-glk2/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#110841]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@rcs0-contexts:
    - shard-hsw:          [INCOMPLETE][49] ([i915#61]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-hsw7/igt@gem_exec_parallel@rcs0-contexts.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-hsw1/igt@gem_exec_parallel@rcs0-contexts.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +13 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-kbl:          [FAIL][55] ([i915#520]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][57] ([i915#694]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-hsw2/igt@gem_tiled_blits@normal.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-hsw6/igt@gem_tiled_blits@normal.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [INCOMPLETE][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][61] ([i915#413]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-tglb6/igt@i915_pm_rps@waitboost.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-tglb7/igt@i915_pm_rps@waitboost.html
    - shard-iclb:         [FAIL][63] ([i915#413]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [INCOMPLETE][65] ([i915#198]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl10/igt@i915_selftest@mock_requests.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl8/igt@i915_selftest@mock_requests.html
    - shard-iclb:         [INCOMPLETE][67] ([i915#140]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb5/igt@i915_selftest@mock_requests.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb2/igt@i915_selftest@mock_requests.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-kbl:          [DMESG-WARN][69] ([i915#93] / [i915#95]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-kbl6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-kbl1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl4/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [INCOMPLETE][77] ([i915#140] / [i915#250]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][79] ([i915#69]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][81] ([IGT#6]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-skl6/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-skl4/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-tglb:         [SKIP][83] ([i915#668]) -> [PASS][84] +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-tglb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-tglb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][87] ([fdo#103665]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][89] ([fdo#112080]) -> [PASS][90] +8 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-snb:          [INCOMPLETE][91] ([i915#82]) -> [SKIP][92] ([fdo#109271])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-snb6/igt@i915_pm_rpm@dpms-non-lpsp.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-snb1/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][93] ([fdo#109349]) -> [DMESG-WARN][94] ([fdo#107724])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7810/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#370]: https://gitlab.freedesktop.org/drm/intel/issues/370
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7810 -> Patchwork_16257

  CI-20190529: 20190529
  CI_DRM_7810: 9de9de2b3216bd3cc7862f8280858304bf38297e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5384: fd6896567f7d612c76207970376d4f1e634ded55 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16257: 26d82ebcf07f0e06c6eecbbffa5688513959a4d2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16257/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
