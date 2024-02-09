Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 898DB84F94E
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 17:07:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB62510F6C7;
	Fri,  9 Feb 2024 16:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C805210EB09;
 Fri,  9 Feb 2024 16:07:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3035117990571090117=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/i915=3A_Add_flex_arrays?=
 =?utf-8?q?_to_struct_i915=5Fsyncmap?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Erick Archer" <erick.archer@gmx.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 09 Feb 2024 16:07:38 -0000
Message-ID: <170749485881.1129906.12923199844121340869@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240208181318.4259-1-erick.archer@gmx.com>
In-Reply-To: <20240208181318.4259-1-erick.archer@gmx.com>
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

--===============3035117990571090117==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add flex arrays to struct i915_syncmap
URL   : https://patchwork.freedesktop.org/series/129706/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14248_full -> Patchwork_129706v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_129706v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][1] ([i915#8411]) +1 other test skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#8414]) +1 other test skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@drm_fdinfo@all-busy-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][3] ([i915#7742])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#7697])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#3936])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#3555] / [i915#9323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][7] -> [INCOMPLETE][8] ([i915#7297])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-tglu:         NOTRUN -> [SKIP][9] ([i915#7697])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [ABORT][10] ([i915#10183])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#6335])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#8562])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][13] -> [FAIL][14] ([i915#6268])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([fdo#109314])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#8555]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#1099])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#280])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@kms:
    - shard-dg1:          [PASS][19] -> [FAIL][20] ([i915#5784])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg1-17/igt@gem_eio@kms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-15/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#4812])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-rkl:          NOTRUN -> [FAIL][22] ([i915#9606])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-dg2:          NOTRUN -> [FAIL][23] ([i915#9606])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-none:
    - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#3539] / [i915#4852]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][25] ([i915#2842])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3539] / [i915#4852]) +8 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#2842]) +2 other tests fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4812]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3539]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_reloc@basic-active:
    - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#3281]) +3 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#3281])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3281]) +15 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4537] / [i915#4812]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [PASS][35] -> [ABORT][36] ([i915#7975] / [i915#8213])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-3/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4860]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-glk:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#4613]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk5/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#4613]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@gem_lmem_swapping@verify.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#3282])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#284])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#4077])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4083]) +5 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3282]) +8 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3282]) +4 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#4270]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4270])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#4270])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#4270]) +1 other test skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#5190]) +10 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4079])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4077]) +19 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4879])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-glk:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#3323])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#3297])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#3297]) +3 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([fdo#109289]) +3 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][58] ([i915#2527] / [i915#2856])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#2856]) +6 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#2527]) +3 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_module_load@load:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#6227])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][62] -> [INCOMPLETE][63] ([i915#10137] / [i915#9200] / [i915#9849])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][64] -> [ABORT][65] ([i915#10131] / [i915#9820])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#7091])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#8925]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#6245])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-unsupported:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([fdo#109302])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@live@gt_mocs:
    - shard-mtlp:         [PASS][70] -> [DMESG-WARN][71] ([i915#9522])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-mtlp-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][72] ([i915#9311])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#4215])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-16/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4212]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#8709]) +7 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#8709]) +11 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#1769])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#1769] / [i915#3555])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#5286]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([fdo#111615] / [i915#5286]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#4538] / [i915#5286])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([fdo#111614] / [i915#3638])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([fdo#111614]) +5 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][84] ([fdo#111614])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#3638]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4538] / [i915#5190]) +16 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([fdo#111615])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([fdo#110723]) +5 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#2705])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#5354]) +108 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#5354] / [i915#6095]) +15 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271]) +149 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#5354] / [i915#6095]) +11 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_ccs@pipe-c-random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y-tiled-gen12-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#5354]) +22 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_ccs@pipe-d-bad-aux-stride-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#5354] / [i915#6095]) +8 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#7213])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([fdo#111827])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([fdo#111827])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([fdo#111827])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#7828]) +17 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#7828])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#7828]) +7 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3299]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#7118] / [i915#9424])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#7118] / [i915#9424])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#3555]) +4 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#3359]) +2 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#3359])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3359])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3555]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#4103])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#4103])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([fdo#109274] / [i915#5354]) +6 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([fdo#109274]) +2 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4103] / [i915#4213]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@torture-bo@pipe-a:
    - shard-snb:          [PASS][117] -> [DMESG-WARN][118] ([i915#10166])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#9833])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#9723])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3555]) +7 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][122] ([i915#9841]) +3 other tests fail
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3804])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#1257])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#8812])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#3840])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3555] / [i915#3840])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3955])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#1839])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#9337])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([fdo#109274] / [i915#3637]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([fdo#109274]) +6 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([fdo#109274] / [fdo#111767] / [i915#3637])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#8381]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#2672]) +2 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#2672]) +6 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([fdo#109285])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-snb:          [PASS][138] -> [SKIP][139] ([fdo#109271]) +8 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-snb:          [PASS][140] -> [SKIP][141] ([fdo#109271] / [fdo#111767]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - shard-dg2:          NOTRUN -> [FAIL][142] ([i915#6880])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#3023]) +16 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([fdo#111825]) +10 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([fdo#111767] / [i915#5354])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([fdo#109280]) +5 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([fdo#111825]) +4 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#8708])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#10070])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([fdo#110189]) +5 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#3458]) +25 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([fdo#111825] / [i915#1825]) +23 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([fdo#111767] / [fdo#111825] / [i915#1825]) +4 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#3458]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#8708]) +31 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#3555] / [i915#8228]) +2 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#3555] / [i915#8228])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-16/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#4816])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#6301])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#6301])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#8821])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][162] ([i915#8292])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#9423]) +11 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#9423]) +3 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#9423]) +15 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#5176] / [i915#9423]) +3 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#5235] / [i915#9423]) +7 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#5235]) +3 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-18/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#5235]) +7 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#5235]) +3 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#9340])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_pm_lpsp@kms-lpsp.html
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#9340])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#8430])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#9519])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][175] -> [SKIP][176] ([i915#9519])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#6524])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#9683])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([fdo#111068] / [i915#9683])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([fdo#111068] / [i915#9683])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#9683]) +6 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#9685]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg1:          NOTRUN -> [SKIP][183] ([fdo#111615] / [i915#5289])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#4235]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          NOTRUN -> [FAIL][185] ([IGT#2])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_sysfs_edid_timing.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#8623])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-snb:          NOTRUN -> [SKIP][187] ([fdo#109271]) +59 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@kms_tv_load_detect@load-detect.html
    - shard-dg2:          NOTRUN -> [SKIP][188] ([fdo#109309])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-rkl:          [PASS][189] -> [FAIL][190] ([i915#9196])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [PASS][191] -> [FAIL][192] ([i915#9196])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#9906])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#3555]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#2437] / [i915#9412])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#2436])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#7387])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@perf@global-sseu-config.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][198] ([i915#7484])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-tglu:         NOTRUN -> [SKIP][199] ([fdo#109289])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#8516]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_udl:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([fdo#109291])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([fdo#109295] / [i915#3291] / [i915#3708])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#3291] / [i915#3708])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@prime_vgem@basic-read.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#9917])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-tglu:         NOTRUN -> [FAIL][205] ([i915#9781])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@v3d/v3d_create_bo@create-bo-4096:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([fdo#109315] / [i915#2575]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@v3d/v3d_create_bo@create-bo-4096.html

  * igt@v3d/v3d_job_submission@array-job-submission:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#2575]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@v3d/v3d_job_submission@array-job-submission.html

  * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([fdo#109315]) +10 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  * igt@v3d/v3d_submit_cl@multisync-out-syncs:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#2575]) +15 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@v3d/v3d_submit_cl@multisync-out-syncs.html

  * igt@vc4/vc4_create_bo@create-bo-zeroed:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#2575]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@vc4/vc4_create_bo@create-bo-zeroed.html

  * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
    - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#7711])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#7711]) +15 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@vc4/vc4_tiling@get-bad-handle.html

  * igt@vc4/vc4_wait_bo@bad-bo:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#7711]) +2 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@vc4/vc4_wait_bo@bad-bo.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@hostile:
    - shard-dg2:          [TIMEOUT][214] -> [PASS][215] +2 other tests pass
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@gem_ctx_persistence@hostile.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [TIMEOUT][216] ([i915#3778] / [i915#7016]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         [FAIL][218] ([i915#2842]) -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [FAIL][220] ([i915#2842]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg1:          [ABORT][222] ([i915#7975] / [i915#8213]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][224] ([i915#10137] / [i915#7790]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb7/igt@i915_pm_rps@reset.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@i915_pm_rps@reset.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][226] ([i915#3743]) -> [PASS][227] +3 other tests pass
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-snb:          [SKIP][228] ([fdo#109271]) -> [PASS][229] +7 other tests pass
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb4/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][230] ([i915#2346]) -> [PASS][231] +1 other test pass
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@torture-bo@all-pipes:
    - shard-tglu:         [DMESG-WARN][232] ([i915#10166] / [i915#1982]) -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-4/igt@kms_cursor_legacy@torture-bo@all-pipes.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-5/igt@kms_cursor_legacy@torture-bo@all-pipes.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][234] ([i915#9519]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [FAIL][236] ([i915#9196]) -> [PASS][237] +2 other tests pass
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [INCOMPLETE][238] ([i915#10137] / [i915#9820] / [i915#9849]) -> [ABORT][239] ([i915#9820])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [TIMEOUT][240] -> [SKIP][241] ([i915#5354])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][242] ([i915#9433]) -> [SKIP][243] ([i915#9424])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-18/igt@kms_content_protection@mei-interface.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][244] ([fdo#110189] / [i915#3955]) -> [SKIP][245] ([i915#3955])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          [TIMEOUT][246] -> [SKIP][247] ([i915#8708])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          [SKIP][248] ([fdo#109271]) -> [SKIP][249] ([fdo#109271] / [fdo#111767]) +2 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-snb:          [SKIP][250] ([fdo#109271] / [fdo#111767]) -> [SKIP][251] ([fdo#109271])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][252] ([i915#4281]) -> [SKIP][253] ([i915#3361])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          [TIMEOUT][254] ([i915#9569]) -> [SKIP][255] ([i915#4235])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
  [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
  [i915#10183]: https://gitlab.freedesktop.org/drm/intel/issues/10183
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7016]: https://gitlab.freedesktop.org/drm/intel/issues/7016
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9522]: https://gitlab.freedesktop.org/drm/intel/issues/9522
  [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9833]: https://gitlab.freedesktop.org/drm/intel/issues/9833
  [i915#9841]: https://gitlab.freedesktop.org/drm/intel/issues/9841
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917


Build changes
-------------

  * Linux: CI_DRM_14248 -> Patchwork_129706v1
  * Piglit: None -> piglit_4509

  CI-20190529: 20190529
  CI_DRM_14248: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7708: c2ecf4ba307d3342682745de6f608d307a06782c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129706v1: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/index.html

--===============3035117990571090117==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add flex arrays to struct i915_syncmap</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129706/">https://patchwork.freedesktop.org/series/129706/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14248_full -&gt; Patchwork_129706v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129706v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@drm_fdinfo@all-busy-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_busy@semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3936">i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_create@create-ext-cpu-access-big.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10183">i915#10183</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_ctx_param@set-priority-not-supported.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-many.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg1-17/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-15/igt@gem_eio@kms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@gem_exec_capture@many-4k-incremental.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_exec_capture@many-4k-zero.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_exec_fair@basic-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_exec_fair@basic-none-share.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_exec_fence@concurrent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@gem_exec_reloc@basic-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_exec_reloc@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-3/igt@gem_exec_suspend@basic-s4-devices@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk5/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@gem_lmem_swapping@verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_madvise@dontneed-before-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_mmap_gtt@fault-concurrent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@gem_partial_pwrite_pread@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@gem_pxp@create-protected-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_pxp@create-regular-context-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_tiled_partial_pwrite_pread@writes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_unfence_active_buffers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gen7_exec_parse@bitmasks.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@i915_module_load@load.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9200">i915#9200</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9849">i915#9849</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@i915_pm_rps@thresholds-idle@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8925">i915#8925</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-mtlp-2/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9522">i915#9522</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-16/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723">fdo#110723</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_big_joiner@2x-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +108 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +149 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_ccs@pipe-c-random-ccs-data-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_ccs@pipe-d-bad-aux-stride-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_chamelium_color@ctm-0-50.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_chamelium_color@ctm-limited-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_chamelium_color@degamma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_chamelium_frames@vga-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10166">i915#10166</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9841">i915#9841</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8381">i915#8381</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_frontbuffer_tracking@plane-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10070">i915#10070</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-16/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_plane_lowres@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8821">i915#8821</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-18/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9340">i915#9340</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9683">i915#9683</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9685">i915#9685</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@kms_tv_load_detect@load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +59 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_tv_load_detect@load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109309">fdo#109309</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8516">i915#8516</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@prime_udl.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@syncobj_timeline@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9781">i915#9781</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_create_bo@create-bo-4096:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@v3d/v3d_create_bo@create-bo-4096.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@array-job-submission:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@v3d/v3d_job_submission@array-job-submission.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@multisync-out-syncs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-1/igt@v3d/v3d_submit_cl@multisync-out-syncs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-zeroed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@vc4/vc4_create_bo@create-bo-zeroed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-5/igt@vc4/vc4_tiling@get-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@bad-bo:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-7/igt@vc4/vc4_wait_bo@bad-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@gem_ctx_persistence@hostile.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@gem_ctx_persistence@hostile.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7016">i915#7016</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-17/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb7/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb4/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@all-pipes:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-4/igt@kms_cursor_legacy@torture-bo@all-pipes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10166">i915#10166</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-5/igt@kms_cursor_legacy@torture-bo@all-pipes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9849">i915#9849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg1-13/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg1-18/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-snb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9569">i915#9569</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129706v1/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14248 -&gt; Patchwork_129706v1</li>
<li>Piglit: None -&gt; piglit_4509</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14248: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7708: c2ecf4ba307d3342682745de6f608d307a06782c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129706v1: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3035117990571090117==--
