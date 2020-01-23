Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6FD14703B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 19:00:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E256E0FD;
	Thu, 23 Jan 2020 18:00:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23E4E6E0FD;
 Thu, 23 Jan 2020 18:00:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1AFEAA0138;
 Thu, 23 Jan 2020 18:00:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 23 Jan 2020 18:00:56 -0000
Message-ID: <157980245608.1147.6023920963530710584@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121113915.9813-1-jani.nikula@intel.com>
In-Reply-To: <20200121113915.9813-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_display_engine_uncore_helpers_=28rev3=29?=
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

Series: drm/i915: add display engine uncore helpers (rev3)
URL   : https://patchwork.freedesktop.org/series/72331/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7786_full -> Patchwork_16193_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16193_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl1/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-kbl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl4/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-skl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][5] -> [FAIL][6] ([i915#490])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb6/igt@gem_eio@in-flight-contexts-1us.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-hang-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@gem_exec_schedule@preempt-hang-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb2/igt@gem_exec_schedule@preempt-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_store@basic-vcs1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112080]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@gem_exec_store@basic-vcs1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb6/igt@gem_exec_store@basic-vcs1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][15] -> [INCOMPLETE][16] ([fdo#103665] / [i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-kbl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][17] -> [TIMEOUT][18] ([fdo#112271] / [i915#530]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][23] -> [FAIL][24] ([i915#694])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#413])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb7/igt@i915_pm_rps@waitboost.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-tglb1/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#472])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb1/igt@i915_selftest@mock_requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-tglb1/igt@i915_selftest@mock_requests.html
    - shard-hsw:          [PASS][29] -> [INCOMPLETE][30] ([i915#61])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw2/igt@i915_selftest@mock_requests.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-hsw4/igt@i915_selftest@mock_requests.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#221])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#49]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl7/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-skl8/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [fdo#112080]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb3/igt@gem_ctx_isolation@vcs1-clean.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][41] ([i915#570]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl1/igt@gem_ctx_persistence@processes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-skl9/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_parallel@bcs0-fds:
    - shard-hsw:          [INCOMPLETE][43] ([i915#61]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw6/igt@gem_exec_parallel@bcs0-fds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-hsw2/igt@gem_exec_parallel@bcs0-fds.html

  * igt@gem_exec_schedule@preempt-contexts-bsd1:
    - shard-iclb:         [SKIP][45] ([fdo#109276]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb3/igt@gem_exec_schedule@preempt-contexts-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [TIMEOUT][49] ([fdo#112271] / [i915#530]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [TIMEOUT][51] ([fdo#112126] / [fdo#112271] / [i915#530]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-glk:          [TIMEOUT][53] ([fdo#112271] / [i915#530]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk6/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-glk9/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [SKIP][55] ([fdo#112080]) -> [PASS][56] +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb3/igt@i915_hangman@error-state-capture-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [INCOMPLETE][57] ([i915#82]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb4/igt@i915_selftest@mock_requests.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-snb2/igt@i915_selftest@mock_requests.html
    - shard-apl:          [INCOMPLETE][59] ([fdo#103927]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl6/igt@i915_selftest@mock_requests.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-apl7/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][61] ([i915#109]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][63] ([i915#79]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][67] ([i915#221]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-skl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][71] ([i915#34]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
    - shard-tglb:         [FAIL][73] ([i915#49]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_sequence@get-forked-busy:
    - shard-snb:          [SKIP][79] ([fdo#109271]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb2/igt@kms_sequence@get-forked-busy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-snb6/igt@kms_sequence@get-forked-busy.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-iclb:         [DMESG-WARN][81] ([fdo#111764]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][83] ([IGT#28]) -> [SKIP][84] ([fdo#109276] / [fdo#112080])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][85] ([i915#82]) -> [DMESG-WARN][86] ([i915#443] / [i915#444])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb2/igt@gem_eio@kms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-snb4/igt@gem_eio@kms.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [INCOMPLETE][87] ([i915#82]) -> [SKIP][88] ([fdo#109271])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/shard-snb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7786 -> Patchwork_16193

  CI-20190529: 20190529
  CI_DRM_7786: 72275204176397fc718218335edabb840f520024 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16193: 50c85a55b8d5f6eda0b137d315561c8b949ed524 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16193/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
