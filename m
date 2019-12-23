Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9E6129965
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 18:32:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38F66E30C;
	Mon, 23 Dec 2019 17:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1C456E30C;
 Mon, 23 Dec 2019 17:32:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9266A0019;
 Mon, 23 Dec 2019 17:32:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 23 Dec 2019 17:32:07 -0000
Message-ID: <157712232779.16937.2905501845544420202@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191209143921.9240-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20191209143921.9240-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_cleanup_intel=5Fbw=5Fstate_on_i915_module_remo?=
 =?utf-8?q?val?=
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

Series: drm/i915/display: cleanup intel_bw_state on i915 module removal
URL   : https://patchwork.freedesktop.org/series/70634/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7521_full -> Patchwork_15655_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15655_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb7/igt@gem_ctx_isolation@vcs1-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb1/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-snb:          [PASS][3] -> [DMESG-WARN][4] ([i915#478])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-snb2/igt@gem_exec_reloc@basic-gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-snb1/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111606] / [fdo#111677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111736] / [i915#460])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb3/igt@gem_exec_suspend@basic-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-hsw:          [PASS][9] -> [TIMEOUT][10] ([i915#530])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-glk:          [PASS][11] -> [TIMEOUT][12] ([i915#530])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-glk1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-glk8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-snb:          [PASS][13] -> [DMESG-WARN][14] ([fdo#111870]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-snb6/igt@gem_userptr_blits@dmabuf-sync.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-snb2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl7/igt@i915_pm_backlight@fade_with_suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl7/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-glk4/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#151] / [i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#456] / [i915#460]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb4/igt@i915_pm_rpm@system-suspend-modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb2/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#112057])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb1/igt@i915_selftest@live_requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb6/igt@i915_selftest@live_requests.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-apl4/igt@i915_suspend@forcewake.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-apl6/igt@i915_suspend@forcewake.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#667])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl1/igt@kms_ccs@pipe-b-crc-primary-rotation-180.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-rotation-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#221])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl10/igt@kms_flip@flip-vs-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#474] / [i915#667])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#109])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#648] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][43] ([fdo#111735]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][45] ([i915#470]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb6/igt@gem_exec_parallel@fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb6/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@preempt-other-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-iclb8/igt@gem_exec_schedule@preempt-other-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-iclb2/igt@gem_exec_schedule@preempt-other-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][49] ([i915#463]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb2/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][51] ([i915#707]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb1/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-iclb8/igt@gem_exec_store@cachelines-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-iclb2/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [DMESG-WARN][57] ([fdo#111870]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-snb2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-snb1/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [DMESG-WARN][61] ([i915#747]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-kbl1/igt@i915_selftest@mock_sanitycheck.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-kbl7/igt@i915_selftest@mock_sanitycheck.html
    - shard-snb:          [DMESG-WARN][63] ([i915#747]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-snb1/igt@i915_selftest@mock_sanitycheck.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-snb6/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [INCOMPLETE][65] ([i915#456] / [i915#460]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][67] ([i915#109]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][69] ([i915#54]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][71] ([i915#72]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - shard-tglb:         [INCOMPLETE][73] ([fdo#112393] / [i915#667]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb7/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][77] ([i915#34]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][79] ([i915#49]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [INCOMPLETE][81] ([fdo#103665]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-kbl6/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [FAIL][85] ([fdo#111842]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb8/igt@kms_psr2_su@frontbuffer.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][87] ([i915#31]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-apl6/igt@kms_setmode@basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-apl3/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-none:
    - shard-tglb:         [SKIP][89] ([fdo#111912] / [fdo#112080]) -> [SKIP][90] ([fdo#112080])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb5/igt@gem_ctx_isolation@vcs2-none.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][91] ([i915#82]) -> [DMESG-WARN][92] ([i915#443] / [i915#444])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-snb4/igt@gem_eio@kms.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_exec_reloc@basic-spin-bsd:
    - shard-snb:          [FAIL][93] ([i915#611]) -> [FAIL][94] ([i915#757]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-snb5/igt@gem_exec_reloc@basic-spin-bsd.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-snb6/igt@gem_exec_reloc@basic-spin-bsd.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [INCOMPLETE][95] ([fdo#103665]) -> [FAIL][96] ([fdo#110321])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-kbl7/igt@kms_content_protection@lic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-kbl2/igt@kms_content_protection@lic.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][97] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][98] ([i915#648] / [i915#667])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][99] ([fdo#112347] / [i915#648]) -> [INCOMPLETE][100] ([i915#648] / [i915#667]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@runner@aborted:
    - shard-snb:          [FAIL][101] ([fdo#111249] / [k.org#204565]) -> [FAIL][102] ([i915#436])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-snb1/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/shard-snb6/igt@runner@aborted.html

  

### Piglit changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109980]: https://bugs.freedesktop.org/show_bug.cgi?id=109980
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111249]: https://bugs.freedesktop.org/show_bug.cgi?id=111249
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#611]: https://gitlab.freedesktop.org/drm/intel/issues/611
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#757]: https://gitlab.freedesktop.org/drm/intel/issues/757
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#822]: https://gitlab.freedesktop.org/drm/intel/issues/822
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7521 -> Patchwork_15655

  CI-20190529: 20190529
  CI_DRM_7521: 9203f67985ebf27211aa1eabb77093302248c9fc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5341: 5fe683cdebde2d77d16ffc42c9fdf29a9f95bb82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15655: 3fd0b1c8a344b3dcd86df601234ae242aaf4f9b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15655/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
