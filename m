Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3452B446A6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 21:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD1610E2D4;
	Thu,  4 Sep 2025 19:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0593B10E27D;
 Thu,  4 Sep 2025 19:44:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4357682747684651470=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/power=3A_drop_a?=
 =?utf-8?q?_couple_of_=26i915-=3Edrm_usages_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 04 Sep 2025 19:44:16 -0000
Message-ID: <175701505687.304667.12241448578452887723@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250902144929.3026700-1-jani.nikula@intel.com>
In-Reply-To: <20250902144929.3026700-1-jani.nikula@intel.com>
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

--===============4357682747684651470==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/power: drop a couple of &i915->drm usages (rev2)
URL   : https://patchwork.freedesktop.org/series/153891/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17123_full -> Patchwork_153891v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_153891v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_153891v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_153891v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-snb:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-snb1/igt@kms_fbcon_fbt@fbc-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb6/igt@kms_fbcon_fbt@fbc-suspend.html

  
New tests
---------

  New tests have been introduced between CI_DRM_17123_full and Patchwork_153891v2_full:

### New IGT tests (1) ###

  * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-c-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.71] s

  

Known issues
------------

  Here are the changes found in Patchwork_153891v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#8411])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@api_intel_bb@blit-reloc-purge-cache.html
    - shard-dg2-9:        NOTRUN -> [SKIP][4] ([i915#8411])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@fbdev@nullptr:
    - shard-rkl:          [PASS][5] -> [SKIP][6] ([i915#14544] / [i915#2582]) +1 other test skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@fbdev@nullptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#7697])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#3936])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#3555] / [i915#9323])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#9323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][11] ([i915#12392] / [i915#13356])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-1/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2-9:        NOTRUN -> [SKIP][12] ([i915#7697])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_close_race@multigpu-basic-threads.html
    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#7697])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#8562])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [PASS][15] -> [FAIL][16] ([i915#9561]) +1 other test fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][17] ([i915#12353]) +1 other test incomplete
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk9/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#8555]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2-9:        NOTRUN -> [SKIP][19] ([i915#8555])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#280])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_ctx_sseu@invalid-args.html
    - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#280])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          NOTRUN -> [FAIL][22] ([i915#8898])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb7/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4771])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#4525]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#4525])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-glk10:        NOTRUN -> [SKIP][26] ([i915#6334]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk10/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#6334]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fence@submit:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4812])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][29] ([i915#3539])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3281]) +7 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-active:
    - shard-dg2-9:        NOTRUN -> [SKIP][31] ([i915#3281]) +4 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-active.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#3281]) +2 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4537] / [i915#4812])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-rkl:          [PASS][34] -> [DMESG-WARN][35] ([i915#12964]) +21 other tests dmesg-warn
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_fenced_exec_thrash@no-spare-fences.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][36] ([i915#4860]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#4613])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][38] ([i915#4613]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][39] ([i915#4613]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu:         NOTRUN -> [SKIP][40] ([i915#4613]) +1 other test skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_media_vme:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#284])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_media_vme.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [PASS][42] -> [ABORT][43] ([i915#14809]) +1 other test abort
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_mmap_wc@read-write-distinct:
    - shard-dg2-9:        NOTRUN -> [SKIP][44] ([i915#4083]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_mmap_wc@read-write-distinct.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4083]) +2 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_pread@bench:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#3282]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_pread@bench.html
    - shard-dg2-9:        NOTRUN -> [SKIP][47] ([i915#3282])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_pread@bench.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#3282]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_pread@snoop.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-rkl:          [PASS][49] -> [TIMEOUT][50] ([i915#12917] / [i915#12964]) +1 other test timeout
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-7/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4270]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg2-9:        NOTRUN -> [SKIP][52] ([i915#4270]) +1 other test skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-rkl:          NOTRUN -> [TIMEOUT][53] ([i915#12917] / [i915#12964])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][54] ([i915#5190] / [i915#8428]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][55] +215 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk9/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#5190] / [i915#8428]) +3 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4885]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4077]) +6 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4079]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@access-control:
    - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#3297])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#3297]) +2 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#3297])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#3297] / [i915#4880])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglu-1:       NOTRUN -> [SKIP][64] ([i915#3297]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-dg2:          [PASS][65] -> [ABORT][66] ([i915#8213]) +2 other tests abort
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-7/igt@gem_workarounds@suspend-resume-fd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-10/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen3_render_tiledx_blits:
    - shard-dg2-9:        NOTRUN -> [SKIP][67] +3 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gen3_render_tiledx_blits.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#2527] / [i915#2856]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#2856]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#2527] / [i915#2856]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#2856]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#2527]) +3 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_drm_fdinfo@busy:
    - shard-dg2-9:        NOTRUN -> [SKIP][73] ([i915#14073]) +7 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@i915_drm_fdinfo@busy.html

  * igt@i915_fb_tiling@basic-x-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#13786])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@i915_fb_tiling@basic-x-tiling.html

  * igt@i915_module_load@reload-no-display:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][75] ([i915#13029] / [i915#14545])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@i915_module_load@reload-no-display.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][76] -> [DMESG-WARN][77] ([i915#13447])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][78] ([i915#14545])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#8399])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@i915_pm_freq_api@freq-basic-api.html
    - shard-tglu-1:       NOTRUN -> [SKIP][80] ([i915#8399])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#8399])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#11681])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@i915_pm_rps@thresholds.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#7984])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@i915_power@sanity.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-rkl:          [PASS][84] -> [INCOMPLETE][85] ([i915#4817])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-8/igt@i915_suspend@fence-restore-untiled.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4212])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#12454] / [i915#12712])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
    - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#12454] / [i915#12712])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#9531])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#5286]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#5286])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
    - shard-mtlp:         [PASS][92] -> [FAIL][93] ([i915#12469] / [i915#5138])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#5286]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-dg2-9:        NOTRUN -> [SKIP][95] ([i915#4538] / [i915#5190]) +4 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4538] / [i915#5190]) +6 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3638]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#5190])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][99] +8 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][100] +61 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#12313])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#6095]) +95 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#6095]) +38 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#14098] / [i915#6095]) +37 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_ccs@bad-rotation-90-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][105] ([i915#10307] / [i915#6095]) +9 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#10307] / [i915#6095]) +139 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#12313]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][108] ([i915#12313])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][109] ([i915#12805])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#12805])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][111] ([i915#6095]) +4 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
    - shard-glk:          NOTRUN -> [INCOMPLETE][112] ([i915#12796]) +3 other tests incomplete
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk8/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#6095]) +7 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#6095]) +44 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#10307] / [i915#10434] / [i915#6095])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][116] ([i915#6095]) +54 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-a-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][117] ([i915#13781]) +4 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_cdclk@mode-transition@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][118] +6 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-dg2-9:        NOTRUN -> [SKIP][119] ([i915#11151] / [i915#7828]) +3 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#11151] / [i915#7828]) +4 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#11151] / [i915#7828]) +4 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#11151] / [i915#7828]) +3 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#11151] / [i915#7828]) +3 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_color@ctm-0-25:
    - shard-rkl:          [PASS][124] -> [SKIP][125] ([i915#12655] / [i915#14544]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_color@ctm-0-25.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_color@ctm-0-25.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#12655] / [i915#3555])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_color@deep-color.html
    - shard-dg2-9:        NOTRUN -> [SKIP][127] ([i915#12655] / [i915#3555])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][128] ([i915#7118] / [i915#9424])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][129] ([i915#3299])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3116])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#3116] / [i915#3299])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][132] ([i915#7173])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-3.html

  * igt@kms_content_protection@lic-type-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#6944] / [i915#9424])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#13049]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#3555]) +3 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#13049])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html
    - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#13049]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-256x85:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][139] ([i915#12964])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-256x85.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][140] ([i915#13566]) +1 other test fail
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#3555])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#13049])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#13049])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][144] ([i915#4423])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-14/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][145] ([i915#13046] / [i915#5354]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#4103]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-rkl:          [PASS][147] -> [SKIP][148] ([i915#11190] / [i915#14544]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#13046] / [i915#5354]) +2 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-rkl:          [PASS][150] -> [FAIL][151] ([i915#14001] / [i915#2346])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2-9:        NOTRUN -> [SKIP][152] ([i915#4103] / [i915#4213])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#9723])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#3555]) +2 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [PASS][155] -> [SKIP][156] ([i915#1257])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-11/igt@kms_dp_aux_dev.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-7/igt@kms_dp_aux_dev.html
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#1257])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_dp_aux_dev.html
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#1257])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#13749])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_dp_link_training@non-uhbr-sst.html
    - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#13749])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-dg2-9:        NOTRUN -> [SKIP][161] ([i915#13748])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#3840])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#3840] / [i915#9053])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#2065] / [i915#4854])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#1839])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu-1:       NOTRUN -> [SKIP][166] ([i915#658])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_feature_discovery@psr2.html
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#658])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#9934]) +3 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#8381])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][170] ([i915#12745] / [i915#4839]) +1 other test incomplete
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk1/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][171] ([i915#4839]) +1 other test incomplete
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-wf_vblank:
    - shard-dg2-9:        NOTRUN -> [SKIP][172] ([i915#9934]) +4 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_flip@2x-flip-vs-wf_vblank.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#3637] / [i915#9934]) +5 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#9934]) +6 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#3637] / [i915#9934]) +6 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-rkl:          [PASS][176] -> [SKIP][177] ([i915#14544] / [i915#3637]) +6 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_flip@bo-too-big-interruptible.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip@flip-vs-dpms-on-nop:
    - shard-rkl:          [PASS][178] -> [SKIP][179] ([i915#14544] / [i915#14553])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html

  * igt@kms_flip@flip-vs-rmfb-interruptible@b-hdmi-a1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][180] ([i915#12964]) +6 other tests dmesg-warn
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_flip@flip-vs-rmfb-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][181] ([i915#12314] / [i915#4839])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#2672] / [i915#3555]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-snb:          NOTRUN -> [SKIP][183] +35 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#2672] / [i915#3555]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][185] ([i915#2672]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#2672] / [i915#3555] / [i915#5190])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#2672]) +2 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#2587] / [i915#2672] / [i915#3555])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#2672]) +7 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
    - shard-tglu-1:       NOTRUN -> [SKIP][190] ([i915#2587] / [i915#2672]) +3 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#2587] / [i915#2672]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#2672] / [i915#3555]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
    - shard-tglu-1:       NOTRUN -> [SKIP][193] ([i915#2672] / [i915#3555]) +2 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
    - shard-rkl:          [PASS][194] -> [SKIP][195] ([i915#14544] / [i915#3555]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][196] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][197] ([i915#2672] / [i915#3555]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [PASS][198] -> [SKIP][199] ([i915#14544] / [i915#1849] / [i915#5354]) +8 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:
    - shard-glk:          [PASS][200] -> [SKIP][201] +7 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#8708]) +9 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen:
    - shard-dg2-9:        NOTRUN -> [SKIP][203] ([i915#5354]) +14 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][204] ([i915#8708]) +7 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][205] +40 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#1825]) +23 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#3458]) +7 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3023]) +8 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-dg2-9:        NOTRUN -> [SKIP][209] ([i915#3458]) +6 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#5439])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#9766])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
    - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#9766])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#5354]) +17 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#10433] / [i915#3458]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#3555] / [i915#8228])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_hdr@bpc-switch-suspend.html
    - shard-tglu-1:       NOTRUN -> [SKIP][216] ([i915#3555] / [i915#8228])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#12713])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg2-9:        NOTRUN -> [SKIP][218] ([i915#3555] / [i915#8228])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [PASS][219] -> [SKIP][220] ([i915#3555] / [i915#8228])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-11/igt@kms_hdr@static-toggle.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-6/igt@kms_hdr@static-toggle.html
    - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#3555] / [i915#8228]) +1 other test skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#10656])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_joiner@invalid-modeset-big-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][223] ([i915#10656])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#10656]) +1 other test skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][225] ([i915#12394]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#12339])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#13522])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_lease@lease-invalid-connector:
    - shard-dg1:          [PASS][228] -> [DMESG-WARN][229] ([i915#4423]) +3 other tests dmesg-warn
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-13/igt@kms_lease@lease-invalid-connector.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-14/igt@kms_lease@lease-invalid-connector.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#6301])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html
    - shard-tglu-1:       NOTRUN -> [SKIP][231] ([i915#6301])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_crc_basic@bad-source:
    - shard-rkl:          [PASS][232] -> [SKIP][233] ([i915#14544]) +40 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_pipe_crc_basic@bad-source.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_pipe_crc_basic@bad-source.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - shard-glk10:        NOTRUN -> [SKIP][234] ([i915#11190]) +3 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk10/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-rkl:          [PASS][235] -> [SKIP][236] ([i915#14544] / [i915#8825])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_plane@pixel-format-source-clamping.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][237] ([i915#14412])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-glk10:        NOTRUN -> [SKIP][238] +382 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk10/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][239] ([i915#10647] / [i915#12177])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][240] ([i915#10647]) +1 other test fail
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-rkl:          [PASS][241] -> [SKIP][242] ([i915#14544] / [i915#7294]) +2 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#8821])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#13958]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#13958])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#13958])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-rkl:          [PASS][247] -> [SKIP][248] ([i915#12247] / [i915#14544] / [i915#8152]) +4 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-rkl:          [PASS][249] -> [SKIP][250] ([i915#14544] / [i915#3555] / [i915#8152]) +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
    - shard-rkl:          [PASS][251] -> [SKIP][252] ([i915#12247] / [i915#14544]) +3 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][253] ([i915#12247]) +4 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-rkl:          [PASS][254] -> [SKIP][255] ([i915#14544] / [i915#6953] / [i915#8152])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu-1:       NOTRUN -> [SKIP][256] ([i915#9812])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#5354])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2-9:        NOTRUN -> [SKIP][258] ([i915#9685]) +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#9685])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_pm_dc@dc5-psr.html
    - shard-tglu-1:       NOTRUN -> [SKIP][260] ([i915#9685])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][261] -> [SKIP][262] ([i915#14544] / [i915#9519])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][263] ([i915#4077]) +3 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_pm_rpm@fences.html
    - shard-rkl:          [PASS][264] -> [SKIP][265] ([i915#14544] / [i915#1849])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_pm_rpm@fences.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_pm_rpm@fences.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][266] -> [SKIP][267] ([i915#9519])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#9519])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu-1:       NOTRUN -> [SKIP][269] ([i915#9519])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#9519]) +1 other test skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@d3hot:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#6524])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_prime@d3hot.html
    - shard-dg2-9:        NOTRUN -> [SKIP][272] ([i915#6524] / [i915#6805])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-glk10:        NOTRUN -> [SKIP][273] ([i915#11520]) +9 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][274] ([i915#11520]) +6 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#11520]) +4 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][276] ([i915#11520]) +5 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][277] ([i915#11520]) +3 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#11520]) +4 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-dg2-9:        NOTRUN -> [SKIP][279] ([i915#11520]) +3 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-sprite-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][280] ([i915#1072] / [i915#9732]) +14 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_psr@fbc-pr-sprite-plane-onoff.html

  * igt@kms_psr@fbc-psr2-primary-render:
    - shard-dg2-9:        NOTRUN -> [SKIP][281] ([i915#1072] / [i915#9732]) +9 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_psr@fbc-psr2-primary-render.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][282] ([i915#9732]) +15 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][283] ([i915#9732]) +10 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_psr@psr2-primary-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#1072] / [i915#9732]) +12 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_psr@psr2-primary-mmap-gtt.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][285] ([i915#12755]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][286] ([i915#5289]) +1 other test skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
    - shard-tglu-1:       NOTRUN -> [SKIP][287] ([i915#5289]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#5289])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2-9:        NOTRUN -> [SKIP][289] ([i915#12755] / [i915#5190])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-dg2-9:        NOTRUN -> [SKIP][290] ([i915#3555]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_scaling_modes@scaling-mode-full-aspect.html
    - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#3555]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][292] ([i915#8623])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#8623])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][294] ([i915#12276])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-tglu:         NOTRUN -> [SKIP][295] ([i915#9906])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#2437]) +1 other test skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_writeback@writeback-fb-id.html
    - shard-tglu-1:       NOTRUN -> [SKIP][297] ([i915#2437])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-tglu:         NOTRUN -> [SKIP][298] ([i915#2437] / [i915#9412])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@blocking@0-rcs0:
    - shard-rkl:          [PASS][299] -> [FAIL][300] ([i915#10538]) +1 other test fail
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@perf@blocking@0-rcs0.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@perf@blocking@0-rcs0.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#2436])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-dg2-9:        NOTRUN -> [SKIP][302] ([i915#7387])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@perf@global-sseu-config.html

  * igt@perf_pmu@frequency:
    - shard-dg2:          NOTRUN -> [FAIL][303] ([i915#12549] / [i915#6806]) +1 other test fail
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@perf_pmu@frequency.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#3291] / [i915#3708])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][305] ([i915#3708] / [i915#4077])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#3708])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg2-9:        NOTRUN -> [SKIP][307] ([i915#9917])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
    - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#9917])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2-9:        NOTRUN -> [SKIP][309] ([i915#4818])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][310] ([i915#12392] / [i915#13356]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][312] ([i915#5493]) -> [PASS][313] +1 other test pass
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-rkl:          [DMESG-WARN][314] ([i915#12964]) -> [PASS][315] +11 other tests pass
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_mmap_offset@clear@smem0.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          [SKIP][316] ([i915#14544] / [i915#1850]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          [TIMEOUT][318] ([i915#12917] / [i915#12964]) -> [PASS][319] +1 other test pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@gem_pxp@display-protected-crc.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@gem_pxp@display-protected-crc.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-dg2:          [ABORT][320] ([i915#8213]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-10/igt@i915_pm_rpm@system-suspend.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-rkl:          [INCOMPLETE][322] ([i915#13356]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-3/igt@i915_pm_rpm@system-suspend-execbuf.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:
    - shard-dg1:          [DMESG-WARN][324] ([i915#4423]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-19/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-18/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          [INCOMPLETE][326] ([i915#12796]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_color@degamma:
    - shard-rkl:          [SKIP][328] ([i915#12655] / [i915#14544]) -> [PASS][329] +1 other test pass
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_color@degamma.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_color@degamma.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][330] ([i915#13566]) -> [PASS][331] +1 other test pass
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-tglu-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-8/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-rkl:          [FAIL][332] ([i915#2346]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          [SKIP][334] ([i915#14544]) -> [PASS][335] +48 other tests pass
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [TIMEOUT][336] ([i915#14033] / [i915#14350]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][338] ([i915#14033]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-snb:          [FAIL][340] ([i915#10826]) -> [PASS][341] +1 other test pass
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-snb6/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb7/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-panning:
    - shard-rkl:          [SKIP][342] ([i915#14544] / [i915#3637]) -> [PASS][343] +5 other tests pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_flip@flip-vs-panning.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_flip@flip-vs-panning.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-rkl:          [INCOMPLETE][344] ([i915#6113]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-rkl:          [SKIP][346] ([i915#14544] / [i915#3555]) -> [PASS][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][348] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][349] +11 other tests pass
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_invalid_mode@zero-vdisplay:
    - shard-rkl:          [SKIP][350] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][351]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_invalid_mode@zero-vdisplay.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_invalid_mode@zero-vdisplay.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - shard-rkl:          [SKIP][352] ([i915#11190] / [i915#14544]) -> [PASS][353] +1 other test pass
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-rkl:          [SKIP][354] ([i915#14544] / [i915#8825]) -> [PASS][355]
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-rkl:          [SKIP][356] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][357]
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-rkl:          [SKIP][358] ([i915#12247] / [i915#14544]) -> [PASS][359] +3 other tests pass
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-rkl:          [SKIP][360] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][361]
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-rkl:          [SKIP][362] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][363]
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-rkl:          [SKIP][364] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][365]
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [SKIP][366] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][367] +3 other tests pass
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [SKIP][368] ([i915#9340]) -> [PASS][369]
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-5/igt@kms_pm_lpsp@kms-lpsp.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][370] ([i915#14544] / [i915#9519]) -> [PASS][371] +2 other tests pass
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][372] ([i915#9519]) -> [PASS][373] +1 other test pass
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_properties@invalid-properties-atomic:
    - shard-dg1:          [DMESG-WARN][374] ([i915#4391] / [i915#4423]) -> [PASS][375]
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-19/igt@kms_properties@invalid-properties-atomic.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-18/igt@kms_properties@invalid-properties-atomic.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-glk:          [SKIP][376] -> [PASS][377] +5 other tests pass
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-glk8/igt@kms_setmode@invalid-clone-single-crtc.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         [FAIL][378] ([i915#9196]) -> [PASS][379] +1 other test pass
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][380] ([i915#4349]) -> [PASS][381] +4 other tests pass
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html

  
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          [SKIP][382] ([i915#14544] / [i915#8411]) -> [SKIP][383] ([i915#8411]) +1 other test skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          [SKIP][384] ([i915#6230]) -> [SKIP][385] ([i915#14544] / [i915#6230])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@api_intel_bb@crc32.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@api_intel_bb@crc32.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#7697]) -> [SKIP][387] ([i915#7697])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_basic@multigpu-create-close.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          [SKIP][388] ([i915#13008]) -> [SKIP][389] ([i915#13008] / [i915#14544])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@gem_ccs@large-ctrl-surf-copy.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          [SKIP][390] ([i915#6335]) -> [SKIP][391] ([i915#14544] / [i915#6335])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_create@create-ext-cpu-access-sanity-check.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          [SKIP][392] ([i915#14544] / [i915#8562]) -> [SKIP][393] ([i915#8562])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          [SKIP][394] ([i915#14544] / [i915#280]) -> [SKIP][395] ([i915#280]) +1 other test skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          [SKIP][396] ([i915#14544] / [i915#4525]) -> [SKIP][397] ([i915#4525])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][398] ([i915#4525]) -> [SKIP][399] ([i915#14544] / [i915#4525])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          [SKIP][400] ([i915#14544] / [i915#6334]) -> [SKIP][401] ([i915#6334]) +1 other test skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-rkl:          [SKIP][402] ([i915#14544] / [i915#3281]) -> [SKIP][403] ([i915#3281]) +10 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-range-active:
    - shard-rkl:          [SKIP][404] ([i915#3281]) -> [SKIP][405] ([i915#14544] / [i915#3281]) +7 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_exec_reloc@basic-range-active.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_exec_reloc@basic-range-active.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          [SKIP][406] ([i915#14544] / [i915#2190]) -> [SKIP][407] ([i915#2190])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_huc_copy@huc-copy.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          [SKIP][408] ([i915#4613] / [i915#7582]) -> [SKIP][409] ([i915#14544] / [i915#4613] / [i915#7582])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_lmem_evict@dontneed-evict-race.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          [SKIP][410] ([i915#4613]) -> [SKIP][411] ([i915#14544] / [i915#4613]) +1 other test skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          [SKIP][412] ([i915#14544] / [i915#4613]) -> [SKIP][413] ([i915#4613]) +3 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_lmem_swapping@verify-random.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_partial_pwrite_pread@write-display:
    - shard-rkl:          [SKIP][414] ([i915#14544] / [i915#3282]) -> [SKIP][415] ([i915#3282]) +3 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_partial_pwrite_pread@write-display.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_partial_pwrite_pread@write-display.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [SKIP][416] ([i915#3282]) -> [SKIP][417] ([i915#14544] / [i915#3282]) +4 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-rkl:          [SKIP][418] ([i915#14544] / [i915#4270]) -> [TIMEOUT][419] ([i915#12917] / [i915#12964])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_pxp@create-regular-buffer.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-rkl:          [TIMEOUT][420] ([i915#12964]) -> [SKIP][421] ([i915#4270])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_pxp@fail-invalid-protected-context.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          [SKIP][422] ([i915#3297]) -> [SKIP][423] ([i915#14544] / [i915#3297])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_userptr_blits@dmabuf-unsync.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          [SKIP][424] ([i915#14544] / [i915#3297]) -> [SKIP][425] ([i915#3297])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-rkl:          [SKIP][426] ([i915#2527]) -> [SKIP][427] ([i915#14544] / [i915#2527]) +1 other test skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gen9_exec_parse@batch-without-end.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          [SKIP][428] ([i915#14544] / [i915#2527]) -> [SKIP][429] ([i915#2527]) +1 other test skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          [SKIP][430] ([i915#14544] / [i915#8399]) -> [SKIP][431] ([i915#8399])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-rkl:          [SKIP][432] ([i915#13328]) -> [DMESG-WARN][433] ([i915#12964])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@i915_pm_rpm@gem-idle.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@i915_pm_rpm@gem-idle.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          [SKIP][434] ([i915#14544]) -> [SKIP][435] ([i915#9531])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_interruptible@legacy-setmode:
    - shard-rkl:          [DMESG-WARN][436] ([i915#12964]) -> [SKIP][437] ([i915#14544]) +1 other test skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_atomic_interruptible@legacy-setmode.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_atomic_interruptible@legacy-setmode.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          [SKIP][438] ([i915#14544]) -> [SKIP][439] ([i915#5286]) +5 other tests skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          [SKIP][440] ([i915#5286]) -> [SKIP][441] ([i915#14544]) +4 other tests skip
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-dg1:          [SKIP][442] ([i915#4538] / [i915#5286]) -> [SKIP][443] ([i915#4423] / [i915#4538] / [i915#5286])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          [SKIP][444] ([i915#14544]) -> [SKIP][445] ([i915#3638]) +3 other tests skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][446] ([i915#3638]) -> [SKIP][447] ([i915#14544])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][448] ([i915#14544]) -> [SKIP][449] +17 other tests skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][450] ([i915#14544]) -> [SKIP][451] ([i915#14098] / [i915#6095]) +11 other tests skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][452] ([i915#6095]) -> [SKIP][453] ([i915#14098] / [i915#6095]) +1 other test skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][454] ([i915#14544]) -> [SKIP][455] ([i915#12313])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          [SKIP][456] ([i915#14098] / [i915#6095]) -> [SKIP][457] ([i915#14544]) +7 other tests skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][458] ([i915#12313]) -> [SKIP][459] ([i915#14544]) +1 other test skip
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          [SKIP][460] ([i915#3742]) -> [SKIP][461] ([i915#14544] / [i915#3742]) +1 other test skip
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_cdclk@mode-transition.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-rkl:          [SKIP][462] ([i915#11151] / [i915#7828]) -> [SKIP][463] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          [SKIP][464] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][465] ([i915#11151] / [i915#7828]) +8 other tests skip
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          [SKIP][466] ([i915#7118] / [i915#9424]) -> [SKIP][467] ([i915#14544])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_content_protection@atomic.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][468] ([i915#14544]) -> [SKIP][469] ([i915#3116]) +1 other test skip
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][470] ([i915#7118] / [i915#9424]) -> [FAIL][471] ([i915#7173])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-4/igt@kms_content_protection@legacy.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-11/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          [SKIP][472] ([i915#14544]) -> [SKIP][473] ([i915#9424])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          [SKIP][474] ([i915#7118]) -> [SKIP][475] ([i915#14544])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_content_protection@srm.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [FAIL][476] ([i915#1339] / [i915#7173]) -> [SKIP][477] ([i915#7118] / [i915#9424])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-11/igt@kms_content_protection@uevent.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg1:          [SKIP][478] ([i915#13049]) -> [SKIP][479] ([i915#13049] / [i915#4423])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-rkl:          [SKIP][480] ([i915#3555]) -> [SKIP][481] ([i915#14544]) +1 other test skip
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_cursor_crc@cursor-random-32x10.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-rkl:          [SKIP][482] ([i915#14544]) -> [SKIP][483] ([i915#3555]) +1 other test skip
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x32.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          [SKIP][484] ([i915#14544]) -> [SKIP][485] ([i915#13049]) +1 other test skip
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          [SKIP][486] ([i915#13049]) -> [SKIP][487] ([i915#14544])
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][488] ([i915#11190] / [i915#14544]) -> [SKIP][489] ([i915#4103])
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][490] ([i915#4103]) -> [SKIP][491] ([i915#14544]) +1 other test skip
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][492] -> [SKIP][493] ([i915#14544]) +13 other tests skip
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-rkl:          [SKIP][494] ([i915#14544]) -> [FAIL][495] ([i915#2346]) +1 other test fail
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          [SKIP][496] ([i915#14544]) -> [SKIP][497] ([i915#4103])
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][498] ([i915#14544]) -> [SKIP][499] ([i915#9723])
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-rkl:          [SKIP][500] ([i915#13748]) -> [SKIP][501] ([i915#14544]) +1 other test skip
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_dp_link_training@uhbr-sst.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][502] ([i915#3555] / [i915#3840]) -> [SKIP][503] ([i915#11190] / [i915#14544])
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_dsc@dsc-basic.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          [SKIP][504] ([i915#14544]) -> [SKIP][505] ([i915#3555] / [i915#3840])
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][506] ([i915#3555] / [i915#3840]) -> [SKIP][507] ([i915#14544])
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          [SKIP][508] ([i915#14544]) -> [SKIP][509] ([i915#3840] / [i915#9053])
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][510] ([i915#3955]) -> [SKIP][511] ([i915#14544] / [i915#3955])
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          [SKIP][512] ([i915#14544] / [i915#4854]) -> [SKIP][513] ([i915#4854])
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_feature_discovery@chamelium.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          [SKIP][514] ([i915#9934]) -> [SKIP][515] ([i915#14544] / [i915#9934]) +4 other tests skip
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_flip@2x-flip-vs-dpms.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-rkl:          [SKIP][516] ([i915#14544] / [i915#9934]) -> [SKIP][517] ([i915#9934]) +8 other tests skip
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-rkl:          [DMESG-WARN][518] ([i915#12964]) -> [SKIP][519] ([i915#14544] / [i915#3637])
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-rmfb-interruptible:
    - shard-rkl:          [SKIP][520] ([i915#14544] / [i915#3637]) -> [DMESG-WARN][521] ([i915#12964])
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_flip@flip-vs-rmfb-interruptible.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_flip@flip-vs-rmfb-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          [INCOMPLETE][522] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][523] ([i915#12745] / [i915#4839] / [i915#6113])
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-glk9/igt@kms_flip@flip-vs-suspend.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][524] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][525] ([i915#12314] / [i915#12745] / [i915#4839])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          [INCOMPLETE][526] ([i915#12745]) -> [INCOMPLETE][527] ([i915#12745] / [i915#6113])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-glk9/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-rkl:          [SKIP][528] ([i915#2672] / [i915#3555]) -> [SKIP][529] ([i915#14544] / [i915#3555]) +3 other tests skip
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][530] ([i915#14544] / [i915#3555]) -> [SKIP][531] ([i915#2672] / [i915#3555]) +5 other tests skip
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-rkl:          [DMESG-WARN][532] ([i915#12964]) -> [SKIP][533] ([i915#14544] / [i915#1849] / [i915#5354])
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-dg1:          [SKIP][534] ([i915#4423]) -> [SKIP][535]
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][536] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][537] ([i915#5439])
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          [SKIP][538] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][539] ([i915#3023]) +23 other tests skip
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][540] ([i915#10433] / [i915#3458]) -> [SKIP][541] ([i915#3458]) +1 other test skip
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-rkl:          [SKIP][542] ([i915#1825]) -> [SKIP][543] ([i915#14544] / [i915#1849] / [i915#5354]) +24 other tests skip
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][544] -> [SKIP][545] ([i915#14544] / [i915#1849] / [i915#5354])
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][546] ([i915#3458]) -> [SKIP][547] ([i915#10433] / [i915#3458]) +2 other tests skip
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg1:          [SKIP][548] ([i915#3458] / [i915#4423]) -> [SKIP][549] ([i915#3458])
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][550] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][551] ([i915#1825]) +28 other tests skip
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-rkl:          [SKIP][552] ([i915#3023]) -> [SKIP][553] ([i915#14544] / [i915#1849] / [i915#5354]) +17 other tests skip
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-tglu:         [SKIP][554] ([i915#1187] / [i915#12713]) -> [SKIP][555] ([i915#12713])
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-9/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          [SKIP][556] ([i915#3555] / [i915#8228]) -> [SKIP][557] ([i915#14544]) +2 other tests skip
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_hdr@static-swap.html
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][558] ([i915#14544]) -> [SKIP][559] ([i915#3555] / [i915#8228])
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_hdr@static-toggle.html
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          [SKIP][560] ([i915#13688] / [i915#14544]) -> [SKIP][561] ([i915#13688])
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][562] ([i915#4816]) -> [SKIP][563] ([i915#4070] / [i915#4816])
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-rkl:          [SKIP][564] ([i915#14544] / [i915#8825]) -> [INCOMPLETE][565] ([i915#14412])
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend.html
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-dg1:          [SKIP][566] ([i915#13958] / [i915#4423]) -> [SKIP][567] ([i915#13958])
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-19/igt@kms_plane_multiple@2x-tiling-y.html
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-18/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-rkl:          [SKIP][568] ([i915#14544]) -> [SKIP][569] ([i915#13958])
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][570] ([i915#14544]) -> [SKIP][571] ([i915#14259])
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][572] ([i915#3555]) -> [SKIP][573] ([i915#14544] / [i915#3555] / [i915#8152])
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
    - shard-rkl:          [SKIP][574] ([i915#12247]) -> [SKIP][575] ([i915#12247] / [i915#14544])
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          [SKIP][576] ([i915#12247]) -> [SKIP][577] ([i915#12247] / [i915#14544] / [i915#8152])
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          [SKIP][578] ([i915#12247] / [i915#14544]) -> [SKIP][579] ([i915#12247])
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
    - shard-rkl:          [SKIP][580] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][581] ([i915#12247]) +1 other test skip
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          [SKIP][582] ([i915#14544] / [i915#5354]) -> [SKIP][583] ([i915#5354])
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [FAIL][584] ([i915#9295]) -> [DMESG-FAIL][585] ([i915#12964])
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][586] ([i915#4281]) -> [SKIP][587] ([i915#14544] / [i915#4281])
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          [SKIP][588] ([i915#14544] / [i915#6524]) -> [SKIP][589] ([i915#6524])
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
    - shard-rkl:          [SKIP][590] ([i915#11520]) -> [SKIP][591] ([i915#11520] / [i915#14544]) +5 other tests skip
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][592] ([i915#11520] / [i915#14544]) -> [SKIP][593] ([i915#11520]) +6 other tests skip
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          [SKIP][594] ([i915#9683]) -> [SKIP][595] ([i915#14544] / [i915#9683])
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-pr-primary-render:
    - shard-dg1:          [SKIP][596] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][597] ([i915#1072] / [i915#9732])
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-14/igt@kms_psr@fbc-pr-primary-render.html
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-15/igt@kms_psr@fbc-pr-primary-render.html

  * igt@kms_psr@pr-cursor-render:
    - shard-rkl:          [SKIP][598] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][599] ([i915#1072] / [i915#9732]) +19 other tests skip
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_psr@pr-cursor-render.html
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_psr@pr-cursor-render.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-rkl:          [SKIP][600] ([i915#1072] / [i915#9732]) -> [SKIP][601] ([i915#1072] / [i915#14544] / [i915#9732]) +13 other tests skip
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_psr@psr2-cursor-blt.html
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          [SKIP][602] ([i915#9685]) -> [SKIP][603] ([i915#14544] / [i915#9685]) +2 other tests skip
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          [SKIP][604] ([i915#14544]) -> [SKIP][605] ([i915#5289])
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-rkl:          [SKIP][606] ([i915#14544] / [i915#3555]) -> [SKIP][607] ([i915#3555]) +1 other test skip
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-rkl:          [SKIP][608] ([i915#3555]) -> [SKIP][609] ([i915#14544] / [i915#3555])
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_setmode@clone-exclusive-crtc.html
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          [SKIP][610] ([i915#9906]) -> [SKIP][611] ([i915#14544])
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-vrr.html
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-rkl:          [SKIP][612] ([i915#14544] / [i915#2437]) -> [SKIP][613] ([i915#2437])
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.html
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-rkl:          [SKIP][614] ([i915#14544] / [i915#2437] / [i915#9412]) -> [SKIP][615] ([i915#2437] / [i915#9412])
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_writeback@writeback-pixel-formats.html
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          [SKIP][616] ([i915#14544] / [i915#9917]) -> [SKIP][617] ([i915#9917])
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12469
  [i915#12549]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
  [i915#13447]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13447
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13786]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13786
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14001]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14001
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#8898]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8898
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17123 -> Patchwork_153891v2

  CI-20190529: 20190529
  CI_DRM_17123: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8520: 8520
  Patchwork_153891v2: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/index.html

--===============4357682747684651470==
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
<tr><td><b>Series:</b></td><td>drm/i915/power: drop a couple of &amp;i915-&gt;drm usages (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/153891/">https://patchwork.freedesktop.org/series/153891/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17123_full -&gt; Patchwork_153891v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_153891v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_153891v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_153891v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_fbcon_fbt@fbc-suspend:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-snb1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb6/igt@kms_fbcon_fbt@fbc-suspend.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17123_full and Patchwork_153891v2_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_cursor_crc@cursor-sliding-256x85@pipe-c-hdmi-a-1:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.71] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_153891v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_busy@semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936">i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-1/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561">i915#9561</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk9/igt@gem_ctx_isolation@preservation-s3@bcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353">i915#12353</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb7/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8898">i915#8898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk10/igt@gem_exec_capture@capture-invisible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_exec_fence@submit.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-active:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_exec_reloc@basic-wc-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_fenced_exec_thrash@no-spare-fences.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_fenced_exec_thrash@no-spare-fences.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +21 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809">i915#14809</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write-distinct:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_mmap_wc@read-write-distinct.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_mmap_wc@write-read-distinct.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_pread@bench.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_pread@bench.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-7/igt@gem_pxp@create-regular-context-2.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk9/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> +215 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_tiled_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_tiled_pread_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@gem_userptr_blits@access-control.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-7/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-10/igt@gem_workarounds@suspend-resume-fd.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gen3_render_tiledx_blits.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@i915_drm_fdinfo@busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling@basic-x-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@i915_fb_tiling@basic-x-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13786">i915#13786</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13447">i915#13447</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@i915_module_load@resize-bar.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@i915_pm_rps@thresholds.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-8/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-3/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12469">i915#12469</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +95 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_ccs@bad-rotation-90-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +139 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk8/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_cdclk@mode-transition@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781">i915#13781</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_chamelium_color@degamma.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_chamelium_edid@dp-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_chamelium_frames@hdmi-crc-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_color@ctm-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_color@ctm-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-256x85.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-14/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14001">i915#14001</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-11/igt@kms_dp_aux_dev.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-7/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065">i915#2065</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk1/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_flip@2x-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_flip@bo-too-big-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553">i915#14553</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_flip@flip-vs-rmfb-interruptible@b-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +7 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-11/igt@kms_hdr@static-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-invalid-connector:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-13/igt@kms_lease@lease-invalid-connector.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-14/igt@kms_lease@lease-invalid-connector.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@bad-source:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_pipe_crc_basic@bad-source.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_pipe_crc_basic@bad-source.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk10/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_plane@pixel-format-source-clamping.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412">i915#14412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk10/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP</a> +382 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177">i915#12177</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_plane_lowres@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821">i915#8821</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +3 other tests skip</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_pm_rpm@fences.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_psr@fbc-pr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-render:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_psr@fbc-psr2-primary-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_psr@psr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_psr@psr2-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_psr@psr2-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-7/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@perf@blocking@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@perf@blocking@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538">i915#10538</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@perf_pmu@frequency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549">i915#12549</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-9/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818">i915#4818</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_mmap_offset@clear@smem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_mmap_offset@clear@smem0.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850">i915#1850</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@gem_pxp@display-protected-crc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@gem_pxp@display-protected-crc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-10/igt@i915_pm_rpm@system-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-5/igt@i915_pm_rpm@system-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-3/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-19/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-18/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_color@degamma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_color@degamma.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-tglu-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-8/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">PASS</a> +48 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350">i915#14350</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-snb6/igt@kms_flip@flip-vs-blocking-wf-vblank.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-snb7/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_flip@flip-vs-panning.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_flip@flip-vs-panning.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_flip@flip-vs-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_invalid_mode@zero-vdisplay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_invalid_mode@zero-vdisplay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_plane@plane-position-hole-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-5/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_properties@invalid-properties-atomic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-19/igt@kms_properties@invalid-properties-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-18/igt@kms_properties@invalid-properties-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-glk8/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk6/igt@kms_setmode@invalid-clone-single-crtc.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_exec_reloc@basic-range-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_exec_reloc@basic-range-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-display:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_partial_pwrite_pread@write-display.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_partial_pwrite_pread@write-display.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_pxp@create-regular-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_pxp@create-regular-buffer.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_pxp@fail-invalid-protected-context.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@gen9_exec_parse@valid-registers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@i915_pm_rpm@gem-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328">i915#13328</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@i915_pm_rpm@gem-idle.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_atomic_interruptible@legacy-setmode.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_atomic_interruptible@legacy-setmode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-4/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-11/igt@kms_content_protection@legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-11/igt@kms_content_protection@uevent.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-7/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_flip@flip-vs-absolute-wf_vblank.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_flip@flip-vs-rmfb-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_flip@flip-vs-rmfb-interruptible.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-glk9/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk1/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-glk9/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-tglu-9/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412">i915#14412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-19/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-18/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-dg1-14/igt@kms_psr@fbc-pr-primary-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-dg1-15/igt@kms_psr@fbc-pr-primary-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_psr@pr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_psr@pr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-2/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153891v2/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17123 -&gt; Patchwork_153891v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17123: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8520: 8520<br />
  Patchwork_153891v2: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4357682747684651470==--
