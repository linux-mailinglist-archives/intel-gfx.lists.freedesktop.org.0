Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BFA785882
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 15:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D26610E422;
	Wed, 23 Aug 2023 13:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E05210E422;
 Wed, 23 Aug 2023 13:10:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53F21A00CC;
 Wed, 23 Aug 2023 13:10:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9102984369589471181=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Date: Wed, 23 Aug 2023 13:10:48 -0000
Message-ID: <169279624829.16626.13146692776910837076@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230822204818.109742-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230822204818.109742-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU0RQ?=
 =?utf-8?q?_split_for_DP-MST_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============9102984369589471181==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: SDP split for DP-MST (rev3)
URL   : https://patchwork.freedesktop.org/series/122460/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13549_full -> Patchwork_122460v3_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_122460v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][1] ([i915#8411])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][2] ([i915#8411])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@object-noreloc-keep-cache-simple:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271]) +93 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-snb1/igt@api_intel_bb@object-noreloc-keep-cache-simple.html

  * igt@drm_fdinfo@all-busy-idle-check-all:
    - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#8414])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@drm_fdinfo@all-busy-idle-check-all.html

  * igt@feature_discovery@display-3x:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#1839])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@feature_discovery@display-3x.html

  * igt@feature_discovery@display-4x:
    - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#1839])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@feature_discovery@display-4x.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#5325])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ctx_persistence@legacy-engines-cleanup:
    - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-snb1/igt@gem_ctx_persistence@legacy-engines-cleanup.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [PASS][9] -> [ABORT][10] ([i915#7975] / [i915#8213])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-16/igt@gem_eio@hibernate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-14/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][11] -> [FAIL][12] ([i915#5784])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-17/igt@gem_eio@reset-stress.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-15/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#8555])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-mtlp:         [PASS][14] -> [FAIL][15] ([i915#4475] / [i915#7765])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-2/igt@gem_exec_capture@pi@bcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-5/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace:
    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#4473] / [i915#4771])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#3281]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#3281]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#3281]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#4812])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4860])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#4613])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#4613])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_mmap@bad-offset:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4083])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@gem_mmap@bad-offset.html

  * igt@gem_mmap_gtt@basic-write-read:
    - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#4077]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_mmap_gtt@basic-write-read.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4083])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3282]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#4270])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#3282])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@y-tiled-ccs-to-linear:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#5190]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@gem_render_copy@y-tiled-ccs-to-linear.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#8428])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4079])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#3297])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3297])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#2856]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#2527])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#2856])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@load:
    - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#6227])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-snb1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][43] -> [ABORT][44] ([i915#8489] / [i915#8668])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-mtlp:         [PASS][45] -> [FAIL][46] ([i915#8691])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][47] -> [FAIL][48] ([i915#3989] / [i915#454])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-10/igt@i915_pm_dc@dc6-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-tglu-3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([fdo#109289])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-dg1:          [PASS][50] -> [FAIL][51] ([i915#3591]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][52] -> [SKIP][53] ([i915#1397])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-dg2:          [PASS][54] -> [SKIP][55] ([i915#1397])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-12/igt@i915_pm_rpm@modeset-lpsp.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp.html
    - shard-dg1:          [PASS][56] -> [SKIP][57] ([i915#1397])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-dg2:          NOTRUN -> [FAIL][58] ([fdo#103375]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#8925])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][60] -> [DMESG-FAIL][61] ([i915#5334])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@debugfs-reader:
    - shard-mtlp:         [PASS][62] -> [FAIL][63] ([fdo#103375])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-6/igt@i915_suspend@debugfs-reader.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-8/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4077]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-mtlp:         [PASS][65] -> [FAIL][66] ([i915#2521])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-6/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-2:
    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#2521])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-2.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#8502]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-dp-2-4-mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#8502] / [i915#8709]) +11 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-dp-2-4-mc_ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#1769] / [i915#3555])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#5286])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         [PASS][73] -> [FAIL][74] ([i915#3743]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([fdo#111615]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([fdo#110723])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4538] / [i915#5190])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#3886] / [i915#6095]) +4 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-4_tiled_mtl_rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#5354] / [i915#6095])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3734] / [i915#5354] / [i915#6095]) +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#6095]) +4 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-6/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#3689] / [i915#3886] / [i915#5354]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#5354]) +6 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#5354]) +13 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3689] / [i915#5354]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3742])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_color@ctm-0-75:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([fdo#111827])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_chamelium_color@ctm-0-75.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#7828]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#7828])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#7828]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#3555]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][92] ([i915#7173])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#7118])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#8814])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#3359])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][96] ([i915#8841]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-snb6/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#3546]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-mtlp:         [PASS][98] -> [FAIL][99] ([i915#8248])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([fdo#109274] / [i915#5354])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#3555]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3555] / [i915#3840])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@2x-plain-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#3637]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([fdo#111825])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#2672])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#8810])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#2672]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([fdo#109285])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-dg2:          [PASS][109] -> [FAIL][110] ([i915#6880])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#3458]) +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([fdo#111825] / [i915#1825]) +4 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#1825]) +5 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#8708]) +6 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3023]) +6 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#5460])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#8708]) +3 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#3555] / [i915#8228])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#4816])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          [PASS][120] -> [ABORT][121] ([i915#180])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
    - shard-apl:          [PASS][122] -> [DMESG-WARN][123] ([i915#180])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3555] / [i915#8806])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#6953])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#6953])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][127] ([i915#8292])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#5176]) +7 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#5176]) +11 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#5176]) +9 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-dp-2:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#5235]) +15 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-dp-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#5235]) +11 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#5235]) +5 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#658])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#1072])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#1072]) +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([fdo#111615] / [i915#5289])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_selftest@drm_damage:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#8661])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_selftest@drm_damage.html

  * igt@kms_selftest@drm_format:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#8661])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_selftest@drm_format.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][140] -> [FAIL][141] ([IGT#2])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@kms_sysfs_edid_timing.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#4070] / [i915#6768]) +2 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-c.html

  * igt@perf@global-sseu-config:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#7387])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@perf@global-sseu-config.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#2435])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@semaphore-busy@vcs1:
    - shard-mtlp:         NOTRUN -> [FAIL][145] ([i915#4349]) +3 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@perf_pmu@semaphore-busy@vcs1.html

  * igt@prime_vgem@fence-write-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#3708])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@invalid-wait-illegal-handle:
    - shard-mtlp:         [PASS][147] -> [DMESG-WARN][148] ([i915#2017])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@syncobj_timeline@invalid-wait-illegal-handle.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@syncobj_timeline@invalid-wait-illegal-handle.html

  * igt@v3d/v3d_perfmon@create-perfmon-invalid-counters:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#2575]) +2 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@v3d/v3d_perfmon@create-perfmon-invalid-counters.html

  * igt@v3d/v3d_submit_csd@bad-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#2575])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@v3d/v3d_submit_csd@bad-bo.html

  * igt@v3d/v3d_submit_csd@bad-flag:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([fdo#109315]) +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@v3d/v3d_submit_csd@bad-flag.html

  * igt@vc4/vc4_label_bo@set-kernel-name:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#7711]) +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@vc4/vc4_label_bo@set-kernel-name.html

  * igt@vc4/vc4_perfmon@create-two-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#7711])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@vc4/vc4_perfmon@create-two-perfmon.html

  * igt@vc4/vc4_perfmon@get-values-invalid-pointer:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#7711]) +3 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][155] ([i915#7742]) -> [PASS][156] +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][157] ([i915#6268]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-tglu:         [FAIL][159] ([i915#6268]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@ccs3:
    - shard-dg2:          [INCOMPLETE][161] ([i915#9162]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3@ccs3.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@gem_ctx_isolation@preservation-s3@ccs3.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-mtlp:         [FAIL][163] ([i915#4475]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-2/igt@gem_exec_capture@pi@rcs0.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-5/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_endless@dispatch@vcs0:
    - shard-dg1:          [TIMEOUT][165] ([i915#3778]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-14/igt@gem_exec_endless@dispatch@vcs0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-15/igt@gem_exec_endless@dispatch@vcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][167] ([i915#2846]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-glk4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][169] ([i915#2842]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][171] ([i915#2842]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][173] ([i915#2842]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][175] ([i915#2842]) -> [PASS][176] +1 similar issue
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-mtlp:         [DMESG-FAIL][177] ([i915#9121]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@gem_exec_fence@parallel@vcs0.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_exec_fence@parallel@vecs0:
    - shard-mtlp:         [FAIL][179] ([i915#8957]) -> [PASS][180] +2 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@gem_exec_fence@parallel@vecs0.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_fence@parallel@vecs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [DMESG-WARN][181] ([i915#4936] / [i915#5493]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-8/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_ppgtt@shrink-vs-evict-any:
    - shard-rkl:          [ABORT][183] ([i915#8875]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-4/igt@gem_ppgtt@shrink-vs-evict-any.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_ppgtt@shrink-vs-evict-any.html

  * igt@gem_spin_batch@user-each:
    - shard-mtlp:         [DMESG-FAIL][185] ([i915#8962] / [i915#9121]) -> [PASS][186] +2 similar issues
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@gem_spin_batch@user-each.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_spin_batch@user-each.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][187] ([i915#7061] / [i915#8617]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][189] ([i915#1397]) -> [PASS][190] +1 similar issue
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html
    - shard-dg2:          [SKIP][191] ([i915#1397]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-3/igt@i915_pm_rpm@dpms-lpsp.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_suspend@forcewake:
    - shard-dg2:          [FAIL][193] ([fdo#103375]) -> [PASS][194] +2 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-5/igt@i915_suspend@forcewake.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-3/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-mtlp:         [ABORT][195] ([i915#8466]) -> [PASS][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-7/igt@i915_suspend@sysfs-reader.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][197] ([i915#5138]) -> [PASS][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-mtlp:         [FAIL][199] ([i915#3743]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [FAIL][201] ([i915#2346]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-mtlp:         [FAIL][203] ([i915#4767]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-5/igt@kms_fbcon_fbt@psr-suspend.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [FAIL][205] ([i915#6880]) -> [PASS][206] +1 similar issue
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_getfb@getfb-addfb-different-handles:
    - shard-mtlp:         [DMESG-WARN][207] ([i915#2017]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@kms_getfb@getfb-addfb-different-handles.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_getfb@getfb-addfb-different-handles.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
    - shard-apl:          [ABORT][209] ([i915#180]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][211] ([i915#7484]) -> [PASS][212]
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@perf@non-zero-reason@0-rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglu:         [FAIL][213] ([i915#2681] / [i915#3591]) -> [WARN][214] ([i915#2681])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-tglu:         [WARN][215] ([i915#2681]) -> [FAIL][216] ([i915#2681] / [i915#3591])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rps@reset:
    - shard-dg1:          [FAIL][217] ([i915#8346]) -> [FAIL][218] ([i915#8229])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-14/igt@i915_pm_rps@reset.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-15/igt@i915_pm_rps@reset.html

  * igt@kms_content_protection@mei_interface:
    - shard-dg2:          [SKIP][219] ([i915#7118] / [i915#7162]) -> [SKIP][220] ([i915#7118])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@kms_content_protection@mei_interface.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@kms_content_protection@mei_interface.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][221] ([fdo#110189] / [i915#3955]) -> [SKIP][222] ([i915#3955])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][223] ([i915#4816]) -> [SKIP][224] ([i915#4070] / [i915#4816])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_psr@cursor_plane_move:
    - shard-dg1:          [SKIP][225] ([i915#1072] / [i915#4078]) -> [SKIP][226] ([i915#1072])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-13/igt@kms_psr@cursor_plane_move.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-19/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@sprite_plane_onoff:
    - shard-dg1:          [SKIP][227] ([i915#1072]) -> [SKIP][228] ([i915#1072] / [i915#4078]) +1 similar issue
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-15/igt@kms_psr@sprite_plane_onoff.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-18/igt@kms_psr@sprite_plane_onoff.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4475]: https://gitlab.freedesktop.org/drm/intel/issues/4475
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7765]: https://gitlab.freedesktop.org/drm/intel/issues/7765
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8229]: https://gitlab.freedesktop.org/drm/intel/issues/8229
  [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8346]: https://gitlab.freedesktop.org/drm/intel/issues/8346
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8466]: https://gitlab.freedesktop.org/drm/intel/issues/8466
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#8957]: https://gitlab.freedesktop.org/drm/intel/issues/8957
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
  [i915#9162]: https://gitlab.freedesktop.org/drm/intel/issues/9162


Build changes
-------------

  * Linux: CI_DRM_13549 -> Patchwork_122460v3

  CI-20190529: 20190529
  CI_DRM_13549: daa7b246575041e069f151cfbc69d07e321bdc01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122460v3: daa7b246575041e069f151cfbc69d07e321bdc01 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/index.html

--===============9102984369589471181==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>SDP split for DP-MST (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122460/">https://patchwork.freedesktop.org/series/122460/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13549_full -&gt; Patchwork_122460v3_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122460v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-noreloc-keep-cache-simple:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-snb1/igt@api_intel_bb@object-noreloc-keep-cache-simple.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +93 similar issues</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@drm_fdinfo@all-busy-idle-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-snb1/igt@gem_ctx_persistence@legacy-engines-cleanup.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-16/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-17/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-15/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_balancer@noheartbeat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-2/igt@gem_exec_capture@pi@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-5/igt@gem_exec_capture@pi@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4475">i915#4475</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7765">i915#7765</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_fair@basic-pace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4473">i915#4473</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@gem_fence_thrash@bo-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@gem_mmap@bad-offset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_mmap_gtt@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_mmap_wc@write-cpu-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_readwrite@read-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@gem_render_copy@y-tiled-ccs-to-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gen9_exec_parse@valid-registers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-snb1/igt@i915_module_load@load.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8489">i915#8489</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8691">i915#8691</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-10/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-tglu-3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-12/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</p>
</li>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@i915_pm_rpm@system-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@i915_pm_rps@thresholds-idle@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-6/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-8/igt@i915_suspend@debugfs-reader.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-6/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-dp-2-4-mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-dp-2-4-mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3734">i915#3734</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 similar issues</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-6/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-75:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_chamelium_color@ctm-0-75.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-snb6/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8248">i915#8248</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8810">i915#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-dp-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-dp-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_damage:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_selftest@drm_damage.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8661">i915#8661</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_selftest@drm_format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8661">i915#8661</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6768">i915#6768</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-busy@vcs1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@perf_pmu@semaphore-busy@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-illegal-handle:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@syncobj_timeline@invalid-wait-illegal-handle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@syncobj_timeline@invalid-wait-illegal-handle.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-perfmon-invalid-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@v3d/v3d_perfmon@create-perfmon-invalid-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@v3d/v3d_submit_csd@bad-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-flag:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@v3d/v3d_submit_csd@bad-flag.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_label_bo@set-kernel-name:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@vc4/vc4_label_bo@set-kernel-name.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@vc4/vc4_perfmon@create-two-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@get-values-invalid-pointer:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@ccs3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3@ccs3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9162">i915#9162</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@gem_ctx_isolation@preservation-s3@ccs3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-2/igt@gem_exec_capture@pi@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4475">i915#4475</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-5/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-14/igt@gem_exec_endless@dispatch@vcs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-15/igt@gem_exec_endless@dispatch@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-glk4/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@gem_exec_fence@parallel@vcs0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9121">i915#9121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_fence@parallel@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@gem_exec_fence@parallel@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8957">i915#8957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_exec_fence@parallel@vecs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-8/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4936">i915#4936</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@shrink-vs-evict-any:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-4/igt@gem_ppgtt@shrink-vs-evict-any.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8875">i915#8875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@gem_ppgtt@shrink-vs-evict-any.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@user-each:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@gem_spin_batch@user-each.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8962">i915#8962</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9121">i915#9121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@gem_spin_batch@user-each.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7061">i915#7061</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8617">i915#8617</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-3/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-5/igt@i915_suspend@forcewake.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-3/igt@i915_suspend@forcewake.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-7/igt@i915_suspend@sysfs-reader.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8466">i915#8466</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@i915_suspend@sysfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-5/igt@kms_fbcon_fbt@psr-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-3/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-addfb-different-handles:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@kms_getfb@getfb-addfb-different-handles.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-mtlp-1/igt@kms_getfb@getfb-addfb-different-handles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-12/igt@perf@non-zero-reason@0-rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-14/igt@i915_pm_rps@reset.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8346">i915#8346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-15/igt@i915_pm_rps@reset.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8229">i915#8229</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg2-10/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-13/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-19/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-15/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122460v3/shard-dg1-18/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13549 -&gt; Patchwork_122460v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13549: daa7b246575041e069f151cfbc69d07e321bdc01 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122460v3: daa7b246575041e069f151cfbc69d07e321bdc01 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============9102984369589471181==--
