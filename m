Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B114E149842
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Jan 2020 00:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FC46E0E6;
	Sat, 25 Jan 2020 23:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49B586E0DD;
 Sat, 25 Jan 2020 23:52:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 411C3A0096;
 Sat, 25 Jan 2020 23:52:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 25 Jan 2020 23:52:29 -0000
Message-ID: <157999634924.29038.12962369388362463765@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122155637.496291-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200122155637.496291-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Release_filp_before_global_lock_=28rev2=29?=
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

Series: drm: Release filp before global lock (rev2)
URL   : https://patchwork.freedesktop.org/series/72408/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7806_full -> Patchwork_16245_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16245_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb7/igt@gem_exec_schedule@preempt-self-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb4/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][7] -> [INCOMPLETE][8] ([i915#140])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-hsw:          [PASS][9] -> [INCOMPLETE][10] ([i915#61])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([fdo#103927] / [i915#970])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14] ([i915#58] / [k.org#198133])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-glk6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl7/igt@gem_softpin@noreloc-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-skl9/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#413])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-tglb6/igt@i915_pm_rps@reset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-tglb3/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock_requests:
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([fdo#103665])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-kbl2/igt@i915_selftest@mock_requests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-kbl3/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#129])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl3/igt@kms_color@pipe-b-ctm-green-to-red.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-skl2/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][27] -> [FAIL][28] ([i915#96])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([IGT#5])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#79])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#49]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +8 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb5/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][43] -> [FAIL][44] ([i915#31])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-apl4/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#112080]) +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +10 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [fdo#112080]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-glk:          [FAIL][53] ([i915#679]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk3/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-glk7/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#110841]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][57] ([i915#677]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][61] ([i915#530] / [i915#61]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-apl:          [INCOMPLETE][63] ([fdo#103927]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-apl8/igt@gem_persistent_relocs@forked-thrashing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-apl1/igt@gem_persistent_relocs@forked-thrashing.html
    - shard-hsw:          [INCOMPLETE][65] ([i915#61]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw5/igt@gem_persistent_relocs@forked-thrashing.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-hsw7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][67] ([i915#454]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][69] ([i915#413]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb3/igt@i915_pm_rps@waitboost.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [INCOMPLETE][71] ([i915#58] / [k.org#198133]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk7/igt@i915_selftest@mock_requests.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-glk9/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][73] ([i915#109]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][75] ([i915#72]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [FAIL][77] ([IGT#5] / [i915#697]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-apl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible:
    - shard-glk:          [FAIL][81] ([i915#407]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk6/igt@kms_flip@modeset-vs-vblank-race-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-glk3/igt@kms_flip@modeset-vs-vblank-race-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [FAIL][83] ([i915#49]) -> [PASS][84] +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][87] ([i915#831]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][89] ([fdo#109276]) -> [PASS][90] +22 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][91] ([fdo#109276] / [fdo#112080]) -> [FAIL][92] ([IGT#28])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][93] ([i915#818]) -> [FAIL][94] ([i915#694]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw8/igt@gem_tiled_blits@normal.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-hsw8/igt@gem_tiled_blits@normal.html

  * igt@kms_atomic_transition@3x-modeset-transitions:
    - shard-hsw:          [SKIP][95] ([fdo#109271] / [i915#439]) -> [SKIP][96] ([fdo#109271])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw5/igt@kms_atomic_transition@3x-modeset-transitions.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/shard-hsw1/igt@kms_atomic_transition@3x-modeset-transitions.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#439]: https://gitlab.freedesktop.org/drm/intel/issues/439
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [i915#970]: https://gitlab.freedesktop.org/drm/intel/issues/970
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7806 -> Patchwork_16245

  CI-20190529: 20190529
  CI_DRM_7806: 0b551226df5e5b84044705d5fd76571da70f3163 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16245: b2f530d40d7c09b739db8ab77875375ca86b3f80 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16245/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
