Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DB87B2A2A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 03:42:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D059C10E0B9;
	Fri, 29 Sep 2023 01:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5DA910E0B8;
 Fri, 29 Sep 2023 01:42:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EB48A7DFB;
 Fri, 29 Sep 2023 01:42:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5119169859970927332=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Joel Granados via B4 Relay" <devnull+j.granados.samsung.com@kernel.org>
Date: Fri, 29 Sep 2023 01:42:03 -0000
Message-ID: <169595172340.19496.652261224797666775@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-0-e59120fca9f9@samsung.com>
In-Reply-To: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-0-e59120fca9f9@samsung.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc3lz?=
 =?utf-8?q?ctl=3A_Remove_sentinel_elements_from_drivers?=
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

--===============5119169859970927332==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: sysctl: Remove sentinel elements from drivers
URL   : https://patchwork.freedesktop.org/series/124409/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13689_full -> Patchwork_124409v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-rkl0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124409v1_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3} (NEW):
    - shard-dg2:          NOTRUN -> [SKIP][1] +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3.html
    - shard-dg1:          NOTRUN -> [SKIP][2] +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b-hdmi-a-3}:
    - shard-dg1:          NOTRUN -> [SKIP][3] +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-12/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b-hdmi-a-3.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13689_full and Patchwork_124409v1_full:

### New IGT tests (8) ###

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-a-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_124409v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#8411]) +1 other test skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@render-ccs:
    - shard-dg2:          NOTRUN -> [FAIL][5] ([i915#6122])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@api_intel_bb@render-ccs.html

  * igt@drm_fdinfo@most-busy-check-all@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#8414]) +5 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@drm_fdinfo@most-busy-check-all@vcs0.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8414]) +2 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][8] ([i915#7297])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-1/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8562])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-mtlp:         [PASS][10] -> [ABORT][11] ([i915#9262])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-mtlp:         NOTRUN -> [SKIP][12] ([fdo#109314])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@engines-hang@vcs0:
    - shard-mtlp:         [PASS][13] -> [ABORT][14] ([i915#9414]) +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-2/igt@gem_ctx_persistence@engines-hang@vcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-3/igt@gem_ctx_persistence@engines-hang@vcs0.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#8555]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#1099])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-snb7/igt@gem_ctx_persistence@process.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#280])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@reset-stress:
    - shard-dg2:          [PASS][18] -> [FAIL][19] ([i915#5784])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-3/igt@gem_eio@reset-stress.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#4771]) +1 other test skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#4525])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][22] -> [FAIL][23] ([i915#2842])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4812]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852]) +5 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([fdo#112283])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#3281]) +4 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3281]) +9 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3281]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@gem_exec_reloc@basic-write-gtt-noreloc.html

  * igt@gem_exec_schedule@preempt-engines@ccs0:
    - shard-mtlp:         [PASS][30] -> [FAIL][31] ([i915#9119]) +4 other tests fail
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-1/igt@gem_exec_schedule@preempt-engines@ccs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@ccs0.html

  * igt@gem_exec_schedule@preempt-engines@rcs0:
    - shard-mtlp:         [PASS][32] -> [DMESG-FAIL][33] ([i915#8962])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-1/igt@gem_exec_schedule@preempt-engines@rcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4537] / [i915#4812])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-dg2:          [PASS][35] -> [FAIL][36] ([fdo#103375]) +1 other test fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-7/igt@gem_exec_suspend@basic-s3@smem.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-5/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][37] ([i915#7975] / [i915#8213])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4860])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#4860])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#2190])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#4613])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_mmap_gtt@basic-write-read:
    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#4077]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@gem_mmap_gtt@basic-write-read.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4077]) +16 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4083]) +7 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_mmap_wc@copy.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3282]) +12 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#3282]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#4270]) +3 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#8428])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#4079])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4885])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3297]) +4 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#3297] / [i915#4880])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-snb:          NOTRUN -> [DMESG-WARN][53] ([i915#8841]) +3 other tests dmesg-warn
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-snb7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([fdo#109289]) +5 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#2527]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#2856]) +3 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4881])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@i915_fb_tiling.html

  * igt@i915_module_load@load:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#6227])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@i915_module_load@load.html
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#6227])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@i915_module_load@load.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-dg1:          [PASS][60] -> [FAIL][61] ([i915#3591])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-snb:          [PASS][62] -> [ABORT][63] ([i915#8865])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-snb7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [PASS][64] -> [SKIP][65] ([i915#1397])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][66] -> [SKIP][67] ([i915#1397]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([fdo#109506])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-dg1:          [PASS][69] -> [SKIP][70] ([i915#1397])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#6621])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#8925])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([fdo#109302])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-1/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][74] -> [DMESG-FAIL][75] ([i915#5334])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@mock@memory_region:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][76] ([i915#9311])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@i915_selftest@mock@memory_region.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][77] ([i915#9311])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-snb1/igt@i915_selftest@mock@memory_region.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#8502] / [i915#8709]) +11 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#404])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#1769] / [i915#3555])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#5286]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([fdo#111614])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([fdo#111614]) +4 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([fdo#111615]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][85] -> [FAIL][86] ([i915#3743]) +2 other tests fail
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#5190]) +19 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([fdo#110723])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4538] / [i915#5190]) +7 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([fdo#111615])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#2705])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#3689] / [i915#3886] / [i915#5354]) +21 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#3689] / [i915#5354]) +22 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#3886] / [i915#5354] / [i915#6095]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#3734] / [i915#5354] / [i915#6095]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#5354] / [i915#6095]) +4 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3886]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#5354] / [i915#6095]) +2 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#5354]) +7 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4087] / [i915#7213])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#7213]) +3 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([fdo#111827]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#7828]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#7828]) +8 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#7828]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#3299])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#3299])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#7118])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#3359])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#3555]) +7 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#3359])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([fdo#111825]) +3 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#3546])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4103] / [i915#4213] / [i915#5608])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([fdo#109274] / [fdo#111767] / [i915#5354]) +1 other test skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([fdo#109274] / [i915#5354]) +4 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4103] / [i915#4213]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#9227])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-16/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#9226] / [i915#9261]) +1 other test skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-16/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#8588])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3804])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [fdo#111767]) +1 other test skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
    - shard-dg2:          NOTRUN -> [SKIP][123] ([fdo#109274] / [fdo#111767])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([fdo#109274]) +10 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([fdo#111767] / [fdo#111825])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#2672])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#2672]) +5 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#2672])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([fdo#109285])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [PASS][130] -> [FAIL][131] ([i915#6880]) +1 other test fail
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#5354]) +73 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#8708]) +17 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([fdo#111825] / [i915#1825]) +7 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [SKIP][135] ([fdo#109271]) +42 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#1825]) +4 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#5460])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3023]) +4 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][139] ([fdo#109271]) +170 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3458]) +26 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#3555] / [i915#8228])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#3555] / [i915#8228]) +2 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#6301])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][144] ([i915#8292])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#5235]) +15 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#5235]) +7 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#5235]) +3 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([fdo#111068] / [i915#658])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-apl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#658])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#658]) +5 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@primary_blt:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#1072])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_psr@primary_blt.html

  * igt@kms_psr@primary_mmap_cpu:
    - shard-glk:          NOTRUN -> [SKIP][152] ([fdo#109271]) +15 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-glk3/igt@kms_psr@primary_mmap_cpu.html

  * igt@kms_psr@psr2_suspend:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#1072]) +6 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_psr@psr2_suspend.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#5461] / [i915#658])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@bad-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#4235])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_rotation_crc@bad-tiling.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#4235] / [i915#5190]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_vblank@pipe-d-wait-busy-hang:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#4070] / [i915#533] / [i915#6768]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_vblank@pipe-d-wait-busy-hang.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#7387])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@perf@global-sseu-config.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][159] -> [FAIL][160] ([i915#4349])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#8850])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@faulting-read@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#8440])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@perf_pmu@faulting-read@gtt.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][163] ([i915#6806])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#5608] / [i915#8516])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#8516])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#3708] / [i915#4077])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3291] / [i915#3708])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([fdo#109295] / [i915#3708])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@prime_vgem@fence-read-hang.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#3708]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@prime_vgem@fence-write-hang.html

  * igt@v3d/v3d_get_param@get-bad-flags:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#2575]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@v3d/v3d_get_param@get-bad-flags.html

  * igt@v3d/v3d_submit_csd@bad-pad:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([fdo#109315]) +2 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@v3d/v3d_submit_csd@bad-pad.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#2575]) +18 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#7711]) +11 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@vc4/vc4_tiling@get-bad-handle.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#7711]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - shard-dg1:          [DMESG-WARN][175] ([i915#4423]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-18/igt@debugfs_test@read_all_entries.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-18/igt@debugfs_test@read_all_entries.html

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-glk:          [ABORT][177] ([i915#8190]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-glk5/igt@gem_barrier_race@remote-request@rcs0.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-glk3/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][179] ([i915#5784]) -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-19/igt@gem_eio@reset-stress.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-19/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][181] ([i915#2842]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-rkl:          [FAIL][183] ([i915#2842]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][185] ([i915#2842]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@noreorder-corked@ccs0:
    - shard-mtlp:         [DMESG-WARN][187] ([i915#8962]) -> [PASS][188] +1 other test pass
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@ccs0.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-8/igt@gem_exec_schedule@noreorder-corked@ccs0.html

  * igt@i915_hangman@gt-error-state-capture@vecs0:
    - shard-mtlp:         [ABORT][189] ([i915#9414]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-5/igt@i915_hangman@gt-error-state-capture@vecs0.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@i915_hangman@gt-error-state-capture@vecs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [FAIL][191] ([i915#3591]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [SKIP][193] ([i915#1397]) -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][195] ([i915#1397]) -> [PASS][196] +1 other test pass
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][197] ([i915#2346]) -> [PASS][198] +1 other test pass
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglu:         [FAIL][199] ([i915#4767]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-tglu-3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          [INCOMPLETE][201] ([i915#1982] / [i915#9392]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * {igt@kms_pm_dc@dc9-dpms}:
    - shard-tglu:         [SKIP][203] ([i915#4281]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html

  * {igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:
    - shard-dg2:          [SKIP][205] ([i915#1937]) -> [PASS][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-6/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-10/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - shard-dg1:          [FAIL][207] ([i915#9196]) -> [PASS][208] +1 other test pass
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
    - shard-snb:          [FAIL][209] ([i915#9196]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-snb1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-snb1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-mtlp:         [ABORT][211] ([i915#9262]) -> [DMESG-WARN][212] ([i915#9262])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs1.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-mtlp-3/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg1:          [SKIP][213] ([i915#4423] / [i915#4565]) -> [SKIP][214] ([i915#4565])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-18/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-18/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-tglu:         [WARN][215] ([i915#2681]) -> [FAIL][216] ([i915#2681] / [i915#3591])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-dg1:          [SKIP][217] ([i915#3689] / [i915#3886] / [i915#4423] / [i915#5354] / [i915#6095]) -> [SKIP][218] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-12/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-16/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][219] ([i915#3955]) -> [SKIP][220] ([fdo#110189] / [i915#3955])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][221] ([fdo#109285] / [i915#4098]) -> [SKIP][222] ([fdo#109285])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-2/igt@kms_force_connector_basic@force-load-detect.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][223] ([i915#4816]) -> [SKIP][224] ([i915#4070] / [i915#4816])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][225] ([i915#9351]) -> [INCOMPLETE][226] ([i915#5493])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg2-11/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6122]: https://gitlab.freedesktop.org/drm/intel/issues/6122
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8190]: https://gitlab.freedesktop.org/drm/intel/issues/8190
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8440]: https://gitlab.freedesktop.org/drm/intel/issues/8440
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
  [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9119]: https://gitlab.freedesktop.org/drm/intel/issues/9119
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424


Build changes
-------------

  * Linux: CI_DRM_13689 -> Patchwork_124409v1

  CI-20190529: 20190529
  CI_DRM_13689: 5933eb0a0717a28e668d33e01a707311d31cebbb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7506: 4fdf544bd0a38c5a100ef43c30171827e1c8c442 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124409v1: 5933eb0a0717a28e668d33e01a707311d31cebbb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/index.html

--===============5119169859970927332==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>sysctl: Remove sentinel elements from driver=
s</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/124409/">https://patchwork.freedesktop.org/series/124409/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124409v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124409v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13689_full -&gt; Patchwork_124409v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-rkl0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
124409v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pip=
e-a-hdmi-a-3} (NEW):</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_plane_scaling@plane-dow=
nscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3.html">SKIP</a> +3 othe=
r tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124409v1/shard-dg1-12/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3.html">SKIP</a> +3 oth=
er tests skip</p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b-hdmi-a-=
3}:<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg1-12/igt@kms_plane_scaling@plane-u=
pscale-20x20-with-rotation@pipe-b-hdmi-a-3.html">SKIP</a> +3 other tests sk=
ip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13689_full and Patchwork_1=
24409v1_full:</p>
<h3>New IGT tests (8)</h3>
<ul>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-a-hdmi-=
a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b-hdmi-=
a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c-hdmi-=
a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d-hdmi-=
a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124409v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@api_intel_bb@render-ccs.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/61=
22">i915#6122</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@drm_fdinfo@most-busy-chec=
k-all@vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8414">i915#8414</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@drm_fdinfo@virtual-busy-ha=
ng.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8414">i915#8414</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-1/igt@gem_ccs@suspend-resume@til=
e4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@rcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124409v1/shard-mtlp-3/igt@gem_ctx_isolation@preservation-s3@rcs0.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9262">=
i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-2/igt@gem_ctx_persistence@engines-hang@vcs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124409v1/shard-mtlp-3/igt@gem_ctx_persistence@engines-hang@vcs0.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9414">i9=
15#9414</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-snb7/igt@gem_ctx_persistence@process=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280=
">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-3/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-d=
g2-3/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@gem_exec_balancer@parallel=
-ordering.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v=
1/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_exec_fence@submit3.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/481=
2">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-=
read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@gem_exec_reloc@basic-wc-gt=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3281">i915#3281</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@gem_exec_reloc@basic-write=
-gtt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-1/igt@gem_exec_schedule@preempt-engines@ccs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124409v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@ccs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9119">i=
915#9119</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-1/igt@gem_exec_schedule@preempt-engines@rcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124409v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html">D=
MESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
962">i915#8962</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-7/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409=
v1/shard-dg2-5/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</a>) =
+1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-=
devices@lmem0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_fence_thrash@bo-write-=
verify-threaded-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no=
-spare-fences-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190=
">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@gem_mmap_gtt@basic-write-=
read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_mmap_gtt@zero-extend.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
077">i915#4077</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_mmap_wc@copy.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i91=
5#4083</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_partial_pwrite_pread@r=
eads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3282">i915#3282</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@gem_partial_pwrite_pread@r=
eads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@gem_render_copy@yf-tiled-=
to-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@unti=
led-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
85">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-snb7/igt@gem_workarounds@suspend-res=
ume-fd.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8841">i915#8841</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@i915_fb_tiling.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#=
4881</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@i915_module_load@load.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6227">i915#6227</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6227"=
>i915#6227</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124409v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#35=
91</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4409v1/shard-snb7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">ABORT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8865">i915#8865<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
409v1/shard-dg2-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)=
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124409v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#13=
97</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/sh=
ard-dg1-15/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@i915_pm_rps@min-max-config=
-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@i915_pm_rps@thresholds-idl=
e@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-1/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409=
v1/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9311">i915#9311</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124409v1/shard-snb1/igt@i915_selftest@mock@memory_re=
gion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9311">i915#9311</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-m=
c_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) =
+11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/404">i915#404</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_big_fb@x-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-16bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_124409v1/shard-tglu-6/igt@kms_big_fb@y-tiled=
-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +2 ot=
her tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +19 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5190">i915#5190</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_big_joiner@invalid-mod=
eset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_ccs@pipe-a-ccs-on-anot=
her-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +21 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_ccs@pipe-a-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_ccs@pipe-a-random-ccs=
-data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_ccs@pipe-b-bad-aux-str=
ide-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3734">i915#3734</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_ccs@pipe-b-crc-sprite-=
planes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_ccs@pipe-d-bad-rotati=
on-90-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_ccs@pipe-d-crc-primary=
-rotation-180-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_chamelium_color@ctm-ne=
gative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_chamelium_edid@hdmi-ed=
id-change-during-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_chamelium_edid@hdmi-ed=
id-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_cursor_legacy@2x-curso=
r-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111825">fdo#111825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-nonb=
locking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg1-16/igt@kms_dirtyfb@dirtyfb-ioctl=
@fbc-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg1-16/igt@kms_dirtyfb@dirtyfb-ioctl=
@psr-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@kms_flip@2x-flip-vs-blocking=
-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111767">fdo#111767</a>) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-blockin=
g-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111767">fdo#111767</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-pannin=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr=
-indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-spr-indfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) +1 other test fail</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +73 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +17 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +7 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +42 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3023">i915#3023</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-snb7/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +170 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3458">i915#3458</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg1-12/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-6/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_psr2_sf@cursor-plane-u=
pdate-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_psr@primary_blt.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">=
i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-glk3/igt@kms_psr@primary_mmap_cpu.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_psr@psr2_suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072"=
>i915#1072</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5461">i915#5461</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@kms_rotation_crc@bad-tilin=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-busy-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@kms_vblank@pipe-d-wait-bus=
y-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/533">i915#533</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/6768">i915#6768</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-7/igt@perf@global-sseu-config.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/73=
87">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1244=
09v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@perf_pmu@cpu-hotplug.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8850"=
>i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@faulting-read@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@perf_pmu@faulting-read@gt=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8440">i915#8440</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/680=
6">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5608"=
>i915#5608</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-6/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@prime_vgem@basic-fence-mma=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@get-bad-flags:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-mtlp-5/igt@v3d/v3d_get_param@get-bad=
-flags.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-pad:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@v3d/v3d_submit_csd@bad-pad=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109315">fdo#109315</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-3/igt@v3d/v3d_submit_csd@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-dg2-2/igt@vc4/vc4_tiling@get-bad-han=
dle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7711">i915#7711</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-0ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124409v1/shard-rkl-2/igt@vc4/vc4_wait_seqno@bad-seq=
no-0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-18/igt@debugfs_test@read_all_entries.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i9=
15#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124409v1/shard-dg1-18/igt@debugfs_test@read_all_entries.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-glk5/igt@gem_barrier_race@remote-request@rcs0.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8190">i9=
15#8190</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124409v1/shard-glk3/igt@gem_barrier_race@remote-request@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-19/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/=
shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13689/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124409v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13689/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124409v1/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a></p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13689/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_124409v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-corked@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@ccs0.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8962">i915#8962</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_124409v1/shard-mtlp-8/igt@gem_exec_schedule@noreorder-corke=
d@ccs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-error-state-capture@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-5/igt@i915_hangman@gt-error-state-capture@vecs0.ht=
ml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
414">i915#9414</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_124409v1/shard-mtlp-5/igt@i915_hangman@gt-error-state-capture@=
vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i=
915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124409v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i=
915#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124409v1/shard-dg2-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409=
v1/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124409v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
409v1/shard-tglu-3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-=
1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9392">i915#9392</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124409v1/shard-apl2/igt@kms_pipe_crc_basic@susp=
end-read-crc@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc9-dpms}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/=
shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-6/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1937">i9=
15#1937</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124409v1/shard-dg2-10/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-a:</p>
<ul>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13689/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak-pipe-a.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/919=
6">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_124409v1/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak-pip=
e-a.html">PASS</a> +1 other test pass</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13689/shard-snb1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9196"=
>i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_124409v1/shard-snb1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.=
html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs1.html"=
>ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9262=
">i915#9262</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124409v1/shard-mtlp-3/igt@gem_ctx_isolation@preservation-s3@vcs1.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-18/igt@gem_lmem_swapping@parallel-random-verify-ccs=
@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4565">i915#4565</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124409v1/shard-dg1-18/igt@gem_lmem_swapping@para=
llel-random-verify-ccs@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i=
915#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124409v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681"=
>i915#2681</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-12/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen=
12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v1/shard-dg1-16/igt@k=
ms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354">i915=
#5354</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6095=
">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12440=
9v1/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-2/igt@kms_force_connector_basic@force-load-detect.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9285">fdo#109285</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_124409v1/shard-rkl-6/igt@kms_force_connector_basic@for=
ce-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_124409v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pi=
pe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">CRASH</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9351">i915#9351</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_124409v1/shard-dg2-11/igt@prime_mmap@test_apertur=
e_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13689 -&gt; Patchwork_124409v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13689: 5933eb0a0717a28e668d33e01a707311d31cebbb @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7506: 4fdf544bd0a38c5a100ef43c30171827e1c8c442 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124409v1: 5933eb0a0717a28e668d33e01a707311d31cebbb @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5119169859970927332==--
