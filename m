Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA30F1446AF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 22:55:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4B36E2A0;
	Tue, 21 Jan 2020 21:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3CDDA6E29E;
 Tue, 21 Jan 2020 21:55:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34151A011C;
 Tue, 21 Jan 2020 21:55:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>
Date: Tue, 21 Jan 2020 21:55:48 -0000
Message-ID: <157964374818.11481.12257597999670265031@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121125613.21138-1-shawn.c.lee@intel.com>
In-Reply-To: <20200121125613.21138-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_set_fail-safe_mode_if_EDID_corrupt?=
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

Series: drm/i915/dp: set fail-safe mode if EDID corrupt
URL   : https://patchwork.freedesktop.org/series/72311/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7781_full -> Patchwork_16179_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16179_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl9/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl7/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#108838] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb2/igt@gem_exec_create@forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb1/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@vcs0:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111593] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb2/igt@gem_exec_parallel@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb5/igt@gem_exec_parallel@vcs0.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_exec_schedule@preempt-other-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb4/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-kbl:          [PASS][15] -> [INCOMPLETE][16] ([fdo#103665] / [i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-kbl3/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][17] -> [TIMEOUT][18] ([fdo#112271] / [i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-hsw:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112080]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@i915_hangman@error-state-capture-vcs1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb3/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][25] -> [INCOMPLETE][26] ([i915#82])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-snb6/igt@i915_selftest@mock_requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-snb1/igt@i915_selftest@mock_requests.html
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#198])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl4/igt@i915_selftest@mock_requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl1/igt@i915_selftest@mock_requests.html
    - shard-kbl:          [PASS][29] -> [INCOMPLETE][30] ([fdo#103665]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl1/igt@i915_selftest@mock_requests.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-kbl7/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-iclb:         [PASS][31] -> [DMESG-WARN][32] ([fdo#111764])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl9/igt@i915_suspend@sysfs-reader.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#109]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl6/igt@kms_color@pipe-c-ctm-0-25.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl8/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#72])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-hsw:          [PASS][39] -> [DMESG-WARN][40] ([i915#44])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw2/igt@kms_flip@2x-flip-vs-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-hsw5/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#79]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#221])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl10/igt@kms_flip@flip-vs-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl9/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [PASS][47] -> [SKIP][48] ([i915#668]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb4/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@suspend:
    - shard-iclb:         [PASS][57] -> [INCOMPLETE][58] ([i915#140])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb6/igt@kms_psr@suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb8/igt@kms_psr@suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109276]) +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-apl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [FAIL][65] ([i915#679]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl10/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl6/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][67] ([fdo#109276] / [fdo#112080]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][69] ([i915#461] / [i915#472]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][71] ([i915#140]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@gem_exec_balancer@hang.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][73] ([fdo#111593] / [i915#472]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb3/igt@gem_exec_gttfill@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][75] ([i915#472]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb6/igt@gem_exec_nop@basic-series.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb8/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][77] ([i915#470] / [i915#472]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb6/igt@gem_exec_parallel@fds.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb5/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][79] ([fdo#109276]) -> [PASS][80] +9 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb7/igt@gem_exec_schedule@fifo-bsd1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][81] ([i915#677]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][83] ([fdo#112146]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [TIMEOUT][85] ([fdo#112271] / [i915#530]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [INCOMPLETE][87] ([CI#80] / [fdo#103927] / [i915#530]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [INCOMPLETE][89] ([i915#530] / [i915#61]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw6/igt@gem_persistent_relocs@forked-thrashing.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-hsw2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][91] ([i915#472] / [i915#707]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb3/igt@gem_sync@basic-many-each.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb4/igt@gem_sync@basic-many-each.html

  * igt@i915_selftest@live_gem_contexts:
    - shard-tglb:         [INCOMPLETE][93] ([i915#455] / [i915#472]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb3/igt@i915_selftest@live_gem_contexts.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb6/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@mock_requests:
    - shard-hsw:          [INCOMPLETE][95] ([i915#61]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw1/igt@i915_selftest@mock_requests.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-hsw5/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [FAIL][97] ([i915#54]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][99] ([i915#49]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][101] ([i915#69]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][103] ([fdo#108145]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][107] ([i915#31]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl2/igt@kms_setmode@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-apl4/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][109] ([i915#31]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl7/igt@kms_setmode@basic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-kbl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][111] ([fdo#112080]) -> [PASS][112] +6 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb7/igt@perf_pmu@busy-check-all-vcs1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][113] ([fdo#109276] / [fdo#112080]) -> [FAIL][114] ([IGT#28])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][115] ([i915#82]) -> [INCOMPLETE][116] ([CI#80] / [i915#82])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-snb2/igt@gem_eio@kms.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-snb2/igt@gem_eio@kms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][117] ([i915#468]) -> [FAIL][118] ([i915#454])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-tglb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-hsw:          [SKIP][119] ([fdo#109271]) -> [SKIP][120] ([fdo#109271] / [fdo#111827]) +54 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw7/igt@kms_chamelium@common-hpd-after-suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-hsw6/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-iclb:         [SKIP][121] ([fdo#109284]) -> [SKIP][122] ([fdo#109284] / [fdo#111827]) +51 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@kms_chamelium@dp-frame-dump.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-iclb4/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-cmp-yv12:
    - shard-glk:          [SKIP][123] ([fdo#109271]) -> [SKIP][124] ([fdo#109271] / [fdo#111827]) +50 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk8/igt@kms_chamelium@hdmi-cmp-yv12.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-glk7/igt@kms_chamelium@hdmi-cmp-yv12.html

  * igt@kms_chamelium@hdmi-crc-xrgb1555:
    - shard-snb:          [SKIP][125] ([fdo#109271]) -> [SKIP][126] ([fdo#109271] / [fdo#111827]) +55 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-snb1/igt@kms_chamelium@hdmi-crc-xrgb1555.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-snb6/igt@kms_chamelium@hdmi-crc-xrgb1555.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          [SKIP][127] ([fdo#109271]) -> [SKIP][128] ([fdo#109271] / [fdo#111827]) +54 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          [SKIP][129] ([fdo#109271]) -> [SKIP][130] ([fdo#109271] / [fdo#111827]) +45 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl6/igt@kms_chamelium@vga-hpd-after-suspend.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl9/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-kbl:          [SKIP][131] ([fdo#109271]) -> [SKIP][132] ([fdo#109271] / [fdo#111827]) +46 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl1/igt@kms_chamelium@vga-hpd-without-ddc.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-kbl1/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][133], [FAIL][134]) ([i915#997]) -> ([FAIL][135], [FAIL][136]) ([fdo#103665] / [i915#873] / [i915#997])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-kbl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-kbl2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][137], [FAIL][138]) ([i915#69] / [i915#997]) -> ([FAIL][139], [FAIL][140], [FAIL][141]) ([i915#69] / [i915#873] / [i915#997])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl8/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl10/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/shard-skl4/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7781 -> Patchwork_16179

  CI-20190529: 20190529
  CI_DRM_7781: 3f2b341ae1fde67f823aeb715c6f489affdef8b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5374: 83c32e859202e43ff6a8cca162c76fcd90ad6e3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16179: c3013ca10f07dd7961c69b855a53ae1d36e47fdb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16179/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
