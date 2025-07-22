Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 429D9B0D782
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 12:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB6C310E1DB;
	Tue, 22 Jul 2025 10:49:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99A3A10E079;
 Tue, 22 Jul 2025 10:49:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3994282710289871786=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_eDP_Data_Override_=28rev?=
 =?utf-8?q?2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Jul 2025 10:49:31 -0000
Message-ID: <175318137160.179750.6999808276516729249@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250722055624.2251656-1-suraj.kandpal@intel.com>
In-Reply-To: <20250722055624.2251656-1-suraj.kandpal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3994282710289871786==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: eDP Data Override (rev2)
URL   : https://patchwork.freedesktop.org/series/151688/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16904_full -> Patchwork_151688v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_151688v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_151688v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 12)
------------------------------

  Additional (2): shard-glk11 shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_151688v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-b-hdmi-a-2-y:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-b-hdmi-a-2-y.html

  
New tests
---------

  New tests have been introduced between CI_DRM_16904_full and Patchwork_151688v2_full:

### New IGT tests (2) ###

  * igt@kms_rmfb@close-fd@pipe-c-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.26] s

  * igt@kms_vrr:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_151688v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2-9:        NOTRUN -> [SKIP][2] ([i915#11078])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8562])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2-9:        NOTRUN -> [SKIP][4] ([i915#8555])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@kms:
    - shard-rkl:          [PASS][5] -> [DMESG-WARN][6] ([i915#13363])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-2/igt@gem_eio@kms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_eio@kms.html

  * igt@gem_exec_fence@submit:
    - shard-dg2-9:        NOTRUN -> [SKIP][7] ([i915#4812])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_exec_fence@submit.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#4812])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2-9:        NOTRUN -> [SKIP][9] ([i915#3539] / [i915#4852])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#3539])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_reloc@basic-scanout:
    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#3281]) +2 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@gem_exec_reloc@basic-scanout.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#3281]) +5 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][13] ([i915#3281]) +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2-9:        NOTRUN -> [SKIP][14] ([i915#4537] / [i915#4812])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-glk:          NOTRUN -> [INCOMPLETE][15] ([i915#11441] / [i915#13196]) +1 other test incomplete
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#4860]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][17] ([i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-glk:          NOTRUN -> [SKIP][18] ([i915#4613]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#4613])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_mmap@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#4083])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gem_mmap@bad-object.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-dg2-9:        NOTRUN -> [SKIP][21] ([i915#4077]) +2 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_mmap_gtt@hang-busy:
    - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#4077]) +5 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_mmap_gtt@hang-busy.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][23] ([i915#4083]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#3282]) +2 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4270])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          [PASS][26] -> [TIMEOUT][27] ([i915#12917] / [i915#12964]) +2 other tests timeout
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-dg2-9:        NOTRUN -> [SKIP][28] ([i915#4270]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3282]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#5190] / [i915#8428]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4079])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#4079])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3297])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3297]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_workarounds@suspend-resume:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][35] ([i915#13356] / [i915#14586])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk11/igt@gem_workarounds@suspend-resume.html

  * igt@gen3_render_tiledx_blits:
    - shard-dg2:          NOTRUN -> [SKIP][36] +3 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gen3_render_tiledx_blits.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#2527]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#2856])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2-9:        NOTRUN -> [SKIP][39] ([i915#2856]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_drm_fdinfo@virtual-busy:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#14118])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@i915_drm_fdinfo@virtual-busy.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][41] ([i915#12797])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk11/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#11681] / [i915#6621])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#11681])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][44] -> [DMESG-FAIL][45] ([i915#12061]) +1 other test dmesg-fail
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-mtlp-1/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@debugfs-reader:
    - shard-rkl:          [PASS][46] -> [INCOMPLETE][47] ([i915#4817])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@i915_suspend@debugfs-reader.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#1769] / [i915#3555])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#5286]) +2 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#5190])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg1:          [PASS][52] -> [DMESG-WARN][53] ([i915#4423])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#4538] / [i915#5190]) +4 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][55] ([i915#4538] / [i915#5190]) +3 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][56] +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#6095]) +135 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#10307] / [i915#6095]) +14 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#14098] / [i915#6095]) +62 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#10307] / [i915#6095]) +150 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#6095]) +77 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#6095]) +11 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][63] ([i915#12796]) +1 other test incomplete
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][64] ([i915#6095]) +4 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3742])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#13784])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#11151] / [i915#7828]) +6 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@hdmi-aspect-ratio:
    - shard-dg2-9:        NOTRUN -> [SKIP][69] ([i915#11151] / [i915#7828]) +1 other test skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_chamelium_frames@hdmi-aspect-ratio.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#11151] / [i915#7828]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_color@gamma:
    - shard-rkl:          [PASS][71] -> [SKIP][72] ([i915#12655] / [i915#14544]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_color@gamma.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_color@gamma.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3299])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21:
    - shard-glk11:        NOTRUN -> [SKIP][74] +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk11/igt@kms_cursor_crc@cursor-offscreen-64x21.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#13049])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-64x21:
    - shard-rkl:          [PASS][76] -> [FAIL][77] ([i915#13566])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-64x21.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-64x21.html

  * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][78] ([i915#13566]) +3 other tests fail
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-sliding-256x256:
    - shard-rkl:          [PASS][79] -> [DMESG-WARN][80] ([i915#12964]) +11 other tests dmesg-warn
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-256x256.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-256x256.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#13046] / [i915#5354]) +4 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][82] ([i915#13046] / [i915#5354])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [PASS][83] -> [FAIL][84] ([i915#2346]) +1 other test fail
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#13691])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3804])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#13748])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          [PASS][88] -> [SKIP][89] ([i915#14544]) +36 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3555] / [i915#3840]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3840] / [i915#9053])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@display-1x:
    - shard-rkl:          [PASS][92] -> [SKIP][93] ([i915#14544] / [i915#9738])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_feature_discovery@display-1x.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_feature_discovery@display-1x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#9337])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#9934]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-rkl:          [PASS][96] -> [SKIP][97] ([i915#14544] / [i915#3637]) +6 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][98] ([i915#12745] / [i915#4839])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk9/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][99] ([i915#12745])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk9/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#2672]) +2 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          [PASS][102] -> [SKIP][103] ([i915#14544] / [i915#3555])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#2672] / [i915#3555])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#2672]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          [PASS][106] -> [SKIP][107] ([i915#14544] / [i915#1849] / [i915#5354]) +7 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#8708]) +6 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][109] ([i915#3458]) +4 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#3458]) +10 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3023]) +6 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#1825]) +6 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][113] ([i915#5354]) +7 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][114] ([i915#8708]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#5354]) +12 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#3555] / [i915#8228])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][117] ([i915#3555] / [i915#8228])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#10656])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-glk:          NOTRUN -> [INCOMPLETE][119] ([i915#12756] / [i915#13409] / [i915#13476])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk6/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][120] ([i915#13409] / [i915#13476])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-rkl:          [PASS][121] -> [SKIP][122] ([i915#14544] / [i915#7294])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-basic.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#12247])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-rkl:          [PASS][124] -> [SKIP][125] ([i915#14544] / [i915#8152]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
    - shard-rkl:          [PASS][126] -> [SKIP][127] ([i915#12247] / [i915#14544] / [i915#8152]) +3 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-a:
    - shard-rkl:          [PASS][128] -> [SKIP][129] ([i915#12247] / [i915#14544]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-a.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-a.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3828])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#9685])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][132] -> [SKIP][133] ([i915#12916])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_pm_rpm@dpms-non-lpsp.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][134] -> [SKIP][135] ([i915#9519]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][136] -> [SKIP][137] ([i915#9519])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][138] -> [SKIP][139] ([i915#14544] / [i915#9519])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#9519])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#11520]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-snb:          NOTRUN -> [SKIP][142] ([i915#11520])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-snb2/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#11520]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#11520]) +4 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][145] ([i915#11520]) +8 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk2/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#9683])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-dg2-9:        NOTRUN -> [SKIP][147] ([i915#1072] / [i915#9732]) +4 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@pr-primary-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#1072] / [i915#9732]) +11 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_psr@pr-primary-mmap-gtt.html

  * igt@kms_psr@psr-sprite-mmap-cpu:
    - shard-snb:          NOTRUN -> [SKIP][149] +27 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-snb2/igt@kms_psr@psr-sprite-mmap-cpu.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#1072] / [i915#9732]) +4 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-sprite-plane-onoff:
    - shard-glk:          NOTRUN -> [SKIP][151] +287 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk1/igt@kms_psr@psr2-sprite-plane-onoff.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][152] ([i915#5190])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#3555]) +3 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [PASS][154] -> [FAIL][155] ([i915#5465]) +2 other tests fail
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-mtlp-7/igt@kms_setmode@basic@pipe-b-edp-1.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2-9:        NOTRUN -> [SKIP][156] ([i915#3555]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_vblank@query-forked@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][157] ([i915#12964]) +8 other tests dmesg-warn
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_vblank@query-forked@pipe-a-hdmi-a-1.html

  * igt@kms_vblank@ts-continuation-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][158] ([i915#12276]) +3 other tests incomplete
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk2/igt@kms_vblank@ts-continuation-suspend.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3555] / [i915#9906])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-glk:          NOTRUN -> [SKIP][160] ([i915#2437])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk6/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-dg2-9:        NOTRUN -> [SKIP][161] ([i915#2437])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@gen12-group-concurrent-oa-buffer-read:
    - shard-rkl:          [PASS][162] -> [FAIL][163] ([i915#10538])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@perf@gen12-group-concurrent-oa-buffer-read.html

  * igt@perf@non-zero-reason:
    - shard-dg2:          NOTRUN -> [FAIL][164] ([i915#9100]) +1 other test fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@perf@non-zero-reason.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#8516])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#3708] / [i915#4077])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@prime_vgem@basic-fence-mmap.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2-9:        NOTRUN -> [SKIP][167] ([i915#9917])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#9917])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#9917])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - shard-rkl:          [SKIP][170] ([i915#14544] / [i915#2582]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@fbdev@unaligned-write.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@fbdev@unaligned-write.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][172] ([i915#13356]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-2/igt@gem_ccs@suspend-resume.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][174] ([i915#12392] / [i915#13356]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_isolation@preservation-s3:
    - shard-rkl:          [INCOMPLETE][176] ([i915#12353]) -> [PASS][177] +1 other test pass
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-4/igt@gem_ctx_isolation@preservation-s3.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_ctx_isolation@preservation-s3.html

  * igt@gem_eio@reset-stress:
    - shard-dg2:          [FAIL][178] ([i915#5784]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-2/igt@gem_eio@reset-stress.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@gem_eio@reset-stress.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][180] ([i915#5493]) -> [PASS][181] +1 other test pass
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          [TIMEOUT][182] ([i915#12917] / [i915#12964]) -> [PASS][183] +2 other tests pass
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [DMESG-WARN][184] ([i915#12964]) -> [PASS][185] +6 other tests pass
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][186] ([i915#12455] / [i915#13820]) -> [PASS][187] +1 other test pass
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][188] ([i915#13821]) -> [PASS][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-snb2/igt@i915_pm_rps@reset.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-snb2/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [DMESG-FAIL][190] ([i915#12061]) -> [PASS][191] +1 other test pass
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-8/igt@i915_selftest@live@workarounds.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@forcewake:
    - shard-rkl:          [INCOMPLETE][192] ([i915#4817]) -> [PASS][193] +1 other test pass
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@i915_suspend@forcewake.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-rkl:          [SKIP][194] ([i915#14544]) -> [PASS][195] +32 other tests pass
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_color@ctm-0-50:
    - shard-rkl:          [SKIP][196] ([i915#12655] / [i915#14544]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_color@ctm-0-50.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_color@ctm-0-50.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-rkl:          [FAIL][198] ([i915#13566]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-256x85.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-rkl:          [SKIP][200] ([i915#11190] / [i915#14544]) -> [PASS][201] +1 other test pass
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-dg2:          [SKIP][202] ([i915#13749]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-3/igt@kms_dp_link_training@non-uhbr-sst.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_flip@modeset-vs-vblank-race:
    - shard-rkl:          [SKIP][204] ([i915#14544] / [i915#3637]) -> [PASS][205] +4 other tests pass
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_flip@modeset-vs-vblank-race.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_flip@modeset-vs-vblank-race.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-rkl:          [SKIP][206] ([i915#14544] / [i915#3555]) -> [PASS][207] +2 other tests pass
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][208] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][209] +10 other tests pass
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-dg2:          [FAIL][210] ([i915#6880]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-rkl:          [SKIP][212] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][213] +1 other test pass
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_invalid_mode@overflow-vrefresh:
    - shard-rkl:          [SKIP][214] ([i915#14544] / [i915#8826]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_invalid_mode@overflow-vrefresh.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          [SKIP][216] ([i915#12388]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-4/igt@kms_joiner@basic-force-big-joiner.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          [SKIP][218] ([i915#14544] / [i915#8825]) -> [PASS][219] +1 other test pass
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-rkl:          [SKIP][220] ([i915#14544] / [i915#8152]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a:
    - shard-rkl:          [SKIP][222] ([i915#12247] / [i915#14544]) -> [PASS][223] +4 other tests pass
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-rkl:          [SKIP][224] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [SKIP][226] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][227] +6 other tests pass
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-rkl:          [SKIP][228] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][230] ([i915#9519]) -> [PASS][231] +2 other tests pass
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg1:          [DMESG-WARN][232] ([i915#4423]) -> [PASS][233] +2 other tests pass
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-19/igt@kms_pm_rpm@i2c.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-12/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][234] ([i915#9519]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-rkl:          [SKIP][236] ([i915#14544] / [i915#6524]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_prime@basic-crc-vgem.html

  * igt@perf_pmu@busy-double-start:
    - shard-mtlp:         [FAIL][238] ([i915#4349]) -> [PASS][239] +2 other tests pass
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-mtlp-2/igt@perf_pmu@busy-double-start.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-mtlp-1/igt@perf_pmu@busy-double-start.html

  
#### Warnings ####

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][240] ([i915#14544] / [i915#9323]) -> [SKIP][241] ([i915#9323])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_ccs@suspend-resume.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          [SKIP][242] ([i915#14544] / [i915#8562]) -> [SKIP][243] ([i915#8562])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          [SKIP][244] ([i915#280]) -> [SKIP][245] ([i915#14544] / [i915#280])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@gem_ctx_sseu@engines.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          [SKIP][246] ([i915#14544] / [i915#4525]) -> [SKIP][247] ([i915#4525]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][248] ([i915#4525]) -> [SKIP][249] ([i915#14544] / [i915#4525])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-rkl:          [SKIP][250] ([i915#3281]) -> [SKIP][251] ([i915#14544] / [i915#3281]) +2 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-cpu.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [SKIP][252] ([i915#14544] / [i915#3281]) -> [SKIP][253] ([i915#3281]) +4 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          [SKIP][254] ([i915#14544] / [i915#4613] / [i915#7582]) -> [SKIP][255] ([i915#4613] / [i915#7582])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-rkl:          [SKIP][256] ([i915#4613]) -> [SKIP][257] ([i915#14544] / [i915#4613]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          [SKIP][258] ([i915#14544] / [i915#4613]) -> [SKIP][259] ([i915#4613]) +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [SKIP][260] ([i915#14544] / [i915#3282]) -> [SKIP][261] ([i915#3282]) +3 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-rkl:          [SKIP][262] ([i915#14544] / [i915#4270]) -> [TIMEOUT][263] ([i915#12917] / [i915#12964])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_pxp@create-regular-context-1.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-rkl:          [TIMEOUT][264] ([i915#12917] / [i915#12964]) -> [SKIP][265] ([i915#4270])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          [SKIP][266] ([i915#14544] / [i915#8411]) -> [SKIP][267] ([i915#8411])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          [SKIP][268] ([i915#14544] / [i915#3297]) -> [SKIP][269] ([i915#3297])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          [SKIP][270] ([i915#14544] / [i915#2527]) -> [SKIP][271] ([i915#2527]) +1 other test skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          [SKIP][272] ([i915#14544] / [i915#6412]) -> [SKIP][273] ([i915#6412])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@i915_module_load@resize-bar.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-rkl:          [SKIP][274] -> [SKIP][275] ([i915#14544]) +9 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          [SKIP][276] ([i915#12454] / [i915#12712]) -> [SKIP][277] ([i915#12454] / [i915#12712] / [i915#14544])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          [SKIP][278] ([i915#14544]) -> [SKIP][279] ([i915#1769] / [i915#3555])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          [SKIP][280] ([i915#5286]) -> [SKIP][281] ([i915#14544]) +2 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-rkl:          [SKIP][282] ([i915#14544]) -> [SKIP][283] ([i915#5286]) +4 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
    - shard-dg1:          [SKIP][284] ([i915#4423] / [i915#4538] / [i915#5286]) -> [SKIP][285] ([i915#4538] / [i915#5286])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-rkl:          [SKIP][286] ([i915#14544]) -> [SKIP][287] ([i915#3638])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][288] ([i915#3638]) -> [SKIP][289] ([i915#14544])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][290] ([i915#14544]) -> [SKIP][291] ([i915#14098] / [i915#6095]) +10 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs:
    - shard-dg1:          [SKIP][292] ([i915#4423] / [i915#6095]) -> [SKIP][293] ([i915#6095])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-12/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][294] ([i915#12805]) -> [SKIP][295] ([i915#14544])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:
    - shard-rkl:          [SKIP][296] ([i915#14098] / [i915#6095]) -> [SKIP][297] ([i915#14544]) +7 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][298] ([i915#12313]) -> [SKIP][299] ([i915#14544]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-rkl:          [SKIP][300] ([i915#11151] / [i915#7828]) -> [SKIP][301] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-dg1:          [SKIP][302] ([i915#11151] / [i915#7828]) -> [SKIP][303] ([i915#11151] / [i915#4423] / [i915#7828])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-14/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-18/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          [SKIP][304] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][305] ([i915#11151] / [i915#7828]) +8 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          [FAIL][306] ([i915#7173]) -> [SKIP][307] ([i915#7118] / [i915#9424])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-11/igt@kms_content_protection@atomic.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][308] ([i915#14544]) -> [SKIP][309] ([i915#3116])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          [SKIP][310] ([i915#14544]) -> [SKIP][311] ([i915#9424])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_content_protection@lic-type-1.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-rkl:          [SKIP][312] ([i915#14544]) -> [FAIL][313] ([i915#13566])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          [SKIP][314] ([i915#14544]) -> [SKIP][315] ([i915#13049])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-rkl:          [SKIP][316] ([i915#3555]) -> [SKIP][317] ([i915#14544]) +1 other test skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-128x42:
    - shard-rkl:          [DMESG-FAIL][318] ([i915#12964]) -> [SKIP][319] ([i915#14544])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_cursor_crc@cursor-random-128x42.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_cursor_crc@cursor-random-128x42.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][320] ([i915#14544]) -> [SKIP][321] ([i915#3555]) +3 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          [SKIP][322] ([i915#13049]) -> [SKIP][323] ([i915#14544])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          [SKIP][324] ([i915#14544]) -> [SKIP][325] +9 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          [SKIP][326] ([i915#14544]) -> [SKIP][327] ([i915#9067])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          [SKIP][328] ([i915#14544]) -> [SKIP][329] ([i915#4103])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          [SKIP][330] ([i915#4103]) -> [SKIP][331] ([i915#14544])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          [SKIP][332] ([i915#14544]) -> [SKIP][333] ([i915#3840])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][334] ([i915#14544]) -> [SKIP][335] ([i915#3555] / [i915#3840]) +1 other test skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          [SKIP][336] ([i915#14544] / [i915#658]) -> [SKIP][337] ([i915#658])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_feature_discovery@psr2.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-rkl:          [SKIP][338] ([i915#14544] / [i915#9934]) -> [SKIP][339] ([i915#9934]) +5 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-rkl:          [SKIP][340] ([i915#9934]) -> [SKIP][341] ([i915#14544] / [i915#9934]) +3 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_flip@2x-modeset-vs-vblank-race.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-rkl:          [SKIP][342] ([i915#14544] / [i915#3555]) -> [SKIP][343] ([i915#2672] / [i915#3555]) +1 other test skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-rkl:          [SKIP][344] ([i915#2672] / [i915#3555]) -> [SKIP][345] ([i915#14544] / [i915#3555]) +1 other test skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][346] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][347] ([i915#5439])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][348] ([i915#1825]) -> [SKIP][349] ([i915#14544] / [i915#1849] / [i915#5354]) +18 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-dg1:          [SKIP][350] ([i915#4423]) -> [SKIP][351]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][352] ([i915#8708]) -> [SKIP][353] ([i915#4423] / [i915#8708])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          [SKIP][354] ([i915#3023]) -> [SKIP][355] ([i915#14544] / [i915#1849] / [i915#5354]) +13 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-dg2:          [SKIP][356] ([i915#10433] / [i915#3458]) -> [SKIP][357] ([i915#3458]) +4 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][358] ([i915#3458]) -> [SKIP][359] ([i915#10433] / [i915#3458]) +1 other test skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][360] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][361] ([i915#3023]) +19 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          [SKIP][362] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][363] ([i915#1825]) +21 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-rkl:          [SKIP][364] ([i915#12713]) -> [SKIP][365] ([i915#1187] / [i915#12713])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-4/igt@kms_hdr@brightness-with-hdr.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
    - shard-dg1:          [SKIP][366] ([i915#1187] / [i915#12713]) -> [SKIP][367] ([i915#12713])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-14/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          [SKIP][368] ([i915#3555] / [i915#8228]) -> [SKIP][369] ([i915#14544]) +1 other test skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_hdr@static-swap.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_hdr@static-swap.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][370] ([i915#12339]) -> [SKIP][371] ([i915#12339] / [i915#14544])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_joiner@basic-ultra-joiner.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][372] ([i915#6301]) -> [SKIP][373] ([i915#14544])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-rkl:          [SKIP][374] ([i915#14544]) -> [SKIP][375] ([i915#13958])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-rkl:          [SKIP][376] ([i915#13958]) -> [SKIP][377] ([i915#14544])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-yf.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-rkl:          [SKIP][378] ([i915#14544] / [i915#8152]) -> [SKIP][379]
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][380] ([i915#3555]) -> [SKIP][381] ([i915#14544] / [i915#3555] / [i915#8152])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
    - shard-rkl:          [SKIP][382] ([i915#12247]) -> [SKIP][383] ([i915#12247] / [i915#14544])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          [SKIP][384] ([i915#12247]) -> [SKIP][385] ([i915#12247] / [i915#14544] / [i915#8152])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#5354]) -> [SKIP][387] ([i915#5354])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          [SKIP][388] ([i915#12343]) -> [SKIP][389] ([i915#12343] / [i915#14544])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_pm_backlight@brightness-with-dpms.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          [SKIP][390] ([i915#14544] / [i915#3828]) -> [SKIP][391] ([i915#3828])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][392] ([i915#4281]) -> [SKIP][393] ([i915#14544] / [i915#4281])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][394] ([i915#9519]) -> [SKIP][395] ([i915#14544] / [i915#9519])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_prime@d3hot:
    - shard-rkl:          [SKIP][396] ([i915#14544] / [i915#6524]) -> [SKIP][397] ([i915#6524])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_prime@d3hot.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][398] ([i915#11520]) -> [SKIP][399] ([i915#11520] / [i915#14544]) +6 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          [SKIP][400] ([i915#11520] / [i915#14544]) -> [SKIP][401] ([i915#11520]) +4 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@fbc-pr-cursor-mmap-cpu:
    - shard-rkl:          [SKIP][402] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][403] ([i915#1072] / [i915#9732]) +14 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html

  * igt@kms_psr@pr-cursor-mmap-gtt:
    - shard-dg1:          [SKIP][404] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][405] ([i915#1072] / [i915#9732]) +2 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-16/igt@kms_psr@pr-cursor-mmap-gtt.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-16/igt@kms_psr@pr-cursor-mmap-gtt.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-rkl:          [SKIP][406] ([i915#1072] / [i915#9732]) -> [SKIP][407] ([i915#1072] / [i915#14544] / [i915#9732]) +11 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_psr@pr-cursor-plane-onoff.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][408] ([i915#5289]) -> [SKIP][409] ([i915#14544])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg1:          [SKIP][410] ([i915#8623]) -> [SKIP][411] ([i915#4423] / [i915#8623])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-14/igt@kms_tiled_display@basic-test-pattern.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-18/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vblank@query-forked-busy-hang:
    - shard-rkl:          [DMESG-WARN][412] ([i915#12964]) -> [SKIP][413] ([i915#14544]) +2 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_vblank@query-forked-busy-hang.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_vblank@query-forked-busy-hang.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          [SKIP][414] ([i915#14544]) -> [SKIP][415] ([i915#9906])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flip-dpms:
    - shard-dg1:          [SKIP][416] ([i915#3555] / [i915#4423]) -> [SKIP][417] ([i915#3555])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-12/igt@kms_vrr@flip-dpms.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-16/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          [SKIP][418] ([i915#9906]) -> [SKIP][419] ([i915#14544])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-vrr.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-rkl:          [SKIP][420] ([i915#14544] / [i915#9917]) -> [SKIP][421] ([i915#9917])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12797]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
  [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9738]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9738
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_16904 -> Patchwork_151688v2

  CI-20190529: 20190529
  CI_DRM_16904: 617f6e11e288a649addc9471911d29947c0996c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8470: ee326481fd4d17eba84fbc629f9e4a5def7dbd8f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_151688v2: 617f6e11e288a649addc9471911d29947c0996c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/index.html

--===============3994282710289871786==
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
<tr><td><b>Series:</b></td><td>eDP Data Override (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/151688/">https://patchwork.freedesktop.org/series/151688/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16904_full -&gt; Patchwork_151688v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_151688v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_151688v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 12)</h2>
<p>Additional (2): shard-glk11 shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_151688v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-b-hdmi-a-2-y:<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-b-hdmi-a-2-y.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16904_full and Patchwork_151688v2_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@kms_rmfb@close-fd@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_151688v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-2/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363">i915#13363</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_exec_fence@submit.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gem_exec_fence@submit3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@gem_exec_reloc@basic-scanout.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@gem_exec_reloc@basic-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk2/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196">i915#13196</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk6/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gem_mmap@bad-object.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_mmap_gtt@cpuset-medium-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_mmap_gtt@hang-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_mmap_wc@write-cpu-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_render_copy@linear-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk11/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586">i915#14586</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@gen3_render_tiledx_blits.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@i915_drm_fdinfo@virtual-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk11/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797">i915#12797</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@i915_pm_rps@thresholds-park.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +135 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +62 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +150 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +77 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784">i915#13784</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-aspect-ratio:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_chamelium_frames@hdmi-aspect-ratio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_color@gamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_color@gamma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk11/igt@kms_cursor_crc@cursor-offscreen-64x21.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-64x21.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-64x21.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x256:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-256x256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-256x256.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +11 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_draw_crc@draw-method-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_feature_discovery@display-1x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_feature_discovery@display-1x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9738">i915#9738</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk9/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk9/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk6/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756">i915#12756</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916">i915#12916</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-snb2/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk2/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_psr@pr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-mmap-cpu:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-snb2/igt@kms_psr@psr-sprite-mmap-cpu.html">SKIP</a> +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-plane-onoff:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk1/igt@kms_psr@psr2-sprite-plane-onoff.html">SKIP</a> +287 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-mtlp-7/igt@kms_setmode@basic@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-forked@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_vblank@query-forked@pipe-a-hdmi-a-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk2/igt@kms_vblank@ts-continuation-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-glk6/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-concurrent-oa-buffer-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@perf@gen12-group-concurrent-oa-buffer-read.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538">i915#10538</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@perf@non-zero-reason.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100">i915#9100</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-9/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@fbdev@unaligned-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-2/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@gem_ccs@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-4/igt@gem_ctx_isolation@preservation-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353">i915#12353</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_ctx_isolation@preservation-s3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-2/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455">i915#12455</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820">i915#13820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-snb2/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821">i915#13821</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-snb2/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-8/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-2/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-7/igt@i915_suspend@forcewake.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</a> +32 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_color@ctm-0-50.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_color@ctm-0-50.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-256x85.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-3/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_flip@modeset-vs-vblank-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_flip@modeset-vs-vblank-race.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +10 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-end.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_invalid_mode@overflow-vrefresh.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-4/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_plane@plane-panning-top-left.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-19/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-12/igt@kms_pm_rpm@i2c.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_prime@basic-crc-vgem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-mtlp-2/igt@perf_pmu@busy-double-start.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-mtlp-1/igt@perf_pmu@busy-double-start.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_pxp@create-regular-context-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@gem_pxp@create-regular-context-1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-12/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-14/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-18/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-11/igt@kms_content_protection@atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-8/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_cursor_crc@cursor-random-128x42.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_cursor_crc@cursor-random-128x42.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-4/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-14/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-4/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-16/igt@kms_psr@pr-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-16/igt@kms_psr@pr-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_psr@pr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_psr@pr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-14/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-18/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-forked-busy-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-5/igt@kms_vblank@query-forked-busy-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_vblank@query-forked-busy-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-dg1-12/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-dg1-16/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16904/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151688v2/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16904 -&gt; Patchwork_151688v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16904: 617f6e11e288a649addc9471911d29947c0996c8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8470: ee326481fd4d17eba84fbc629f9e4a5def7dbd8f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_151688v2: 617f6e11e288a649addc9471911d29947c0996c8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3994282710289871786==--
