Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6389B11F033
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 05:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBEE66E301;
	Sat, 14 Dec 2019 04:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1833C6E2E3;
 Sat, 14 Dec 2019 04:53:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 083ACA0091;
 Sat, 14 Dec 2019 04:53:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Sat, 14 Dec 2019 04:53:16 -0000
Message-ID: <157629919600.13804.5078388811414663232@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213112748.14506-1-mika.kahola@intel.com>
In-Reply-To: <20191213112748.14506-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Read_DP_link_status_with_DRM_helper_function?=
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

Series: drm/i915/display: Read DP link status with DRM helper function
URL   : https://patchwork.freedesktop.org/series/70878/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7558_full -> Patchwork_15741_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15741_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15741_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15741_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-apl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-apl1/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen7_exec_parse@oacontrol-tracking}:
    - shard-tglb:         NOTRUN -> [SKIP][2] +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb2/igt@gen7_exec_parse@oacontrol-tracking.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-apl1/igt@gen9_exec_parse@allowed-single.html

  
Known issues
------------

  Here are the changes found in Patchwork_15741_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl2/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl9/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_exec_parallel@vcs1:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111593])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb3/igt@gem_exec_parallel@vcs1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb4/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb8/igt@gem_exec_schedule@independent-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb4/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb4/igt@gem_exec_schedule@preempt-queue-blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb6/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb1/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111606] / [fdo#111677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb4/igt@gem_exec_suspend@basic-s0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb8/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [PASS][19] -> [TIMEOUT][20] ([i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb8/igt@gem_persistent_relocs@forked-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb5/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#456])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb7/igt@gem_softpin@noreloc-s3.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][23] -> [DMESG-WARN][24] ([fdo#111870]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-snb4/igt@gem_userptr_blits@sync-unmap-cycles.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-snb2/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#198])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl10/igt@i915_pm_dc@dc5-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#455])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb6/igt@i915_selftest@live_gt_timelines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb5/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#109])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl3/igt@kms_color@pipe-a-ctm-0-5.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#646] / [i915#667])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#435] / [i915#456] / [i915#460])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb4/igt@kms_fbcon_fbt@fbc-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [PASS][37] -> [INCOMPLETE][38] ([i915#61])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-hsw1/igt@kms_flip@flip-vs-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-hsw5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#456] / [i915#460] / [i915#474])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-iclb:         [PASS][43] -> [INCOMPLETE][44] ([i915#140] / [i915#246])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb4/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb2/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-tglb:         [PASS][45] -> [INCOMPLETE][46] ([i915#456] / [i915#460])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109642] / [fdo#111068])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109441]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb4/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#112080]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-apl3/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb8/igt@gem_ctx_persistence@vcs1-cleanup.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb2/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111593]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb8/igt@gem_exec_gttfill@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-glk:          [INCOMPLETE][63] ([i915#530] / [i915#58] / [k.org#198133]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-glk7/igt@gem_persistent_relocs@forked-thrashing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-glk7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][65] ([i915#435] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb9/igt@gem_sync@basic-store-each.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb2/igt@gem_sync@basic-store-each.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][67] -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-hsw4/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [DMESG-WARN][69] ([fdo#111870]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-tglb:         [INCOMPLETE][71] ([i915#456] / [i915#460]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb3/igt@gem_workarounds@suspend-resume-context.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb8/igt@gem_workarounds@suspend-resume-context.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][75] ([i915#747]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl9/igt@i915_selftest@mock_sanitycheck.html
    - shard-snb:          [DMESG-WARN][77] ([i915#747]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-snb4/igt@i915_selftest@mock_sanitycheck.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-snb1/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][79] ([i915#109]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-skl:          [FAIL][81] ([i915#54]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-tglb:         [INCOMPLETE][83] ([fdo#112393] / [i915#667]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglb:         [INCOMPLETE][85] ([i915#456] / [i915#460] / [i915#516]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][87] ([i915#69]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][89] ([fdo#108145]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][91] ([fdo#108145] / [i915#265]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][95] ([i915#31]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-apl3/igt@kms_setmode@basic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf@disabled-read-error:
    - shard-hsw:          [INCOMPLETE][97] ([i915#61]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-hsw5/igt@perf@disabled-read-error.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-hsw1/igt@perf@disabled-read-error.html

  * igt@perf_pmu@busy-idle-check-all-vcs1:
    - shard-iclb:         [SKIP][99] ([fdo#112080]) -> [PASS][100] +8 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb3/igt@perf_pmu@busy-idle-check-all-vcs1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb2/igt@perf_pmu@busy-idle-check-all-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][101] ([fdo#109276]) -> [PASS][102] +7 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][103] ([IGT#28]) -> [SKIP][104] ([fdo#109276] / [fdo#112080])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][105] -> [FAIL][106] ([i915#818])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-hsw8/igt@gem_tiled_blits@normal.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-hsw6/igt@gem_tiled_blits@normal.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][107] ([fdo#112016] / [fdo#112021]) -> [SKIP][108] ([fdo#112021]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb3/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][109] ([fdo#107724]) -> [SKIP][110] ([fdo#109349])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][111] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][112] ([fdo#112347] / [i915#648] / [i915#667])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [INCOMPLETE][113] ([i915#456] / [i915#460]) -> [DMESG-WARN][114] ([i915#402])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-tglb5/igt@kms_psr@psr2_suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/shard-tglb4/igt@kms_psr@psr2_suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#246]: https://gitlab.freedesktop.org/drm/intel/issues/246
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7558 -> Patchwork_15741

  CI-20190529: 20190529
  CI_DRM_7558: 1adb846ba2ead1c3f7bb7ed753e11f7d9ee28688 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15741: bfc254f9adf54eb52561e9b019f5ff84b038f09e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15741/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
